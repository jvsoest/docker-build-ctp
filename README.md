# docker-build-ctp

## Download docker image and run instance
`docker run -p 80:80 -d --name=ctp jvsoest/ctp:latest`

## Build this docker instance for yourself

### Build docker instance
`docker build ./`

### Run docker instance
`docker run -p 80:80 --name=ctp <hash key of image>`

### Run docker instance with profile
To run a docker instance with specific CTP profiles, please look at the [runProfile](runProfile) folder. The [copyAndRun.sh](runProfile/copyAndRun.sh)
holds a script to create a new image containing the pipeline configuration specified in the configuration part of this script (line 2-5).
This script also saves the data on a local data store; making it possible restart a container without data loss.