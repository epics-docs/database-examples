# Simple counter using calc

This simple example shows how to use a calc to make a counter that
updates at 1 Hz.

## What is needed to run this example

EPICS base built.

## How to use this example

To test this example, you can start the ioc using this command:

``` bash
$EPICS_BIN/softIocPVA -d example2.db
```

And then on a different terminal with , you can do like that:

``` bash
$EPICS_BIN/camonitor COUNTER
# you should see the COUNTER increasing
# you can stop camonitor using <Ctrl+C>

```

## Files

* [example2.db](example2.db)
