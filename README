Bumpong
=======

Bumpong is a game for two players.
It is written in 6502 assembly language and runs on
an [8-bit Atari computer](http://en.wikipedia.org/wiki/Atari_8-bit_family).

Requirements
------------

The game requires 48 kilobytes of RAM and a good GTIA chip.
Bumpong runs on PAL and NTSC computers.
Joysticks are recommended, but you can play with keyboard.
If you have a stereo (second POKEY) upgrade,
you will hear sounds from the left and right.

Regarding the "good GTIA":
It is unusual for an 8-bit Atari game to use a GTIA graphics mode.
Early 400/800 models had a simpler chip called CTIA
and late XE models have a GTIA chip which has a bug
displaying GTIA modes.
Bumpong doesn't detect the graphics chip (a patch is welcome),
so if you have a wrong chip you will see something ugly.

Gameplay
--------

Bumpong is [pong](http://en.wikipedia.org/wiki/Pong) clone for two players.
The "ball" is the center of the light.
Use joysticks or keyboard to move the paddles:
* left paddle: joystick 1 or up/down arrow keys
* right paddle: joystick 2 or Select/Option keys (Option=up, Select=down)

You can practice before you start a real game for points.
First player to reach ten points wins.

Technical details
-----------------

Bumpong uses most of the 1.7MHz 6502 processing power to create a
[bump mapping](http://en.wikipedia.org/wiki/Bump_mapping) effect
in 80x48 resolution and 16 shades of gray.
Bump code is unrolled to over 21 kilobytes,
so it takes just 9 CPU cycles per pixel.
This gives 25 fps on a PAL machine and 30 fps on an NTSC.

Doing the 80x48 mode in a naive way would result in over 8000 cycles
DMA per frame. Bumpong uses a trick with hardware vertical scroll
to reduce the DMA to about 2000 cycles per frame.

Code is carefully synchronized with the beam so that it doesn't need
double-buffering. The code runs while the playground is displayed
and includes two vertical scroll updates every 8 scanlines.

The source is cross-compiled on a PC with [xasm](http://xasm.atari.org).
This cross-assembler includes many original syntax extensions.
The executable is compressed with [xebin](https://github.com/epi/xebin).
Background was drawn in [Paint.NET](http://www.getpaint.net/)
and converted from PNG to raw 4-bit bitmap with a short Ruby script.
`gem install chunky_png` installs the required Ruby module.

Credits
-------

Game idea, design and programming by Piotr Fusik.
