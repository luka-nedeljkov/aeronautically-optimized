#!/bin/bash

print_help() {
	echo "Directory must contains .mrpack file"
	exit 1
}

cd 1.21.1

packwiz mr export

filename=$(ls -1 | grep mrpack)
version=$(echo $filename | sed "s/.mrpack//")

if [[ -z "$filename" ]]; then
	print_help
fi

cp "$filename" ../
cd ..
mv "Aeronautically Optimized-"*.mrpack "$(ls "Aeronautically Optimized-"*.mrpack | sed 's/\.mrpack/-server.mrpack/')"
cd 1.21.1

mkdir temp
mv "$filename" temp
cd temp

unzip "$filename"

rm "$filename"

sed -i "s/\"client\": \"unsupported\"/\"client\": \"required\"/g" modrinth.index.json

zip "$filename" -r overrides modrinth.index.json

mv "$filename" ../..
cd ..
rm -r temp
