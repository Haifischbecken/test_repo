FROM python:3.10
WORKDIR /app
RUN pip3 install notebook jupyterlab jupyterhub
RUN echo "We build something!"