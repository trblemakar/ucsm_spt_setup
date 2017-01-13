# ucs_ppt
*** This is still in developmet and should be used with caution. Test out on a non production or emulated system first ***
Python program to deploy Cisco UCS pool, policies and templates (ppt) from an input json file.

This build leverages Alpine Linux, python 2.7 and UCS Python SDK v0.9

How to build the image

docker build -t jmakar/ucs_ppt_image https://github.com/trblemakar/ucs_ppt.git

How to run the program

docker run -it --name ucs_ppt jmakar/ucs_ppt_image /bin/sh

python deploy_ucs_ppt.py -i 'ucs_vip' -u 'user_name' -c 'json_config_file' (note: copy the json config file to the ucs_ppt_py dir)
