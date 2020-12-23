rclone copy --update --verbose --transfers 5 \
	--checkers 2 --contimeout 60s --timeout 300s --drive-chunk-size 256M \
	--retries 3 --low-level-retries 10 --stats 5s \
	"/opt/torrents" "Torrents:/"
