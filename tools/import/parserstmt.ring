/*
**	Project : Programming Without Coding Technology (PWCT) Version 2.0
**	File Purpose : Import Tool - Parser
**	Date : 2020.02.15
**	Author :  Mahmoud Fayed <msfclipper@yahoo.com>
*/

class ParserStmt

	func stmt
		x = True
		/* Statement --> Load Literal */
		if iskeyword(K_LOAD) {
			nexttoken()
			/* Load Package Command */
			if iskeyword(K_PACKAGE) {
				nexttoken()
			elseif iskeyword(K_AGAIN) 
				nexttoken()
			}
			if isliteral() {
				nexttoken()
				AddParameter(:FileName)
				oTarget.GenerateLoadLiteral(self)
				clearTextBuffer()
				return x 
			}
			return 0 
		}
		/* Statement --> See|Put Expr */
		if iskeyword(K_SEE) or iskeyword(K_PUT) {
			clearTextBuffer()
			nexttoken()
			IGNORENEWLINE() 
			nAssignmentFlag = 0 				
			x = expr()
			nAssignmentFlag = 1 
			AddParameterFromSecondBuffer(:Expression)
			oTarget.GenerateSeeExpr(self)
			clearTextBuffer()
			return x 
		}
		/* Statement --> ? Expr */
		if isoperator("?") {
			clearTextBuffer()
			nexttoken()
			IGNORENEWLINE() 
			nAssignmentFlag = 0 
			x = expr()
			nAssignmentFlag = 1 
			AddParameterFromSecondBuffer(:Expression)
			oTarget.GenerateQuestionMarkExpr(self)
			clearTextBuffer()
			return x 
		}
		/* Statement --> Give|Get Identifier */
		if iskeyword(K_GIVE) or iskeyword(K_GET) {
			nexttoken()
			IGNORENEWLINE() 
			if isidentifier() {
				/* Generate Code */
				nexttoken()
				x = mixer()
				if x = 0 {
					return 0 
				}
				/* Generate Code */
				AddParameter(:Identifier)
				oTarget.GenerateGiveIdentifier(self)
				clearTextBuffer()
				return 1 
			else
				error(ERROR_VARNAME)
				return 0 
			}
		}
		/* Statement --> For Identifier = Expr to Expr {Statement} Next  |  For Identifier in Expr {Statemen */
		if iskeyword(K_FOR) {
			clearTextBuffer()
			nexttoken()
			IGNORENEWLINE() 
			if isidentifier() {
				addParameter(:Variable)		# Used by For-In
				nexttoken()
				if isoperator2(OP_EQUAL) {
					nexttoken()
					/*
					**  Generate Code 
					**  Mark for Exit command to go to outside the loop 
					*/
					nAssignmentFlag = 0 
					if expr() {  
						addParameter(:Start)
					  clearTextBuffer()
						/*
						**  Generate Code 
						**  Before Equal ( = ) not += , -= ,... etc 
						*/
						if iskeyword(K_TO) {
							nexttoken()
							addParameter(:To)
							IGNORENEWLINE() 
							nAssignmentFlag = 0 
							if csexpr() {
								clearTextBuffer()
								nAssignmentFlag = 1 
								/* Generate Code */
								/* Step <expr> */
								x = parsestep()
								if x = 0 {
									return 0 
								}
								oTarget.GenerateForLoop(self)
								oTarget.GenerateBlockStart(self)
								while stmt() {
									if nActiveToken = nTokensCount {
										exit
									}
								}
								oTarget.GenerateBlockEnd(self)
								if iskeyword(K_NEXT) or iskeyword(K_END) or csbraceend() {
									/* Generate Code */
									nexttoken()
									clearTextBuffer()
									return 1 
								else
									error(ERROR_NEXT)
								}
							}
						}
					}
				elseif iskeyword(K_IN)
					clearTextBuffer()
					/* Generate Code */
					nexttoken()
					addParameter(:In)
					IGNORENEWLINE() 
					nAssignmentFlag = 0 
					if csexpr() {
						clearTextBuffer()
						nAssignmentFlag = 1 
						/* Generate Code */
						/* Step <expr> */
						x = parsestep()
						if x = 0 {
							return 0 
						}
						oTarget.GenerateForInLoop(self)
						oTarget.GenerateBlockStart(self)
						while stmt() {
							if nActiveToken = nTokensCount {
								exit
							}
						}
						oTarget.GenerateBlockEnd(self)
						if iskeyword(K_NEXT) or iskeyword(K_END) or csbraceend() {
							nexttoken()
							/* Generate Code */
							clearTextBuffer()
							return 1 
						else
							error(ERROR_NEXT)
						}
					}
				}
			}
			return 0 
		}
		/* Statement --> IF Expr Statements OK */
		if iskeyword(K_IF) {
			ClearTextBuffer()
			nexttoken()
			IGNORENEWLINE() 
			nAssignmentFlag = 0 
			if csexpr() {
				AddParameter(:Condition)
				oTarget.GenerateIfExpr(self)
				oTarget.GenerateBlockStart(self)
				clearTextBuffer()
				nAssignmentFlag = 1 
				while stmt() {
					if nActiveToken = nTokensCount {
						exit
					}
				}
				/* Generate Code */
				/* { 'But' Statements } 'Else' Statements */
				while iskeyword(K_BUT) or iskeyword(K_ELSEIF) {
					ClearTextBuffer()
					/* Generate Code */
					nexttoken()
					nAssignmentFlag = 0 
					if expr() {
						AddParameter(:Condition)
						oTarget.GenerateButExpr(self)
						oTarget.GenerateBlockStart(self)
						clearTextBuffer()
						nAssignmentFlag = 1 
						/* Generate Code */
						while stmt() {
							if nActiveToken = nTokensCount {
								exit
							}
						}
						oTarget.GenerateBlockEnd(self)
						/* Generate Code */
					}
				}
				if iskeyword(K_ELSE) or iskeyword(K_OTHER) {
					ClearTextBuffer()
					/* Generate Code */
					nexttoken()
					oTarget.GenerateElse(self)
					oTarget.GenerateBlockStart(self)
					while stmt() {
						if nActiveToken = nTokensCount {
							exit 
						}
					}
					oTarget.GenerateBlockEnd(self)
				}
				if iskeyword(K_OK) or iskeyword(K_END) or csbraceend() {
					/* Generate Code */
					oTarget.GenerateBlockEnd(self)
					nexttoken()
					clearTextBuffer()
					return 1 
				else
					error(ERROR_OK)
				}
			}
			return 0 
		}
		/* Statement --> WHILE Expr Statements END */
		if iskeyword(K_WHILE) {
			/*
			**  Generate Code 
			**  Mark for Exit command to go to outsize the loop 
			*/
			clearTextBuffer()
			nexttoken()
			IGNORENEWLINE() 
			nAssignmentFlag = 0 
			if csexpr() {
				AddParameterFromSecondBuffer(:Condition)
				oTarget.GenerateWhileExpr(self)
				oTarget.GenerateBlockStart(self)
				nAssignmentFlag = 1 
				/* Generate Code */
				/* Save Loop|Exit commands status */
				while stmt() {
					if nActiveToken = nTokensCount {
						exit
					}
				}
				oTarget.GenerateBlockEnd(self)
				if iskeyword(K_END) or csbraceend() {
					/* Generate Code */
					nexttoken()
					clearTextBuffer()
					return 1 
				else
					error(ERROR_END)
				}
			}
			return 0 
		}
		/* Statement --> DO Statements AGAIN Expr */
		if iskeyword(K_DO) {
			clearTextBuffer()
			/*
			**  Generate Code 
			**  Mark for Exit command to go to outsize the loop 
			*/
			nexttoken()
			oTarget.GenerateDoAgainExpr(self)
			nDoAgainInstruction = CurrentInstruction()
			oTarget.GenerateBlockStart(self)
			/* Save Loop|Exit commands status */
			while stmt() {
				if nActiveToken = nTokensCount {
					exit
				}
			}
			oTarget.GenerateBlockEnd(self)
			if iskeyword(K_AGAIN) {
				clearTextBuffer()
				/* Generate Code */
				nexttoken()
				IGNORENEWLINE() 
				nAssignmentFlag = 0 
				if expr() {
					AddParameterToInstructionFromSecondBuffer(nDoAgainInstruction,:Expression)
					/* Generate Code (Test Condition) */
					nAssignmentFlag = 1 
					clearTextBuffer()
					return 1 
				}
			else
				error(ERROR_AGAIN)
			}
			return 0 
		}
		/* Statement --> Return Expr */
		if iskeyword(K_RETURN) {
			nexttoken()
			x = 1 
			if isendline() = 0 {
				/* Generate Code */
				nAssignmentFlag = 0 
				x = expr()
				nAssignmentFlag = 1 
				/* Generate Code */
				AddParameterFromSecondBuffer(:Expression)
			else 
				/*
				**  Generate Code 
				**  Return NULL 
				*/
			}
			oTarget.GenerateReturn(self)
			clearTextBuffer()
			return x 
		}
		/* Statement --> Try {Statement} Catch {Statement} Done */
		if iskeyword(K_TRY) {
			nexttoken()
			IGNORENEWLINE() 
			if isoperator2(OP_BRACEOPEN) {
				nexttoken()
				nControlStructureBrace++ 
			}
			/* Generate Code */
			oTarget.GenerateTry(self)
			oTarget.GenerateBlockStart(self)
			while stmt() {
				if nActiveToken = nTokensCount {
					exit 
				}
			}
			oTarget.GenerateBlockEnd(self)
			if iskeyword(K_CATCH) {
				nexttoken()
				/*
				**  Generate Code 
				**  Jump from end of try block to label after done 
				*/
				oTarget.GenerateCatch(self)
				oTarget.GenerateBlockStart(self)
				while stmt() {
					if nActiveToken = nTokensCount {
						exit
					}
				}
				oTarget.GenerateBlockEnd(self)
				if iskeyword(K_DONE) or iskeyword(K_END) or csbraceend() {
					nexttoken()
					/* Generate Code */
					clearTextBuffer()
					return 1 
				else
					error(ERROR_NODONE)
				}
			else
				error(ERROR_NOCATCH)
			}
		}
		/* Statement --> Bye (Close the Program) */
		if iskeyword(K_BYE) {
			nexttoken()
			/* Generate Code */
			oTarget.GenerateBye(self)
			clearTextBuffer()
			return 1 
		}
		/* Statement --> Exit (Go to outside the loop) */
		if iskeyword(K_EXIT) {
			clearTextBuffer()
			nexttoken()
			/* Check Number  (Exit from more than one loop) */
			if isnumber() or isidentifier() {
				if ! expr() {
					return 0 
				}
			}
			addParameter(:Value)
			oTarget.GenerateExit(self)
			clearTextBuffer()
			return 1 
		}
		/* Statement --> Loop (Continue) */
		if iskeyword(K_LOOP) {
			clearTextBuffer()
			nexttoken()
			/* Check Number  (Continue from more than one loop) */
			if isnumber() or isidentifier() {
				if ! expr() {
					return 0 
				}
			}
			addParameter(:Value)
			oTarget.GenerateLoop(self)
			clearTextBuffer()
			return 1 
		}
		/* Statement --> Switch  Expr { ON|CASE Expr {Statement} } OFF */
		if iskeyword(K_SWITCH) {
			clearTextBuffer()
			nexttoken()
			IGNORENEWLINE() 
			nAssignmentFlag = 0 
			if csexpr() {
				addParameterFromSecondBuffer(:Variable)
				nAssignmentFlag = 1 
				IGNORENEWLINE() 
				/* ON|CASE Statements */
				oTarget.GenerateSwitch(self)
				oTarget.GenerateBlockStart(self)
				clearTextBuffer()
				while iskeyword(K_ON) or iskeyword(K_CASE) {
					clearTextBuffer()
					nexttoken()
					nAssignmentFlag = 0 
					if expr() {
						nAssignmentFlag = 1 
						/* Generate Code */
						addParameterFromSecondBuffer(:Value)
						oTarget.GenerateSwitchCase(self)
						oTarget.GenerateBlockStart(self)
						clearTextBuffer()
						while stmt() {
							if nActiveToken = nTokensCount {
								exit
							}
						}
						oTarget.GenerateBlockEnd(self)
						/* Generate Code */
					}
				}
				/* Other */
				if iskeyword(K_OTHER) or iskeyword(K_ELSE) {
					clearTextBuffer()
					nexttoken()
					oTarget.GenerateSwitchOther(self)
					oTarget.GenerateBlockStart(self)
					/* Generate Code */
					while stmt() {
						if nActiveToken = nTokensCount {
							exit
						}
					}
					oTarget.GenerateBlockEnd(self)
				}
				oTarget.GenerateBlockEnd(self)
				/* OFF */
				if iskeyword(K_OFF) or iskeyword(K_END) or csbraceend() {
					nexttoken()
					clearTextBuffer()
					return 1 
				else
					error(ERROR_SWITCHOFF)
				}
			else
				error(ERROR_SWITCHEXPR)
			}
		}
		/* Statement --> Import Identifier { '.' Identifier } */
		if iskeyword(K_IMPORT) {
			clearTextBuffer()
			nexttoken()
			IGNORENEWLINE() 
			/* Generate Code */
			lOutput = namedotname() 
			addParameter(:Value)
			oTarget.GenerateImportPackage(self)
			clearTextBuffer()
			return lOutput
		}
		/* Statement --> epslion */
		if epslion() {
			return 1 
		}
		/* Statement --> Expr */
		if expr() {
			if isOperator(")") {
				NextToken()
			}
			GenerateStatementIsExpression()
			return 1 
		}
		return 0

Func GenerateStatementIsExpression
		AddParameterFromSecondBuffer(:Expression)
		oTarget.GenerateExpressionCommand(self)
		clearTextBuffer()