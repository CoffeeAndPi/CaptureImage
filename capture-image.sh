#!/bin/sh
FILE="/tmp/image.jpg"
NEWFILE="/tmp/new-image.jpg"
DATETIMESTAMP=`date "+%m/%d/%Y %I:%M %p"`
DAY=`date "+%m-%d-%Y"`
TIME=`date "+%H-%M"`

raspistill -o $FILE
convert $FILE -font Liberation-Sans \
	-pointsize 72 -fill white \
	-annotate +100+100 "Raspberry Pi Cam by BradDerstine.com" \
	-annotate +100+200 "$DATETIMESTAMP | Philadelphia, PA, USA" \
	$NEWFILE

/usr/local/bin/aws s3 cp $NEWFILE s3://bradderstine-pi-cam/current.jpg
/usr/local/bin/aws s3 cp $NEWFILE s3://bradderstine-pi-cam/$DAY/$TIME.jpg

rm $FILE
rm $NEWFILE
