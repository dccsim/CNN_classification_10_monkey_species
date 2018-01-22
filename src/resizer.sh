for d in $(find $1 -type d)
do
	for name in $d/*.jpg; do
		convert -interpolate bicubic -resize 256x256\! $name $name && echo $name
	done
done