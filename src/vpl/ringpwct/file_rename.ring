/*
**	Project : Programming Without Coding Technology (PWCT) Version 2.0
**	File Purpose :  file_rename Component
**	Date : 2017.07.30
**	Author :  Mahmoud Fayed <msfclipper@yahoo.com>
*/

class file_renameComponentController from ComponentControllerParent 

	oView = new file_renameComponentView

	func GenerateAction 

		if NoValueMsg(:value) or NoValueMsg(:value2) { return False }
		
		NewStep( T_CT_FILE_RENAME_ST_VALUE  + StepData(:Value ) +  T_CT_FILE_RENAME_ST_VALUE2 + StepData(:Value2)  )
		SetStepCode("rename("  + Variable(:Value ) + ","  + Variable(:Value2) + ")"  )

		return True 

class file_renameComponentView from ComponentViewParent
	 
		Title( T_CT_FILE_RENAME_IP_TITLE )	
		TextBox( T_CT_FILE_RENAME_IP_VALUE , :value)
		TextBox( T_CT_FILE_RENAME_IP_VALUE2 , :value2)
		PageButtons()