## node-js-action-template

This repository offers a template to build a [GitHub Action](https://developer.github.com/actions/) on [NodeJS](http://nodejs.org/) without really having to understand the complexities of containers - although I recommend you do at some point. My hope is that by letting you feel the power of Actions quicker and hassle free, you'll be more motivated to develop new ones and learn the rest of the technical context.           
 
## Developing your Action locally

All your code is under the `src` folder:

 1. `cd src`
 2. `npm install`

After the project is setup you can just run it as: 

```bash
GITHUB_EVENT_PATH="sample-payload.json" node action.js
```

`GITHUB_EVENT_PATH` is an [environment variable in Actions](https://docs.github.com/en/actions/configuring-and-managing-workflows/using-environment-variables) where the event payload is stored for analysis during execution. For local testing there's a file `src/sample-payload.json` which stores the sample payload of a `push` event. If you're planning on creating a workflow that triggers on another type of event, you can just [fetch a sample payload](https://docs.github.com/en/developers/webhooks-and-events/webhook-events-and-payloads) and replace the contents of that file.  

 
## Testing the Action on GitHub.com

First of all you'll need create a new repository on GitHub.com and push the local changes to it. Another option would have been to fork this repository to your account and clone it from there. You might also want to go into `package.json` and `Dockerfile` to change things like Action name, author, description, icon, colour, etc.

After that just follow the documentation on how to create a new workflow and import your action: [Configuring a workflow](https://docs.github.com/en/actions/configuring-and-managing-workflows/configuring-a-workflow).

## Design considerations

If you've been working with NodeJS you'll surely know since you've started reading this line there are 12 new frameworks and 6 new HTTP libraries to consume an API. While suggestions will be welcome and if valid taken into the project, I'm trying to keep things simple as far as default imports go, but I know opinions will differ wildly on this. Currently the default dependencies on `package.json` are:

 - [standard](https://github.com/standard/standard)  
 - [loglevel](https://github.com/pimterry/loglevel)

## Pull Requests and Issues are Welcome

If you find something that can be improved, or best practices that could be adopted in anything regarding NodeJS, Containers or GitHub Actions themselves, please send a pull request.

:octocat::heart:
