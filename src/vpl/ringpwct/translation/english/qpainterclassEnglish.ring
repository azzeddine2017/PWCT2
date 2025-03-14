/*
**	Project : Programming Without Coding Technology (PWCT) Version 2.0
**	File Purpose :  qpainterclass Component
**	Date : 2021.08.09
**	Author :  Mahmoud Fayed <msfclipper@yahoo.com>
*/


T_CT_QPAINTERCLASS_IP_TITLE = "QPainter Class Component"
T_CT_QPAINTERCLASS_IP_VALUE = "Object"
T_CT_QPAINTERCLASS_IP_VALUE2 = "Method"
T_CT_QPAINTERCLASS_IP_VALUE2FUNC = [
	"background",
	"backgroundmode",
	"begin",
	"beginnativepainting",
	"boundingrect",
	"brush",
	"brushorigin",
	"clipboundingrect",
	"clippath",
	"clipregion",
	"combinedtransform",
	"compositionmode",
	"delete",
	"device",
	"devicetransform",
	"drawarc",
	"drawchord",
	"drawconvexpolygon",
	"drawellipse",
	"drawglyphrun",
	"drawimage",
	"drawline",
	"drawlines",
	"drawpath",
	"drawpicture",
	"drawpie",
	"drawpixmap",
	"drawpoint",
	"drawpoints",
	"drawpolygon",
	"drawpolyline",
	"drawrect",
	"drawrects",
	"drawroundedrect",
	"drawstatictext",
	"drawtext",
	"drawtiledpixmap",
	"endnativepainting",
	"endpaint",
	"eraserect",
	"fillpath",
	"fillrect",
	"font",
	"fontinfo",
	"hasclipping",
	"init",
	"initfrom",
	"isactive",
	"layoutdirection",
	"objectpointer",
	"opacity",
	"paintengine",
	"pen",
	"renderhints",
	"resettransform",
	"restore",
	"rotate",
	"save",
	"scale",
	"setbackground",
	"setbackgroundmode",
	"setbrush",
	"setbrushorigin",
	"setclippath",
	"setclipping",
	"setcliprect",
	"setclipregion",
	"setcompositionmode",
	"setfont",
	"setlayoutdirection",
	"setopacity",
	"setpen",
	"setrenderhint",
	"settransform",
	"setviewport",
	"setviewtransformenabled",
	"setwindow",
	"setworldmatrixenabled",
	"setworldtransform",
	"shear",
	"strokepath",
	"testrenderhint",
	"transform",
	"translate",
	"viewport",
	"viewtransformenabled",
	"window",
	"worldmatrixenabled",
	"worldtransform"
]
T_CT_QPAINTERCLASS_IP_VALUE2STEPFUNC = T_CT_QPAINTERCLASS_IP_VALUE2FUNC
T_CT_QPAINTERCLASS_IP_VALUE2LIST = [
	"background(void) --> QBrush",
	"backgroundMode(void) --> int",
	"begin(QPaintDevice *device) --> bool",
	"beginNativePainting(void) --> void",
	"boundingRect(int x, int y, int w, int h, int flags, QString text) --> QRect",
	"brush(void) --> QBrush",
	"brushOrigin(void) --> QPoint",
	"clipBoundingRect(void) --> QRectF",
	"clipPath(void) --> QPainterPath",
	"clipRegion(void) --> QRegion",
	"combinedTransform(void) --> QTransform",
	"compositionMode(void) --> int",
	"delete(void) --> void",
	"device(void) --> QPaintDevice",
	"deviceTransform(void) --> QTransform",
	"drawArc(int x, int y, int width, int height, int startAngle, int spanAngle) --> void",
	"drawChord(int x, int y, int width, int height, int startAngle, int spanAngle) --> void",
	"drawConvexPolygon(List *pPoints) --> void",
	"drawEllipse(int x, int y, int width, int height) --> void",
	"drawGlyphRun(QPointF position, QGlyphRun glyphs) --> void",
	"drawImage(int x, int y, QImage image) --> void",
	"drawLine(int x1, int y1, int x2, int y2) --> void",
	"drawLines(QLine *lines, int lineCount) --> void",
	"drawPath(QPainterPath path) --> void",
	"drawPicture(int x, int y, QPicture picture) --> void",
	"drawPie(int x, int y, int width, int height, int startAngle, int spanAngle) --> void",
	"drawPixmap(int x, int y, QPixmap) --> void",
	"drawPoint(int x, int y) --> void",
	"drawPoints(List *pPoints) --> void",
	"drawPolygon(List *pPoints, Qt::FillRule fillRule) --> void",
	"drawPolyline(List *pPoints) --> void",
	"drawRect(int x, int y, int width, int height) --> void",
	"drawRects(QRectF *rectangles, int rectCount) --> void",
	"drawRoundedRect(int x, int y, int w, int h, qreal xRadius, qreal yRadius, Qt::SizeMode mode) --> void",
	"drawStaticText(int left, int top, QStaticText staticText) --> void",
	"drawText(int x, int y, QString text) --> void",
	"drawTiledPixmap(int x, int y, int width, int height, QPixmap pixmap, int sx, int sy) --> void",
	"endNativePainting(void) --> void",
	"endpaint(void) --> bool",
	"eraseRect(int x, int y, int width, int height) --> void",
	"fillPath(QPainterPath path, QBrush brush) --> void",
	"fillRect(int x, int y, int width, int height, QBrush) --> void",
	"font(void) --> QFont",
	"fontInfo(void) --> QFontInfo",
	"hasClipping(void) --> bool",
	"init(parent) --> object",
	"initFrom(QWidget *widget) --> void",
	"isActive(void) --> bool",
	"layoutDirection(void) --> int",
	"objectpointer(void) --> pointer",
	"opacity(void) --> double",
	"paintEngine(void) --> QPaintEngine",
	"pen(void) --> QPen",
	"renderHints(void) --> int",
	"resetTransform(void) --> void",
	"restore(void) --> void",
	"rotate(qreal angle) --> void",
	"save(void) --> void",
	"scale(double sx, double sy) --> void",
	"setBackground(QBrush brush) --> void",
	"setBackgroundMode(Qt::BGMode mode) --> void",
	"setBrush(QBrush brush) --> void",
	"setBrushOrigin(int x, int y) --> void",
	"setClipPath(QPainterPath path, Qt::ClipOperation operation) --> void",
	"setClipping(bool enable) --> void",
	"setClipRect(int x, int y, int width, int height, Qt::ClipOperation operation) --> void",
	"setClipRegion(QRegion region, Qt::ClipOperation operation) --> void",
	"setCompositionMode(QPainter::CompositionMode mode) --> void",
	"setFont(QFont font) --> void",
	"setLayoutDirection(Qt::LayoutDirection direction) --> void",
	"setOpacity(qreal opacity) --> void",
	"setPen(QPen pen) --> void",
	"setRenderHint(QPainter::RenderHint hint, bool on) --> void",
	"setTransform(QTransform transform, bool combine) --> void",
	"setViewport(int x, int y, int width, int height) --> void",
	"setViewTransformEnabled(bool enable) --> void",
	"setWindow(int x, int y, int width, int height) --> void",
	"setWorldMatrixEnabled(bool enable) --> void",
	"setWorldTransform( QTransform matrix, bool combine) --> void",
	"shear(double sh, double sv) --> void",
	"strokePath(QPainterPath path, QPen pen) --> void",
	"testRenderHint(QPainter::RenderHint hint) --> bool",
	"transform(void) --> QTransform",
	"translate(double dx, double dy) --> void",
	"viewport(void) --> QRect",
	"viewTransformEnabled(void) --> bool",
	"window(void) --> QRect",
	"worldMatrixEnabled(void) --> bool",
	"worldTransform(void) --> QTransform"
]
T_CT_QPAINTERCLASS_IP_VALUE3 = "Parameters"
T_CT_QPAINTERCLASS_IP_VALUE4 = "Output"
