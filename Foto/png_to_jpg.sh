#! /bin/sh

echo "converting *.png to *.jpg";
echo "list of files";
ls *.png;

for i in *.png; do
    sips -s format jpeg -s formatOptions 80 "${i}" --out "${i%png}jpg";
done

echo "deleting *.png";
rm *.png;
echo "done";

exit 0