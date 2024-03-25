# Virtualization Benchmarking

Virtualization Benchmarking is a repository containing helper scripts for benchmarking KVM and Docker using phoronix-test-suite.

Intended to be ran on a Cloudlab server that is pre-installed with KVM, Docker, and phoronix-test-suite.

## Installation

Start a new Cloudlab server using a VM image that contains KVM, Docker, and phoronix-test-suite.

*Note: Be sure to login to your own docker profile before executing this script*

1. Clone this repository
```bash
git clone https://github.com/jalvarez1492/virtualization-benchmarking.git
```
2. Run `init.sh` to initalize KVM and the Docker container.
```bash
./init.sh
```

## Usage

### Run the docker container with interactive shell
```bash
docker run -it jalvarez1492/phoronix-test-suite-v2 bash
```
