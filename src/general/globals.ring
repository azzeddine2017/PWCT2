/* 
**	Project : Programming Without Coding Technology (PWCT) Version 2.0
** 	File Purpose : Global Variables and Constants
**	Date : 2016.11.05
** 	Author : Mahmoud Fayed <msfclipper@yahoo.com>
*/

# Ring 

	cRingEXE 		= exefilename()

# Application
	PWCT_APP 				= NULL
	nEnvironmentWindowID = 0
	PWCT_FOLDER				= CurrentDir()
	C_FILENONAME 				= "noname.ring"
	remove( C_FILENONAME)

# Tree Model
	C_TREEMODEL_NODEID    			= 1
	C_TREEMODEL_PARENTID 			= 2
	C_TREEMODEL_CONTENT  			= 3

# Tree Control List 
	C_TREECONTROL_ID 			= 1
	C_TREECONTROL_OBJECT 			= 2
	C_TREECONTROL_OBJECTPOINTER 		= 3

# Label Control Data
	C_NODELABEL_TEXT 			= 1
	C_NODELABEL_STYLESHEET 			= 2
	C_NODELABEL_STEPTYPE		= 3

# Node Label Image
	C_LABELIMAGE_NODEICON			= AppFile("images/nodeicon.png")
	C_LABELIMAGE_IGNORESTEP			= AppFile("images/ignorestep.png")

# Interaction Model
	C_INTERACTIONRECORD_ID 			= 1
	C_INTERACTIONRECORD_TYPE 		= 2
	C_INTERACTIONRECORD_COMPONENT 		= 3
	C_INTERACTIONRECORD_DATE 		= 4
	C_INTERACTIONRECORD_TIME 		= 5
	C_INTERACTIONRECORD_VARIABLESVALUES	= 6
	C_INTERACTION_USERSTEP			= 1
	C_INTERACTION_GENERTATEDSTEP 		= 2
	C_TMDIRECTION_BACKWARD			= 1
	C_TMDIRECTION_FORWARD			= 2

# Components Files List
	aComponentsFilesList = []

# Interaction - Variables List
	C_INTERACTION_VL_OBJECT 		= 1
	C_INTERACTION_VL_NAME 			= 2
	C_INTERACTION_VL_TYPE 			= 3
	C_INTERACTION_VL_EXTRAOBJECT		= 4
	C_INTERACTION_VL_LISTITEMS		= 5


# Interaction - Controls Types
	C_INTERACTION_CT_TEXTBOX  		= 1
	C_INTERACTION_CT_CHECKBOX  		= 2
	C_INTERACTION_CT_LISTBOX  		= 3
	C_INTERACTION_CT_EDITBOX  		= 4

# Interaction - Mode
	C_INTERACTIONMODE_NEW 			= 1
	C_INTERACTIONMODE_MODIFY  		= 2

# Interaction
	C_INTERACTIONVALUES_SEPARATOR 		= ";;_RV_;;"

# Step Type
	C_STEPTYPE_COMMENT 			= 1
	C_STEPTYPE_ROOT	 			= 2
	C_STEPTYPE_ALLOWINTERACTION 		= 3
	C_STEPTYPE_INFO	 			= 4

# Steps Colors 
	C_STEPCOLOR_STARTPOINT			= "green"
	C_STEPCOLOR_COMMENT_TEXT 		= "green"
	C_STEPCOLOR_COMMENT_BACKCOLOR 		= ""
	C_STEPCOLOR_ROOT_TEXT 			= "blue"
	C_STEPCOLOR_ROOT_BACKCOLOR 		= ""
	C_STEPCOLOR_ALLOWINTERACTION_TEXT 	= "black"
	C_STEPCOLOR_ALLOWINTERACTION_BACKCOLOR 	= "#00ff00"
	C_STEPCOLOR_INFO_TEXT 			= "black"
	C_STEPCOLOR_INFO_BACKCOLOR 		= ""
	C_STEPCOLOR_DATA_TEXT 			= "gray"
	C_STEPCOLOR_DATA_BACKCOLOR 		= ""

	C_PROPERTIES_REFLECTCHANGEINFONTSIZE = True
	C_PROPERTIES_REMOVEVERTICALSPACESBETWEENCONTROLSININTERACTIONPAGES = True
	C_PROPERTIES_REMOVEVERTICALSPACESBETWEENINTERACTIONPAGES = True

	C_PROPERTIES_BORDERSAROUNDSTEPS = True

# Components Browser
	C_COMPONENTSBROWSER_COLOR		= "green"

# Interaction Pages 
	C_INTERACTIONPAGE_TITLECOLOR		= "white"
	C_INTERACTIONPAGE_TITLEBACKCOLOR	= "purple"
	C_INTERACTIONPAGE_EXPCONTAINSLITERAL	= '" "'

# Steps Tree
	C_STEPSTREE_SELECTIONCOLOR		= "black"
	C_STEPSTREE_SELECTIONBACKGROUND		= "cyan"

	C_STEPSTREE_SHOWLINES				= False 
	C_STEPSTREE_AUTORUN				= False
	C_STEPSTREE_OPENFILESINNEWTABS			= False
	C_STEPSTREE_OPENINTERACTIONSINNEWWINDOWS 	= False
	C_STEPSTREE_SHOWTIMEMACHINE 			= True
	C_STEPSTREE_AVOIDCOMPONENTSBROWSER		= False
	C_STEPSTREE_AVOIDCOMPONENTSBROWSERAUTOCOMPLETE	= False
	C_STEPSTREE_COMPONENTSBROWSERALWAYSSHOWSEARCHWINDOW = False
	C_STEPSTREE_LIGHTTREELINES	= False 
	C_STEPSTREE_ALLOWSYNTAXERRORS	= False
	C_STEPSTREE_NODEICON		= False
	C_STEPSTREE_HIDESTEPCODETAB	= True


	C_COMMENTMARK = "// "
	C_COMMENTMARKSIZE = len(C_COMMENTMARK)

	if PWCTIsMobile(:StepsTreeIndentation) {
		C_STEPSTREE_INDENTATION = 50
	else 
		C_STEPSTREE_INDENTATION = 20
	}
	C_STEPSTREE_BACKCOLOR	= "white"

# Language
	C_TRANSLATION_ARABIC 			= 1
	C_TRANSLATION_ENGLISH 			= 0
	C_ENV_DEFAULT_LANG			= C_TRANSLATION_ENGLISH

# Visual Source file
	C_VSF_NOFILENAME 			= "noname.pwct"

# Components Path
	C_CB_COMPONENTSPATH 			= "src/vpl/ringpwct"

# Enviroment Mode
	C_ENV_MODE_GENERAL			= 1
	C_ENV_MODE_TESTING			= 2
	C_ENV_MODE_LEFT				= 3
	C_ENV_MODE_RIGHT			= 4
	C_ENV_MODE_GD				= 5
	C_ENV_MODE_GUI				= 6
	C_ENV_DEFAULT_MODE			= C_ENV_MODE_GENERAL

# Environment Style
	C_ENV_STYLE_WINDOWS 		= 1
	C_ENV_STYLE_WINDOWSB	 	= 2
	C_ENV_STYLE_WHITE 		= 3
	C_ENV_STYLE_WHITEB		= 4
	C_ENV_STYLE_BLACK 		= 5
	C_ENV_STYLE_BLACKB		= 6
	C_ENV_STYLE_MODERNBLACK		= 7
	C_ENV_STYLE_SIMPLEBLACK		= 8
	C_ENV_STYLE_BLUE		= 9
	C_ENV_STYLE_BLUE2		= 10
	C_ENV_DEFAULT_STYLE		= C_ENV_STYLE_WHITEB

# Undo 
	C_UNDO_STEPSTREE 	= 1
	C_UNDO_INTERACTIONS 	= 2
	C_UNDO_STEPSTREEID 	= 3
	C_UNDO_INTERACTIONSID 	= 4

# Visible Windows 	
	lShowFilesToolBar	= True 
	lShowMainFileToolBar	= True
	lShowStatusBar		= True
	lShowFilesManager	= True
	lShowGoalDesigner	= True
	lShowOutputWindow	= True
	lShowFormDesigner	= True 

# Dock Dimensions
	nOutputWindowWidth 			= NULL
	nOutputWindowHeight 		= NULL
	nFilesManagerWidth  		= NULL
	nFilesManagerHeight 		= NULL
	nComponentsBrowserWidth 	= NULL 
	nComponentsBrowserHeight	= NULL 
	nGoalDesignerWidth			= NULL 
	nGoalDesignerHeight			= NULL