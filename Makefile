DEBUG_FLAGS=-g
FULL_VAL_LEAK_CHECK=--leak-check=full --show-leak-kinds=all --track-origins=yes --tool=memcheck --show-reachable=yes
CREATE_VAL_LOGFILE=--log-file=valgrind.txt

test:
	# your test compiling command here

docker_build:
	docker build . -t my_docker_image
	docker container create -v $(PWD):/usr/src --name my_docker_container my_docker_image

docker_start:
	docker start -a s21_matrix_container

valgrind: test
	valgrind $(FULL_VAL_LEAK_CHECK) ./test