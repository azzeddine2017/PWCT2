/*
**	Project : Programming Without Coding Technology (PWCT) Version 2.0
**	File Purpose :  qpixmapclass Component
**	Date : 2018.03.18
**	Author :  Mahmoud Fayed <msfclipper@yahoo.com>
*/

class qpixmapclassComponentController from ComponentControllerParent 

	oView = new qpixmapclassComponentView

	func GenerateAction 

		 
				switch Variable(:Value2) {
					
					case 1 cFunc = "cachekey"
					case 2 cFunc = "convertfromimage"
					case 3 cFunc = "copy"
					case 4 cFunc = "copy_2"
					case 5 cFunc = "createheuristicmask"
					case 6 cFunc = "createmaskfromcolor"
					case 7 cFunc = "defaultdepth"
					case 8 cFunc = "delete"
					case 9 cFunc = "depth"
					case 10 cFunc = "detach"
					case 11 cFunc = "devicepixelratio"
					case 12 cFunc = "fill"
					case 13 cFunc = "fromimage"
					case 14 cFunc = "fromimage_2"
					case 15 cFunc = "fromimagereader"
					case 16 cFunc = "hasalpha"
					case 17 cFunc = "hasalphachannel"
					case 18 cFunc = "height"
					case 19 cFunc = "init"
					case 20 cFunc = "isnull"
					case 21 cFunc = "isqbitmap"
					case 22 cFunc = "loadfromdata"
					case 23 cFunc = "loadfromdata_2"
					case 24 cFunc = "loadpixmap"
					case 25 cFunc = "mask"
					case 26 cFunc = "rect"
					case 27 cFunc = "save"
					case 28 cFunc = "save_2"
					case 29 cFunc = "scaled"
					case 30 cFunc = "scaled_2"
					case 31 cFunc = "scaledtoheight"
					case 32 cFunc = "scaledtowidth"
					case 33 cFunc = "scroll"
					case 34 cFunc = "scroll_2"
					case 35 cFunc = "setdevicepixelratio"
					case 36 cFunc = "setmask"
					case 37 cFunc = "size"
					case 38 cFunc = "swap"
					case 39 cFunc = "toimage"
					case 40 cFunc = "transformed"
					case 41 cFunc = "transformed_2"
					case 42 cFunc = "truematrix"
					case 43 cFunc = "truematrix_2"
					case 44 cFunc = "width"
		
		
				}
		
				# Get the function Name 
					cFuncName = T_CT_QPIXMAPCLASS_IP_VALUE2LIST [Variable(:Value2)]
		
				# Generate Step and Code using common method 
					common_callobjectmethod(cFunc,cFuncName)
				

		return True 

class qpixmapclassComponentView from ComponentViewParent
	 
		Title( T_CT_QPIXMAPCLASS_IP_TITLE )	
		TextBox( T_CT_QPIXMAPCLASS_IP_VALUE , :value)
		ListBox( T_CT_QPIXMAPCLASS_IP_VALUE2 , :value2, 
				T_CT_QPIXMAPCLASS_IP_VALUE2LIST )
		TextBox( T_CT_QPIXMAPCLASS_IP_VALUE3 , :value3)
		TextBox( T_CT_QPIXMAPCLASS_IP_VALUE4 , :value4)
		PageButtons()