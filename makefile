default:
	@python3 photos.py collect user $$(python3 photos.py getid ${USER})

by-id:
	@python3 photos.py collect user ${USER}

install:
	@echo nothing

auth:
	@python3 photos.py auth ${LOGIN} ${PASSWORD}
