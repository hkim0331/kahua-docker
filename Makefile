TAG = hkim0331/kahua
WD  = `pwd`

build:
	docker build -t ${TAG} .
	docker run --rm \
	 	-v ${WD}/srv:/srv \
	 	-v ${WD}/opt:/opt \
	 	${TAG} /srv/install.sh

run:
	make clean
	docker run \
		-v ${WD}/srv:/srv \
		-v ${WD}/opt:/opt \
		-p 8888:8888 \
		${TAG}

clean:
	${RM} srv/site/run/* srv/site/socket/*
