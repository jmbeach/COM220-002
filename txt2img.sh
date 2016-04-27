base=http://www.i2symbol.com/
url=$(curl -X POST http://www.i2symbol.com/process_form_i2symbol --form style_editor="$1" | grep -o "/force[a-zA-Z0-9_\/\.\?\=]*")
imgurl="${base}${url}png"
echo $imgurl
wget $imgurl -O $2
