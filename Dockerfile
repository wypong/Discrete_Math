# Dockerfile for binder
# https://mybinder.readthedocs.io/en/latest/tutorials/dockerfile.html

FROM sagemath/sagemath:9.1

RUN sage -pip install notebook

# Copy the contents of the repo in ${HOME}
COPY --chown=sage:sage . ${HOME}
