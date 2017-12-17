FROM r-base

WORKDIR	 /home/docker
COPY *.r ./
RUN chown docker:docker spiral.r

CMD ["Rscript","spiral.r"]
