#===================================================================#
#Copyright (c) 2014-2019 Ramon Santamaria (@raysan5)
#Ported to RingRayLib by Ring Team
#===================================================================#
load "raylib.ring"
MAX_COLORS_COUNT = 21
#Number of colors available
screenWidth = 800
screenHeight = 450
colors = list(MAX_COLORS_COUNT)
colorNames = list(MAX_COLORS_COUNT)
colorsRecs = list(MAX_COLORS_COUNT)
colorState = list(MAX_COLORS_COUNT)
InitWindow(screenWidth,screenHeight,"raylib [shapes] example - colors palette")
colors = [DARKGRAY,MAROON,ORANGE,DARKGREEN,DARKBLUE,DARKPURPLE,DARKBROWN,GRAY,RED,GOLD,LIME,BLUE,VIOLET,BROWN,LIGHTGRAY,PINK,YELLOW,GREEN,SKYBLUE,PURPLE,BEIGE]
colorNames = ["DARKGRAY","MAROON","ORANGE","DARKGREEN","DARKBLUE","DARKPURPLE","DARKBROWN","GRAY","RED","GOLD","LIME","BLUE","VIOLET","BROWN","LIGHTGRAY","PINK","YELLOW","GREEN","SKYBLUE","PURPLE","BEIGE"]
for i = 1 to MAX_COLORS_COUNT step 1 { 
	colorsRecs[i] = new Rectangle(0,0,0,0)
} 
for i = 1 to MAX_COLORS_COUNT step 1 { 
	colorState[i] = 0
} 
#Fills colorsRecs data (for every rectangle)
for i = 1 to MAX_COLORS_COUNT step 1 { 
	colorsRecs[i].x = 20+100*((i-1)%7)+10*((i-1)%7)
	colorsRecs[i].y = 80+100*floor((i-1)/7)+10*floor((i-1)/7)
	colorsRecs[i].width = 100
	colorsRecs[i].height = 100
} 
mousePoint = Vector2(0.0,0.0)
SetTargetFPS(60)
#Main game loop
while !WindowShouldClose() { 
	mousePoint = GetMousePosition()
	for i = 1 to MAX_COLORS_COUNT step 1 { 
		if (CheckCollisionPointRec(mousePoint,colorsRecs[i])) { 
			colorState[i] = 1
			else
				colorState[i] = 0
		} 
	} 
	BeginDrawing()
	ClearBackground(RAYWHITE)
	DrawText("raylib colors palette",28,42,20,BLACK)
	DrawText("press SPACE to see all colors",GetScreenWidth()-180,GetScreenHeight()-40,10,GRAY)
	#Draw all rectangles
	for i = 1 to MAX_COLORS_COUNT step 1 { 
		if colorState[i] { 
			cstate = 0.6
			else
				cstate = 1.0
		} 
		DrawRectangleRec(colorsRecs[i],Fade(colors[i],cstate))
		if (IsKeyDown(KEY_SPACE)||colorState[i]) { 
			DrawRectangle(colorsRecs[i].x,colorsRecs[i].y+colorsRecs[i].height-26,colorsRecs[i].width,20,BLACK)
			DrawRectangleLinesEx(colorsRecs[i],6,Fade(BLACK,0.3))
			DrawText(colorNames[i],colorsRecs[i].x+colorsRecs[i].width-MeasureText(colorNames[i],10)-12,colorsRecs[i].y+colorsRecs[i].height-20,10,colors[i])
		} 
	} 
	EndDrawing()
} 
CloseWindow()
