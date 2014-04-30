Dispatch = require './dispatch'

module.exports =
  configDefaults:
    environmentOverridesConfiguration: true
    syntaxCheckOnSave: false
    formatOnSave: true
    fmtArgs: "-w"
    vetOnSave: true
    vetArgs: ""
    lintOnSave: false
    goPath: ""
    goExecutablePath: "/usr/local/go/bin/go"
    gofmtPath: "/usr/local/go/bin/gofmt"
    golintPath: "$GOPATH/bin/golint"
    oraclePath: "$GOPATH/bin/oracle"
    golintArgs: ""
    showErrorPanel: true
    showErrorPanelWhenNoIssuesExist: false

  activate: (state) ->
    @dispatch = new Dispatch()

  deactivate: ->
    @dispatch.destroy()
