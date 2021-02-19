.class public final Lcom/android/keyguard/clock/ClockPalette;
.super Ljava/lang/Object;
.source "ClockPalette.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nClockPalette.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClockPalette.kt\ncom/android/keyguard/clock/ClockPalette\n*L\n1#1,74:1\n*E\n"
.end annotation


# instance fields
.field private accentPrimary:I

.field private accentSecondaryDark:I

.field private accentSecondaryLight:I

.field private darkAmount:F

.field private final darkHSV:[F

.field private final hsv:[F

.field private final lightHSV:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 32
    iput v0, p0, Lcom/android/keyguard/clock/ClockPalette;->accentPrimary:I

    .line 33
    iput v0, p0, Lcom/android/keyguard/clock/ClockPalette;->accentSecondaryLight:I

    const/high16 v0, -0x1000000

    .line 34
    iput v0, p0, Lcom/android/keyguard/clock/ClockPalette;->accentSecondaryDark:I

    const/4 v0, 0x3

    new-array v1, v0, [F

    .line 35
    iput-object v1, p0, Lcom/android/keyguard/clock/ClockPalette;->lightHSV:[F

    new-array v1, v0, [F

    .line 36
    iput-object v1, p0, Lcom/android/keyguard/clock/ClockPalette;->darkHSV:[F

    new-array v0, v0, [F

    .line 37
    iput-object v0, p0, Lcom/android/keyguard/clock/ClockPalette;->hsv:[F

    return-void
.end method


# virtual methods
.method public final getPrimaryColor()I
    .locals 0

    .line 41
    iget p0, p0, Lcom/android/keyguard/clock/ClockPalette;->accentPrimary:I

    return p0
.end method

.method public final getSecondaryColor()I
    .locals 5

    .line 46
    iget v0, p0, Lcom/android/keyguard/clock/ClockPalette;->accentSecondaryLight:I

    iget-object v1, p0, Lcom/android/keyguard/clock/ClockPalette;->lightHSV:[F

    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 47
    iget v0, p0, Lcom/android/keyguard/clock/ClockPalette;->accentSecondaryDark:I

    iget-object v1, p0, Lcom/android/keyguard/clock/ClockPalette;->darkHSV:[F

    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/android/keyguard/clock/ClockPalette;->hsv:[F

    iget-object v2, p0, Lcom/android/keyguard/clock/ClockPalette;->darkHSV:[F

    aget v2, v2, v0

    iget-object v3, p0, Lcom/android/keyguard/clock/ClockPalette;->lightHSV:[F

    aget v3, v3, v0

    iget v4, p0, Lcom/android/keyguard/clock/ClockPalette;->darkAmount:F

    invoke-static {v2, v3, v4}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/clock/ClockPalette;->hsv:[F

    invoke-static {p0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p0

    return p0
.end method

.method public final setColorPalette(Z[I)V
    .locals 3

    if-eqz p2, :cond_3

    .line 56
    array-length v0, p2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_2

    .line 62
    :cond_1
    array-length v0, p2

    add-int/lit8 v2, v0, -0x5

    .line 63
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    aget v2, p2, v2

    iput v2, p0, Lcom/android/keyguard/clock/ClockPalette;->accentPrimary:I

    add-int/lit8 v2, v0, -0x2

    .line 64
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    aget v2, p2, v2

    iput v2, p0, Lcom/android/keyguard/clock/ClockPalette;->accentSecondaryLight:I

    if-eqz p1, :cond_2

    const/16 p1, 0x8

    goto :goto_1

    :cond_2
    const/4 p1, 0x2

    :goto_1
    sub-int/2addr v0, p1

    .line 65
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    aget p1, p2, p1

    iput p1, p0, Lcom/android/keyguard/clock/ClockPalette;->accentSecondaryDark:I

    return-void

    :cond_3
    :goto_2
    const/4 p2, -0x1

    .line 57
    iput p2, p0, Lcom/android/keyguard/clock/ClockPalette;->accentPrimary:I

    .line 58
    iput p2, p0, Lcom/android/keyguard/clock/ClockPalette;->accentSecondaryLight:I

    if-eqz p1, :cond_4

    const/high16 p2, -0x1000000

    .line 59
    :cond_4
    iput p2, p0, Lcom/android/keyguard/clock/ClockPalette;->accentSecondaryDark:I

    return-void
.end method

.method public final setDarkAmount(F)V
    .locals 0

    .line 71
    iput p1, p0, Lcom/android/keyguard/clock/ClockPalette;->darkAmount:F

    return-void
.end method
