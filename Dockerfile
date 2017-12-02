FROM r-base

WORKDIR	 /home/docker
COPY spiral.r spiral.r
RUN chown docker:docker spiral.r

CMD ["Rscript","spiral.r"]
