# this script is to upload all files to aws s3.
# it needs directory name equals to bucket name.


current=$(basename `pwd`)
echo ----check before----
aws s3 ls s3://$current/

echo ----upload----
# need to add the file you wants to exclude.
aws s3 sync ../$current s3://$current --exclude "upload.sh" --exclude "*/.DS_Store" --exclude ".DS_Store" --delete

# search all files from current directory.
files=`find . -type f`

for file in $files
do
file2=`echo $file | awk '{print substr($0, 3)}'`
echo $file2
file2_basename=`basename $file2`
if [ $file2 != "upload.sh" -a $file2_basename != ".DS_Store" ]; then
  aws s3api put-object-acl --acl public-read --bucket $current --key $file2
fi
done

echo ----check after----
aws s3 ls s3://$current/
