/*
**	Project : Programming Without Coding Technology (PWCT) Version 2.0
**	File Purpose :  newqpushbutton Component
**	Date : 2017.12.23
**	Author :  Mahmoud Fayed <msfclipper@yahoo.com>
*/

class newqpushbuttonComponentController from ComponentControllerParent 

	oView = new newqpushbuttonComponentView

	func GenerateAction 

				if Variable(:value) = NULL {
					cOutStep = ""
					cOutCode = ""
				else
					cOutStep =  StepData(:value) + " = "
					cOutCode = Variable(:value) + " = " 
				}
				
				cCode = ""
				if Variable(:value2) != NULL {
					cCode = 'setText("' + Variable(:value2) + '")' + nl
				}
				if Variable(:value3) != NULL {
					nTop = Variable(:value3)
				else
					nTop = 10
				}
				if Variable(:value4) != NULL {
					nLeft = Variable(:value4)
				else
					nLeft = 10
				}
				cCode += "move("+nLeft+","+nTop+")"+nl
				if Variable(:value5) != NULL {
					nWidth = Variable(:value5)
				else
					nWidth = 100
				}
				if Variable(:value6) != NULL {
					nHeight = Variable(:value6)
				else
					nHeight = 30
				}
				cCode += "resize("+nWidth+","+nHeight+")"+nl
				if Variable(:value7) != NULL {
					cCode += 'setStyleSheet("' + Variable(:value7) + '")' + nl
				}
				if Variable(:value9) != NULL {
					cCode += 'setClickEvent(' + Variable(:value9) + ')' + nl
				}
				
				NewParentStep(  cOutStep + T_CT_NEWQPUSHBUTTON_ST_NEWQPUSHBUTTON + " " + StepData(:value2)  )
					SetStepCode( cOutCode + "new qPushButton("+Variable(:value8)+") { " + nl + cCode )
					AllowInteraction()
					NewStep( T_CT_NEWQPUSHBUTTON_ST_STARTHERE )
					oStep = GetActiveStep()
					NewStep( T_CT_NEWQPUSHBUTTON_ST_END )
						SetStepCode( "}" )
					SetActiveStep(oStep)

		return True 

class newqpushbuttonComponentView from ComponentViewParent
	 
		Title( T_CT_NEWQPUSHBUTTON_IP_TITLE )	
		TextBox( T_CT_NEWQPUSHBUTTON_IP_VALUE , :value)
		TextBox( T_CT_NEWQPUSHBUTTON_IP_VALUE2 , :value2)
		TextBox( T_CT_NEWQPUSHBUTTON_IP_VALUE3 , :value3)
		TextBox( T_CT_NEWQPUSHBUTTON_IP_VALUE4 , :value4)
		TextBox( T_CT_NEWQPUSHBUTTON_IP_VALUE5 , :value5)
		TextBox( T_CT_NEWQPUSHBUTTON_IP_VALUE6 , :value6)
		TextBox( T_CT_NEWQPUSHBUTTON_IP_VALUE7 , :value7)
		TextBox( T_CT_NEWQPUSHBUTTON_IP_VALUE8 , :value8)
		TextBox( T_CT_NEWQPUSHBUTTON_IP_VALUE9 , :value9)
		PageButtons()