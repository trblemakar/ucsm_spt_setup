# ucs_ppt
This is a Python program I built to help me speed up the time to deploy Cisco UCS pools, policies and templates (ppt) from an input json file.

*** This is still in developmet and should be used with caution. This has been tested on the 3.1(2b) UCS emulator. Test out on a non production or emulated system first ***

This build leverages Alpine Linux, Python 2.7 and UCS Python SDK v0.9

How to build the image

docker build -t 'your_username'/ucs_ppt_image https://github.com/trblemakar/ucs_ppt.git

How to run the program

docker run -it --name ucs_ppt 'your_username'/ucs_ppt_image /bin/sh

python deploy_ucs_ppt.py -i 'ucs_vip' -u 'user_name' -c 'json_config_file' (note: copy the json config file to the ucs_ppt_py dir)
