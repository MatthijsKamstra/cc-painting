package;

import js.html.DivElement;
import js.html.Image;
import js.html.ImageElement;
import js.Browser.*;
import sketcher.util.MathUtil;

class Paint00 {
	var total = 100;

	public function new() {
		init();
	}

	function init() {
		var div:DivElement = cast document.getElementById('painting');
		var maxW = div.clientWidth;
		var maxH = div.clientHeight;

		for (i in 0...total) {
			var dir = 'reverse';
			if (MathUtil.chance(50))
				dir = 'normal';

			var w = MathUtil.randomInt(50, 150);
			var left = MathUtil.randomInt(0, maxW) - (w / 2);
			var top = MathUtil.randomInt(0, maxH) - (w / 2);

			var img = new Image();
			img.width = w;
			img.src = 'img/sprocket.png';
			img.classList.add('rotate');
			img.style.animationDirection = dir;
			img.style.animationDuration = '${MathUtil.randomInt(30, 100) / 10}s';
			img.style.position = 'absolute';
			img.style.left = '${left}px';
			img.style.top = '${top}px';
			div.appendChild(img);
		}
	}
}
