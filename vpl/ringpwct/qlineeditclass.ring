/*
**	Project : Programming Without Coding Technology (PWCT) Version 2.0
**	File Purpose :  qlineeditclass Component
**	Date : 2018.03.14
**	Author :  Mahmoud Fayed <msfclipper@yahoo.com>
*/

class qlineeditclassComponentController from ComponentControllerParent 

	oView = new qlineeditclassComponentView

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
					case 10 cFunc = "backspace"
					case 11 cFunc = "basesize"
					case 12 cFunc = "blocksignals"
					case 13 cFunc = "childat"
					case 14 cFunc = "children"
					case 15 cFunc = "childrenrect"
					case 16 cFunc = "childrenregion"
					case 17 cFunc = "clear"
					case 18 cFunc = "clearfocus"
					case 19 cFunc = "clearmask"
					case 20 cFunc = "close"
					case 21 cFunc = "completer"
					case 22 cFunc = "contentsmargins"
					case 23 cFunc = "contentsrect"
					case 24 cFunc = "contextmenupolicy"
					case 25 cFunc = "copy"
					case 26 cFunc = "createstandardcontextmenu"
					case 27 cFunc = "cursor"
					case 28 cFunc = "cursorbackward"
					case 29 cFunc = "cursorforward"
					case 30 cFunc = "cursormovestyle"
					case 31 cFunc = "cursorposition"
					case 32 cFunc = "cursorpositionat"
					case 33 cFunc = "cursorwordbackward"
					case 34 cFunc = "cursorwordforward"
					case 35 cFunc = "cut"
					case 36 cFunc = "del"
					case 37 cFunc = "delete"
					case 38 cFunc = "deletelater"
					case 39 cFunc = "deselect"
					case 40 cFunc = "displaytext"
					case 41 cFunc = "dragenabled"
					case 42 cFunc = "dumpobjectinfo"
					case 43 cFunc = "dumpobjecttree"
					case 44 cFunc = "echomode"
					case 45 cFunc = "effectivewinid"
					case 46 cFunc = "endtext"
					case 47 cFunc = "ensurepolished"
					case 48 cFunc = "find"
					case 49 cFunc = "focuspolicy"
					case 50 cFunc = "focusproxy"
					case 51 cFunc = "focuswidget"
					case 52 cFunc = "font"
					case 53 cFunc = "fontinfo"
					case 54 cFunc = "foregroundrole"
					case 55 cFunc = "framegeometry"
					case 56 cFunc = "framesize"
					case 57 cFunc = "geometry"
					case 58 cFunc = "getcontentsmargins"
					case 59 cFunc = "getcursorpositionchangedevent"
					case 60 cFunc = "geteditingfinishedevent"
					case 61 cFunc = "getreturnpressedevent"
					case 62 cFunc = "getselectionchangedevent"
					case 63 cFunc = "gettextchangedevent"
					case 64 cFunc = "gettexteditedevent"
					case 65 cFunc = "gettextmargins"
					case 66 cFunc = "grab"
					case 67 cFunc = "grabgesture"
					case 68 cFunc = "grabkeyboard"
					case 69 cFunc = "grabmouse"
					case 70 cFunc = "grabshortcut"
					case 71 cFunc = "graphicseffect"
					case 72 cFunc = "graphicsproxywidget"
					case 73 cFunc = "hasacceptableinput"
					case 74 cFunc = "hasfocus"
					case 75 cFunc = "hasframe"
					case 76 cFunc = "hasmousetracking"
					case 77 cFunc = "hasselectedtext"
					case 78 cFunc = "height"
					case 79 cFunc = "heightforwidth"
					case 80 cFunc = "hide"
					case 81 cFunc = "home"
					case 82 cFunc = "inherits"
					case 83 cFunc = "init"
					case 84 cFunc = "inputmask"
					case 85 cFunc = "inputmethodhints"
					case 86 cFunc = "inputmethodquery"
					case 87 cFunc = "insert"
					case 88 cFunc = "insertaction"
					case 89 cFunc = "installeventfilter"
					case 90 cFunc = "isactivewindow"
					case 91 cFunc = "isancestorof"
					case 92 cFunc = "isenabled"
					case 93 cFunc = "isenabledto"
					case 94 cFunc = "isfullscreen"
					case 95 cFunc = "ishidden"
					case 96 cFunc = "ismaximized"
					case 97 cFunc = "isminimized"
					case 98 cFunc = "ismodal"
					case 99 cFunc = "ismodified"
					case 100 cFunc = "isreadonly"
					case 101 cFunc = "isredoavailable"
					case 102 cFunc = "isundoavailable"
					case 103 cFunc = "isvisible"
					case 104 cFunc = "isvisibleto"
					case 105 cFunc = "iswidgettype"
					case 106 cFunc = "iswindow"
					case 107 cFunc = "iswindowmodified"
					case 108 cFunc = "keyboardgrabber"
					case 109 cFunc = "killtimer"
					case 110 cFunc = "layout"
					case 111 cFunc = "layoutdirection"
					case 112 cFunc = "locale"
					case 113 cFunc = "lower"
					case 114 cFunc = "mapfrom"
					case 115 cFunc = "mapfromglobal"
					case 116 cFunc = "mapfromparent"
					case 117 cFunc = "mapto"
					case 118 cFunc = "maptoglobal"
					case 119 cFunc = "maptoparent"
					case 120 cFunc = "mask"
					case 121 cFunc = "maximumheight"
					case 122 cFunc = "maximumsize"
					case 123 cFunc = "maximumwidth"
					case 124 cFunc = "maxlength"
					case 125 cFunc = "minimumheight"
					case 126 cFunc = "minimumsize"
					case 127 cFunc = "minimumwidth"
					case 128 cFunc = "mousegrabber"
					case 129 cFunc = "move"
					case 130 cFunc = "movetothread"
					case 131 cFunc = "nativeparentwidget"
					case 132 cFunc = "nextinfocuschain"
					case 133 cFunc = "normalgeometry"
					case 134 cFunc = "objectname"
					case 135 cFunc = "overridewindowflags"
					case 136 cFunc = "palette"
					case 137 cFunc = "parent"
					case 138 cFunc = "parentwidget"
					case 139 cFunc = "paste"
					case 140 cFunc = "placeholdertext"
					case 141 cFunc = "pos"
					case 142 cFunc = "previousinfocuschain"
					case 143 cFunc = "property"
					case 144 cFunc = "raise"
					case 145 cFunc = "rect"
					case 146 cFunc = "redo"
					case 147 cFunc = "releasekeyboard"
					case 148 cFunc = "releasemouse"
					case 149 cFunc = "releaseshortcut"
					case 150 cFunc = "removeaction"
					case 151 cFunc = "removeeventfilter"
					case 152 cFunc = "render"
					case 153 cFunc = "repaint"
					case 154 cFunc = "resize"
					case 155 cFunc = "restoregeometry"
					case 156 cFunc = "savegeometry"
					case 157 cFunc = "scroll"
					case 158 cFunc = "selectall"
					case 159 cFunc = "selectedtext"
					case 160 cFunc = "selectionstart"
					case 161 cFunc = "setacceptdrops"
					case 162 cFunc = "setaccessibledescription"
					case 163 cFunc = "setaccessiblename"
					case 164 cFunc = "setalignment"
					case 165 cFunc = "setattribute"
					case 166 cFunc = "setautofillbackground"
					case 167 cFunc = "setbackgroundrole"
					case 168 cFunc = "setbasesize"
					case 169 cFunc = "setcompleter"
					case 170 cFunc = "setcontentsmargins"
					case 171 cFunc = "setcontextmenupolicy"
					case 172 cFunc = "setcursor"
					case 173 cFunc = "setcursormovestyle"
					case 174 cFunc = "setcursorposition"
					case 175 cFunc = "setcursorpositionchangedevent"
					case 176 cFunc = "setdisabled"
					case 177 cFunc = "setdragenabled"
					case 178 cFunc = "setechomode"
					case 179 cFunc = "seteditingfinishedevent"
					case 180 cFunc = "setenabled"
					case 181 cFunc = "setfixedheight"
					case 182 cFunc = "setfixedsize"
					case 183 cFunc = "setfixedwidth"
					case 184 cFunc = "setfocus"
					case 185 cFunc = "setfocuspolicy"
					case 186 cFunc = "setfocusproxy"
					case 187 cFunc = "setfont"
					case 188 cFunc = "setforegroundrole"
					case 189 cFunc = "setframe"
					case 190 cFunc = "setgeometry"
					case 191 cFunc = "setgraphicseffect"
					case 192 cFunc = "sethidden"
					case 193 cFunc = "setinputmask"
					case 194 cFunc = "setinputmethodhints"
					case 195 cFunc = "setlayout"
					case 196 cFunc = "setlayoutdirection"
					case 197 cFunc = "setlocale"
					case 198 cFunc = "setmask"
					case 199 cFunc = "setmaximumheight"
					case 200 cFunc = "setmaximumsize"
					case 201 cFunc = "setmaximumwidth"
					case 202 cFunc = "setmaxlength"
					case 203 cFunc = "setminimumheight"
					case 204 cFunc = "setminimumsize"
					case 205 cFunc = "setminimumwidth"
					case 206 cFunc = "setmodified"
					case 207 cFunc = "setmousetracking"
					case 208 cFunc = "setobjectname"
					case 209 cFunc = "setpalette"
					case 210 cFunc = "setparent"
					case 211 cFunc = "setplaceholdertext"
					case 212 cFunc = "setproperty"
					case 213 cFunc = "setreadonly"
					case 214 cFunc = "setreturnpressedevent"
					case 215 cFunc = "setselection"
					case 216 cFunc = "setselectionchangedevent"
					case 217 cFunc = "setshortcutautorepeat"
					case 218 cFunc = "setshortcutenabled"
					case 219 cFunc = "setsizeincrement"
					case 220 cFunc = "setsizepolicy"
					case 221 cFunc = "setstatustip"
					case 222 cFunc = "setstyle"
					case 223 cFunc = "setstylesheet"
					case 224 cFunc = "settaborder"
					case 225 cFunc = "settext"
					case 226 cFunc = "settextchangedevent"
					case 227 cFunc = "settexteditedevent"
					case 228 cFunc = "settextmargins"
					case 229 cFunc = "settooltip"
					case 230 cFunc = "setupdatesenabled"
					case 231 cFunc = "setvalidator"
					case 232 cFunc = "setwhatsthis"
					case 233 cFunc = "setwindowfilepath"
					case 234 cFunc = "setwindowflags"
					case 235 cFunc = "setwindowicon"
					case 236 cFunc = "setwindowicontext"
					case 237 cFunc = "setwindowmodality"
					case 238 cFunc = "setwindowmodified"
					case 239 cFunc = "setwindowopacity"
					case 240 cFunc = "setwindowrole"
					case 241 cFunc = "setwindowstate"
					case 242 cFunc = "setwindowtitle"
					case 243 cFunc = "show"
					case 244 cFunc = "showfullscreen"
					case 245 cFunc = "showmaximized"
					case 246 cFunc = "showminimized"
					case 247 cFunc = "shownormal"
					case 248 cFunc = "signalsblocked"
					case 249 cFunc = "size"
					case 250 cFunc = "sizeincrement"
					case 251 cFunc = "sizepolicy"
					case 252 cFunc = "stackunder"
					case 253 cFunc = "starttimer"
					case 254 cFunc = "statustip"
					case 255 cFunc = "style"
					case 256 cFunc = "stylesheet"
					case 257 cFunc = "testattribute"
					case 258 cFunc = "text"
					case 259 cFunc = "textmargins"
					case 260 cFunc = "thread"
					case 261 cFunc = "tooltip"
					case 262 cFunc = "undermouse"
					case 263 cFunc = "undo"
					case 264 cFunc = "ungrabgesture"
					case 265 cFunc = "unsetcursor"
					case 266 cFunc = "unsetlayoutdirection"
					case 267 cFunc = "unsetlocale"
					case 268 cFunc = "update"
					case 269 cFunc = "updategeometry"
					case 270 cFunc = "updatesenabled"
					case 271 cFunc = "validator"
					case 272 cFunc = "visibleregion"
					case 273 cFunc = "whatsthis"
					case 274 cFunc = "width"
					case 275 cFunc = "window"
					case 276 cFunc = "windowfilepath"
					case 277 cFunc = "windowflags"
					case 278 cFunc = "windowhandle"
					case 279 cFunc = "windowicon"
					case 280 cFunc = "windowicontext"
					case 281 cFunc = "windowmodality"
					case 282 cFunc = "windowopacity"
					case 283 cFunc = "windowrole"
					case 284 cFunc = "windowstate"
					case 285 cFunc = "windowtitle"
					case 286 cFunc = "windowtype"
					case 287 cFunc = "winid"
					case 288 cFunc = "x"
					case 289 cFunc = "y"
		
				}
		
				# Get the function Name 
					cFuncName = T_CT_QLINEEDITCLASS_IP_VALUE2LIST [Variable(:Value2)]

				# Generate Step and Code using common method 
					common_callobjectmethod(cFunc,cFuncName)
		

		return True 

class qlineeditclassComponentView from ComponentViewParent
	 
		Title( T_CT_QLINEEDITCLASS_IP_TITLE )	
		TextBox( T_CT_QLINEEDITCLASS_IP_VALUE , :value)
		ListBox( T_CT_QLINEEDITCLASS_IP_VALUE2 , :value2, 
				T_CT_QLINEEDITCLASS_IP_VALUE2LIST )
		TextBox( T_CT_QLINEEDITCLASS_IP_VALUE3 , :value3)
		TextBox( T_CT_QLINEEDITCLASS_IP_VALUE4 , :value4)
		PageButtons()