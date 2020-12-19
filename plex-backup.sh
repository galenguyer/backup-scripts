echo 'Backing up Movies'
rclone sync --update --verbose --transfers 5 \
	--checkers 2 --contimeout 60s --timeout 300s --drive-chunk-size 256M \
	--retries 3 --low-level-retries 10 --stats 5s \
	"/opt/media/Movies" "Media:/Movies"

echo 'Backing up Anime'
rclone sync --update --verbose --transfers 5 \
	--checkers 2 --contimeout 60s --timeout 300s --drive-chunk-size 256M \
	--retries 3 --low-level-retries 10 --stats 5s \
	"/opt/media/Anime" "Media:/Anime"

echo 'Backing up TV'
rclone sync --update --verbose --transfers 5 \
	--checkers 2 --contimeout 60s --timeout 300s --drive-chunk-size 256M \
	--retries 3 --low-level-retries 10 --stats 5s \
	"/opt/media/TV" "Media:/TV"

echo 'Backing up Formula 1'
rclone sync --update --verbose --transfers 5 \
	--checkers 2 --contimeout 60s --timeout 300s --drive-chunk-size 256M \
	--retries 3 --low-level-retries 10 --stats 5s \
	"/opt/media/Formula 1" "Media:/Formula 1"

echo 'Backing up Other Media'
rclone sync --update --verbose --transfers 5 \
	--checkers 2 --contimeout 60s --timeout 300s --drive-chunk-size 256M \
	--retries 3 --low-level-retries 10 --stats 5s \
	"/opt/media/Other Media" "Media:/Other Media"

