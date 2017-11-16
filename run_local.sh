docker build -t outlierbio/chipseq-nb .
docker run \
	-p 8888:8888 \
	outlierbio/chipseq-nb