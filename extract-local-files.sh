for i in `cat proprietary-files.txt`
do
`cp ../localfiles/system/$i ../../../vendor/sony/sgp311/proprietary/$i`
done
