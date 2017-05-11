.PHONY: ui stopui edit stopedit runmock stopmock

builddredd: 
	@docker build -t dreddtest -f dredd/DockerDredd .

dreddtest: builddredd
	@docker run\
		-e "DEMOSHASALT=test_salt"\
		dreddtest

buildpokemock: 
	@docker build -t pokemock -f pokemock/DockerPokemock .

runmock: buildpokemock
	@docker run -d --name=pokemock -p 8000:8000 pokemock
	@echo "visit http://localhost:8000"

stopmock:
	@docker rm -f pokemock

ui:
	@docker run -d --name swaggerui -p 8080:8080\
		-e API_URL=https://raw.githubusercontent.com/ContainerSolutions/DreddDemo/master/apispec/spec.yml\
		swaggerapi/swagger-ui
	@echo "visit http://localhost:8080"
stopui:
	@docker rm -f swaggerui

edit:
	@docker run -d --name swaggereditor -p 8081:8080 swaggerapi/swagger-editor
	@echo "visit http://localhost:8081"

stopedit:
	@docker rm -f swaggereditor
