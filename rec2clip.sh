UUID=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1)
echo Press Q when finished to quit
ffmpeg -hide_banner -loglevel panic -f alsa -i pulse /tmp/$UUID-out.mp3
echo file:///tmp/$UUID-out.mp3 | xclip -t text/uri-list -se c 
