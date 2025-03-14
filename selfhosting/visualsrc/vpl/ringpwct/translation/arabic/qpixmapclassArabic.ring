#/*
#**	Project : Programming Without Coding Technology (PWCT) Version 2.0
#**	File Purpose :  qpixmapclass Component
#**	Date : 2018.03.18
#**	Author :  Mahmoud Fayed <msfclipper@yahoo.com>
#*/
T_CT_QPIXMAPCLASS_IP_TITLE = "مكون فئة خريطة النقاط "
T_CT_QPIXMAPCLASS_IP_VALUE = "اسم الكائن :"
T_CT_QPIXMAPCLASS_IP_VALUE2 = "الميثود : "
T_CT_QPIXMAPCLASS_IP_VALUE2FUNC = ["cachekey","convertfromimage","copy","copy_2","createheuristicmask","createmaskfromcolor","defaultdepth","delete","depth","detach","devicepixelratio","fill","fromimage","fromimage_2","fromimagereader","hasalpha","hasalphachannel","height","init","isnull","isqbitmap","loadfromdata","loadfromdata_2","loadpixmap","mask","objectpointer","rect","save","save_2","scaled","scaled_2","scaledtoheight","scaledtowidth","scroll","scroll_2","setdevicepixelratio","setmask","size","swap","toimage","transformed","transformed_2","truematrix","truematrix_2","width"]
#Copy the list to support changing the generated method name in the Steps Tree
T_CT_QPIXMAPCLASS_IP_VALUE2STEPFUNC = ["مفتاح_التخزين_المؤقت","تحويل_من_صورة","نسخ","نسخ_2","إنشاء_قناع_استدلالي","إنشاء_قناع_من_لون","عمق_افتراضي","حذف","العمق","فصل","نسبة_بكسل_الجهاز","ملء","من_صورة","من_صورة_2","من_قارئ_الصور","لديه_ألفا","لديه_قناة_ألفا","الارتفاع","تهيئة","فارغ","هو_بيت_ماب","تحميل_من_بيانات","تحميل_من_بيانات_2","تحميل_الخريطة_النقطية","قناع","مؤشر_الكائن","مستطيل","حفظ","حفظ_2","مقاس","مقاس_2","مقاس_إلى_ارتفاع","مقاس_إلى_عرض","تمرير","تمرير_2","تعيين_نسبة_بكسل_الجهاز","تعيين_القناع","الحجم","تبديل","إلى_صورة","تحويل","تحويل_2","مصفوفة_حقيقية","مصفوفة_حقيقية_2","العرض"]
#/*
#T_CT_QPIXMAPCLASS_IP_VALUE2LIST = [
#	"cacheKey(void) --> qint64",
#	"convertFromImage(QImage image, Qt::ImageConversionFlags flags) --> bool",
#	"copy(int x, int y, int width, int height) --> QPixmap",
#	"copy_2(QRect rectangle) --> QPixmap",
#	"createHeuristicMask(bool clipTight) --> QBitmap",
#	"createMaskFromColor(QColor , Qt::MaskMode) --> QBitmap",
#	"defaultDepth(void) --> int",
#	"delete(void) --> void",
#	"depth(void) --> int",
#	"detach(void) --> void",
#	"devicePixelRatio(void) --> qreal",
#	"fill(QColor) --> void",
#	"fromImage(QImage,Qt::ImageConversionFlags) --> QPixmap",
#	"fromImage_2(QImage image, Qt::ImageConversionFlags flags) --> QPixmap",
#	"fromImageReader(QImageReader *imageReader, Qt::ImageConversionFlags flags) --> QPixmap",
#	"hasAlpha(void) --> bool",
#	"hasAlphaChannel(void) --> bool",
#	"height(void) --> int",
#	"init(parent) --> object",
#	"isNull(void) --> bool",
#	"isQBitmap(void) --> bool",
#	"loadFromData(uchar *data, uint len, char *format, Qt::ImageConversionFlags flags) --> bool",
#	"loadFromData_2(QByteArray data, char *format, Qt::ImageConversionFlags flags) --> bool",
#	"loadpixmap(QString, char *, Qt::ImageConversionFlags ) --> bool",
#	"mask(void) --> QBitmap",
#	"objectpointer(void) --> pointer",
#	"rect(void) --> QRect",
#	"save(QString fileName, char *format, int quality) --> bool",
#	"save_2(QIODevice *device, char *format, int quality) --> bool",
#	"scaled(int width, int height, Qt::AspectRatioMode aspectRatioMode, Qt::TransformationMode transformMode) --> QPixmap",
#	"scaled_2(QSize size, Qt::AspectRatioMode aspectRatioMode, Qt::TransformationMode transformMode) --> QPixmap",
#	"scaledToHeight(int height, Qt::TransformationMode mode) --> QPixmap",
#	"scaledToWidth(int width, Qt::TransformationMode mode) --> QPixmap",
#	"scroll(int dx, int dy, int x, int y, int width, int height, QRegion *exposed) --> void",
#	"scroll_2(int dx, int dy, QRect rect, QRegion *exposed) --> void",
#	"setDevicePixelRatio(qreal scaleFactor) --> void",
#	"setMask(QBitmap) --> void",
#	"size(void) --> QSize",
#	"swap(QPixmap other) --> void",
#	"toImage(void) --> QImage",
#	"transformed(QTransform transform, Qt::TransformationMode mode) --> QPixmap",
#	"transformed_2(QMatrix matrix, Qt::TransformationMode mode) --> QPixmap",
#	"trueMatrix(QTransform matrix, int width, int height) --> QTransform",
#	"trueMatrix_2(QMatrix m, int w, int h) --> QMatrix",
#	"width(void) --> int"
#]
#*/
T_CT_QPIXMAPCLASS_IP_VALUE2LIST = ["مفتاح_المخبأ( لا شيء ) --> عدد_صحيح_طويل_بنوع_التحديد","تحويل_من_صورة( صورة_عابرة, أعلام_تحويل_الصورة ) --> منطقي","نسخ( عدد_صحيح س , عدد_صحيح ص , عدد_صحيح عرض , عدد_صحيح ارتفاع ) --> بكسل_تكوين","نسخ_٢( مستطيل ) --> بكسل_تكوين","إنشاء_قناع_تقديري( قص_مشدود ) --> قناع_بكسل","إنشاء_قناع_من_اللون( لون , طريقة_القناع ) --> قناع_بكسل","العمق_الافتراضي( لا شيء ) --> عدد_صحيح","حذف( لا شيء ) --> لا شيء","العمق( لا شيء ) --> عدد_صحيح","فصل( لا شيء ) --> لا شيء","نسبة_بكسل_الجهاز( لا شيء ) --> كسر_عشري_حقيقي","ملء( لون ) --> لا شيء","من_الصورة( صورة_عابرة, أعلام_تحويل_الصورة ) --> بكسل_تكوين","من_الصورة_٢( صورة_عابرة , أعلام_تحويل_الصورة ) --> بكسل_تكوين","من_قارئ_الصورة( قارئ_صورة *قارئ_الصورة , أعلام_تحويل_الصورة ) --> بكسل_تكوين","هل_لديه_شفافية( لا شيء ) --> منطقي","هل_لديه_قناة_شفافية( لا شيء ) --> منطقي","ارتفاع( لا شيء ) --> عدد_صحيح","تهيئة( الأب ) --> كائن","هل_فارغ( لا شيء ) --> منطقي","هل_هو_قناع_بكسل( لا شيء ) --> منطقي","تحميل_من_البيانات( بيانات_ثابتة, طول, تنسيق, أعلام_تحويل_الصورة ) --> منطقي","تحميل_من_البيانات_٢( مصفوفة_بايت_عشوائية, تنسيق, أعلام_تحويل_الصورة ) --> منطقي","تحميل_بكسل_من_ملف_عبارة( اسم_الملف, تنسيق, أعلام_تحويل_الصورة ) --> منطقي","قناع( لا شيء ) --> قناع_بكسل","مؤشر_كائن( لا شيء ) --> مؤشر","مستطيل( لا شيء ) --> مستطيل","حفظ( اسم_الملف, تنسيق, جودة ) --> منطقي","حفظ_٢( جهاز_إدخال_إخراج, تنسيق, جودة ) --> منطقي","تحجيم( عرض, ارتفاع, وضعية_نسبة_الأبعاد, وضعية_التحويل ) --> بكسل_تكوين","تحجيم_٢( حجم, وضعية_نسبة_الأبعاد, وضعية_التحويل ) --> بكسل_تكوين","تحجيم_لارتفاع( ارتفاع, وضعية_التحويل ) --> بكسل_تكوين","تحجيم_لعرض( عرض, وضعية_التحويل ) --> بكسل_تكوين","تمرير( تحول_س, تحول_ص, عدد_صحيح س , عدد_صحيح ص , عدد_صحيح عرض , عدد_صحيح ارتفاع, منطقة_مرئية ) --> لا شيء","تمرير_٢( تحول_س, تحول_ص, مستطيل, منطقة_مرئية ) --> لا شيء","تعيين_نسبة_بكسل_الجهاز( مقياس_العامل ) --> لا شيء","تعيين_قناع( قناع_بكسل ) --> لا شيء","حجم( لا شيء ) --> حجم","تبديل( بكسل_تكوين_آخر ) --> لا شيء","إلى_صورة( لا شيء ) --> صورة_عابرة","تحول( تحويل, وضعية_التحويل ) --> بكسل_تكوين","تحول_٢( مصفوفة, وضعية_التحويل ) --> بكسل_تكوين","مصفوفة_صحيحة( تحويل, عرض, ارتفاع ) --> تحويل","مصفوفة_صحيحة_٢( مصفوفة, عرض, ارتفاع ) --> مصفوفة","عرض( لا شيء ) --> عدد_صحيح"]
T_CT_QPIXMAPCLASS_IP_VALUE3 = "المعطيات :"
T_CT_QPIXMAPCLASS_IP_VALUE4 = "الناتج :"
