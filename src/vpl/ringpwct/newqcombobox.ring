/*
**	Project : Programming Without Coding Technology (PWCT) Version 2.0
**	File Purpose :  newqcombobox Component
**	Date : 2017.12.24
**	Author :  Mahmoud Fayed <msfclipper@yahoo.com>
*/

class newqcomboboxComponentController from ComponentControllerParent 

	oView = new newqcomboboxComponentView

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
							cCode += 'aItemsList =' + Variable(:value2) + nl +
				                          'for x in aItemsList additem(""+x,0) next' + nl
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
							cCode += 'setStyleSheet(' + Variable(:value7) + ')' + nl
						}
						
						
						NewParentStep(  cOutStep + T_CT_NEWQCOMBOBOX_ST_NEWQCOMBOBOX  )
							SetStepCode( cOutCode + "new QComboBox("+Variable(:value8)+") { " + nl + cCode )
							AllowInteraction()
							NewStep( T_CT_NEWQCOMBOBOX_ST_STARTHERE )
							oStep = GetActiveStep()
							NewStep( T_CT_NEWQCOMBOBOX_ST_END )
								SetStepCode( "}" )
							SetActiveStep(oStep)

		return True 

class newqcomboboxComponentView from ComponentViewParent
	 
		Title( T_CT_NEWQCOMBOBOX_IP_TITLE )	
		TextBoxValue( T_CT_NEWQCOMBOBOX_IP_VALUE , :value, T_CT_NEWQCOMBOBOX_IP_VALUE_DEFAULT)
		TextBoxValue( T_CT_NEWQCOMBOBOX_IP_VALUE2 , :value2, "[]")
		TextBoxValue( T_CT_NEWQCOMBOBOX_IP_VALUE3 , :value3, "10")
		TextBoxValue( T_CT_NEWQCOMBOBOX_IP_VALUE4 , :value4, "10")
		TextBoxValue( T_CT_NEWQCOMBOBOX_IP_VALUE5 , :value5, "100")
		TextBoxValue( T_CT_NEWQCOMBOBOX_IP_VALUE6 , :value6, "30")
		TextBoxValue( T_CT_NEWQCOMBOBOX_IP_VALUE7 , :value7, C_INTERACTIONPAGE_EXPCONTAINSLITERAL)
		TextBoxValue( T_CT_NEWQCOMBOBOX_IP_VALUE8 , :value8, T_CT_NEWQCOMBOBOX_IP_VALUE8_DEFAULT)
		PageButtons()
