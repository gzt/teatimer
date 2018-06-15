<!-- README.md is generated from README.Rmd. Please edit that file -->
teatimer
========

The goal of teatimer is to set an easy (albeit rough) timer. It has one function: `teatimer` which runs `beepr::beep()` after however many minutes or seconds the user specifies. Be forewarned: because this runs using `Sys.sleep()`, it is not running in the background - the R console will not be available while it is running. Plan accordingly.

Example
-------

Here is a basic example of all the options:

``` r
teatimer(time = 0, minutes = TRUE, sound = 1)
```

This immediately plays a 'ping' sound. The `minutes` argument, by default `TRUE`, indicates whether to treat the `time` argument as minutes (`TRUE`) or seconds (`FALSE`). The `sound` argument is passed to `beepr::beep()`. By default, it plays a random sound.
