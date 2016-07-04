rem Update these variables before running the build
set "SOURCE=%USERPROFILE%\Documents\Repositories\TraIT\trait_ctp\configurations\site_configurations\PSMA\ErasmusMC"
set "PROJECT=psma"
set "SITE=emc"
set "VERSION=latest"
rem End of config vars

#create image name
SET "PROFILE=ctp/%PROJECT%/%SITE%"

rem copy sources to current folder (as docker machine only reads this folder)
copy "%SOURCE%\config.xml" config.xml
robocopy "%SOURCE%\ctpConfig" .\ctpConfig /S

rem clear the ctpData folder
rmdir /S /Q C:\dockerData\ctpData
mkdir C:\dockerData\ctpData 

rem Run the docker build
echo "Trying to build docker image"
docker build -t "%PROFILE%":"%VERSION%" .\
rem Run the built image the image
echo "Trying to run docker image"
docker run -d -p 80:80 -p 104:104 --name ctp -v c:/dockerData/ctpData:/CTP/ctpData "%PROFILE%":"%VERSION%"

rem Remove the copied sources
del /Q config.xml
rmdir /S /Q ctpConfig
