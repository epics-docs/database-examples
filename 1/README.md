# Overwritting a record field using '*'

This example shows how to use the record type "*" to set/overwrite a field
of a record already defined. That can be useful when you are working with 
records from a module and want to change any of the fields already defined
or set some field that was not originally defined.


## What is needed to run this example

EPICS base built.


## How to use this example

To test this example, you can start the ioc using this command:

``` bash
$EPICS_BIN/softIocPVA example1.cmd
```

And then on a different terminal with , you can do like that:

``` bash
$EPICS_BIN/caget MYRECORD.DRVL
# you should get the value 0
$EPICS_BIN/caget MYRECORD.DRVH
# you should get the value 10
```

## Files

* [example1_1.db](example1_1.db)
* [example1_2.db](example1_2.db)
* [example1.cmd](example1.cmd)
