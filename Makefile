USERNAME := USERNAME
DOMAIN := DOMAIN
GIT_REPOSITORY := /home/$(USERNAME)/Status.git

nothing:
	@echo 'Type `make remote` to update the remote post-receive script.'

remote:
	scp post-receive $(USERNAME)@$(DOMAIN):$(GIT_REPOSITORY)/hooks/post-receive

.PHONY: nothing remote ;
