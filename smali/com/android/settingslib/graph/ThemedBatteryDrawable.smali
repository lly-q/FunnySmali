.class public Lcom/android/settingslib/graph/ThemedBatteryDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ThemedBatteryDrawable.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/graph/ThemedBatteryDrawable$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nThemedBatteryDrawable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ThemedBatteryDrawable.kt\ncom/android/settingslib/graph/ThemedBatteryDrawable\n*L\n1#1,456:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/android/settingslib/graph/ThemedBatteryDrawable$Companion;


# instance fields
.field private backgroundColor:I

.field private batteryLevel:I

.field private final boltPath:Landroid/graphics/Path;

.field private charging:Z

.field private colorLevels:[I

.field private final context:Landroid/content/Context;

.field private criticalLevel:I

.field private dualTone:Z

.field private final dualToneBackgroundFill:Landroid/graphics/Paint;

.field private final errorPaint:Landroid/graphics/Paint;

.field private final errorPerimeterPath:Landroid/graphics/Path;

.field private fillColor:I

.field private final fillColorStrokePaint:Landroid/graphics/Paint;

.field private final fillColorStrokeProtection:Landroid/graphics/Paint;

.field private final fillMask:Landroid/graphics/Path;

.field private final fillPaint:Landroid/graphics/Paint;

.field private final fillRect:Landroid/graphics/RectF;

.field private intrinsicHeight:I

.field private intrinsicWidth:I

.field private final invalidateRunnable:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private invertFillIcon:Z

.field private levelColor:I

.field private final levelPath:Landroid/graphics/Path;

.field private final levelRect:Landroid/graphics/RectF;

.field private final padding:Landroid/graphics/Rect;

.field private final perimeterPath:Landroid/graphics/Path;

.field private final plusPath:Landroid/graphics/Path;

.field private powerSaveEnabled:Z

.field private final scaleMatrix:Landroid/graphics/Matrix;

.field private final scaledBolt:Landroid/graphics/Path;

.field private final scaledErrorPerimeter:Landroid/graphics/Path;

.field private final scaledFill:Landroid/graphics/Path;

.field private final scaledPerimeter:Landroid/graphics/Path;

.field private final scaledPlus:Landroid/graphics/Path;

.field private showPercent:Z

.field private final textPaint:Landroid/graphics/Paint;

.field private final unifiedPath:Landroid/graphics/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/settingslib/graph/ThemedBatteryDrawable$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settingslib/graph/ThemedBatteryDrawable$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->Companion:Lcom/android/settingslib/graph/ThemedBatteryDrawable$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->context:Landroid/content/Context;

    .line 46
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->perimeterPath:Landroid/graphics/Path;

    .line 47
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledPerimeter:Landroid/graphics/Path;

    .line 48
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->errorPerimeterPath:Landroid/graphics/Path;

    .line 49
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledErrorPerimeter:Landroid/graphics/Path;

    .line 51
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillMask:Landroid/graphics/Path;

    .line 52
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledFill:Landroid/graphics/Path;

    .line 54
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillRect:Landroid/graphics/RectF;

    .line 56
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->levelRect:Landroid/graphics/RectF;

    .line 57
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->levelPath:Landroid/graphics/Path;

    .line 59
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaleMatrix:Landroid/graphics/Matrix;

    .line 60
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->padding:Landroid/graphics/Rect;

    .line 62
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->unifiedPath:Landroid/graphics/Path;

    .line 65
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->boltPath:Landroid/graphics/Path;

    .line 66
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledBolt:Landroid/graphics/Path;

    .line 69
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->plusPath:Landroid/graphics/Path;

    .line 70
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledPlus:Landroid/graphics/Path;

    const p1, -0xff01

    .line 81
    iput p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillColor:I

    .line 82
    iput p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->backgroundColor:I

    .line 84
    iput p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->levelColor:I

    .line 91
    new-instance p1, Lcom/android/settingslib/graph/ThemedBatteryDrawable$invalidateRunnable$1;

    invoke-direct {p1, p0}, Lcom/android/settingslib/graph/ThemedBatteryDrawable$invalidateRunnable$1;-><init>(Lcom/android/settingslib/graph/ThemedBatteryDrawable;)V

    iput-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->invalidateRunnable:Lkotlin/jvm/functions/Function0;

    .line 95
    iget-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e002d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->criticalLevel:I

    .line 116
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 117
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 118
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    const/high16 v1, 0x40a00000    # 5.0f

    .line 119
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 120
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 121
    sget-object v2, Landroid/graphics/BlendMode;->SRC:Landroid/graphics/BlendMode;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    .line 122
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 123
    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 116
    iput-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillColorStrokePaint:Landroid/graphics/Paint;

    .line 126
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 127
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 128
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 129
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 130
    sget-object v2, Landroid/graphics/BlendMode;->CLEAR:Landroid/graphics/BlendMode;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    .line 131
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 132
    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 126
    iput-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillColorStrokeProtection:Landroid/graphics/Paint;

    .line 135
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 136
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v1, 0xff

    .line 137
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 138
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    const/4 v2, 0x0

    .line 139
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 140
    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 135
    iput-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillPaint:Landroid/graphics/Paint;

    .line 143
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 144
    iget-object v3, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->context:Landroid/content/Context;

    sget v4, Lcom/android/settingslib/R$color;->batterymeter_plus_color:I

    invoke-static {v3, v4}, Lcom/android/settingslib/Utils;->getColorStateListDefaultColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 145
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 146
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 147
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 148
    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 149
    sget-object v3, Landroid/graphics/BlendMode;->SRC:Landroid/graphics/BlendMode;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    .line 143
    iput-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->errorPaint:Landroid/graphics/Paint;

    .line 153
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 154
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 155
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 156
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 157
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 158
    sget-object p2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 153
    iput-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->dualToneBackgroundFill:Landroid/graphics/Paint;

    .line 161
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    const-string p2, "sans-serif-condensed"

    .line 162
    invoke-static {p2, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 163
    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 161
    iput-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->textPaint:Landroid/graphics/Paint;

    .line 167
    iget-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string p2, "context.resources"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x41a00000    # 20.0f

    mul-float/2addr p2, p1

    float-to-int p2, p2

    .line 168
    iput p2, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->intrinsicHeight:I

    const/high16 p2, 0x41400000    # 12.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 169
    iput p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->intrinsicWidth:I

    .line 171
    iget-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 172
    sget p2, Lcom/android/settingslib/R$array;->batterymeter_color_levels:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 173
    sget v0, Lcom/android/settingslib/R$array;->batterymeter_color_values:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 174
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    mul-int/lit8 v1, v0, 0x2

    .line 175
    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->colorLevels:[I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 177
    iget-object v3, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->colorLevels:[I

    mul-int/lit8 v4, v2, 0x2

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    aput v5, v3, v4

    .line 178
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    .line 179
    iget-object v3, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->colorLevels:[I

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->context:Landroid/content/Context;

    .line 180
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getThemeAttributeId(II)I

    move-result v6

    .line 179
    invoke-static {v5, v6}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v5

    aput v5, v3, v4

    goto :goto_1

    .line 182
    :cond_0
    iget-object v3, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->colorLevels:[I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    aput v5, v3, v4

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 185
    :cond_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 186
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 188
    invoke-direct {p0}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->loadPaths()V

    return-void
.end method

.method private final batteryColorForLevel(I)I
    .locals 1

    .line 287
    iget-boolean v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->charging:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->powerSaveEnabled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 288
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->getColorForLevel(I)I

    move-result p0

    goto :goto_1

    .line 287
    :cond_1
    :goto_0
    iget p0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillColor:I

    :goto_1
    return p0
.end method

.method private final getColorForLevel(I)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 296
    :goto_0
    iget-object v2, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->colorLevels:[I

    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 297
    aget v1, v2, v0

    add-int/lit8 v3, v0, 0x1

    .line 298
    aget v3, v2, v3

    if-gt p1, v1, :cond_1

    .line 302
    array-length p1, v2

    add-int/lit8 p1, p1, -0x2

    if-ne v0, p1, :cond_0

    .line 303
    iget v3, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillColor:I

    :cond_0
    return v3

    :cond_1
    add-int/lit8 v0, v0, 0x2

    move v1, v3

    goto :goto_0

    :cond_2
    return v1
.end method

.method private final loadPaths()V
    .locals 3

    .line 416
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040147

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 418
    iget-object v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->perimeterPath:Landroid/graphics/Path;

    invoke-static {v0}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 419
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->perimeterPath:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 421
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040145

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 423
    iget-object v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->errorPerimeterPath:Landroid/graphics/Path;

    invoke-static {v0}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 424
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->errorPerimeterPath:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 426
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040146

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 428
    iget-object v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillMask:Landroid/graphics/Path;

    invoke-static {v0}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 430
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillMask:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 432
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040144

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 434
    iget-object v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->boltPath:Landroid/graphics/Path;

    invoke-static {v0}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 436
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040148

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 438
    iget-object v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->plusPath:Landroid/graphics/Path;

    invoke-static {v0}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 440
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->dualTone:Z

    return-void
.end method

.method private final postInvalidate()V
    .locals 3

    .line 387
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->invalidateRunnable:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/settingslib/graph/ThemedBatteryDrawable$sam$java_lang_Runnable$0;

    invoke-direct {v1, v0}, Lcom/android/settingslib/graph/ThemedBatteryDrawable$sam$java_lang_Runnable$0;-><init>(Lkotlin/jvm/functions/Function0;)V

    move-object v0, v1

    :cond_0
    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 388
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->invalidateRunnable:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/android/settingslib/graph/ThemedBatteryDrawable$sam$java_lang_Runnable$0;

    invoke-direct {v1, v0}, Lcom/android/settingslib/graph/ThemedBatteryDrawable$sam$java_lang_Runnable$0;-><init>(Lkotlin/jvm/functions/Function0;)V

    move-object v0, v1

    :cond_1
    check-cast v0, Ljava/lang/Runnable;

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private final updateSize()V
    .locals 6

    .line 392
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    const-string v1, "b"

    .line 393
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    const/high16 v2, 0x41400000    # 12.0f

    if-eqz v1, :cond_0

    .line 394
    iget-object v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaleMatrix:Landroid/graphics/Matrix;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_0

    .line 396
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaleMatrix:Landroid/graphics/Matrix;

    iget v3, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    const/high16 v5, 0x41a00000    # 20.0f

    div-float/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 399
    :goto_0
    iget-object v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->perimeterPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaleMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledPerimeter:Landroid/graphics/Path;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 400
    iget-object v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->errorPerimeterPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaleMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledErrorPerimeter:Landroid/graphics/Path;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 401
    iget-object v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillMask:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaleMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledFill:Landroid/graphics/Path;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 402
    iget-object v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledFill:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillRect:Landroid/graphics/RectF;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 403
    iget-object v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->boltPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaleMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledBolt:Landroid/graphics/Path;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 404
    iget-object v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->plusPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaleMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledPlus:Landroid/graphics/Path;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 409
    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 411
    iget-object v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillColorStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 412
    iget-object p0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillColorStrokeProtection:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 192
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    .line 193
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->unifiedPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 194
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->levelPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 195
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->levelRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 196
    iget v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->batteryLevel:I

    int-to-float v1, v0

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    const/4 v2, 0x1

    const/16 v3, 0x5f

    if-lt v0, v3, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    goto :goto_0

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillRect:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    int-to-float v4, v2

    sub-float/2addr v4, v1

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    .line 203
    :goto_0
    iget-object v3, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->levelRect:Landroid/graphics/RectF;

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v0, v4

    iput v0, v3, Landroid/graphics/RectF;->top:F

    .line 204
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->levelPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->levelRect:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 207
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->unifiedPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledPerimeter:Landroid/graphics/Path;

    invoke-virtual {v0, v3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 209
    iget-boolean v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->dualTone:Z

    if-nez v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->unifiedPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->levelPath:Landroid/graphics/Path;

    sget-object v4, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->levelColor:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 216
    iget-boolean v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->charging:Z

    if-eqz v0, :cond_2

    .line 218
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->unifiedPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledBolt:Landroid/graphics/Path;

    sget-object v4, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 219
    iget-boolean v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->invertFillIcon:Z

    if-nez v0, :cond_2

    .line 220
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledBolt:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 224
    :cond_2
    iget-boolean v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->dualTone:Z

    if-eqz v0, :cond_3

    .line 226
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->unifiedPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->dualToneBackgroundFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 227
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v0, 0x0

    .line 229
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    sub-float/2addr v3, v4

    .line 230
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    .line 231
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    .line 228
    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 232
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->unifiedPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 233
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    .line 237
    :cond_3
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillColor:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 238
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->unifiedPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 239
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->levelColor:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 242
    iget v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->batteryLevel:I

    const/16 v3, 0xf

    if-gt v0, v3, :cond_4

    iget-boolean v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->charging:Z

    if-nez v0, :cond_4

    .line 243
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 244
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledFill:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 245
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->levelPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 246
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 250
    :cond_4
    :goto_1
    iget-boolean v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->charging:Z

    if-eqz v0, :cond_6

    .line 251
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledBolt:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipOutPath(Landroid/graphics/Path;)Z

    .line 252
    iget-boolean v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->invertFillIcon:Z

    if-eqz v0, :cond_5

    .line 253
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledBolt:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillColorStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_2

    .line 255
    :cond_5
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledBolt:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillColorStrokeProtection:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_2

    .line 257
    :cond_6
    iget-boolean v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->powerSaveEnabled:Z

    if-eqz v0, :cond_7

    .line 259
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledErrorPerimeter:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->errorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 261
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledPlus:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->errorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 263
    :cond_7
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 265
    iget-boolean v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->charging:Z

    if-nez v0, :cond_8

    iget v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->batteryLevel:I

    const/16 v3, 0x64

    if-ge v0, v3, :cond_8

    iget-boolean v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->showPercent:Z

    if-eqz v0, :cond_8

    .line 266
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3ec28f5c    # 0.38f

    mul-float/2addr v3, v4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 267
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v0, v0

    .line 268
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    .line 269
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v0

    mul-float/2addr v5, v4

    .line 271
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->textPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillColor:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 272
    iget v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->batteryLevel:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v5, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 274
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->textPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillColor:I

    not-int v4, v4

    const-wide v6, 0xff000000L

    long-to-int v6, v6

    or-int/2addr v4, v6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 275
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 276
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillRect:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->left:F

    .line 277
    iget v6, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    int-to-float v2, v2

    sub-float/2addr v2, v1

    mul-float/2addr v0, v2

    add-float/2addr v6, v0

    .line 278
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    .line 279
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    .line 276
    invoke-virtual {p1, v4, v6, v1, v0}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 280
    iget v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->batteryLevel:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v5, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 281
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_8
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 0

    .line 336
    iget p0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->intrinsicHeight:I

    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 0

    .line 340
    iget p0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->intrinsicWidth:I

    return p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public final getPowerSaveEnabled()Z
    .locals 0

    .line 104
    iget-boolean p0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->powerSaveEnabled:Z

    return p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 358
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 359
    invoke-direct {p0}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->updateSize()V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setBatteryLevel(I)V
    .locals 1

    const/16 v0, 0x43

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x21

    if-gt p1, v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 347
    :cond_1
    iget-boolean v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->invertFillIcon:Z

    :goto_0
    iput-boolean v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->invertFillIcon:Z

    .line 348
    iput p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->batteryLevel:I

    .line 349
    iget p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->batteryLevel:I

    invoke-direct {p0, p1}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->batteryColorForLevel(I)I

    move-result p1

    iput p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->levelColor:I

    .line 350
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final setCharging(Z)V
    .locals 0

    .line 100
    iput-boolean p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->charging:Z

    .line 101
    invoke-direct {p0}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->postInvalidate()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 324
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillColorStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 325
    iget-object p0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->dualToneBackgroundFill:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public final setColors(III)V
    .locals 1

    .line 372
    iget-boolean v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->dualTone:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, p3

    :goto_0
    iput p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillColor:I

    .line 374
    iget-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillPaint:Landroid/graphics/Paint;

    iget p3, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillColor:I

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 375
    iget-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillColorStrokePaint:Landroid/graphics/Paint;

    iget p3, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillColor:I

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 377
    iput p2, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->backgroundColor:I

    .line 378
    iget-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->dualToneBackgroundFill:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 381
    iget p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->batteryLevel:I

    invoke-direct {p0, p1}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->batteryColorForLevel(I)I

    move-result p1

    iput p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->levelColor:I

    .line 383
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final setPowerSaveEnabled(Z)V
    .locals 0

    .line 106
    iput-boolean p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->powerSaveEnabled:Z

    .line 107
    invoke-direct {p0}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->postInvalidate()V

    return-void
.end method

.method public final setShowPercent(Z)V
    .locals 0

    .line 112
    iput-boolean p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->showPercent:Z

    .line 113
    invoke-direct {p0}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->postInvalidate()V

    return-void
.end method
