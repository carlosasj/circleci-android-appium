all: tag

tag:
	git tag $$(date -u "+%F--%H-%M-%S")

generate:
	for api in 23 24 25 26 27 ; do \
		[[ -f android/api-$$api-node8-alpha/Dockerfile ]] && \
			rm -f android/api-$$api-node8-alpha/Dockerfile; \
		sed s/{{ANDROID_API}}/$$api/ < base.Dockerfile > android/api-$$api-node8-alpha/Dockerfile; \
	done

push_master: tag
	git push --tags origin master
