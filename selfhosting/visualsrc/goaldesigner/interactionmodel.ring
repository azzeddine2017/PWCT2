#/*
#**	Project : Programming Without Coding Technology (PWCT) Version 2.0
#**	File Purpose :  Interaction Model Class
#**	Date : 2016.12.21
#**	Author :  Mahmoud Fayed <msfclipper@yahoo.com>
#*/
class InteractionModel
	nID = 0
	#The ID Counter
	aList = []
	#Interactions List [ ID , nType, Component , Date , Time, Variables Values ]
	#Interaction Type is C_INTERACTION_USERSTEP or
	#			C_INTERACTION_GENERATEDSTEP
	aDeletedInteractions = []
	#Required for Cut/Paste Operation
	#/*
	#		The next method return the ID
	#	*/
	func GetID  { 
		return nID
		#/*
		#		The next method set the ID
		#	*/
	} 
	func SetID nIDValue { 
		nID = nIDValue
		#/*
		#		The next method is used when the user create a step
		#		The user step is used for organization (Comment) or (Written Code by hand)
		#	*/
	} 
	func AddUserInteraction  { 
		#Increment the ID Counter
		nID++
		#Add the new interaction record
		aList+[nID,C_INTERACTION_USERSTEP,NULL,Date(),Time(),NULL]
		#Return the new Interaction ID
		return nID
		#/*
		#		The next method is used when the component generate a step
		#	*/
	} 
	func AddGeneratedInteraction cComponent { 
		#Increment the ID Counter
		nID++
		#Add the new interaction record
		aList+[nID,C_INTERACTION_USERSTEP,cComponent,Date(),Time(),NULL]
		#Return the new Interaction ID
		return nID
		#/*
		#		The next method is used to save the Interaction Variables Values
		#	*/
	} 
	func SaveVariablesValues nIID,cVariablesValues { 
		#Find the Interaction record
		nPos = find(aList,nIID,C_INTERACTIONRECORD_ID)
		#Save the Variables Values
		aList[nPos][C_INTERACTIONRECORD_VARIABLESVALUES] = cVariablesValues
		#/*
		#		The next method get the Interaction Component File
		#	*/
	} 
	func GetInteractionComponent nIID { 
		#Find the Interaction record
		nPos = find(aList,nIID,C_INTERACTIONRECORD_ID)
		#Return the component file
		if nPos { 
			return aList[ nPos][ C_INTERACTIONRECORD_COMPONENT]
		} 
		#/*
		#		The next method get the Interaction Variables Values
		#	*/
	} 
	func GetInteractionVariablesValues nIID { 
		#Find the Interaction record
		nPos = find(aList,nIID,C_INTERACTIONRECORD_ID)
		#Return the interaction values
		return aList[ nPos][ C_INTERACTIONRECORD_VARIABLESVALUES]
		#/*
		#		The next method set the Interaction Variables Values
		#	*/
	} 
	func SetInteractionVariablesValues nIID,cValue { 
		#Find the Interaction record
		nPos = find(aList,nIID,C_INTERACTIONRECORD_ID)
		#Set the Interaction values
		aList[nPos][C_INTERACTIONRECORD_VARIABLESVALUES] = cValue
		#/*
		#		The next method is used to update the Interaction ID of a step after paste
		#		We create new Interaction Record with the same information
		#		But with a different ID
		#		We get Interaction Object as parameter because we may copy from
		#		A file but paste in another file (So we have the Interaction Object
		#		from the first file).
		#	*/
	} 
	func NewInteractionIDAfterPaste oInteractionBuffer,nStepInteractionID { 
		#Find the interaction record
		nPos = find(oInteractionBuffer.aList,nStepInteractionID,1)
		#Check deleted interaction record (Cut/Paste)
		if nPos = 0 { 
			nPos = find(oInteractionBuffer.aDeletedInteractions,nStepInteractionID,1)
			#Check the interaction record
			if nPos = 0 { 
				return nStepInteractionID
				else
					#Get the interaction record
					aTempList = oInteractionBuffer.aDeletedInteractions[nPos]
			} 
			else
				#Get the interaction record
				aTempList = oInteractionBuffer.aList[nPos]
		} 
		#Update the interaction ID
		nID++
		#Increment the ID Counter
		aTempList[1] = nID
		#Add the new interaction record
		aList+aTempList
		#Return the new interaction ID
		return nID
		#/*
		#		The next method is used to delete an Interaction Record
		#		The input is the Interaction ID
		#	*/
	} 
	func DeleteInteraction nStepInteractionID { 
		#Find the interaction record
		nPos = find(aList,nStepInteractionID,C_INTERACTIONRECORD_ID)
		#Delete the record
		if nPos! = 0 { 
			#Check that we have the record
			#Add the interaction record to the deleted list		
			aDeletedInteractions+aList[nPos]
			Del(aList,nPos)
		} 
		#/*
		#		The next method return the number of interaction
		#	*/
	} 
	func InteractionsCount  { 
		return len( aList ) 
		#/*
		#		The next method return the interaction record
		#	*/
	} 
	func GetInteraction nIndex { 
		return aList[ nIndex]
		#/*
		#		The next method return the interaction ID
		#	*/
	} 
	func GetInteractionID nIndex { 
		if nIndex = 0 { 
			return 0 
		} 
		if nIndex > len(aList) { 
			nIndex = len(aList)
		} 
		return aList[ nIndex][ C_INTERACTIONRECORD_ID]
		#/*
		#		The next method is used to get the Interactions data
		#	*/
	} 
	func GetData  { 
		return aList
		#/*
		#		The next method is used to set the Interactions data
		#	*/
	} 
	func SetData aData { 
		aList = aData
	} 
private
