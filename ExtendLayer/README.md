Extend Layer AutoHotkey scripts
===============================

This script provides a new navigation and editing layer on a chosen modifier key called '[Extend](https://colemakmods.github.io/ergonomic-mods/extend.html)'. It is similar to and inspired by [DreymaR's Extend Layer](https://forum.colemak.com/topic/2014-extend-extra-extreme/), but this implementation is entirely in AutoHotkey.

The key to act as the modifier is configurable. DreymaR's version uses CapsLock, but I have found LeftAlt is also an excellent choice. The script uses the virtual key "F22" to represent the 'Extend' function. To configure, remap the chosen physical key to the virtual key "F22", and the new layer will become available by holding down that key.

- Provides navigation features such as arrow keys, home, end, page up/down, backspace/delete without the need to move your hands away from the home position.
- Also defines accessible additional shift and control within the layer to allow easy selection and editing of text.
- Detects keyboard scancodes so as to work with any keyboard layout (let me know if this is not the case!). Tested with Qwerty and Colemak.

**[Download](extend_layer_std.ahk) a configuration for Colemak or Qwerty standard layouts:**
![extend_layer_std.png](extend_layer_std.png)

**[Download](extend_layer_wide.ahk) a configuration for the Colemak/Qwerty [Wide Layouts](../KLC/):**
![extend_layer_wide.png](extend_layer_wide.png)

**[Download](extend_layer_dh.ahk) a configuration for the [Colemak Mod-DH](http://colemakmods.github.io/mod-dh/) layout:**
![extend_layer_dh.png](extend_layer_dh.png)

**[Download](extend_layer_wide_dh.ahk) a configuration for the [Colemak Mod-DH](http://colemakmods.github.io/mod-dh/) Wide layout:**
![extend_layer_wide_dh.png](extend_layer_wide_dh.png)
