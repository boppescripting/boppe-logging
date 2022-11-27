# boppe-logging
 An advanced logging system for FiveM.

## Installation
Only one step... drag and drop this resource into your standalone folder!

## Configuration
### Adding a reporting level
Just follow the format of the other levels in the `config.lua` file.
## Disable a level
You may either delete the entire level or change its `enabled` option to `false`.
## Logging to a file
**Logging to a file is only supported on the server side.**

To complete this, add the following code to the levels options:
```lua
file = 'logs/%s.txt',
```
## Usage
**This work for both server and client side.**

exports['boppe-logging']:[s](file, line, options) -> `[s]` stands for the logging level, as defined in the config.
```lua
For example:

exports['boppe-logging']:Error('example_resource/server/main.lua', '33', 'Could not find player.')
```