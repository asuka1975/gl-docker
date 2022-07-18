docker run -it --rm \
	--gpus all \
	--hostname=gltest \
	-e DISPLAY=$DISPLAY \
	-e NVIDIA_DRIVER_CAPABILITIES=all \
	-e NVIDIA_VISIBLE_DEVICES=all \
	-v /tmp/.X11-unix:/tmp/.X11-unix \
	gl 
