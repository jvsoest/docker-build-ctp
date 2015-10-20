# docker-build-ctp

## Download docker image and run instance
`docker run -p 80:80 -d --name=ctp jvsoest/ctp:latest`

## Build this docker instance for yourself

### Build docker instance
`docker build ./`

### Run docker instance
`docker run -p 80:80 --name=ctp <hash key of image>`
