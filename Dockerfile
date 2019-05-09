FROM jupyter/datascience-notebook
MAINTAINER TatsuyaKITABORI

RUN pip install tensorflow
RUN pip install pydotplus
RUN pip install numpy

USER root

RUN apt-get update
RUN apt-get install -y graphviz
RUN jupyter serverextension enable --py jupyterlab

RUN echo "c.NotebookApp.token = ''" >> ~/.jupyter/jupyter_notebook_config.py
RUN echo "c.NotebookApp.password = ''" >> ~/.jupyter/jupyter_notebook_config.py
