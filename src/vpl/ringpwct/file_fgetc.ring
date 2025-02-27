/*
**	Project : Programming Without Coding Technology (PWCT) Version 2.0
**	File Purpose :  file_fgetc Component
**	Date : 2017.07.31
**	Author :  Mahmoud Fayed <msfclipper@yahoo.com>
*/

class file_fgetcComponentController from ComponentControllerParent 

	oView = new file_fgetcComponentView

	func GenerateAction 

		NewStep( StepData(:Value2) + " = "  +  T_CT_FILE_FGETC_ST_VALUE  + StepData(:Value )  )
		SetStepCode( Variable(:Value2) + " = fgetc("  + Variable(:Value ) + ")"  )

		return True 

class file_fgetcComponentView from ComponentViewParent
	 
		Title( T_CT_FILE_FGETC_IP_TITLE )	
		TextBox( T_CT_FILE_FGETC_IP_VALUE , :value)
		TextBox( T_CT_FILE_FGETC_IP_VALUE2 , :value2)
		PageButtons()
