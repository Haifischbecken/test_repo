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

RUN pip3 install notebook jupyterlab jupyterhub

COPY . ${HOME}/app
ENV PATH="${HOME}/.local/bin:${PATH}"
USER root
RUN chown -R ${NB_UID} ${HOME}
USER ${NB_USER}
WORKDIR ${HOME}/app
RUN sleep 28800
RUN echo "We build something!"