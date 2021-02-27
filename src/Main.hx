package;

import js.Browser.*;

/**
 * @author Matthijs Kamstra aka [mck]
 * MIT
 */
class Main {
	public function new() {

		document.addEventListener("DOMContentLoaded", function(event) {
			console.log('${App.NAME} Dom ready :: build: ${App.getBuildDate()} ');

			// var container = document.getElementById("prop");
			// container.innerHTML = 'html';
			new Paint00();
		});
	}

	static public function main() {
		var app = new Main();
	}
}
