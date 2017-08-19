# Simple Fur Shader For Godot Engine
Godot 3.0 shader using shell texturing to draw layers with pattern to simulate fur.

There is a sphere inside fur ball, that is temp fix of rendering bug, that is currently in the engine.

Godot also doesn't support lots of shader passes right now, so setting like 20 shells in the script, will result in very long startup and low performance.

The parameters texture uses red channel to control fur length, green shannel to mask fur and blue as a pattern of separate hairs.
The blue channel should actually be like a set of dots, but i'm too lazy, so i used white noise for this.

There is also a commented code that simulates wind.

[![screenshot](/screenshot.png)](https://godotengine.org)
