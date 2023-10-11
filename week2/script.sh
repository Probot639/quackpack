#!/bin/sh
touch i-was-here.txt
cat /etc/passwd > i-was-here.txt
echo "---" >> i-was-here.txt
echo $PATH >> i-was-here.txt
#________________________________________________________
cd Documents
mkdir word
cd ..
mv i-was-here.txt Documents/word
# This path can be moved somewhere *really* inconvinient
#________________________________________________________
for i in {1..20}; do
	# Remove the "FILE" part to make this actually malicious, also make loop longer
	filename="FILE$(date +%N | sha256sum | base64 | head -c 12)"
	echo "L bozo" > $filename
	# cat config-6.2.0-31-generic >> $filename
	# Uncomment this ^^^ to be reeeallllyyy mean
done
#  _______________________________
#  |                             |
#  | You can do either of these, |
#  | one will be funny,the other |
#  | will remove this file.      |
#  |_____________________________|
#
curl parrot.live
# rm script.sh
