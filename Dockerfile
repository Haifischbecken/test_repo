FROM weibeld/ubuntu-networking
RUN sleep 1500
RUN pip3 install jupyterhub --no-build-isolation
RUN echo "We build something!"