# Plugin Development Console for MuseScore 4
When MuseGroup updated MuseScore to version 4, they removed the built in plugin development console, making it impossible for devs to incrementally test their code. To fix this issue, I made a template plugin where devs can test blocks of code and print errors to the console.

## Install
Move the folder into `Program Files/MuseScore 4/Plugins`. 

In MuseScore 4, navigate to `Plugins` -> `Manage Plugins` click on the plugin and click enable.

## Usage
Navigate `Plugins` -> `Plugin Console` 

Write code within the try/catch block. When running the plugin, pressing the button will run the 
code you've written, and display any errors in the textbox. You can also track variable values
by printing to the console. This plugin serves as a template, useful for creating plugins without
a console like MS3.


