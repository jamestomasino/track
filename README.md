track ![calver](https://img.shields.io/badge/calver-2018.05.29-22bfda.svg?style=flat-square) ![status](https://img.shields.io/badge/status-working-green.svg?style=flat-square) ![license](https://img.shields.io/badge/license-GPL3-blue.svg?style=flat-square)
------

**track** is a minimalistic data manager for the shell.

Using the command line, track allows you to enter one and only one data point
on any metric per day. It's great for tracking your weight or how many cups of
coffee you drank. Track logs your data for each given metric to a CSV file. If
you track the same metric twice in the same day, the data is updated. There's
a few handy options for printing out the list data in useful formats as well.

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
  If the environment variable $TODO_DIR is set, track will store all data in
  that location. Otherwise the default is the current working directory.

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
