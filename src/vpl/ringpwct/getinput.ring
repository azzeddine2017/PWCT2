/*
**	Project : Programming Without Coding Technology (PWCT) Version 2.0
**	File Purpose :  Print Component
**	Date : 2017.02.04
**	Author :  Mahmoud Fayed <msfclipper@yahoo.com>
*/

Class GetInputComponentController from ComponentControllerParent 

	oView = new GetInputComponentView

	func GenerateAction 

		if NoValueMsg(:text) { return False }

		NewStep(T_CT_GETINPUT_ST_INPUT + StyleData(  Variable(:text) )  ) # "Input " 
		SetStepCode("give " + Variable(:text) )	

		return True 

class GetInputComponentView from ComponentViewParent
	 
		Title(T_CT_GETINPUT_IP_TITLE)				# "Get Input Component"
		TextBox(T_CT_GETINPUT_IP_VARIABLE , :text)  	# "Variable : "
		PageButtons()

