package;

import js.html.Image;
import js.html.ImageElement;
import js.Browser.*;

class Paint00 {
	public function new() {
		trace("x");
		init();
	}

	function init() {
		var div = document.getElementById('painting');

		var img = new Image();
		img.src = 'img/sprocket.png';
		img.classList.add('rotate');

		div.appendChild(img);
	}
}
