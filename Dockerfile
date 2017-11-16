FROM jupyter/r-notebook

RUN conda install -y -c r r-igraph

RUN Rscript -e "source('http://bioconductor.org/biocLite.R'); biocLite()"
RUN Rscript -e "source('http://bioconductor.org/biocLite.R'); biocLite('ChIPseeker')"
RUN Rscript -e "source('http://bioconductor.org/biocLite.R'); biocLite('TxDb.Hsapiens.UCSC.hg38.knownGene')"
RUN Rscript -e "source('http://bioconductor.org/biocLite.R'); biocLite('org.Hs.eg.db')"
RUN Rscript -e "source('http://bioconductor.org/biocLite.R'); biocLite('clusterProfiler')"

ENV LANG en_US.UTF-8  
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8 

RUN mv /home/jovyan/work /home/jovyan/data
ADD ChIP-Seq_analysis_notebook.ipynb /home/jovyan/