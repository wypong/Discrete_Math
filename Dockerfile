# Dockerfile for binder
# https://mybinder.readthedocs.io/en/latest/tutorials/dockerfile.html

FROM sagemath/sagemath:9.3

RUN sage-jupyter

# Copy the contents of the repo in ${HOME}
COPY --chown=sage:sage . ${HOME}
