/*
**	Project : Programming Without Coding Technology (PWCT) Version 2.0
**	File Purpose : Visual Source File Generator 
**	Date : 2020.02.15
**	Author :  Mahmoud Fayed <msfclipper@yahoo.com>
*/

# Load Ring Libraries
	load "stdlib.ring"

# Load General Libraries
	load "../../general/globals/globals.ring"
	load "../../general/mainlib.ring"
	load "../../general/log.ring"
	
# Load the File System Files
	load "../../filesystem/databasesqlite.ring"
	load "../../filesystem/databasesqliteqt.ring"
	load "../../filesystem/database.ring"
	load "../../filesystem/visualsourcefile.ring"

# Mobile functions 
	load "../../mobile/mobilefunctions.ring"

# Goal Designer Model Files
	load "../../goaldesigner/model/goaldesignermodel.ring"
	load "../../goaldesigner/model/treemodel.ring"
	load "../../goaldesigner/model/interactionmodel.ring"

# HTML Styles - Used by Goal Designer Model
	load "../../goaldesigner/controller/htmlfunctions.ring"
	load "../../goaldesigner/view/htmlstyles.ring"

# Load PWCT Translation 
	load "../../translation/english.ring"

# Load the generator class 
	load "vsfgenerator.ring"

if isMainSourceFile()
	? "Generation started!"
	t1 = clock()
	new VSFGenerator {
		startGenerator()
	}
	? "Generation done in " + ( (clock() - t1) / clockspersecond()) + " seconds!"
ok