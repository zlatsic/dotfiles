IMAGE=/tmp/i3lock.png
scrot $IMAGE
convert $IMAGE -blur "16x16" $IMAGE
i3lock -i $IMAGE
rm $IMAGE
