FROM python:3.10
RUN pip3 install jupyterhub --no-build-isolation
RUN sleep 60
RUN echo "We build something!"