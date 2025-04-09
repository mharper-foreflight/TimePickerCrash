#  Crash using DatePicker

#  Steps to reproduce
1. Prepare iPhone for development using Xcode
1. In iOS Settings -> General -> Date & Time, set Date Format to 24-Hour
1. In Xcode, set the run destination to the iPhone
1. Run the app
1. Tap on the time portion of the DatePicker
1. Change the time but do not dismiss the time picker
1. Switch to the Settings -> Date & Time screen, set Date Format to 12-Hour
1. Switch back to the app
1. Tap on the time picker which should still be visible
1. Scroll the minute wheel

#  Expected result
The app should not crash.

#  Actual result
Once the minute wheel settles on a new value, the app crashes with the following error:
```
*** Assertion failure in -[_UIDatePickerCalendarTime initWithDate:calendar:], _UIDatePickerCalendarDateComponent.m:105
*** Terminating app due to uncaught exception 'NSInternalInconsistencyException', reason: 'Invalid parameter not satisfying: date'
*** First throw call stack:
(0x199a552ec 0x196ed9a7c 0x198d51ea0 0x19d64bcb8 0x19d3d7ae0 0x19cad136c 0x19d3d6478 0x19d3d7388 0x19d30c5cc 0x19c6d81b0 0x19c6d8248 0x19d373178 0x19d380094 0x19d37aea0 0x19d37b0d4 0x19d79d364 0x19d79b8a8 0x19c7ed1e8 0x19d797c10 0x19d7970a4 0x19d797ebc 0x19b55c270 0x19b55b860 0x19b55b400 0x19c2ea04c 0x19c2ebb64 0x19c2ea7dc 0x1999adce4 0x1999adc78 0x1999ac9fc 0x1999abc3c 0x1999d0700 0x1e6511190 0x19c5ee240 0x19c5ec470 0x19e248f3c 0x19e248e6c 0x19e248d50 0x1049d063c 0x1049d06e8 0x1c03d3ad8)
libc++abi: terminating due to uncaught exception of type NSException
*** Terminating app due to uncaught exception 'NSInternalInconsistencyException', reason: 'Invalid parameter not satisfying: date'
*** First throw call stack:
(0x199a552ec 0x196ed9a7c 0x198d51ea0 0x19d64bcb8 0x19d3d7ae0 0x19cad136c 0x19d3d6478 0x19d3d7388 0x19d30c5cc 0x19c6d81b0 0x19c6d8248 0x19d373178 0x19d380094 0x19d37aea0 0x19d37b0d4 0x19d79d364 0x19d79b8a8 0x19c7ed1e8 0x19d797c10 0x19d7970a4 0x19d797ebc 0x19b55c270 0x19b55b860 0x19b55b400 0x19c2ea04c 0x19c2ebb64 0x19c2ea7dc 0x1999adce4 0x1999adc78 0x1999ac9fc 0x1999abc3c 0x1999d0700 0x1e6511190 0x19c5ee240 0x19c5ec470 0x19e248f3c 0x19e248e6c 0x19e248d50 0x1049d063c 0x1049d06e8 0x1c03d3ad8)
terminating due to uncaught exception of type NSException
Message from debugger: killed
```


