# Form/Window View - Generated Source Code File 
# Generated by the Ring 1.8 Form Designer
# Date : 28/02/2018
# Time : 15:28:29

Load "stdlib.ring"
Load "guilib.ring"

import System.GUI

if IsMainSourceFile() { 
	new App {
		StyleFusion()
		new justatestView { win.show() } 
		exec()
	}
}

class justatestView from WindowsViewParent
	win = new MainWindow() { 
		move(84,77)
		resize(400,474)
		setWindowTitle("Form1")
		setstylesheet("background-color:#ccff80;") 
		Label1 = new label(win) {
			move(3,26)
			resize(276,27)
			setstylesheet("color:black;background-color:;")
			oFont = new qfont("",0,0,0)
			oFont.fromstring("MS Shell Dlg 2,16,-1,5,50,0,0,0,0,0")
			setfont(oFont)
			oFont.delete()
			setText("Enter Number")
			setAlignment(Qt_AlignLeft |  Qt_AlignVCenter)
		}
		LineEdit1 = new lineedit(win) {
			move(3,77)
			resize(342,35)
			setstylesheet("color:black;background-color:white;")
			oFont = new qfont("",0,0,0)
			oFont.fromstring("MS Shell Dlg 2,16,-1,5,50,0,0,0,0,0")
			setfont(oFont)
			oFont.delete()
			setText("")
			setTextChangedEvent("")
			setcursorPositionChangedEvent("")
			seteditingFinishedEvent("")
			setreturnPressedEvent("")
			setselectionChangedEvent("")
			settextEditedEvent("")
			
		}
		Button1 = new pushbutton(win) {
			move(3,129)
			resize(187,51)
			setstylesheet("color:black;background-color:;")
			oFont = new qfont("",0,0,0)
			oFont.fromstring("MS Shell Dlg 2,16,-1,5,50,0,0,0,0,0")
			setfont(oFont)
			oFont.delete()
			setText("Add")
			setClickEvent(Method(:AddName))
			setBtnImage(Button1,"")
			
		}
		ListWidget1 = new listwidget(win) {
			move(3,197)
			resize(340,144)
			setstylesheet("color:black;background-color:white;")
			oFont = new qfont("",0,0,0)
			oFont.fromstring("MS Shell Dlg 2,16,-1,5,50,0,0,0,0,0")
			setfont(oFont)
			oFont.delete()
			setcurrentItemChangedEvent("")
			setcurrentRowChangedEvent("")
			setcurrentTextChangedEvent("")
			setitemActivatedEvent("")
			setitemChangedEvent("")
			setitemClickedEvent("")
			setitemDoubleClickedEvent("")
			setitemEnteredEvent("")
			setitemPressedEvent("")
			setitemSelectionChangedEvent("")
			
		}
		LineEdit2 = new lineedit(win) {
			move(81,362)
			resize(275,40)
			setstylesheet("color:black;background-color:white;")
			oFont = new qfont("",0,0,0)
			oFont.fromstring("MS Shell Dlg 2,16,-1,5,50,0,0,0,0,0")
			setfont(oFont)
			oFont.delete()
			setText("")
			setTextChangedEvent("")
			setcursorPositionChangedEvent("")
			seteditingFinishedEvent("")
			setreturnPressedEvent("")
			setselectionChangedEvent("")
			settextEditedEvent("")
			
		}
		Button2 = new pushbutton(win) {
			move(3,362)
			resize(74,47)
			setstylesheet("color:black;background-color:;")
			oFont = new qfont("",0,0,0)
			oFont.fromstring("MS Shell Dlg 2,16,-1,5,50,0,0,0,0,0")
			setfont(oFont)
			oFont.delete()
			setText("Sum")
			setClickEvent(Method(:SumNumbers))
			setBtnImage(Button2,"")
			
		}
		Layout1 = new QVBoxLayout() {
			AddWidget(Label1)
			AddWidget(LineEdit1)
			AddWidget(Button1)
			AddWidget(ListWidget1)
			AddWidget(Button2)
			AddWidget(LineEdit2)
			
		}

		oMWLayoutWidget = new qWidget() { setLayout(Layout1) }
		setCentralWidget(oMWLayoutWidget) 
	}

# End of the Generated Source Code File...