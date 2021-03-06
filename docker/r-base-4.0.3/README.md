## r-base-4.0.3

* **Main software installed inside:** R 4.0.3
* **Description:** Need a basic docker container with R 4.0.3 installed inside? Well this is the container just for you!

## Pre-requisites

You will need to download the following packages before moving to build this container:

* [R 4.0.3](https://cran.r-project.org/)
* [bzip2 1.0.6](https://sourceware.org/bzip2/)
* [curl 7.56.1](https://curl.se/)
* [pcre2 10.36](http://www.pcre.org/)
* [xz 5.2.3](https://tukaani.org/xz/)

## How to build r-base-4.0.3

First, you will want to make the `src` and download the relevant source code files into it. Unfortunately, some of the source code files (*cough* *cough* xz *cough* *cough*) cannot be downloaded using a command line utility like wget or curl, so I will leave it up to you to track down the important files.

Once you have downloaded the neccessay files, use the following commands to build your Docker container:

```bash
$ cd ..  #=> Make sure you leave the src directory
$ sudo docker -t r-base-4.0.3:latest
```

## How to interact with the r-base-4.0.3 container

This container is not meant to be used a container for working with R. It is intended to be used as a base for Singularity containers that require R 4.0.3.

## Authors

* Jason C. Nucciarone - NucciTheBoss - jcn23@psu.edu
