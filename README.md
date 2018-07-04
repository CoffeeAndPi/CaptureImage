# CaptureImage
Use Raspberry Pi Zero W and Camera Module to take pictures and save to AWS S3 bucket.

# Add to crontab
*/2 * * * * sh /home/pi/scripts/capture-image.sh > /dev/null 2>&1
