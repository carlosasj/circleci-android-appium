all: tag

tag:
	git tag $$(date -u "+%F--%H-%M-%S")
