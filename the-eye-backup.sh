rclone copy --update --verbose --transfers 5 --copy-links \
	--checkers 2 --contimeout 60s --timeout 300s --drive-chunk-size 256M \
	--retries 3 --low-level-retries 10 --stats 5s \
	"/var/www/the-eye.eu" "the-eye:/"
