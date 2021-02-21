# Challenge-One
This project was part my technical skills assessment with a Lebanese multinational company.

## Objective

The libraries expose the following unmanaged functions:

	1. bool getMode1(): Returns true if the library is in mode 1
	2. bool getMode2(): Returns true if the library is in mode 2
	3. bool getMode3(): Returns true if the library is in mode 3
	4. double getValue(int mode, double x): Transforms x and returns a value based on the given mode.

The mode is randomly determined when the library is loaded.
The mode getters would either return "true" after 500 milli-seconds or "false" after 1 second.

You are asked to create a graphical interface project in C#.
The project will contain a wrapper class for the DLL functions.
The GUI will contain a button that will detect the current library mode using the mode getters.

Once the mode is detected, a slider control is displayed.
When the slider value is changed, the `getValue` function is called and the resulting value is displayed in a read-only text box.

## Requirements

-  Wrapper for x64-x86 and load based on operating sysetm
-  Forward button to create a new window while passing the library 'getvalue' display
-  On form load label: factorial textbox: load form -> factorial of 'getvalue' recursive method
-  text read-only
-  On text change -> calculate button
-  Save button -> result event forward to main window close window to main window
