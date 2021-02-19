.class public final Lcom/android/settingslib/graph/CircleBatteryDrawable$Companion;
.super Ljava/lang/Object;
.source "CircleBatteryDrawable.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/graph/CircleBatteryDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCircleBatteryDrawable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CircleBatteryDrawable.kt\ncom/android/settingslib/graph/CircleBatteryDrawable$Companion\n*L\n1#1,323:1\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 238
    invoke-direct {p0}, Lcom/android/settingslib/graph/CircleBatteryDrawable$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$loadPoints(Lcom/android/settingslib/graph/CircleBatteryDrawable$Companion;Landroid/content/res/Resources;I)[F
    .locals 0

    .line 238
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/graph/CircleBatteryDrawable$Companion;->loadPoints(Landroid/content/res/Resources;I)[F

    move-result-object p0

    return-object p0
.end method

.method private final loadPoints(Landroid/content/res/Resources;I)[F
    .locals 5

    .line 243
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    const/4 p1, 0x0

    move p2, p1

    move v0, p2

    move v1, v0

    .line 248
    :goto_0
    array-length v2, p0

    if-ge p2, v2, :cond_0

    .line 249
    aget v2, p0, p2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v2, p2, 0x1

    .line 250
    aget v2, p0, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 p2, p2, 0x2

    goto :goto_0

    .line 254
    :cond_0
    array-length p2, p0

    new-array p2, p2, [F

    .line 256
    :goto_1
    array-length v2, p0

    if-ge p1, v2, :cond_1

    .line 257
    aget v2, p0, p1

    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    aput v2, p2, p1

    add-int/lit8 v2, p1, 0x1

    .line 258
    aget v3, p0, v2

    int-to-float v3, v3

    int-to-float v4, v1

    div-float/2addr v3, v4

    aput v3, p2, v2

    add-int/lit8 p1, p1, 0x2

    goto :goto_1

    :cond_1
    return-object p2
.end method
