# Dockerfile for binder
# https://mybinder.readthedocs.io/en/latest/tutorials/dockerfile.html

FROM sagemath/sagemath:8.9
RUN sage -pip install jupyterlab

# Copy the contents of the repo in ${HOME}
COPY --chown=sage:sage . ${HOME}
