.class public Lcom/android/systemui/statusbar/CustomSignalDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "CustomSignalDrawable.java"


# direct methods
.method protected constructor <init>([Lcom/android/settingslib/graph/SignalDrawable;)V
    .locals 5

    .line 25
    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    move v1, v0

    .line 27
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 28
    aget-object v2, p1, v1

    array-length v3, p1

    const/4 v4, 0x1

    if-gt v3, v4, :cond_0

    goto :goto_1

    :cond_0
    move v4, v0

    :goto_1
    invoke-virtual {v2, v4}, Lcom/android/settingslib/graph/SignalDrawable;->setTintDrawable(Z)V

    const/16 v2, 0x11

    .line 29
    invoke-virtual {p0, v1, v2}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/android/systemui/statusbar/CustomSignalDrawable;
    .locals 6

    .line 15
    new-instance v0, Lcom/android/settingslib/graph/SignalDrawable;

    sget v1, Lcom/android/systemui/R$drawable;->ic_signal_cellular:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settingslib/graph/SignalDrawable;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 16
    sget v1, Lcom/android/systemui/R$drawable;->ic_signal_cellular:I

    invoke-static {p0, v1}, Lcom/android/systemui/util/DarkIconUtil;->getCustomDarkDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 18
    new-instance p0, Lcom/android/systemui/statusbar/CustomSignalDrawable;

    new-array v1, v2, [Lcom/android/settingslib/graph/SignalDrawable;

    aput-object v0, v1, v3

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/CustomSignalDrawable;-><init>([Lcom/android/settingslib/graph/SignalDrawable;)V

    return-object p0

    .line 20
    :cond_0
    new-instance v4, Lcom/android/systemui/statusbar/CustomSignalDrawable;

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/android/settingslib/graph/SignalDrawable;

    aput-object v0, v5, v3

    new-instance v0, Lcom/android/settingslib/graph/SignalDrawable;

    invoke-direct {v0, p0, v1}, Lcom/android/settingslib/graph/SignalDrawable;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    aput-object v0, v5, v2

    invoke-direct {v4, v5}, Lcom/android/systemui/statusbar/CustomSignalDrawable;-><init>([Lcom/android/settingslib/graph/SignalDrawable;)V

    return-object v4
.end method


# virtual methods
.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 3

    .line 36
    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 37
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 38
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    invoke-static {p1}, Lcom/android/systemui/util/DarkIconUtil;->isDark(I)Z

    move-result p1

    const/16 v0, 0xff

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 39
    invoke-virtual {p0, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 40
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 43
    invoke-virtual {p0, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 46
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->invalidateSelf()V

    return-void
.end method
