package;


import haxe.io.Bytes;
import lime.utils.AssetBundle;
import lime.utils.AssetLibrary;
import lime.utils.AssetManifest;
import lime.utils.Assets;

#if sys
import sys.FileSystem;
#end

@:access(lime.utils.Assets)


@:keep @:dox(hide) class ManifestResources {


	public static var preloadLibraries:Array<AssetLibrary>;
	public static var preloadLibraryNames:Array<String>;
	public static var rootPath:String;


	public static function init (config:Dynamic):Void {

		preloadLibraries = new Array ();
		preloadLibraryNames = new Array ();

		rootPath = null;

		if (config != null && Reflect.hasField (config, "rootPath")) {

			rootPath = Reflect.field (config, "rootPath");

		}

		if (rootPath == null) {

			#if (ios || tvos || emscripten)
			rootPath = "assets/";
			#elseif android
			rootPath = "";
			#elseif console
			rootPath = lime.system.System.applicationDirectory;
			#else
			rootPath = "./";
			#end

		}

		#if (openfl && !flash && !display)
		openfl.text.Font.registerFont (__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__flixel_fonts_monsterrat_ttf);
		
		#end

		var data, manifest, library, bundle;

		#if kha

		null
		library = AssetLibrary.fromManifest (manifest);
		Assets.registerLibrary ("null", library);

		if (library != null) preloadLibraries.push (library);
		else preloadLibraryNames.push ("null");

		#else

		data = '{"name":null,"assets":"aoy4:pathy34:assets%2Fdata%2Fdata-goes-here.txty4:sizezy4:typey4:TEXTy2:idR1y7:preloadtgoR0y44:assets%2Fimages%2FconducerAssets_Sprites.pngR2i2237914R3y5:IMAGER5R7R6tgoR0y44:assets%2Fimages%2FconducerAssets_Sprites.xmlR2i9951R3R4R5R9R6tgoR0y27:assets%2Fimages%2Fgrass.pngR2i201390R3R8R5R10R6tgoR0y32:assets%2Fimages%2FhandCursor.pngR2i175121R3R8R5R11R6tgoR0y34:assets%2Fimages%2Fhojaya_OHAYO.pngR2i27451R3R8R5R12R6tgoR0y34:assets%2Fimages%2Fhojaya_OHAYO.xmlR2i612R3R4R5R13R6tgoR0y36:assets%2Fimages%2Fimages-go-here.txtR2zR3R4R5R14R6tgoR0y35:assets%2Fimages%2FLoadingSlider.pngR2i11021R3R8R5R15R6tgoR0y35:assets%2Fimages%2FLoadingSlider.xmlR2i2214R3R4R5R16R6tgoR0y31:assets%2Fimages%2FLoginWith.pngR2i10672R3R8R5R17R6tgoR0y31:assets%2Fimages%2FlogoBrons.pngR2i1169269R3R8R5R18R6tgoR0y31:assets%2Fimages%2FlogoBrons.xmlR2i2295R3R4R5R19R6tgoR0y31:assets%2Fimages%2Fmountains.pngR2i295508R3R8R5R20R6tgoR0y37:assets%2Fimages%2FOptionsShitGama.pngR2i7691R3R8R5R21R6tgoR0y37:assets%2Fimages%2FOptionsShitUser.pngR2i5642R3R8R5R22R6tgoR0y39:assets%2Fimages%2FOptionsShitVolume.pngR2i7359R3R8R5R23R6tgoR0y37:assets%2Fimages%2FplayOptionsShit.pngR2i9761R3R8R5R24R6tgoR0y45:assets%2Fimages%2FplayOptionsShitSelected.pngR2i55943R3R8R5R25R6tgoR0y29:assets%2Fimages%2FproShit.pngR2i682362R3R8R5R26R6tgoR0y29:assets%2Fimages%2FproShit.xmlR2i563R3R4R5R27R6tgoR0y41:assets%2Fimages%2FsettingsOptionsShit.pngR2i15778R3R8R5R28R6tgoR0y49:assets%2Fimages%2FsettingsOptionsShitSelected.pngR2i84971R3R8R5R29R6tgoR0y25:assets%2Fimages%2Fsky.pngR2i44850R3R8R5R30R6tgoR0y25:assets%2Fimages%2Fsol.pngR2i332999R3R8R5R31R6tgoR0y27:assets%2Fimages%2Ftable.pngR2i68598R3R8R5R32R6tgoR0y34:assets%2Fimages%2FtableObjects.pngR2i140343R3R8R5R33R6tgoR0y34:assets%2Fimages%2FtableObjects.xmlR2i740R3R4R5R34R6tgoR0y31:assets%2Fimages%2FtaxiChulo.pngR2i171318R3R8R5R35R6tgoR0y31:assets%2Fimages%2FtaxiChulo.xmlR2i631R3R4R5R36R6tgoR0y36:assets%2Fmusic%2Fmusic-goes-here.txtR2zR3R4R5R37R6tgoR0y36:assets%2Fsounds%2Fsounds-go-here.txtR2zR3R4R5R38R6tgoR2i2114R3y5:MUSICR5y26:flixel%2Fsounds%2Fbeep.mp3y9:pathGroupaR40y26:flixel%2Fsounds%2Fbeep.ogghR6tgoR2i39706R3R39R5y28:flixel%2Fsounds%2Fflixel.mp3R41aR43y28:flixel%2Fsounds%2Fflixel.ogghR6tgoR2i5794R3y5:SOUNDR5R42R41aR40R42hgoR2i33629R3R45R5R44R41aR43R44hgoR2i15744R3y4:FONTy9:classNamey35:__ASSET__flixel_fonts_nokiafc22_ttfR5y30:flixel%2Ffonts%2Fnokiafc22.ttfR6tgoR2i29724R3R46R47y36:__ASSET__flixel_fonts_monsterrat_ttfR5y31:flixel%2Ffonts%2Fmonsterrat.ttfR6tgoR0y33:flixel%2Fimages%2Fui%2Fbutton.pngR2i519R3R8R5R52R6tgoR0y36:flixel%2Fimages%2Flogo%2Fdefault.pngR2i3280R3R8R5R53R6tgoR0y34:flixel%2Fflixel-ui%2Fimg%2Fbox.pngR2i912R3R8R5R54R6tgoR0y37:flixel%2Fflixel-ui%2Fimg%2Fbutton.pngR2i433R3R8R5R55R6tgoR0y48:flixel%2Fflixel-ui%2Fimg%2Fbutton_arrow_down.pngR2i446R3R8R5R56R6tgoR0y48:flixel%2Fflixel-ui%2Fimg%2Fbutton_arrow_left.pngR2i459R3R8R5R57R6tgoR0y49:flixel%2Fflixel-ui%2Fimg%2Fbutton_arrow_right.pngR2i511R3R8R5R58R6tgoR0y46:flixel%2Fflixel-ui%2Fimg%2Fbutton_arrow_up.pngR2i493R3R8R5R59R6tgoR0y42:flixel%2Fflixel-ui%2Fimg%2Fbutton_thin.pngR2i247R3R8R5R60R6tgoR0y44:flixel%2Fflixel-ui%2Fimg%2Fbutton_toggle.pngR2i534R3R8R5R61R6tgoR0y40:flixel%2Fflixel-ui%2Fimg%2Fcheck_box.pngR2i922R3R8R5R62R6tgoR0y41:flixel%2Fflixel-ui%2Fimg%2Fcheck_mark.pngR2i946R3R8R5R63R6tgoR0y37:flixel%2Fflixel-ui%2Fimg%2Fchrome.pngR2i253R3R8R5R64R6tgoR0y42:flixel%2Fflixel-ui%2Fimg%2Fchrome_flat.pngR2i212R3R8R5R65R6tgoR0y43:flixel%2Fflixel-ui%2Fimg%2Fchrome_inset.pngR2i192R3R8R5R66R6tgoR0y43:flixel%2Fflixel-ui%2Fimg%2Fchrome_light.pngR2i214R3R8R5R67R6tgoR0y44:flixel%2Fflixel-ui%2Fimg%2Fdropdown_mark.pngR2i156R3R8R5R68R6tgoR0y41:flixel%2Fflixel-ui%2Fimg%2Ffinger_big.pngR2i1724R3R8R5R69R6tgoR0y43:flixel%2Fflixel-ui%2Fimg%2Ffinger_small.pngR2i294R3R8R5R70R6tgoR0y38:flixel%2Fflixel-ui%2Fimg%2Fhilight.pngR2i129R3R8R5R71R6tgoR0y36:flixel%2Fflixel-ui%2Fimg%2Finvis.pngR2i128R3R8R5R72R6tgoR0y41:flixel%2Fflixel-ui%2Fimg%2Fminus_mark.pngR2i136R3R8R5R73R6tgoR0y40:flixel%2Fflixel-ui%2Fimg%2Fplus_mark.pngR2i147R3R8R5R74R6tgoR0y36:flixel%2Fflixel-ui%2Fimg%2Fradio.pngR2i191R3R8R5R75R6tgoR0y40:flixel%2Fflixel-ui%2Fimg%2Fradio_dot.pngR2i153R3R8R5R76R6tgoR0y37:flixel%2Fflixel-ui%2Fimg%2Fswatch.pngR2i185R3R8R5R77R6tgoR0y34:flixel%2Fflixel-ui%2Fimg%2Ftab.pngR2i201R3R8R5R78R6tgoR0y39:flixel%2Fflixel-ui%2Fimg%2Ftab_back.pngR2i210R3R8R5R79R6tgoR0y44:flixel%2Fflixel-ui%2Fimg%2Ftooltip_arrow.pngR2i18509R3R8R5R80R6tgoR0y39:flixel%2Fflixel-ui%2Fxml%2Fdefaults.xmlR2i1263R3R4R5R81R6tgoR0y53:flixel%2Fflixel-ui%2Fxml%2Fdefault_loading_screen.xmlR2i1953R3R4R5R82R6tgoR0y44:flixel%2Fflixel-ui%2Fxml%2Fdefault_popup.xmlR2i1848R3R4R5R83R6tgh","rootPath":null,"version":2,"libraryArgs":[],"libraryType":null}';
		manifest = AssetManifest.parse (data, rootPath);
		library = AssetLibrary.fromManifest (manifest);
		Assets.registerLibrary ("default", library);
		

		library = Assets.getLibrary ("default");
		if (library != null) preloadLibraries.push (library);
		else preloadLibraryNames.push ("default");
		

		#end

	}


}


#if kha

null

#else

#if !display
#if flash

@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_data_goes_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_conducerassets_sprites_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_conducerassets_sprites_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_grass_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_handcursor_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_hojaya_ohayo_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_hojaya_ohayo_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_images_go_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_loadingslider_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_loadingslider_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_loginwith_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_logobrons_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_logobrons_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_mountains_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_optionsshitgama_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_optionsshituser_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_optionsshitvolume_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_playoptionsshit_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_playoptionsshitselected_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_proshit_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_proshit_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_settingsoptionsshit_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_settingsoptionsshitselected_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_sky_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_sol_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_table_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_tableobjects_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_tableobjects_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_taxichulo_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_taxichulo_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_music_goes_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_sounds_go_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_images_ui_button_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_images_logo_default_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_box_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_down_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_left_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_right_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_up_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_thin_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_toggle_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_check_box_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_check_mark_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_flat_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_inset_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_light_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_dropdown_mark_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_finger_big_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_finger_small_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_hilight_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_invis_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_minus_mark_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_plus_mark_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_radio_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_radio_dot_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_swatch_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_tab_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_tab_back_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_tooltip_arrow_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_xml_defaults_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_xml_default_loading_screen_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_xml_default_popup_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_default_json extends null { }


#elseif (desktop || cpp)

@:keep @:file("assets/data/data-goes-here.txt") @:noCompletion #if display private #end class __ASSET__assets_data_data_goes_here_txt extends haxe.io.Bytes {}
@:keep @:image("assets/images/conducerAssets_Sprites.png") @:noCompletion #if display private #end class __ASSET__assets_images_conducerassets_sprites_png extends lime.graphics.Image {}
@:keep @:file("assets/images/conducerAssets_Sprites.xml") @:noCompletion #if display private #end class __ASSET__assets_images_conducerassets_sprites_xml extends haxe.io.Bytes {}
@:keep @:image("assets/images/grass.png") @:noCompletion #if display private #end class __ASSET__assets_images_grass_png extends lime.graphics.Image {}
@:keep @:image("assets/images/handCursor.png") @:noCompletion #if display private #end class __ASSET__assets_images_handcursor_png extends lime.graphics.Image {}
@:keep @:image("assets/images/hojaya_OHAYO.png") @:noCompletion #if display private #end class __ASSET__assets_images_hojaya_ohayo_png extends lime.graphics.Image {}
@:keep @:file("assets/images/hojaya_OHAYO.xml") @:noCompletion #if display private #end class __ASSET__assets_images_hojaya_ohayo_xml extends haxe.io.Bytes {}
@:keep @:file("assets/images/images-go-here.txt") @:noCompletion #if display private #end class __ASSET__assets_images_images_go_here_txt extends haxe.io.Bytes {}
@:keep @:image("assets/images/LoadingSlider.png") @:noCompletion #if display private #end class __ASSET__assets_images_loadingslider_png extends lime.graphics.Image {}
@:keep @:file("assets/images/LoadingSlider.xml") @:noCompletion #if display private #end class __ASSET__assets_images_loadingslider_xml extends haxe.io.Bytes {}
@:keep @:image("assets/images/LoginWith.png") @:noCompletion #if display private #end class __ASSET__assets_images_loginwith_png extends lime.graphics.Image {}
@:keep @:image("assets/images/logoBrons.png") @:noCompletion #if display private #end class __ASSET__assets_images_logobrons_png extends lime.graphics.Image {}
@:keep @:file("assets/images/logoBrons.xml") @:noCompletion #if display private #end class __ASSET__assets_images_logobrons_xml extends haxe.io.Bytes {}
@:keep @:image("assets/images/mountains.png") @:noCompletion #if display private #end class __ASSET__assets_images_mountains_png extends lime.graphics.Image {}
@:keep @:image("assets/images/OptionsShitGama.png") @:noCompletion #if display private #end class __ASSET__assets_images_optionsshitgama_png extends lime.graphics.Image {}
@:keep @:image("assets/images/OptionsShitUser.png") @:noCompletion #if display private #end class __ASSET__assets_images_optionsshituser_png extends lime.graphics.Image {}
@:keep @:image("assets/images/OptionsShitVolume.png") @:noCompletion #if display private #end class __ASSET__assets_images_optionsshitvolume_png extends lime.graphics.Image {}
@:keep @:image("assets/images/playOptionsShit.png") @:noCompletion #if display private #end class __ASSET__assets_images_playoptionsshit_png extends lime.graphics.Image {}
@:keep @:image("assets/images/playOptionsShitSelected.png") @:noCompletion #if display private #end class __ASSET__assets_images_playoptionsshitselected_png extends lime.graphics.Image {}
@:keep @:image("assets/images/proShit.png") @:noCompletion #if display private #end class __ASSET__assets_images_proshit_png extends lime.graphics.Image {}
@:keep @:file("assets/images/proShit.xml") @:noCompletion #if display private #end class __ASSET__assets_images_proshit_xml extends haxe.io.Bytes {}
@:keep @:image("assets/images/settingsOptionsShit.png") @:noCompletion #if display private #end class __ASSET__assets_images_settingsoptionsshit_png extends lime.graphics.Image {}
@:keep @:image("assets/images/settingsOptionsShitSelected.png") @:noCompletion #if display private #end class __ASSET__assets_images_settingsoptionsshitselected_png extends lime.graphics.Image {}
@:keep @:image("assets/images/sky.png") @:noCompletion #if display private #end class __ASSET__assets_images_sky_png extends lime.graphics.Image {}
@:keep @:image("assets/images/sol.png") @:noCompletion #if display private #end class __ASSET__assets_images_sol_png extends lime.graphics.Image {}
@:keep @:image("assets/images/table.png") @:noCompletion #if display private #end class __ASSET__assets_images_table_png extends lime.graphics.Image {}
@:keep @:image("assets/images/tableObjects.png") @:noCompletion #if display private #end class __ASSET__assets_images_tableobjects_png extends lime.graphics.Image {}
@:keep @:file("assets/images/tableObjects.xml") @:noCompletion #if display private #end class __ASSET__assets_images_tableobjects_xml extends haxe.io.Bytes {}
@:keep @:image("assets/images/taxiChulo.png") @:noCompletion #if display private #end class __ASSET__assets_images_taxichulo_png extends lime.graphics.Image {}
@:keep @:file("assets/images/taxiChulo.xml") @:noCompletion #if display private #end class __ASSET__assets_images_taxichulo_xml extends haxe.io.Bytes {}
@:keep @:file("assets/music/music-goes-here.txt") @:noCompletion #if display private #end class __ASSET__assets_music_music_goes_here_txt extends haxe.io.Bytes {}
@:keep @:file("assets/sounds/sounds-go-here.txt") @:noCompletion #if display private #end class __ASSET__assets_sounds_sounds_go_here_txt extends haxe.io.Bytes {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/flixel/4,10,0/assets/sounds/beep.mp3") @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_mp3 extends haxe.io.Bytes {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/flixel/4,10,0/assets/sounds/flixel.mp3") @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_mp3 extends haxe.io.Bytes {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/flixel/4,10,0/assets/sounds/beep.ogg") @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_ogg extends haxe.io.Bytes {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/flixel/4,10,0/assets/sounds/flixel.ogg") @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_ogg extends haxe.io.Bytes {}
@:keep @:font("export/html5/obj/webfont/nokiafc22.ttf") @:noCompletion #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends lime.text.Font {}
@:keep @:font("export/html5/obj/webfont/monsterrat.ttf") @:noCompletion #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends lime.text.Font {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel/4,10,0/assets/images/ui/button.png") @:noCompletion #if display private #end class __ASSET__flixel_images_ui_button_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel/4,10,0/assets/images/logo/default.png") @:noCompletion #if display private #end class __ASSET__flixel_images_logo_default_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,4,0/assets/images/box.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_box_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,4,0/assets/images/button.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,4,0/assets/images/button_arrow_down.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_down_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,4,0/assets/images/button_arrow_left.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_left_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,4,0/assets/images/button_arrow_right.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_right_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,4,0/assets/images/button_arrow_up.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_up_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,4,0/assets/images/button_thin.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_thin_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,4,0/assets/images/button_toggle.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_toggle_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,4,0/assets/images/check_box.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_check_box_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,4,0/assets/images/check_mark.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_check_mark_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,4,0/assets/images/chrome.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,4,0/assets/images/chrome_flat.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_flat_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,4,0/assets/images/chrome_inset.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_inset_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,4,0/assets/images/chrome_light.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_light_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,4,0/assets/images/dropdown_mark.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_dropdown_mark_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,4,0/assets/images/finger_big.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_finger_big_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,4,0/assets/images/finger_small.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_finger_small_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,4,0/assets/images/hilight.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_hilight_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,4,0/assets/images/invis.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_invis_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,4,0/assets/images/minus_mark.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_minus_mark_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,4,0/assets/images/plus_mark.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_plus_mark_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,4,0/assets/images/radio.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_radio_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,4,0/assets/images/radio_dot.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_radio_dot_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,4,0/assets/images/swatch.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_swatch_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,4,0/assets/images/tab.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_tab_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,4,0/assets/images/tab_back.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_tab_back_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,4,0/assets/images/tooltip_arrow.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_tooltip_arrow_png extends lime.graphics.Image {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/flixel-ui/2,4,0/assets/xml/defaults.xml") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_xml_defaults_xml extends haxe.io.Bytes {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/flixel-ui/2,4,0/assets/xml/default_loading_screen.xml") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_xml_default_loading_screen_xml extends haxe.io.Bytes {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/flixel-ui/2,4,0/assets/xml/default_popup.xml") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_xml_default_popup_xml extends haxe.io.Bytes {}
@:keep @:file("") @:noCompletion #if display private #end class __ASSET__manifest_default_json extends haxe.io.Bytes {}



#else

@:keep @:expose('__ASSET__flixel_fonts_nokiafc22_ttf') @:noCompletion #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "flixel/fonts/nokiafc22"; #else ascender = 2048; descender = -512; height = 2816; numGlyphs = 172; underlinePosition = -640; underlineThickness = 256; unitsPerEM = 2048; #end name = "Nokia Cellphone FC Small"; super (); }}
@:keep @:expose('__ASSET__flixel_fonts_monsterrat_ttf') @:noCompletion #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "flixel/fonts/monsterrat"; #else ascender = 968; descender = -251; height = 1219; numGlyphs = 263; underlinePosition = -150; underlineThickness = 50; unitsPerEM = 1000; #end name = "Monsterrat"; super (); }}


#end

#if (openfl && !flash)

#if html5
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_nokiafc22_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_nokiafc22_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_monsterrat_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_monsterrat_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_monsterrat_ttf ()); super (); }}

#else
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_nokiafc22_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_nokiafc22_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_monsterrat_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_monsterrat_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_monsterrat_ttf ()); super (); }}

#end

#end
#end

#end
