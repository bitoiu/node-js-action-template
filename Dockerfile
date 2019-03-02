FROM node:10.11.0-alpine

COPY ./src /action

ENTRYPOINT ["/action/entrypoint.sh"]

LABEL "com.github.actions.name"="NodeJS Action Template"
LABEL "com.github.actions.description"="Template for new GitHub Actions running NodeJS"
LABEL "com.github.actions.icon"="book-open"
LABEL "com.github.actions.color"="green"
LABEL "repository"="https://github.com/bitoiu/node-js-action-template"
LABEL "homepage"="https://github.com/bitoiu/node-js-action-template"
LABEL "maintainer"="https://github.com/bitoiu"
