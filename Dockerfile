FROM python3.10
RUN pip3 install jupyterhub
RUN sleep 60
RUN echo "We build something!"