﻿package com.vanjajelic {		import flash.display.Sprite;	import flash.events.MouseEvent;	import org.osmf.media.MediaPlayerSprite;	import flash.display.*;		public class UI extends Sprite	{		private var _volControl:VolumeControl;		private var _playPause:PlayPause;		private var _fullScreen:FullScreen;				public var container:Object;		public var progressBar:ProgressBar;				public function UI(cont:*) {						container = cont;						addProgressBar();			addVolumeControl();			addPlayPause();			addFullScreen();		}				private function addVolumeControl():void		{			_volControl  = new VolumeControl(container.mps, container.stage.stageWidth - 20, 230);			addChild(_volControl);		}				private function addPlayPause():void		{			_playPause  = new PlayPause(container.mps, 30, 290);			addChild(_playPause);		}				private function addFullScreen():void		{			_fullScreen  = new FullScreen(2, 290);			addChild(_fullScreen);		}				private function addProgressBar():void		{			progressBar = new ProgressBar( container.mps, container.stage.stageWidth, container.stage.stageHeight );			addChild(progressBar);		}	}	}