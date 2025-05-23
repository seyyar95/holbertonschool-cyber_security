#!/bin/bash

input="$1"

if [[ "$input" == "{xor}"* ]]; then
	input="${input#\{xor\}}"
fi

decodedB64=$(echo "$input" | base64 -d 2>/dev/null)

result=""
for ((i=0; i < ${#decodedB64}; i++))
do
	char_code="${decodedB64:$i:1}"
	decrypted_char=$(( $(printf "%d" "'$char_code") ^ 95))
	result+=$(printf "\\$(printf '%03o' $decrypted_char)")
done

echo "$result"
