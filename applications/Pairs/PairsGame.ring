# Author: Gal Zsolt & Bert Mariani (Ring Team)
#==================================================
	load "stdlibcore.ring"
	load "lightguilib.ring"
	# Create Global Variables
		size1 = 6
		size2 = 6
		width = 50
		height = 50
		xWidth = 600
		yHeight = 600
		C_SPACING = 1
		C_FONTSIZE = 15
		Pair1 = 0
		Pair2 = 0
		PairOld = 0
		row1 = 0
		row2 = 0
		col1 = 0
		col2 = 0
		click = 0
		score = 0
		time1 = 0
		time2 = 0
		move = 0
	# Images
		C_EMPTY = AppFile("images/empty.png")
		C_COVER = AppFile("images/cover.png")
		C_P1 = AppFile("images/p1.png")
		C_P2 = AppFile("images/p2.png")
		C_P3 = AppFile("images/p3.png")
		C_P4 = AppFile("images/p4.png")
		C_P5 = AppFile("images/p5.png")
		C_P6 = AppFile("images/p6.png")
		C_P7 = AppFile("images/p7.png")
		C_P8 = AppFile("images/p8.png")
		C_P9 = AppFile("images/p9.png")
		C_P10 = AppFile("images/p10.png")
		C_P11 = AppFile("images/p11.png")
		C_P12 = AppFile("images/p12.png")
		C_P13 = AppFile("images/p13.png")
		C_P14 = AppFile("images/p14.png")
		C_P15 = AppFile("images/p15.png")
		C_P16 = AppFile("images/p16.png")
		C_P17 = AppFile("images/p17.png")
		C_P18 = AppFile("images/p18.png")
	# Create Lists
		PLIST = [C_P1,C_P2,C_P3,C_P4,C_P5,C_P6,C_P7,C_P8,C_P9,C_P10,C_P11,C_P12,C_P13,C_P14,C_P15,C_P16,C_P17,C_P18,C_P1,C_P2,C_P3,C_P4,C_P5,C_P6,C_P7,C_P8,C_P9,C_P10,C_P11,C_P12,C_P13,C_P14,C_P15,C_P16,C_P17,C_P18]
		limit = len(PLIST)
		Pairs = newlist(size1,size2)
		Pairs2 = newlist(size1,size2)
		Button = newlist(size1,size2)
		PairsXY = newlist(limit,2)
		Pairs6 = list(limit)
		PairsList = list(limit)
		PairsRand = []
		Tiles = list(size2+1)
		TilesRow = list(size1)
		LayoutButtonRow2 = list(size1)
	# Create GUI Window
		app = new QApp
		{
			StyleFusion()
			win = new QWidget()
			{
				setWindowTitle("Pairs Game")
				setWinIcon(self,AppFile("images/cover.png"))
				reSize(xWidth,yHeight)
				setStyleSheet("background-image:url('"+AppFile("images/background.jpg")+"');")
				LayoutButtonMain = new QVBoxLayout()
				{
					setSpacing(C_SPACING)
					setContentsmargins(50,50,50,50)
				}
				LayoutButtonRow1 = new QHBoxLayout()
				LayoutButtonRow3 = new QHBoxLayout()
				LayoutButtonRow4 = new QHBoxLayout()
				LayoutButtonRow5 = new QHBoxLayout()
				LayoutButtonRow6 = new QHBoxLayout()
				labelEmpty1 = new QLabel(win)
				labelEmpty2 = new QLabel(win)
				labelTime = new QLabel(win)
				{
					setFont(new QFont("Verdana",C_FONTSIZE,50,0))
					settext(" Time: ")
				}
				labelShowTime = new QLabel(win)
				{
					setFont(new QFont("Verdana",C_FONTSIZE,50,0))
				}
				labelMove = new QLabel(win)
				{
					setFont(new QFont("Verdana",C_FONTSIZE,50,0))
					settext("Move: ")
				}
				labelShowMove = new QLabel(win)
				{
					setFont(new QFont("Verdana",C_FONTSIZE,50,0))
				}
				LayoutButtonRow5.AddWidget(labelEmpty1)
				LayoutButtonMain {
					AddLayout(LayoutButtonRow1)
					AddLayout(LayoutButtonRow5)
					AddLayout(LayoutButtonRow4)
				}
				for Row = 1 to size1 step 1 { 
					LayoutButtonRow2[Row] = new QHBoxLayout()
					{
						setSpacing(C_SPACING)
						setContentsmargins(0,0,0,0)
					}
					for Col = 1 to size2 step 1 { 
						Button[Row][Col] = new QPushButton(win)
						{
							setSizePolicy(1,1)
							setclickevent("pairsClick("+string(Row)+","+string(Col)+")")
							seticon( new qicon( new qpixmap(C_COVER)))
							setIconSize( new qSize(100,75))
							setMaximumWidth(100)
							setMaximumHeight(75)
						}
						LayoutButtonRow2[Row].AddWidget(Button[Row][Col])
					} 
					LayoutButtonMain.AddLayout(LayoutButtonRow2[Row])
				} 
				buttonNewGame = new QPushButton(win)
				{
					setFont(new qFont("Verdana",C_FONTSIZE,50,0))
					settext("New")
					setClickEvent("newGame()")
				}
				buttonExit = new QPushButton(win)
				{
					setFont(new QFont("Verdana",C_FONTSIZE,50,0))
					settext("Exit")
					setClickEvent("closeGame()")
				}
				labelScore = new QLabel(win)
				{
					setFont(new QFont("Verdana",C_FONTSIZE,50,0))
					settext("           Score:")
				}
				labelNumScore = new QLabel(win)
				{
					setFont(new QFont("Verdana",C_FONTSIZE,50,0))
					settext("0")
				}
				LayoutButtonRow6.AddWidget(labelEmpty2)
				LayoutButtonMain.AddLayout(LayoutButtonRow6)
				LayoutButtonRow1 {
					AddWidget(labelTime)
					AddWidget(labelShowTime)
					AddWidget(labelMove)
					AddWidget(labelShowMove)
				}
				LayoutButtonRow3 {
					AddWidget(buttonNewGame)
					AddWidget(labelScore)
					AddWidget(labelNumScore)
					AddWidget(buttonExit)
				}
				LayoutButtonMain.AddLayout(LayoutButtonRow3)
				setLayout(LayoutButtonMain)
				TimerMan = new QTimer(win)
				{
					time1 = clock()
					setInterval(1000)
					setTimeoutEvent("timerMan()")
					start()
				}
				TimerMan2 = new QTimer(win)
				{
					AddAttribute(self,:row)
					AddAttribute(self,:col)
					setInterval(500)
					setTimeoutEvent("timerMan2()")
					stop()
				}
				TimerMan3 = new QTimer(win)
				{
					AddAttribute(self,:row)
					AddAttribute(self,:col)
					setInterval(500)
					setTimeoutEvent("timerMan3()")
					stop()
				}
				randomPairs()
				show()
			}
			exec()
		}
	func timerMan  { 
		nowTime = ceil((clock()-time1)/clockspersecond())
		nowMinute = floor(nowTime/60)
		nowSeconds = nowTime%60
		if nowSeconds < 10 { 
			nowSeconds = "0"+nowSeconds
		} 
		nowMinSec = ""+nowMinute+":"+nowSeconds
		labelShowTime.setText(nowMinSec)
	} 
	func newGame  { 
		labelShowTime.setText("0:00")
		time1 = clock()
		TimerMan.start()
		move = 0
		labelShowMove.settext("0")
		PairsXY = newlist(limit,2)
		randomPairs()
	} 
	func randomPairs  { 
		PLIST = [C_P1,C_P2,C_P3,C_P4,C_P5,C_P6,C_P7,C_P8,C_P9,C_P10,C_P11,C_P12,C_P13,C_P14,C_P15,C_P16,C_P17,C_P18,C_P1,C_P2,C_P3,C_P4,C_P5,C_P6,C_P7,C_P8,C_P9,C_P10,C_P11,C_P12,C_P13,C_P14,C_P15,C_P16,C_P17,C_P18]
		PairsList = randomList(PLIST)
		randList = 1:len(PairsList)
		randList = randomList(randList)
		for n = 1 to size1 step 1 { 
			for m = 1 to size2 step 1 { 
				ind = (n-1)*6+m
				PairsXY[ind][1] = n
				PairsXY[ind][2] = m
			} 
		} 
		for nr = 1 to limit step 1 { 
			rand1 = random(len(randList)-1)+1
			if len(randList) = 1 { 
				rand1 = 1
			} 
			rand2 = randList[rand1]
			pairsNew = PairsList[nr]
			row = pairsXY[rand1][1]
			col = pairsXY[rand1][2]
			Pairs[row][col] = pairsNew
			Button[row][col].setenabled(true)
			Button[row][col] {
				seticon(new QIcon(new QPixmap(C_COVER)))
			}
			del(PairsXY,rand1)
			del(randList,rand1)
		} 
		Pairs2 = Pairs
	} 
	func pairsClick Row,Col { 
		if TimerMan2.isActive() OR TimerMan3.isActive() { 
			return 
		} 
		click++
		if click = 1 { 
			Pair1 = Pairs[Row][Col]
			row1 = Row
			col1 = Col
			Button[Row][Col] {
				seticon(new QIcon(new QPixmap(Pair1)))
			}
			if (row2 > 0) AND (col2 > 0) AND (Pair2! = PairOld) { 
				Button[row2][col2] {
					seticon(new QIcon(new QPixmap(C_COVER)))
				}
			} 
			return 
			else
				Pair2 = Pairs[Row][Col]
				row2 = Row
				col2 = Col
				Button[Row][Col] {
					seticon(new QIcon(new QPixmap(Pair2)))
				}
				TimerMan2.row = row
				TimerMan2.col = col
				TimerMan2.start()
		} 
	} 
	func TimerMan2  { 
		row = TimerMan2.row
		col = TimerMan2.col
		TimerMan2.stop()
		Button[Row][Col] {
			seticon(new QIcon(new QPixmap(C_COVER)))
		}
		if (Pair1 = Pair2) AND (click = 2) AND  NOT (row1 = row2 AND col1 = col2) { 
			PairOld = Pair1
			Button[row1][col1] {
				seticon(new QIcon(new QPixmap(Pair1)))
			}
			Button[row2][col2] {
				seticon(new QIcon(new QPixmap(Pair2)))
			}
			TimerMan3.row = row
			TimerMan3.col = col
			TimerMan3.start()
			return 
			else
				Button[row1][col1] {
					seticon( new qicon( new qpixmap(C_COVER)))
				}
		} 
		if (row1 = row2) AND (col1 = col2) { 
			Button[row1][col1] {
				seticon( new qicon( new qpixmap(Pair1)))
			}
		} 
		if click = 2 { 
			click = 0
			move++
			labelShowMove.settext(string(move))
		} 
	} 
	func TimerMan3  { 
		row = TimerMan3.row
		col = TimerMan3.col
		TimerMan3.stop()
		Button[row1][col1] {
			seticon( new qicon( new qpixmap(C_EMPTY)))
		}
		Button[row2][col2] {
			seticon( new qicon( new qpixmap(C_EMPTY)))
		}
		Button[row1][col1].setenabled(false)
		Button[row2][col2].setenabled(false)
		Pairs[row1][col1] = C_EMPTY
		Pairs[row2][col2] = C_EMPTY
		gameOver()
		if (row1 = row2) AND (col1 = col2) { 
			Button[row1][col1] {
				seticon( new qicon( new qpixmap(Pair1)))
			}
		} 
		if click = 2 { 
			click = 0
			move++
			labelShowMove.settext(string(move))
		} 
	} 
	func gameOver  { 
		check = 0
		for row = 1 to size1 step 1 { 
			for col = 1 to size2 step 1 { 
				if Pairs[row][col]! = C_EMPTY { 
					check = 0
					exit 2
					else
						check = 1
				} 
			} 
		} 
		if check = 1 { 
			TimerMan.stop()
			score++
			labelNumScore.settext(string(score))
			for Row = 1 to size1 step 1 { 
				for Col = 1 to size2 step 1 { 
					pairsOld = Pairs2[Row][Col]
					Button[Row][Col] {
						setenabled(true)
						seticon(new QIcon(new QPixmap(pairsOld)))
					}
				} 
			} 
		} 
	} 
	func closeGame  { 
		win.close()
	} 
