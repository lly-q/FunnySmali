.class public Lcom/android/systemui/qs/QSContainerImpl;
.super Landroid/widget/FrameLayout;
.source "QSContainerImpl.java"


# instance fields
.field private mBackground:Landroid/view/View;

.field private mBackgroundGradient:Landroid/view/View;

.field private mBackgroundImage:Landroid/widget/ImageView;

.field private mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

.field private mHeaderImageEnabled:Z

.field private mHeightOverride:I

.field private mLandscape:Z

.field private mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

.field private mQSDetail:Landroid/view/View;

.field private mQSFooter:Landroid/view/View;

.field private mQSPanel:Lcom/android/systemui/qs/QSPanel;

.field private mQsDisabled:Z

.field private mQsExpansion:F

.field private mSideMargins:I

.field private final mSizePoint:Landroid/graphics/Point;

.field private mStatusBarBackground:Landroid/view/View;

.field private mStatusBarBackgroundDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSizePoint:Landroid/graphics/Point;

    const/4 p1, -0x1

    .line 42
    iput p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeightOverride:I

    return-void
.end method

.method private getDisplayHeight()I
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSizePoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-nez v0, :cond_0

    .line 246
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSizePoint:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 248
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSizePoint:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->y:I

    return p0
.end method

.method private setBackgroundGradientVisibility(Landroid/content/res/Configuration;)V
    .locals 3

    .line 216
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x4

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 217
    iget-object p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackgroundGradient:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 218
    iget-object p0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mStatusBarBackground:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 220
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackgroundGradient:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQsDisabled:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 221
    iget-object p0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mStatusBarBackground:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private setMargins()V
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSDetail:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSContainerImpl;->setMargins(Landroid/view/View;)V

    .line 232
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackground:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSContainerImpl;->setMargins(Landroid/view/View;)V

    .line 233
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSFooter:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSContainerImpl;->setMargins(Landroid/view/View;)V

    .line 234
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSideMargins:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->setMargins(I)V

    .line 235
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    iget p0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSideMargins:I

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setMargins(I)V

    return-void
.end method

.method private setMargins(Landroid/view/View;)V
    .locals 0

    .line 239
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 240
    iget p0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSideMargins:I

    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 241
    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    return-void
.end method

.method private updateHeaderVisibility()V
    .locals 6

    .line 252
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mLandscape:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeaderImageEnabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQsDisabled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    .line 253
    :goto_1
    iget-boolean v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mLandscape:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeaderImageEnabled:Z

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    .line 255
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackgroundImage:Landroid/widget/ImageView;

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeaderImageEnabled:Z

    if-eqz v4, :cond_3

    move v4, v2

    goto :goto_3

    :cond_3
    const/16 v4, 0x8

    :goto_3
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 256
    iget-object v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackgroundGradient:Landroid/view/View;

    const/4 v4, 0x4

    if-eqz v0, :cond_4

    move v5, v4

    goto :goto_4

    :cond_4
    move v5, v2

    :goto_4
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 257
    iget-object v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mStatusBarBackground:Landroid/view/View;

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    goto :goto_5

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mStatusBarBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    :goto_5
    invoke-virtual {v3, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 258
    iget-object p0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mStatusBarBackground:Landroid/view/View;

    if-eqz v1, :cond_6

    move v2, v4

    :cond_6
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateResources()V
    .locals 5

    .line 165
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$bool;->qs_custom_header:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeaderImageEnabled:Z

    .line 166
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501f5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 167
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeaderImageEnabled:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/systemui/R$dimen;->qs_header_image_offset:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    .line 170
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 171
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 172
    iget-object v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    iget-boolean v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeaderImageEnabled:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$dimen;->qs_header_image_side_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v2

    .line 177
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/qs/QSContainerImpl;->mStatusBarBackground:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 178
    iput v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 179
    invoke-virtual {v4, v3, v2, v3, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 180
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mStatusBarBackground:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainerImpl;->updateHeaderVisibility()V

    return-void
.end method


# virtual methods
.method protected calculateContainerHeight()I
    .locals 3

    .line 209
    iget v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeightOverride:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    .line 210
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->isCustomizing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p0

    goto :goto_1

    .line 212
    :cond_1
    iget v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQsExpansion:F

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    .line 211
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    .line 212
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p0

    add-int/2addr p0, v0

    :goto_1
    return p0
.end method

.method public disable(IIZ)V
    .locals 0

    const/4 p1, 0x1

    and-int/2addr p2, p1

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move p1, p3

    .line 157
    :goto_0
    iget-boolean p2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQsDisabled:Z

    if-ne p1, p2, :cond_1

    return-void

    .line 158
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQsDisabled:Z

    .line 159
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSContainerImpl;->setBackgroundGradientVisibility(Landroid/content/res/Configuration;)V

    .line 160
    iget-object p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackground:Landroid/view/View;

    iget-boolean p2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQsDisabled:Z

    if-eqz p2, :cond_2

    const/16 p3, 0x8

    :cond_2
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 161
    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainerImpl;->updateHeaderVisibility()V

    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    if-eq p1, v0, :cond_0

    .line 144
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 92
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 93
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSContainerImpl;->setBackgroundGradientVisibility(Landroid/content/res/Configuration;)V

    .line 94
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mLandscape:Z

    .line 95
    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainerImpl;->updateResources()V

    .line 96
    iget-object p0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSizePoint:Landroid/graphics/Point;

    invoke-virtual {p0, v0, v0}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 69
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 70
    sget v0, Lcom/android/systemui/R$id;->quick_settings_panel:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel;

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    .line 71
    sget v0, Lcom/android/systemui/R$id;->qs_detail:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSDetail:Landroid/view/View;

    .line 72
    sget v0, Lcom/android/systemui/R$id;->header:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QuickStatusBarHeader;

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    .line 73
    sget v0, Lcom/android/systemui/R$id;->qs_customize:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/QSCustomizer;

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    .line 74
    sget v0, Lcom/android/systemui/R$id;->qs_footer:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSFooter:Landroid/view/View;

    .line 75
    sget v0, Lcom/android/systemui/R$id;->quick_settings_background:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackground:Landroid/view/View;

    .line 76
    sget v0, Lcom/android/systemui/R$id;->quick_settings_status_bar_background:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mStatusBarBackground:Landroid/view/View;

    .line 77
    sget v0, Lcom/android/systemui/R$id;->quick_settings_gradient_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackgroundGradient:Landroid/view/View;

    .line 78
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->notification_side_paddings:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSideMargins:I

    .line 79
    sget v0, Lcom/android/systemui/R$id;->qs_header_image_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackgroundImage:Landroid/widget/ImageView;

    .line 80
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackgroundImage:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    .line 82
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mStatusBarBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mStatusBarBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 84
    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainerImpl;->updateResources()V

    const/4 v0, 0x2

    .line 86
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    .line 87
    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainerImpl;->setMargins()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 151
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 152
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->updateExpansion()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 110
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    .line 111
    iget v0, p2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v1, 0x258

    if-ge v0, v1, :cond_1

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    .line 113
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 117
    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainerImpl;->getDisplayHeight()I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v1, v2

    .line 118
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    if-eqz p2, :cond_2

    .line 120
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v2, Lcom/android/systemui/R$dimen;->navigation_bar_height:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    sub-int/2addr v1, p2

    .line 124
    :cond_2
    iget-object p2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p2, p1, v1}, Landroid/widget/LinearLayout;->measure(II)V

    .line 125
    iget-object p2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p2

    .line 126
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    .line 127
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v0

    add-int/2addr v1, v0

    .line 128
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 129
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 128
    invoke-super {p0, p2, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 132
    iget-object p2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    .line 133
    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainerImpl;->getDisplayHeight()I

    move-result p0

    invoke-static {p0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    .line 132
    invoke-virtual {p2, p1, p0}, Landroid/widget/LinearLayout;->measure(II)V

    return-void
.end method

.method public performClick()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setExpansion(F)V
    .locals 0

    .line 226
    iput p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQsExpansion:F

    .line 227
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->updateExpansion()V

    return-void
.end method

.method public setHeightOverride(I)V
    .locals 0

    .line 194
    iput p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeightOverride:I

    .line 195
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->updateExpansion()V

    return-void
.end method

.method public updateExpansion()V
    .locals 3

    .line 199
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->calculateContainerHeight()I

    move-result v0

    .line 200
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setBottom(I)V

    .line 201
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSDetail:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBottom(I)V

    .line 203
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSFooter:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int v2, v0, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 204
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackground:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getTop()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTop(I)V

    .line 205
    iget-object p0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackground:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setBottom(I)V

    return-void
.end method
