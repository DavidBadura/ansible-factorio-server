help:                                                                           ## shows this help
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_\-\.]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

update:                                                                        ## update servers
	ansible-playbook update.yml

provision:                                                                     ## provision servers
	ansible-playbook site.yml
