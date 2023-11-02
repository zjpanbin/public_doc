
for file in *.wav
do
	lame -b 160 "$file"  "${file%.wav}.mp3"
done
