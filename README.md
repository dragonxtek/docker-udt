# docker-udt
Project to run [UDP-based Data Transfer (UDT)](https://github.com/dragonxtek/udt) project in docker.

![enter image description here](https://raw.githubusercontent.com/dragonxtek/docker-udt/master/screenshot.png)

## Usage

Create the container with the following sentence:

    docker build .

Run the container with the CONTAINER ID

    docker run -it <CONTAINER ID>

It's ok, your UDT server is running

To transfer files over UDT, you can run the same container as client with the following sentence:

    recvfile <CONTAINER IP> 9000 /tmp/10k.dat file_downloaded.dat



