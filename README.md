track ![status](https://img.shields.io/badge/status-working-green.svg?style=flat-square) ![license](https://img.shields.io/badge/license-GPL3-blue.svg?style=flat-square)
------

**track** is a minimalistic data manager for the shell.

(in development)

### Install

`sudo make install`

_Note: On systems without admin access the binary can be run directly from the
git repo, but will lack `man` support and command completion._

### Uninstall

`sudo make uninstall`

## Usage

```bash
track [options] [metric] [value]

DIRECTORY:
  If the environment variable /home/tomasino/.dropbox/Dropbox/track is set,
  track will store all data in that location. Otherwise the default is the
  current working directory.

USAGE:
  track weight 150            Log 150lbs for today's weight
  track -n 10 calories        Show last 10 days calorie values
  track mood                  Show last value logged for mood

OPTIONS:
  -a                          Show all values of metric
  -n N                        Show N values of metric
  -x                          Remove metric file
  -h                          Show this help
  -v                          Show current version info
  -d                          Debug mode
```

## Contributing

Pull requests are welcome. For major changes, please open an issue first to
discuss what you would like to change.

## License
[GPL3](LICENSE)
