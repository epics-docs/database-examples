# Two counters doing duty-cycling output records

This example runs two counters of configurable length at 1 Hz.
At the end of each interval an output record is processed. This
can be used for switching things on and off based on a duty cycle.

## What is needed to run this example

EPICS base built.

## Using this example

To test this example, you can start the ioc using this command:

``` bash
$EPICS_BIN/softIocPVA -d example4.db
```

On different terminals you can watch the counters and the
action records:

``` bash
$EPICS_BIN/camonitor DUTY_CYC1
$EPICS_BIN/camonitor DUTY_CYC2
$EPICS_BIN/camonitor DUTY_ACT1
$EPICS_BIN/camonitor DUTY_ACT2

# At start, ACT1 is processed (increasing its value by 1), and CYC1
# is restarted. You should then see the CYC1 and CYC2 decreasing.
# Once CYC1 reaches 0, ACT1 is processed (increasing its value by 1)
# and CYC2 is restarted. Once CYC2 reaches 0, ACT2 is processed
# (increasing its value by 1) and CYC1 is restarted (and so on).
#
# You can stop camonitor using <Ctrl+C>
#
# 
# The length of the timers are set via DUTY_TIM1 and DUTY_TIM2.
# Your can set different values (in this case 37 for TIM2) using

$EPICS_BIN/caput DUTY_TIM2 37
```

## Files

* [example3.db](example3.db)
