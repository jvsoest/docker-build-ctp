####Update these variables before running the build
SOURCE=~/Repositories/TraIT/trait_ctp/configurations/site_configurations/PETRA_PETAL
PROJECT="petal"
SITE="essen"
VERSION="latest"
####End of config vars

#create image name
PROFILE="ctp/$PROJECT/$SITE"
CURRENTDIR=$(pwd)

#copy sources to current folder (as docker machine only reads this folder)
cp -R $SOURCE/config.xml ./config.xml
cp -R $SOURCE/ctpConfig ./ctpConfig

#clear the ctpData folder
rm -R $CURRENTDIR/ctpData/*

#Run the docker build
echo "Trying to build docker image"
docker build -t jvsoest/$PROFILE:$VERSION ./
#Run the built image the image
echo "Trying to run docker image"
docker run -d -p 80:80 -p 104:104 -v $CURRENTDIR/ctpData:/CTP/ctpData jvsoest/$PROFILE:$VERSION

#Remove the copied sources
rm -Rf ./config.xml ./ctpConfig