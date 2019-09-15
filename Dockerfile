FROM python:3-slim

LABEL "repository"="https://github.com/go-build-it/gqlmod-check-action"
LABEL "homepage"="https://github.com/go-build-it/gqlmod"
LABEL "maintainer"="Jamie Bliss <jamie@ivyleav.es>"

RUN pip install --no-cache-dir --disable-pip-version-check gqlmod gqlmod-cirrusci gqlmod-github

COPY LICENSE README.md *.py *.gql /

ENTRYPOINT ["/action.py"]
CMD []