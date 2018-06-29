#!/bin/bash

image_name="xebialabsunsupported/xl-docker-demo-jenkins"
./dockertags jenkins/jenkins alpine > /tmp/jenkins
./dockertags $image_name > /tmp/xl
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
while read tag ; do
    docker build -t $image_name:$tag --build-arg jenkins_tag=$tag .
    docker push $image_name:$tag
done < <(comm -23 <(sort /tmp/jenkins) <(sort /tmp/xl))