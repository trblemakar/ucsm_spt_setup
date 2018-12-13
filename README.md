# ucsm_spt
Version 1.6

This is a Python script I built to help me speed up the time to deploy Cisco UCS pools, policies and templates (ppt).  Input is from a json file.

*** This is still in development and should be used with caution. This has been tested on the 3.1(2e) & 3.2(3e) UCS platform emulator. Test out on a non production or emulated system first ***

This build leverages Alpine Linux, Python 2.7 and UCSM Python SDK v0.9 in a Docker container

How to build the image

docker build --no-cache -t ucsm_spt-img https://github.com/trblemakar/ucsm_spt_setup.git

How to run the script

docker run -it --name ucsm_spt_setup ucsm_spt-img /bin/sh

cd ucsm_spt_py/

python deploy_ucsm_spt.py

(example json config files located in ~/ucsm_spt_py/ucs_configs)
