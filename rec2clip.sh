# Generate UUID
UUID=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1)

# Message
echo Press Q when finished to quit

# FFMPEG pulse record
ffmpeg -hide_banner -loglevel panic -f alsa -i pulse /tmp/$UUID.mp3

# Put file uri into clipboard
echo file:///tmp/$UUID.mp3 | xclip -t text/uri-list -se c 
