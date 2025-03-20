FROM python:3.10
RUN pip3 install notebook jupyterlab jupyterhub
RUN echo "We build something!"