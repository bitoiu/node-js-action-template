FROM node:10.11.0-alpine

COPY ./src /action

ENTRYPOINT ["/action/entrypoint.sh"]

LABEL "com.github.actions.name"="CHANGEME"
LABEL "com.github.actions.description"="CHANGEME"
LABEL "com.github.actions.icon"="CHANGEME supported icons: https://developer.github.com/actions/creating-github-actions/creating-a-docker-container/#supported-feather-icons"
LABEL "com.github.actions.color"="blue"
LABEL "repository"="CHANGEME"
LABEL "homepage"="CHANGEME"
LABEL "maintainer"="CHANGEME"
