case "$(echo -e "Screen Cast\nAudio Record\nStop Recording" | dmenu -i)" in
    "Screen Cast")
        if [ -e "/tmp/record.pid"] && kill -0 $(<"$PIDFile")
        # Check pid temp file
        # ffmpeg command
        ffmpeg -framerate 60 -f x11grab -video_size 1920x1080 -i :0 test.mp4
        # write pid to temp file
        # Add icon to status bar
        ;;
    "Audio Record")
        # Check pid temp file
        # ffmpeg command
        # write pid to temp file
        # Add icon to status bar
        ;;
    "Stop Recording")
        # Gracefully kill pid
        # Wait 5 seconds
        # Force kill pid
        # Remove Icon
        ;;
esac
