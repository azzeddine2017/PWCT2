/*
**	Project : Programming Without Coding Technology (PWCT) Version 2.0
**	File Purpose :  adddays Component
**	Date : 2017.07.26
**	Author :  Mahmoud Fayed <msfclipper@yahoo.com>
*/

class adddaysComponentController from ComponentControllerParent 

	oView = new adddaysComponentView

	func GenerateAction 

		NewStep( StepData(:Value3) + " = "  +  T_CT_ADDDAYS_ST_VALUE  + StepData(:Value ) +  T_CT_ADDDAYS_ST_VALUE2 + StepData(:Value2)  )
		SetStepCode( Variable(:Value3) + " = adddays("  + Variable(:Value ) + ","  + Variable(:Value2) + ")"  )

		return True 

class adddaysComponentView from ComponentViewParent
	 
		Title( T_CT_ADDDAYS_IP_TITLE )	
		TextBox( T_CT_ADDDAYS_IP_VALUE , :value)
		TextBox( T_CT_ADDDAYS_IP_VALUE2 , :value2)
		TextBox( T_CT_ADDDAYS_IP_VALUE3 , :value3)
		PageButtons()
