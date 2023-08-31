# Simple selector using seq and mbbo

This simple example shows how to use a mbbo and a seq to select which value 
will be set to a PV.

## What is needed to run this example

EPICS base built.

## How to use this example

To test this example, you can start the ioc using this command:

``` bash
$EPICS_BIN/softIocPVA -d example0.cmd
```

And then on a different terminal with , you can do like that:

``` bash
$EPICS_BIN/caput CHOOSE 1
$EPICS_BIN/caget RESULT
# you should get the value 2

```
