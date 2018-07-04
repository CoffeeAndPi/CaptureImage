# CaptureImage
Use Raspberry Pi Zero W and Camera Module to take pictures and save to AWS S3 bucket.

# Install requirements
* sudo apt-get update && sudo apt-get upgrade
* sudo apt-get install imagemagick
* sudo pip install awscli
* aws configure

# Add to crontab
*/2 * * * * sh /home/pi/CaptureImage/capture-image.sh > /dev/null 2>&1
