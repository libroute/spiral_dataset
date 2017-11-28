FROM r-base

WORKDIR	 /home/docker
COPY spiral.r spiral.r

CMD ["Rscript","spiral.r"]
