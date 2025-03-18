FROM ubuntu:24.04
RUN sleep 900
RUN pip3 install jupyterhub --no-build-isolation
RUN echo "We build something!"