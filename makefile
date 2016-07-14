install:
	@echo install httpi and jq

auth:
	python3 photos.py auth ${LOGIN} ${PASSWORD}

default:
	python3 photos.py collect user $$(http 'https://api.vk.com/method/users.get?user_ids=${USER}' | jq '.response[].uid')

by-id:
	python3 photos.py collect user ${USER}
