####Update these variables before running the build
SOURCE=~/Repositories/TraIT/trait_ctp/configurations/site_configurations/PETRA_PETAL
PROJECT="petal"
SITE="essen"
VERSION="latest"
####End of config vars

#create image name
PROFILE="ctp/$PROJECT/$SITE"
CURRENTDIR=$(pwd)

echo "Trying to run docker image"
docker run -d -p 80:80 -p 104:104 -v $CURRENTDIR/ctpData:/CTP/ctpData jvsoest/$PROFILE:$VERSION
