// Requires and variable definition
const log = require('loglevel')
const fs = require('fs')

// Uncomment this if you want to check if your local env variables are being set
// console.dir(process.env)

// Method that loads the workflow event JSON payload
let getEventData = function () {
  return JSON.parse(fs.readFileSync(process.env.GITHUB_EVENT_PATH, 'utf8'))
}

// Set default log level or read the environment setting
log.setLevel(process.env.LOG_LEVEL || 'info')

// Print out the event data
log.trace(`Event data: ${JSON.stringify(getEventData())}`)

// Write your code :)
log.info("You are ready to start coding your GitHub Action")
