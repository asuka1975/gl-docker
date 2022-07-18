docker build -t gl \
	--build-arg UID=$(id -u)\
	--build-arg GID=$(id -g)\
	--build-arg USERNAME=$(id -un)\
	--build-arg GROUPNAME=$(id -gn) .
