#/*
#**	Project : Programming Without Coding Technology (PWCT) Version 2.0
#**	File Purpose :  Goal Designer Model Class
#**	Date : 2016.11.20
#**	Author :  Mahmoud Fayed <msfclipper@yahoo.com>
#*/
class GoalDesignerModel
	oStepsTreeModel = new TreeModel
	oInteractionModel = new InteractionModel
	oInteractionModelBuffer
	#Used for Copy/Paste Operation
	#Generate Comments Based on the step type
	oHTMLFunctions = new HTMLFunctions
	lGenerateComments = False
	#Add the first step
	AddStep(0,[:name = T_GD_FirstStep,:active = True,:code = "",:interactionid = oInteractionModel.AddUserInteraction(),:visible = True,:stepnumber = 1,:steptype = C_STEPTYPE_COMMENT])
	#/*
	#		Purpose : Add step
	#		Parameters :the Parent ID and the step content list
	#		Output : The new step ID
	#	*/
	func AddStep nParent,Content { 
		nID = oStepsTreeModel.AddNode(nParent,Content)
		return nID
	} 
	func AddStepAfterStep nParent,Content,nParent2 { 
		nID = oStepsTreeModel.AddNodeAfterNode(nParent,Content,nParent2)
		return nID
		#/*
		#		Purpose :  Edit step name
		#		Parameters : The step ID and the new Step Name
		#		Output : None
		#	*/
	} 
	func EditStepName nStepID,cStepName,cPlainStepName { 
		oStepsTreeModel.GetNodeContent(nStepID)[:name] = cStepName
		oStepsTreeModel.GetNodeContent(nStepID)[:plainname] = cPlainStepName
		#/*
		#		Purpose :  Get Step Name
		#		Parameters : The Step ID
		#		Output : The Step Name
		#	*/
	} 
	func GetStepName nStepID { 
		aContent = oStepsTreeModel.GetNodeContent(nStepID)
		return aContent[: name]
		#/*
		#		Purpose :  Get Step Number
		#		Parameters : The Step ID
		#		Output : The Step Number
		#	*/
	} 
	func GetStepNumber nStepID { 
		aContent = oStepsTreeModel.GetNodeContent(nStepID)
		return aContent[: stepnumber]
		#/*
		#		Purpose :
		#		Parameters :
		#		Output :
		#	*/
	} 
	func GetStepIgnoreStatus nStepID { 
		aContent = oStepsTreeModel.GetNodeContent(nStepID)
		#The Ignore Status is the reverse of the Active Status
		return not aContent[: active]
		#/*
		#		Purpose :  Get the Step Code
		#		Parameters : The step ID
		#		Output : The step code
		#	*/
	} 
	func GetStepCode nStepID { 
		aContent = oStepsTreeModel.GetNodeContent(nStepID)
		return aContent[: code]
		#/*
		#		Purpose :  Edit step code
		#		Parameters : The step ID and the new Step Code
		#		Output : None
		#	*/
	} 
	func EditStepCode nStepID,cStepCode { 
		oStepsTreeModel.GetNodeContent(nStepID)[:code] = cStepCode
		#/*
		#		Purpose : Get Step Type
		#		Parameters : The Step ID as Number
		#		Output : The Step Type as Number
		#	*/
	} 
	func GetStepType nStepID { 
		aContent = oStepsTreeModel.GetNodeContent(nStepID)
		return aContent[: steptype]
		#/*
		#		Purpose : Get Step Parent
		#		Parameters : The Step ID as Number
		#		Output : The Parent Step ID as Number
		#	*/
	} 
	func GetStepParent nStepID { 
		return oStepsTreeModel. GetNodeParent( nStepID ) 
		#/*
		#		Purpose : Print Steps to Console Window
		#		Parameters : None
		#		Output : None
		#	*/
	} 
	func PrintSteps  { 
		for x in oStepsTreeModel.getdata() step 1 { 
			puts(x[C_TREEMODEL_CONTENT][:name]+" .. Active : "+x[C_TREEMODEL_CONTENT][:active])
		} 
		#/*
		#		Purpose : Get the Steps Tree Text
		#		Parameters : None
		#		Output : The steps Tree Text as String
		#	*/
	} 
	func StepsTreeText  { 
		return StepsTreeProcess() [: steps]
		#/*
		#		Purpose : Get the Steps Tree Code
		#		Parameters : None
		#		Output : Steps Tree Code as String
		#	*/
	} 
	func StepsTreeCode  { 
		return StepsTreeProcess() [: code]
		#/*
		#		Purpose : Get the Steps Tree Code and Steps
		#		Parameters : None
		#		Output : [Source Code, Steps Tree]
		#	*/
	} 
	func StepsTreeProcess  { 
		aParent = [oStepsTreeModel.getdata()[1]]
		#List contains temp. parent stack
		nLastParent = 0
		cCode = ""
		cSteps = ""
		for x in oStepsTreeModel.getdata() step 1 { 
			#Calculate Tabs
			if x[C_TREEMODEL_PARENTID]! = nLastParent { 
				nLastParent = x[C_TREEMODEL_PARENTID]
				if findParent(aParent,nLastParent) = 0 { 
					aParent+x
					else
						while len(aParent) > 0 { 
							del(aParent,len(aParent))
							if aParent[len(aParent)][C_TREEMODEL_PARENTID] = nLastParent { 
								exit 1
							} 
						} 
				} 
			} 
			#Calculate Back Tabs based on steps like "Start Here"
			nBackTabs = 2
			#for "Start Point"
			for aStep in aParent step 1 { 
				steptype = aStep[C_TREEMODEL_CONTENT][:steptype]
				stepCode = aStep[C_TREEMODEL_CONTENT][:code]
				stepname = aStep[C_TREEMODEL_CONTENT][:name]
				if steptype = C_STEPTYPE_ALLOWINTERACTION OR stepname = T_GD_THEFIRSTSTEP OR stepcode = "{" { 
					nBackTabs++
				} 
			} 
			nTabs = Copy(Char(9),len(aParent)-nBackTabs)
			if x[C_TREEMODEL_CONTENT][:visible] AND x[C_TREEMODEL_CONTENT][:active] { 
				if lGenerateComments AND (x[C_TREEMODEL_CONTENT][:steptype] = C_STEPTYPE_COMMENT) { 
					if x[C_TREEMODEL_NODEID]! = 1 { 
						#Avoid the Start Point
						if trim(x[C_TREEMODEL_CONTENT][:plainname])! = NULL { 
							cCommentStart = "#"
							if left(trim(x[C_TREEMODEL_CONTENT][:plainname]),1) = "#" { 
								cCommentStart = ""
							} 
							cCommentText = x[C_TREEMODEL_CONTENT][:plainname]
							cCode += nTabs+cCommentStart+cCommentText+windowsnl()
							else
								cCode += windowsnl()
						} 
					} 
					else
						if trim(x[C_TREEMODEL_CONTENT][:code])! = NULL { 
							cCode += AddTabsToCodeOfMultipleLines(x[C_TREEMODEL_CONTENT][:code],nTabs)
						} 
				} 
			} 
			if x[C_TREEMODEL_CONTENT][:visible] { 
				if x[C_TREEMODEL_NODEID]! = 1 { 
					#Avoid the Start Point
					if x[C_TREEMODEL_CONTENT][:steptype] = C_STEPTYPE_COMMENT { 
						if trim(x[C_TREEMODEL_CONTENT][:plainname])! = NULL { 
							aLines = str2list(trim(x[C_TREEMODEL_CONTENT][:plainname]))
							for cLine in aLines step 1 { 
								cCommentStart = "#"
								if left(trim(cLine),1) = "#" { 
									cCommentStart = ""
								} 
								cSteps += nTabs+cCommentStart+cLine+nl
							} 
							else
								cSteps += nl
						} 
						else
							cSteps += nTabs+substr(x[C_TREEMODEL_CONTENT][:plainname],nl,WindowsNL()+nTabs)+nl
					} 
				} 
			} 
		} 
		return [: code= cCode,: steps= cSteps]
		#/*
		#		Input: Multi-lines String contains some code, Tabs Count before each line
		#		Output: Adding tab to each line, avoid adding tab for literals
		#		Example
		#		cString = "one
		#		two
		#		three
		#		"
		#		In this string we don't add tab before (two) and (three)
		#		To avoid updating the Literal content
		#	*/
	} 
	func AddTabsToCodeOfMultipleLines cString,nTabs { 
		cCode = ""
		aLines = str2list(cString)
		lAlwaysAddTabs = False
		aChars = ['"',"[","]","'","`",",","{","}"]
		for t = 1 to len(aLines) step 1 { 
			cLine = aLines[t]
			cTabStart = ""
			lFind = find(aChars,left(cLine,1))
			if t = 1 OR lFind OR lAlwaysAddTabs { 
				cTabStart = nTabs
				if t = 1 AND  NOT lFind { 
					lAlwaysAddTabs = True
				} 
			} 
			cCode += cTabStart+cLine+windowsnl()
		} 
		return cCode
		#/*
		#		Purpose : Check if the Parent Step ID exist in a list of Steps
		#		Parameters : The Steps list & the Parent ID
		#		Output :  True/False
		#	*/
	} 
	func findParent aParent,nLastParent { 
		for aStep in aParent step 1 { 
			if aStep[C_TREEMODEL_PARENTID] = nLastParent { 
				return True
			} 
		} 
		return False
		#/*
		#		Purpose : Delete Step
		#		Parameters : The Step ID as Number
		#		Output :  None
		#	*/
	} 
	func DeleteStep nStepID { 
		#Delete Interaction Records
		DeleteInteractionsRecords(nStepID)
		#Delete Node
		oStepsTreeModel.DeleteNode(nStepID)
		#/*
		#		The next method delete the interactions records for the step and children	
		#		Parameters : The Step ID
		#		Output : None
		#	*/
	} 
	func DeleteInteractionsRecords nStepID { 
		#Delete Interaction Record
		DeleteInteractionRecord(nStepID)
		#Delete Interaction Records for Children
		aChildren = oStepsTreeModel.ChildrenIDs(nStepID)
		for x in aChildren step 1 { 
			DeleteInteractionRecord(x)
		} 
		#/*
		#		Purpose : Delete Interaction record
		#		Parameters : the step ID
		#		Output : None
		#	*/
	} 
	func DeleteInteractionRecord nStepID { 
		#Get Interaction ID
		nIID = GetInteractionID(nStepID)
		#Delete the Interaction Record
		oInteractionModel.DeleteInteraction(nIID)
		#/*
		#		Purpose : Get Interaction record ID
		#		Parameters : THE Step ID as Number
		#		Output : Interaction ID as Number
		#	*/
	} 
	func GetInteractionID nStepID { 
		#Get Content
		aContent = oStepsTreeModel.GetNodeContent(nStepID)
		#Get Interaction ID
		nIID = aContent[:interactionid]
		return nIID
		#/*
		#		Purpose : Get the Interaction Component
		#		Parameters : The Interaction ID
		#		Output : Interaction component as string
		#	*/
	} 
	func GetInteractionComponent nIID { 
		return oInteractionModel. GetInteractionComponent( nIID ) 
		#/*
		#		Purpose : Get the Interaction variables values
		#		Parameters : the Interaction ID as number
		#		Output : the Interaction values as string
		#	*/
	} 
	func GetInteractionVariablesValues nIID { 
		return oInteractionModel. GetInteractionVariablesValues( nIID ) 
		#/*
		#		Purpose : Set the Interaction variables values
		#		Parameters : the Interaction ID as number, the Interaction values as string
		#		Output : None
		#	*/
	} 
	func SetInteractionVariablesValues nIID,cValue { 
		return oInteractionModel. SetInteractionVariablesValues( nIID, cValue ) 
		#/*
		#		Purpose : Move Step Up
		#		Parameters : The step ID
		#		Output : None
		#	*/
	} 
	func MoveStepUp nStepID { 
		oStepsTreeModel.MoveNodeUp(nStepID)
		#/*
		#		Purpose : Move Step Down
		#		Parameters : The Step ID
		#		Output : None
		#	*/
	} 
	func MoveStepDown nStepID { 
		oStepsTreeModel.MoveNodeDown(nStepID)
		#/*
		#		Purpose : Cut Step
		#		Parameters : The Step ID
		#		Output : None
		#	*/
	} 
	func CutStep nStepID { 
		#We copy the interaction data to support copying steps from a file
		#Then paste in another file with different InteractionModel object
		oInteractionModelBuffer = oInteractionModel
		#Delete Interaction Records (The Time Machine keep them in a buffer for paste)
		DeleteInteractionsRecords(nStepID)
		oStepsTreeModel.CutNode(nStepID)
		#/*
		#		Purpose : Copy Step
		#		Parameters : The Step ID
		#		Output : None
		#	*/
	} 
	func CopyStep nStepID { 
		oStepsTreeModel.CopyNode(nStepID)
		#We copy the interaction data to support copying steps from a file
		#Then paste in another file with different InteractionModel object
		oInteractionModelBuffer = oInteractionModel
		#/*
		#		Purpose : Paste Step
		#		Parameters : The Parent Step ID
		#		Output : None
		#	*/
	} 
	func PasteStep nParentStepID { 
		PasteStepAfterStep(nParentStepID,nParentStepID)
	} 
	func PasteStepAfterStep nParentStepID,nParentStepID2 { 
		UpdateInteractionIDs()
		oStepsTreeModel.PasteNodeAfterNode(nParentStepID,nParentStepID2)
		#After the paste operation we update the oInteractionModelBuffer
		#So we can paste many times, but get new interactions for each paste operation
		oInteractionModelBuffer = oInteractionModel
		#/*
		#		The next method update the Interaction IDs of the buffer (Used for Paste)
		#		We will keep a list of the updated IDs to be used when the steps
		#		Share the same interaction ID
		#		Parameters : None		
		#		Output : None
		#		
		#	*/
	} 
	func UpdateInteractionIDs  { 
		aUpdatedIDs = []
		for x = 1 to len(oStepsTreeModel.aBuffer) step 1 { 
			nID = oStepsTreeModel.aBuffer[x][C_TREEMODEL_CONTENT][:interactionid]
			nPos = find(aUpdatedIDs,nID,1)
			if nPos = 0 { 
				nNewID = oInteractionModel.NewInteractionIDAfterPaste(oInteractionModelBuffer,nID)
				oStepsTreeModel.aBuffer[x][C_TREEMODEL_CONTENT][:interactionid] = nNewID
				aUpdatedIDs+[nID,nNewID]
				else
					nNewID = aUpdatedIDs[nPos][2]
					oStepsTreeModel.aBuffer[x][C_TREEMODEL_CONTENT][:interactionid] = nNewID
			} 
		} 
		#/*
		#		Purpose : Get Paste Top Components
		#		We need the list of these components to check the Rules before the paste operation
		#		Parameters : None
		#		Output : List of Components Names
		#	*/
	} 
	func GetPasteTopComponents  { 
		#Check if we have steps in the buffer
		if len(oStepsTreeModel.aBuffer) = 0 { 
			return []
			#No top components
		} 
		#Check if the root is a Generated Step (Component)
		nIID = oStepsTreeModel.aBuffer[1][C_TREEMODEL_CONTENT][:interactionid]
		cComponent = oInteractionModelBuffer.getInteractionComponent(nIID)
		if cComponent! = NULL { 
			#Not Comment
			return [cComponent]
		} 
		#Here the root is a comment (User Step)
		aOutputList = []
		aCommentsParent = [oStepsTreeModel.aBuffer[1][C_TREEMODEL_NODEID]]
		#Loop on the Comments Parent List
		for x = 1 to len(aComponentsFilesList) step 1 { 
			#Loop on the Nodes to Paste
			for t = 2 to len(oStepsTreeModel.aBuffer) step 1 { 
				nStepID = oStepsTreeModel.aBuffer[t][C_TREEMODEL_NODEID]
				nParentID = oStepsTreeModel.aBuffer[t][C_TREEMODEL_PARENTID]
				nIID = oStepsTreeModel.aBuffer[t][C_TREEMODEL_CONTENT][:interactionid]
				cComponent = oInteractionModelBuffer.getInteractionComponent(nIID)
				if find(aCommentsParent,nParentID) { 
					if cComponent = NULL { 
						#Comment
						aCommentsParent+nStepID
						else
							#Generated Step
							aOutputList+cComponent
					} 
				} 
			} 
		} 
		return aOutputList
		#/*
		#		Purpose : Get the buffer list
		#		Parameters : None
		#		Output : The buffer list
		#	*/
	} 
	func GetBuffer  { 
		return oStepsTreeModel. GetBuffer() 
	} 
	func IgnoreStep nStepID { 
		#The Active Status is the reverse of the Ignore Status
		nActive = NOT oStepsTreeModel.GetNodeContent(nStepID)[:active]
		#Set Ignore status for the parent step
		oStepsTreeModel.GetNodeContent(nStepID)[:active] = nActive
		#Set Ignore status for children steps
		aChildren = oStepsTreeModel.Children(nStepID)
		for nIndex in aChildren step 1 { 
			oStepsTreeModel.GetData()[nIndex][C_TREEMODEL_CONTENT][:active] = nActive
		} 
		return not nActive
		#/*
		#		The next function save the step code
		#		Parameters : The step ID and the step code
		#		Output : None
		#	*/
	} 
	func SaveStepCode nStepID,cCode { 
		oStepsTreeModel.GetNodeContent(nStepID)[:code] = cCode
		#/*
		#		The next method get steps in interaction range (min,max) value
		#		And set the visible attribute (True/False) using lVisible Parameter
		#		Parameters : Interaction ID Min , Interaction ID Maximum , Logical Visible
		#		Output : Sub Steps Tree List
		#	*/
	} 
	func GetStepsInTimeRange nIIDMin,nIIDMax,lVisible { 
		aList = oStepsTreeModel.GetData()
		for x = len(aList) to 1 step -1 { 
			item = aList[x]
			nIID = item[C_TREEMODEL_CONTENT][:interactionid]
			#x = 1 avoid start point
			if (nIID <= nIIDMin) OR (nIID > nIIDMax) OR (x = 1) { 
				del(aList,x)
				else
					oStepsTreeModel.aList[x][C_TREEMODEL_CONTENT][:visible] = lVisible
			} 
		} 
		return aList
		#/*
		#		Purpose : Get Step ID By Interaction ID
		#		Parameters : The Interaction ID and the Step Number (Order)
		#		Output : The Step ID
		#	*/
	} 
	func GetStepIDbyIID nIID,nStepNumber { 
		aList = oStepsTreeModel.GetData()
		for x = len(aList) to 1 step -1 { 
			item = aList[x]
			if item[C_TREEMODEL_CONTENT][:interactionid] = nIID AND item[C_TREEMODEL_CONTENT][:stepNumber] = nStepNumber { 
				return item[ C_TREEMODEL_NODEID]
			} 
		} 
		return -1 
		#/*
		#		Purpose : Is Steps Tree Empty?
		#		Parameters : None
		#		Output : True/False
		#	*/
	} 
	func IsEmpty  { 
		if oStepsTreeModel.Count() <= 1 { 
			#Start Point only
			return True
		} 
		return False
		#/*
		#		Purpose : Remove HTML Tags from Step Name
		#		Parameters : Step Name As String
		#		Output : Step name as String
		#	*/
	} 
	func RemoveTags cStr { 
		return oHTMLFunctions. RemoveTags( cStr ) 
	} 
private
