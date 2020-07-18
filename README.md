# Ruby

## Summary

- [Basic](#basic)
- [Spec](#spec)
- [Instruction](#instruction)
- [unit test](#unit-test)
- [executable file debug](#executable-file-debug)

## Basic

- [ruby](https://www.ruby-lang.org/)
- Extension: [Ruby](https://marketplace.visualstudio.com/items?itemName=rebornix.Ruby)
- Debugger: ruby-debug-ide, debase
- module code: [bubble_sort.rb](https://github.com/74th/vscode-debug-specs/blob/master/ruby/bubble_sort.rb)

## Spec

- OS
  _ ✅ MacOS
  _ ✅ Windows \* ✅ Linux
- Break Point
  _ ✅ break point
  _ ✅ condition break point : it does not work on my machine, always breaks
  _ ❌ function breakpoint
  _ ❌ uncaught exception breakpoint \* ❌ all exception breakpoint
- Step Execution
  _ ✅ Step Over
  _ ✅ Step Into
  _ ✅ Step Out
  _ ✅ Continue
- Variables
  _ ✅ variables views
  _ ✅ watch variables
- Call Stack \* ✅ call stack
- Evaluation
  _ ✅ eval expression to show variables
  _ ✅ eval expression to change variables
- Type of Execution
  _ ✅ debug unit test
  _ ✅ debug executable package \* ✅ remote debugging

## Instruction

install some gems https://github.com/rubyide/vscode-ruby/wiki/1.-Debugger-Installation

install [extension](https://marketplace.visualstudio.com/items?itemName=rebornix.Ruby).

If you use Ubuntu 18.04, it needs `sudo apt install libruby ruby-dev`.

## module code

- module code: [bubble_sort.rb](https://github.com/74th/vscode-debug-specs/blob/master/ruby/bubble_sort.rb)

## debug Unix Test

### test/unit

#### test code

- [test_unit/test_bubble_sort.rb](https://github.com/74th/vscode-debug-specs/blob/master/ruby/test_unit/test_bubble_sort.rb)

#### launch.json

```json
{
  "version": "0.2.0",
  "configurations": [
    {
      "name": "Debug test/unit",
      "type": "Ruby",
      "request": "launch",
      "cwd": "${workspaceRoot}",
      "program": "${workspaceRoot}/test_bubble_sort.rb",
      "args": ["--name=test_bubble_sort"]
    }
  ]
}
```

## debug executable script

### code

- [bin/bin.rb](https://github.com/74th/vscode-debug-specs/blob/master/ruby/bin/bin.rb)

#### launch.json

```json
{
  "version": "0.2.0",
  "configurations": [
    {
      "name": "Debug execute File",
      "type": "Ruby",
      "request": "launch",
      "cwd": "${workspaceRoot}",
      "program": "${workspaceRoot}/bin.rb"
    }
  ]
}
```

## debug remote process

### launch.json

```json
{
  "version": "0.2.0",
  "configurations": [
    {
      "name": "Debug remote",
      "type": "Ruby",
      "request": "attach",
      "cwd": "${workspaceRoot}",
      "remoteHost": "192.168.1.24",
      "remotePort": "1234",
      "remoteWorkspaceRoot": "/home/nnyn/vscode-debug-specs/ruby"
    }
  ]
}
```

### how to

1.  start remote process

```sh
rdebug-ide --host 0.0.0.0 --port 1234 -- bin/bin.rb
```

2.  start vscode debugger
