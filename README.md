# ucs_ppt
Python program to deploy Cisco UCS pool, policies and templates (ppt) from an input json file.
this build leverages Alpine Linux, python 2.7 and UCS Python SDK v0.9

How to build the image
docker build -t jmakar/ucs_ppt_image https://github.com/trblemakar/ucs_ppt.git

How to run the program
docker run -it --name ucs_ppt jmakar/ucs_ppt_image /bin/sh
python deploy_ucs -i <ucs_vip> -u <user_name> -c <json_config_file>
