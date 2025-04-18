/*
**	Project : Programming Without Coding Technology (PWCT) Version 2.0
**	File Purpose :  refmeta_isclass Component
**	Date : 2017.10.04
**	Author :  Mahmoud Fayed <msfclipper@yahoo.com>
*/

class refmeta_isclassComponentController from ComponentControllerParent 

	oView = new refmeta_isclassComponentView

	aAllowEmptyValue = [:value,:value3,:value4]

	func GenerateAction 

		NewStep( StepData(:Value2) + " = "  +  T_CT_REFMETA_ISCLASS_ST_VALUE  + StepData(:Value )  )
		SetStepCode( Variable(:Value2) + " = isclass("  + Variable(:Value ) + ")"  )
		
		

		return True 

class refmeta_isclassComponentView from ComponentViewParent
	 
		Title( T_CT_REFMETA_ISCLASS_IP_TITLE )	
		TextBox( T_CT_REFMETA_ISCLASS_IP_VALUE , :value)
		TextBox( T_CT_REFMETA_ISCLASS_IP_VALUE2 , :value2)
		PageButtons()
