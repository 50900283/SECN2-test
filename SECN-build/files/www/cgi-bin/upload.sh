#!/bin/sh 
# /www/cgi-bin/upload.sh 

if [ "$REQUEST_METHOD" = "POST" ]; then
TMPOUT=/tmp/fwupdate
cat >$TMPOUT

# uhttpd adds four lines at start and six at the end

# Remove the first four lines 
sed -i 1,4d $TMPOUT 

# Remove the last six lines
sed -i '$d' $TMPOUT
sed -i '$d' $TMPOUT
sed -i '$d' $TMPOUT
sed -i '$d' $TMPOUT
sed -i '$d' $TMPOUT
sed -i '$d' $TMPOUT

fi

exit
