builddredd: 
	docker build -t dreddtest -f dredd/DockerDredd .

dreddtest: builddredd
	@docker run\
		-e "DEMOSHASALT=test_salt"\
		dreddtest
