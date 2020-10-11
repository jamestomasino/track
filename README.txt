TRACK(1)                    General Commands Manual                   TRACK(1)

NAME
       track - a minimalistic data tracker

SYNOPSIS
       track [options] <metric> [<value>]

DESRIPTION
       Using the command line, track allows you to enter one and only one data
       point on any metric per day. It's great for tracking your weight or how
       many  cups  of  coffee  you drank.  track logs your data for each given
       metric to a CSV file. If you track the same metric twice  in  the  same
       day, the data is updated. Data need not be numeric.

OPTIONS
       Setting the $TRACK_DIR environment variable will change the default lo‐
       cation where the data is stored.  If it is not set the  current  direc‐
       tory is used.

       -a     Show all values of a metric

       -n <N> Show N values of a metric

       -x <metric>
              Remove metric file

       -c     Output in CSV format

       -l     List all metrics being tracked

       -h     Show the help.

       -v     Display current version information.

       -d     Debug mode.

EXAMPLES
       track weight 150
              Log 150lbs for today's weight

       track -n 10 calories
              Show last 10 days calorie values

       track mood tired and hungry
              Log a multi-word phrase as the value for your current mood

       track mood
              Show last value logged for mood

LICENSE
       GNU General Public License v3.0 or later at

       https://www.gnu.org/licenses/gpl-3.0-standalone.html

BUGS
       Report  issues  at  the  git repository at https://github.com/jamestom‐
       asino/track

AUTHOR
       James Tomasino <james (at) tomasino (dot) org>

v2020.10.11                       11 Oct 2020                         TRACK(1)
