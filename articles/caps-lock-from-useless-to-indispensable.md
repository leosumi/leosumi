---
title: "Caps lock: from useless to indispensable"
author: Léo Sumi
date: 21 March 2020
title-prefix: Léo Sumi
lang: en
...

Here is a quick tip for Linux users.
In particular vim masters (and maybe some emacs folks).

Thanks to typewriter, keyboard layouts suck.
As it is generally not possible to change your keyboard layout due to years of muscle memory, I propose here a tiny change, easy to implement, but with huge consequencies.
It is a small optimisation that will reduce pains and prevent injuries.

Remap the caps lock key to control **and** escape.

If you are a vim user as I am, you use the control and escape key a lot.
Using the caps lock key will avoid unnecessary pinkie travel.
Pressing control or escape keys become trivial.
If the caps lock key is maintained, the control signal is sent.
And when the key is released, the escape signal is sent.

Just add the following lines in your .profile (or .bashrc) config file.

```bash
# Use caps lock as ctrl and esc
setxkbmap -option 'caps:ctrl_modifier'
xcape -e 'Caps_Lock=Escape'
```

Obviously, the `setxkbmap` and `xcape` commands need to be installed.
