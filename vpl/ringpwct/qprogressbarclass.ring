/*
**	Project : Programming Without Coding Technology (PWCT) Version 2.0
**	File Purpose :  qprogressbarclass Component
**	Date : 2018.03.14
**	Author :  Mahmoud Fayed <msfclipper@yahoo.com>
*/

class qprogressbarclassComponentController from ComponentControllerParent 

	oView = new qprogressbarclassComponentView

	func GenerateAction 

		
				switch Variable(:Value2) {
					
					case 1 cFunc = "acceptdrops"
					case 2 cFunc = "accessibledescription"
					case 3 cFunc = "accessiblename"
					case 4 cFunc = "activatewindow"
					case 5 cFunc = "addaction"
					case 6 cFunc = "adjustsize"
					case 7 cFunc = "alignment"
					case 8 cFunc = "autofillbackground"
					case 9 cFunc = "backgroundrole"
					case 10 cFunc = "basesize"
					case 11 cFunc = "blocksignals"
					case 12 cFunc = "childat"
					case 13 cFunc = "children"
					case 14 cFunc = "childrenrect"
					case 15 cFunc = "childrenregion"
					case 16 cFunc = "clearfocus"
					case 17 cFunc = "clearmask"
					case 18 cFunc = "close"
					case 19 cFunc = "contentsmargins"
					case 20 cFunc = "contentsrect"
					case 21 cFunc = "contextmenupolicy"
					case 22 cFunc = "cursor"
					case 23 cFunc = "delete"
					case 24 cFunc = "deletelater"
					case 25 cFunc = "dumpobjectinfo"
					case 26 cFunc = "dumpobjecttree"
					case 27 cFunc = "effectivewinid"
					case 28 cFunc = "ensurepolished"
					case 29 cFunc = "find"
					case 30 cFunc = "focuspolicy"
					case 31 cFunc = "focusproxy"
					case 32 cFunc = "focuswidget"
					case 33 cFunc = "font"
					case 34 cFunc = "fontinfo"
					case 35 cFunc = "foregroundrole"
					case 36 cFunc = "format"
					case 37 cFunc = "framegeometry"
					case 38 cFunc = "framesize"
					case 39 cFunc = "geometry"
					case 40 cFunc = "getcontentsmargins"
					case 41 cFunc = "getvaluechangedevent"
					case 42 cFunc = "grab"
					case 43 cFunc = "grabgesture"
					case 44 cFunc = "grabkeyboard"
					case 45 cFunc = "grabmouse"
					case 46 cFunc = "grabshortcut"
					case 47 cFunc = "graphicseffect"
					case 48 cFunc = "graphicsproxywidget"
					case 49 cFunc = "hasfocus"
					case 50 cFunc = "hasmousetracking"
					case 51 cFunc = "height"
					case 52 cFunc = "heightforwidth"
					case 53 cFunc = "hide"
					case 54 cFunc = "inherits"
					case 55 cFunc = "init"
					case 56 cFunc = "inputmethodhints"
					case 57 cFunc = "inputmethodquery"
					case 58 cFunc = "insertaction"
					case 59 cFunc = "installeventfilter"
					case 60 cFunc = "invertedappearance"
					case 61 cFunc = "isactivewindow"
					case 62 cFunc = "isancestorof"
					case 63 cFunc = "isenabled"
					case 64 cFunc = "isenabledto"
					case 65 cFunc = "isfullscreen"
					case 66 cFunc = "ishidden"
					case 67 cFunc = "ismaximized"
					case 68 cFunc = "isminimized"
					case 69 cFunc = "ismodal"
					case 70 cFunc = "istextvisible"
					case 71 cFunc = "isvisible"
					case 72 cFunc = "isvisibleto"
					case 73 cFunc = "iswidgettype"
					case 74 cFunc = "iswindow"
					case 75 cFunc = "iswindowmodified"
					case 76 cFunc = "keyboardgrabber"
					case 77 cFunc = "killtimer"
					case 78 cFunc = "layout"
					case 79 cFunc = "layoutdirection"
					case 80 cFunc = "locale"
					case 81 cFunc = "lower"
					case 82 cFunc = "mapfrom"
					case 83 cFunc = "mapfromglobal"
					case 84 cFunc = "mapfromparent"
					case 85 cFunc = "mapto"
					case 86 cFunc = "maptoglobal"
					case 87 cFunc = "maptoparent"
					case 88 cFunc = "mask"
					case 89 cFunc = "maximum"
					case 90 cFunc = "maximumheight"
					case 91 cFunc = "maximumsize"
					case 92 cFunc = "maximumwidth"
					case 93 cFunc = "minimum"
					case 94 cFunc = "minimumheight"
					case 95 cFunc = "minimumsize"
					case 96 cFunc = "minimumwidth"
					case 97 cFunc = "mousegrabber"
					case 98 cFunc = "move"
					case 99 cFunc = "movetothread"
					case 100 cFunc = "nativeparentwidget"
					case 101 cFunc = "nextinfocuschain"
					case 102 cFunc = "normalgeometry"
					case 103 cFunc = "objectname"
					case 104 cFunc = "orientation"
					case 105 cFunc = "overridewindowflags"
					case 106 cFunc = "palette"
					case 107 cFunc = "parent"
					case 108 cFunc = "parentwidget"
					case 109 cFunc = "pos"
					case 110 cFunc = "previousinfocuschain"
					case 111 cFunc = "property"
					case 112 cFunc = "raise"
					case 113 cFunc = "rect"
					case 114 cFunc = "releasekeyboard"
					case 115 cFunc = "releasemouse"
					case 116 cFunc = "releaseshortcut"
					case 117 cFunc = "removeaction"
					case 118 cFunc = "removeeventfilter"
					case 119 cFunc = "render"
					case 120 cFunc = "repaint"
					case 121 cFunc = "reset"
					case 122 cFunc = "resetformat"
					case 123 cFunc = "resize"
					case 124 cFunc = "restoregeometry"
					case 125 cFunc = "savegeometry"
					case 126 cFunc = "scroll"
					case 127 cFunc = "setacceptdrops"
					case 128 cFunc = "setaccessibledescription"
					case 129 cFunc = "setaccessiblename"
					case 130 cFunc = "setalignment"
					case 131 cFunc = "setattribute"
					case 132 cFunc = "setautofillbackground"
					case 133 cFunc = "setbackgroundrole"
					case 134 cFunc = "setbasesize"
					case 135 cFunc = "setcontentsmargins"
					case 136 cFunc = "setcontextmenupolicy"
					case 137 cFunc = "setcursor"
					case 138 cFunc = "setdisabled"
					case 139 cFunc = "setenabled"
					case 140 cFunc = "setfixedheight"
					case 141 cFunc = "setfixedsize"
					case 142 cFunc = "setfixedwidth"
					case 143 cFunc = "setfocus"
					case 144 cFunc = "setfocuspolicy"
					case 145 cFunc = "setfocusproxy"
					case 146 cFunc = "setfont"
					case 147 cFunc = "setforegroundrole"
					case 148 cFunc = "setformat"
					case 149 cFunc = "setgeometry"
					case 150 cFunc = "setgraphicseffect"
					case 151 cFunc = "sethidden"
					case 152 cFunc = "setinputmethodhints"
					case 153 cFunc = "setinvertedappearance"
					case 154 cFunc = "setlayout"
					case 155 cFunc = "setlayoutdirection"
					case 156 cFunc = "setlocale"
					case 157 cFunc = "setmask"
					case 158 cFunc = "setmaximum"
					case 159 cFunc = "setmaximumheight"
					case 160 cFunc = "setmaximumsize"
					case 161 cFunc = "setmaximumwidth"
					case 162 cFunc = "setminimum"
					case 163 cFunc = "setminimumheight"
					case 164 cFunc = "setminimumsize"
					case 165 cFunc = "setminimumwidth"
					case 166 cFunc = "setmousetracking"
					case 167 cFunc = "setobjectname"
					case 168 cFunc = "setorientation"
					case 169 cFunc = "setpalette"
					case 170 cFunc = "setparent"
					case 171 cFunc = "setproperty"
					case 172 cFunc = "setrange"
					case 173 cFunc = "setshortcutautorepeat"
					case 174 cFunc = "setshortcutenabled"
					case 175 cFunc = "setsizeincrement"
					case 176 cFunc = "setsizepolicy"
					case 177 cFunc = "setstatustip"
					case 178 cFunc = "setstyle"
					case 179 cFunc = "setstylesheet"
					case 180 cFunc = "settaborder"
					case 181 cFunc = "settextdirection"
					case 182 cFunc = "settextvisible"
					case 183 cFunc = "settooltip"
					case 184 cFunc = "setupdatesenabled"
					case 185 cFunc = "setvalue"
					case 186 cFunc = "setvaluechangedevent"
					case 187 cFunc = "setwhatsthis"
					case 188 cFunc = "setwindowfilepath"
					case 189 cFunc = "setwindowflags"
					case 190 cFunc = "setwindowicon"
					case 191 cFunc = "setwindowicontext"
					case 192 cFunc = "setwindowmodality"
					case 193 cFunc = "setwindowmodified"
					case 194 cFunc = "setwindowopacity"
					case 195 cFunc = "setwindowrole"
					case 196 cFunc = "setwindowstate"
					case 197 cFunc = "setwindowtitle"
					case 198 cFunc = "show"
					case 199 cFunc = "showfullscreen"
					case 200 cFunc = "showmaximized"
					case 201 cFunc = "showminimized"
					case 202 cFunc = "shownormal"
					case 203 cFunc = "signalsblocked"
					case 204 cFunc = "size"
					case 205 cFunc = "sizeincrement"
					case 206 cFunc = "sizepolicy"
					case 207 cFunc = "stackunder"
					case 208 cFunc = "starttimer"
					case 209 cFunc = "statustip"
					case 210 cFunc = "style"
					case 211 cFunc = "stylesheet"
					case 212 cFunc = "testattribute"
					case 213 cFunc = "text"
					case 214 cFunc = "textdirection"
					case 215 cFunc = "thread"
					case 216 cFunc = "tooltip"
					case 217 cFunc = "undermouse"
					case 218 cFunc = "ungrabgesture"
					case 219 cFunc = "unsetcursor"
					case 220 cFunc = "unsetlayoutdirection"
					case 221 cFunc = "unsetlocale"
					case 222 cFunc = "update"
					case 223 cFunc = "updategeometry"
					case 224 cFunc = "updatesenabled"
					case 225 cFunc = "value"
					case 226 cFunc = "visibleregion"
					case 227 cFunc = "whatsthis"
					case 228 cFunc = "width"
					case 229 cFunc = "window"
					case 230 cFunc = "windowfilepath"
					case 231 cFunc = "windowflags"
					case 232 cFunc = "windowhandle"
					case 233 cFunc = "windowicon"
					case 234 cFunc = "windowicontext"
					case 235 cFunc = "windowmodality"
					case 236 cFunc = "windowopacity"
					case 237 cFunc = "windowrole"
					case 238 cFunc = "windowstate"
					case 239 cFunc = "windowtitle"
					case 240 cFunc = "windowtype"
					case 241 cFunc = "winid"
					case 242 cFunc = "x"
					case 243 cFunc = "y"
		
		
				}
		
				# Get the function Name 
					cFuncName = T_CT_QPROGRESSBARCLASS_IP_VALUE2LIST [Variable(:Value2)]
		
				# Generate Step and Code using common method 
					common_callobjectmethod(cFunc,cFuncName)
				

		return True 

class qprogressbarclassComponentView from ComponentViewParent
	 
		Title( T_CT_QPROGRESSBARCLASS_IP_TITLE )	
		TextBox( T_CT_QPROGRESSBARCLASS_IP_VALUE , :value)
		ListBox( T_CT_QPROGRESSBARCLASS_IP_VALUE2 , :value2, 
				T_CT_QPROGRESSBARCLASS_IP_VALUE2LIST )
		TextBox( T_CT_QPROGRESSBARCLASS_IP_VALUE3 , :value3)
		TextBox( T_CT_QPROGRESSBARCLASS_IP_VALUE4 , :value4)
		PageButtons()