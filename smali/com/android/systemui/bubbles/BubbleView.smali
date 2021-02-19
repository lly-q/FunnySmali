.class public Lcom/android/systemui/bubbles/BubbleView;
.super Landroid/widget/FrameLayout;
.source "BubbleView.java"


# instance fields
.field private mBadgeColor:I

.field private mBadgedImageView:Lcom/android/systemui/bubbles/BadgedImageView;

.field private mBubble:Lcom/android/systemui/bubbles/Bubble;

.field private mBubbleIconFactory:Lcom/android/systemui/bubbles/BubbleIconFactory;

.field private mContext:Landroid/content/Context;

.field private mIconInset:I

.field private mSuppressDot:Z

.field private mUserBadgedAppIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bubbles/BubbleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/bubbles/BubbleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/bubbles/BubbleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 81
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 82
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleView;->mContext:Landroid/content/Context;

    .line 83
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->bubble_icon_inset:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/bubbles/BubbleView;->mIconInset:I

    return-void
.end method

.method private animateDot(ZLjava/lang/Runnable;)V
    .locals 3

    .line 206
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleView;->mBadgedImageView:Lcom/android/systemui/bubbles/BadgedImageView;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BadgedImageView;->isShowingDot()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleView;->mBadgedImageView:Lcom/android/systemui/bubbles/BadgedImageView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/bubbles/BadgedImageView;->setShowDot(Z)V

    .line 212
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleView;->mBadgedImageView:Lcom/android/systemui/bubbles/BadgedImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 213
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleView;->mBadgedImageView:Lcom/android/systemui/bubbles/BadgedImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 214
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/bubbles/-$$Lambda$BubbleView$ZKBfBG7GijRplpU_8yCIB0NuyLk;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleView$ZKBfBG7GijRplpU_8yCIB0NuyLk;-><init>(Lcom/android/systemui/bubbles/BubbleView;Z)V

    .line 215
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/bubbles/-$$Lambda$BubbleView$xA_RAS_mSp_JlDsmI3wc705YhoQ;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleView$xA_RAS_mSp_JlDsmI3wc705YhoQ;-><init>(Lcom/android/systemui/bubbles/BubbleView;ZLjava/lang/Runnable;)V

    .line 219
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 224
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private buildIconWithTint(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/AdaptiveIconDrawable;
    .locals 1

    .line 286
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/bubbles/BubbleView;->checkTint(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    .line 287
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget p0, p0, Lcom/android/systemui/bubbles/BubbleView;->mIconInset:I

    invoke-direct {v0, p1, p0}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 288
    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p0, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 289
    new-instance p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-direct {p1, p0, v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object p1
.end method

.method private checkTint(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/16 p0, 0xff

    .line 293
    invoke-static {p2, p0}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p0

    if-nez p0, :cond_0

    const p0, -0x333334

    :cond_0
    const/4 p2, -0x1

    .line 298
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 299
    invoke-static {p2, p0}, Lcom/android/internal/graphics/ColorUtils;->calculateContrast(II)D

    move-result-wide v0

    const-wide v2, 0x4010666666666666L    # 4.1

    cmpg-double p0, v0, v2

    if-gez p0, :cond_1

    const/high16 p0, -0x1000000

    const/16 p2, 0xb4

    .line 301
    invoke-static {p0, p2}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p0

    .line 302
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_1
    return-object p1
.end method

.method private determineDominateColor(Landroid/graphics/drawable/Drawable;I)I
    .locals 0

    const/4 p0, -0x1

    const p1, 0x3f0a3d71    # 0.54f

    .line 309
    invoke-static {p2, p0, p1}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p0

    return p0
.end method

.method private updateDotVisibility(ZLjava/lang/Runnable;)V
    .locals 1

    .line 193
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleView;->shouldShowDot()Z

    move-result v0

    if-eqz p1, :cond_0

    .line 195
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/bubbles/BubbleView;->animateDot(ZLjava/lang/Runnable;)V

    goto :goto_1

    .line 197
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleView;->mBadgedImageView:Lcom/android/systemui/bubbles/BadgedImageView;

    invoke-virtual {p1, v0}, Lcom/android/systemui/bubbles/BadgedImageView;->setShowDot(Z)V

    .line 198
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleView;->mBadgedImageView:Lcom/android/systemui/bubbles/BadgedImageView;

    if-eqz v0, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BadgedImageView;->setDotScale(F)V

    :goto_1
    return-void
.end method


# virtual methods
.method getBadgeColor()I
    .locals 0

    .line 282
    iget p0, p0, Lcom/android/systemui/bubbles/BubbleView;->mBadgeColor:I

    return p0
.end method

.method getDotCenter()[F
    .locals 3

    .line 180
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleView;->mBadgedImageView:Lcom/android/systemui/bubbles/BadgedImageView;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BadgedImageView;->getDotCenter()[F

    move-result-object p0

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 181
    aget v2, p0, v1

    aput v2, v0, v1

    const/4 v1, 0x1

    aget p0, p0, v1

    aput p0, v0, v1

    return-object v0
.end method

.method getDotPositionOnLeft()Z
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleView;->mBadgedImageView:Lcom/android/systemui/bubbles/BadgedImageView;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BadgedImageView;->getDotOnLeft()Z

    move-result p0

    return p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleView;->mBubble:Lcom/android/systemui/bubbles/Bubble;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public synthetic lambda$animateDot$1$BubbleView(ZLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 216
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    sub-float p2, p1, p2

    .line 218
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleView;->mBadgedImageView:Lcom/android/systemui/bubbles/BadgedImageView;

    invoke-virtual {p0, p2}, Lcom/android/systemui/bubbles/BadgedImageView;->setDotScale(F)V

    return-void
.end method

.method public synthetic lambda$animateDot$2$BubbleView(ZLjava/lang/Runnable;)V
    .locals 0

    .line 220
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleView;->mBadgedImageView:Lcom/android/systemui/bubbles/BadgedImageView;

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BadgedImageView;->setDotScale(F)V

    if-eqz p2, :cond_1

    .line 222
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method public synthetic lambda$setDotPosition$0$BubbleView(Z)V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleView;->mBadgedImageView:Lcom/android/systemui/bubbles/BadgedImageView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/bubbles/BadgedImageView;->setDotOnLeft(Z)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 172
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bubbles/BubbleView;->animateDot(ZLjava/lang/Runnable;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 94
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 88
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 89
    sget v0, Lcom/android/systemui/R$id;->bubble_image:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/bubbles/BadgedImageView;

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleView;->mBadgedImageView:Lcom/android/systemui/bubbles/BadgedImageView;

    return-void
.end method

.method public setAppIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleView;->mUserBadgedAppIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setBubble(Lcom/android/systemui/bubbles/Bubble;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleView;->mBubble:Lcom/android/systemui/bubbles/Bubble;

    return-void
.end method

.method public setBubbleIconFactory(Lcom/android/systemui/bubbles/BubbleIconFactory;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleView;->mBubbleIconFactory:Lcom/android/systemui/bubbles/BubbleIconFactory;

    return-void
.end method

.method setDotPosition(ZZ)V
    .locals 1

    if-eqz p2, :cond_0

    .line 169
    iget-object p2, p0, Lcom/android/systemui/bubbles/BubbleView;->mBadgedImageView:Lcom/android/systemui/bubbles/BadgedImageView;

    invoke-virtual {p2}, Lcom/android/systemui/bubbles/BadgedImageView;->getDotOnLeft()Z

    move-result p2

    if-eq p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleView;->shouldShowDot()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 170
    new-instance v0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleView$8ligGzJrQjv0I1bfTGAaM0-HpBQ;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleView$8ligGzJrQjv0I1bfTGAaM0-HpBQ;-><init>(Lcom/android/systemui/bubbles/BubbleView;Z)V

    invoke-direct {p0, p2, v0}, Lcom/android/systemui/bubbles/BubbleView;->animateDot(ZLjava/lang/Runnable;)V

    goto :goto_0

    .line 175
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleView;->mBadgedImageView:Lcom/android/systemui/bubbles/BadgedImageView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BadgedImageView;->setDotOnLeft(Z)V

    :goto_0
    return-void
.end method

.method setSuppressDot(ZZ)V
    .locals 0

    .line 163
    iput-boolean p1, p0, Lcom/android/systemui/bubbles/BubbleView;->mSuppressDot:Z

    .line 164
    invoke-virtual {p0, p2}, Lcom/android/systemui/bubbles/BubbleView;->updateDotVisibility(Z)V

    return-void
.end method

.method shouldShowDot()Z
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleView;->mBubble:Lcom/android/systemui/bubbles/Bubble;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/Bubble;->showBubbleDot()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/bubbles/BubbleView;->mSuppressDot:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public update(Lcom/android/systemui/bubbles/Bubble;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleView;->mBubble:Lcom/android/systemui/bubbles/Bubble;

    .line 130
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleView;->updateViews()V

    return-void
.end method

.method updateDotVisibility(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 155
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bubbles/BubbleView;->updateDotVisibility(ZLjava/lang/Runnable;)V

    return-void
.end method

.method updateViews()V
    .locals 8

    .line 228
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleView;->mBubble:Lcom/android/systemui/bubbles/Bubble;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleView;->mBubbleIconFactory:Lcom/android/systemui/bubbles/BubbleIconFactory;

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 232
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/bubbles/Bubble;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    .line 233
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleView;->mBubble:Lcom/android/systemui/bubbles/Bubble;

    invoke-virtual {v1}, Lcom/android/systemui/bubbles/Bubble;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    .line 234
    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 235
    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x1

    if-eq v2, v3, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 237
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v2, :cond_2

    .line 239
    iget v2, v1, Landroid/app/Notification;->color:I

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/bubbles/BubbleView;->buildIconWithTint(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/AdaptiveIconDrawable;

    move-result-object v0

    .line 241
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleView;->mBubbleIconFactory:Lcom/android/systemui/bubbles/BubbleIconFactory;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/launcher3/icons/BaseIconFactory;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;Z)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    .line 246
    iget-object v4, p0, Lcom/android/systemui/bubbles/BubbleView;->mBubbleIconFactory:Lcom/android/systemui/bubbles/BubbleIconFactory;

    iget-object v5, p0, Lcom/android/systemui/bubbles/BubbleView;->mUserBadgedAppIcon:Landroid/graphics/drawable/Drawable;

    const/high16 v6, 0x3f800000    # 1.0f

    .line 247
    invoke-virtual {v4}, Lcom/android/systemui/bubbles/BubbleIconFactory;->getBadgeSize()I

    move-result v7

    .line 246
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/launcher3/icons/BaseIconFactory;->createIconBitmap(Landroid/graphics/drawable/Drawable;FI)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 248
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5}, Landroid/graphics/Canvas;-><init>()V

    .line 249
    new-instance v6, Lcom/android/launcher3/icons/ShadowGenerator;

    iget-object v7, p0, Lcom/android/systemui/bubbles/BubbleView;->mBubbleIconFactory:Lcom/android/systemui/bubbles/BubbleIconFactory;

    invoke-virtual {v7}, Lcom/android/systemui/bubbles/BubbleIconFactory;->getBadgeSize()I

    move-result v7

    invoke-direct {v6, v7}, Lcom/android/launcher3/icons/ShadowGenerator;-><init>(I)V

    .line 250
    invoke-virtual {v5, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 251
    invoke-static {v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Lcom/android/launcher3/icons/ShadowGenerator;->recreateIcon(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V

    .line 253
    iget-object v5, p0, Lcom/android/systemui/bubbles/BubbleView;->mBubbleIconFactory:Lcom/android/systemui/bubbles/BubbleIconFactory;

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v7, p0, Lcom/android/systemui/bubbles/BubbleView;->mContext:Landroid/content/Context;

    .line 254
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 253
    invoke-virtual {v5, v2, v6}, Lcom/android/launcher3/icons/BaseIconFactory;->badgeWithDrawable(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V

    .line 255
    iget-object v4, p0, Lcom/android/systemui/bubbles/BubbleView;->mBadgedImageView:Lcom/android/systemui/bubbles/BadgedImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 258
    iget v1, v1, Landroid/app/Notification;->color:I

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/bubbles/BubbleView;->determineDominateColor(Landroid/graphics/drawable/Drawable;I)I

    move-result v1

    .line 259
    iput v1, p0, Lcom/android/systemui/bubbles/BubbleView;->mBadgeColor:I

    .line 260
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleView;->mBadgedImageView:Lcom/android/systemui/bubbles/BadgedImageView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/bubbles/BadgedImageView;->setDotColor(I)V

    .line 264
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040189

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 263
    invoke-static {v1}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v1

    .line 265
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 266
    iget-object v4, p0, Lcom/android/systemui/bubbles/BubbleView;->mBubbleIconFactory:Lcom/android/systemui/bubbles/BubbleIconFactory;

    invoke-virtual {v4}, Lcom/android/launcher3/icons/BaseIconFactory;->getNormalizer()Lcom/android/launcher3/icons/IconNormalizer;

    move-result-object v4

    invoke-virtual {v4, v0, v3, v3, v3}, Lcom/android/launcher3/icons/IconNormalizer;->getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;Landroid/graphics/Path;[Z)F

    move-result v0

    const/high16 v4, 0x42480000    # 50.0f

    .line 269
    invoke-virtual {v2, v0, v0, v4, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 271
    invoke-virtual {v1, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 272
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleView;->mBadgedImageView:Lcom/android/systemui/bubbles/BadgedImageView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/bubbles/BadgedImageView;->drawDot(Landroid/graphics/Path;)V

    .line 274
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleView;->shouldShowDot()Z

    move-result v0

    invoke-direct {p0, v0, v3}, Lcom/android/systemui/bubbles/BubbleView;->animateDot(ZLjava/lang/Runnable;)V

    :cond_3
    :goto_1
    return-void
.end method
