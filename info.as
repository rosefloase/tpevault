// codebase gentrified from https://github.com/rosefloase/tpemorerewrite
package  {
	import flash.display.*;
	import flash.events.*;
	import flash.external.*;
	import flash.text.*;
	import flash.utils.*;
	import flash.net.*;
	import flash.geom.ColorTransform;

	public class info extends MovieClip {
			public function info() {
			// i love constructing!
		}

		private var textbox;
		private var classname;
		private var currentmc;
		private var innerinfo;

		private var rootie = this;
		private var jsonpackage:subsites = new subsites;
		private var json = (JSON.parse(jsonpackage.jsonobject)).data;

		private function starteverything(){
			// add buttons
			addbutton(lofaf, 239.55, 163)
			addbutton(oldrandomjunk, 159, -84.25)
			addbutton(jfp, -51.65, -105.45)
			addbutton(room23, 63.7, -83.95)
			addbutton(images, 252.8, -60.1)
			addbutton(tpemini, 81.45, 184.15)
			addbutton(thelamestever, -77.95, -216.45)
			addbutton(phone, -35.05, 24.7)
			addbutton(tests, 47.25, -224.95)
			addbutton(indexes, 8.3, -95.9)
			addbutton(vault, 200.9, -222)


			// add textbox so it's the highest object
			textbox = new infoMC();
			rootie.addChild(textbox)
			textbox.x = 5.95
			textbox.y = -218.45
			innerinfo = textbox.innerMC;
		}

		private function addbutton(gif, x, y){
			var button:sexybutton = new sexybutton();
			button.displaymc = new gif;
			button.init();
			rootie.addChild(button)
			button.x = x
			button.y = y

			button.addEventListener(MouseEvent.CLICK, function(event:MouseEvent):void {
				tbchange(gif);
			});
		}

		private function tbchange(whatmc){
			currentmc = whatmc;
			classname = getQualifiedClassName(whatmc);
			
			innerinfo.image.gotoAndStop(json[classname].image);
			innerinfo.title.text = json[classname].sitename;
			innerinfo.date.text = json[classname].timerange;
			innerinfo.scrollbox.text = json[classname].desc;
			innerinfo.scrollbar.scrollTarget = innerinfo.scrollbox;
			innerinfo.scrollbar.scrollPosition = 0;

			innerinfo.closetb.addEventListener(MouseEvent.CLICK, closetb);
			innerinfo.gotosite.addEventListener(MouseEvent.CLICK, opensite);

			textbox.gotoAndPlay("show");
		}

		private function closetb(asdf){
			innerinfo.gotosite.removeEventListener(MouseEvent.CLICK, opensite)
			innerinfo.closetb.removeEventListener(MouseEvent.CLICK, closetb)
			textbox.gotoAndPlay("hide")
		}
		private function opensite(asdf){
			ExternalInterface.call("opensite", json[classname].siteurl)
		}

	}
	
}
