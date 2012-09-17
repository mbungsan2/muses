////////////////////////////////////////////////////////////////////////////////
//
//  Muses Radio Player - Radio Streaming player written in Haxe.
//
//  Copyright (C) 2009-2012  Federico Bricker
//
//  This program is free software; you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation; either version 2 of the License, or
//  (at your option) any later version.
//
//  This program is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
//
//  You should have received a copy of the GNU General Public License along
//  with this program; if not, write to the Free Software Foundation, Inc.,
//  51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
//
//  This Project was initially based on FOggPlayer by Bill Farmer. So 
//  my special thanks to him! :)
//
//  Federico Bricker  f bricker [at] gmail [dot] com.
//
////////////////////////////////////////////////////////////////////////////////
package skins.configurableComponents;
import skins.Configurable;

class StatusLed extends flash.display.MovieClip {
	var playMC:flash.display.MovieClip;
	var stopMC:flash.display.MovieClip;
	
    public function new() {
		super();
		playMC = new flash.display.MovieClip();	
		stopMC = new flash.display.MovieClip();	
		addChild(playMC);
		addChild(stopMC);
		playMC.visible=false;
		stopMC.visible=true;
    }
	
	public function configure(skin: skins.Configurable, elem:Xml){
		x=Configurable.parseInt(elem.get('x'),0);
		y=Configurable.parseInt(elem.get('y'),0);
		if(elem.get('imageplay')!=null){
			playMC.addChild(skin.loadImage(elem.get('imageplay')));
		}
		if(elem.get('imagestop')!=null){
			stopMC.addChild(skin.loadImage(elem.get('imagestop')));
		}
	}
	
	public function on(){
		playMC.visible=true;
		stopMC.visible=false;
	}
	
	public function off(){
		playMC.visible=false;
		stopMC.visible=true;
	}
		
}