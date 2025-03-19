FROM weibeld/ubuntu-networking
RUN sleep 1200
RUN pip3 install jupyterhub --no-build-isolation
RUN echo "We build something!"