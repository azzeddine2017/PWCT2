/*
**	Project : Programming Without Coding Technology (PWCT) Version 2.0
**	File Purpose :  stdlib_dayofweek Component
**	Date : 2017.10.16
**	Author :  Mahmoud Fayed <msfclipper@yahoo.com>
*/

class stdlib_dayofweekComponentController from ComponentControllerParent 

	oView = new stdlib_dayofweekComponentView

	func GenerateAction 

		NewStep( StepData(:Value2) + " = "  +  T_CT_STDLIB_DAYOFWEEK_ST_VALUE  + StepData(:Value )  )
		SetStepCode( Variable(:Value2) + " = dayofweek("  + Variable(:Value ) + ")"  )

		return True 

class stdlib_dayofweekComponentView from ComponentViewParent
	 
		Title( T_CT_STDLIB_DAYOFWEEK_IP_TITLE )	
		TextBox( T_CT_STDLIB_DAYOFWEEK_IP_VALUE , :value)
		TextBox( T_CT_STDLIB_DAYOFWEEK_IP_VALUE2 , :value2)
		PageButtons()