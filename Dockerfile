FROM python:3.10
ARG NotebookApp.default_url
ARG ip
ARG port
ARG NB_USER=jovyan
ARG NB_UID=1000
ENV USER ${NB_USER}
ENV NB_UID ${NB_UID}
ENV HOME /home/${NB_USER}

RUN adduser \
    --comment "Default user" \
    --uid ${NB_UID} \
    ${NB_USER}

COPY . ${HOME}/app
USER root
RUN chown -R ${NB_UID} ${HOME}
USER ${NB_USER}
WORKDIR ${HOME}/app
RUN pip3 install notebook jupyterlab jupyterhub
RUN sleep 1500
RUN echo "We build something!"