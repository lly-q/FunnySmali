.class public Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "KeyButtonDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;
    }
.end annotation


# static fields
.field public static final KEY_DRAWABLE_ROTATE:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_DRAWABLE_TRANSLATE_Y:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private final mIconPaint:Landroid/graphics/Paint;

.field private mIsDark:Z

.field private final mShadowPaint:Landroid/graphics/Paint;

.field private final mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

.field private mUseCustomDarkIcon:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 54
    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$1;

    const-string v1, "KeyButtonRotation"

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->KEY_DRAWABLE_ROTATE:Landroid/util/FloatProperty;

    .line 67
    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$2;

    const-string v1, "KeyButtonTranslateY"

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->KEY_DRAWABLE_TRANSLATE_Y:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIZLandroid/graphics/Color;)V
    .locals 7

    .line 95
    new-instance v6, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    instance-of v3, p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    move-object v0, v6

    move v1, p3

    move v2, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;-><init>(IIZZLandroid/graphics/Color;)V

    invoke-direct {p0, p1, p2, v6}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;)V

    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;)V
    .locals 2

    .line 99
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 80
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mIconPaint:Landroid/graphics/Paint;

    .line 81
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mShadowPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mIsDark:Z

    .line 85
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mUseCustomDarkIcon:Z

    .line 100
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    if-eqz p1, :cond_0

    .line 102
    iget-object p3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p3, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mBaseHeight:I

    .line 103
    iget-object p3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p3, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mBaseWidth:I

    .line 104
    iget-object p3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iput v0, p3, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mChangingConfigurations:I

    .line 105
    iget-object p3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    iput-object p1, p3, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mChildState:Landroid/graphics/drawable/Drawable$ConstantState;

    :cond_0
    if-eqz p2, :cond_1

    .line 108
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mDarkChildState:Landroid/graphics/drawable/Drawable$ConstantState;

    const/4 p1, 0x1

    .line 109
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mUseCustomDarkIcon:Z

    .line 111
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->updateAnimateDrawable()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$1;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;)V

    return-void
.end method

.method public static create(Landroid/content/Context;IIIZLandroid/graphics/Color;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 13

    move-object v0, p0

    move/from16 v1, p3

    .line 509
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 510
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    .line 511
    :goto_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 512
    invoke-static {p0, v1}, Lcom/android/systemui/util/DarkIconUtil;->getCustomDarkDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 513
    new-instance v1, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    if-eqz v3, :cond_1

    .line 514
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result v3

    if-eqz v3, :cond_1

    move v11, v5

    goto :goto_1

    :cond_1
    move v11, v4

    :goto_1
    move-object v6, v1

    move v9, p1

    move v10, p2

    move-object/from16 v12, p5

    invoke-direct/range {v6 .. v12}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIZLandroid/graphics/Color;)V

    if-eqz p4, :cond_2

    .line 516
    sget v3, Lcom/android/systemui/R$dimen;->nav_key_button_shadow_offset_x:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 517
    sget v4, Lcom/android/systemui/R$dimen;->nav_key_button_shadow_offset_y:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 518
    sget v5, Lcom/android/systemui/R$dimen;->nav_key_button_shadow_radius:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 519
    sget v5, Lcom/android/systemui/R$color;->nav_key_button_shadow_color:I

    invoke-virtual {p0, v5}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 520
    invoke-virtual {v1, v3, v4, v2, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->setShadowProperties(IIII)V

    :cond_2
    return-object v1
.end method

.method public static create(Landroid/content/Context;IZ)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 1

    const/4 v0, 0x0

    .line 487
    invoke-static {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->create(Landroid/content/Context;IZLandroid/graphics/Color;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/content/Context;IZLandroid/graphics/Color;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 3

    .line 473
    sget v0, Lcom/android/systemui/R$attr;->darkIconTheme:I

    invoke-static {p0, v0}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v0

    .line 474
    sget v1, Lcom/android/systemui/R$attr;->lightIconTheme:I

    invoke-static {p0, v1}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v1

    .line 475
    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-direct {v2, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 476
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-direct {v1, p0, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 477
    invoke-static {v2, v1, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->create(Landroid/content/Context;Landroid/content/Context;IZLandroid/graphics/Color;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/content/Context;Landroid/content/Context;IZLandroid/graphics/Color;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 7

    .line 496
    sget v0, Lcom/android/systemui/R$attr;->singleToneColor:I

    .line 497
    invoke-static {p0, v0}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v2

    sget v0, Lcom/android/systemui/R$attr;->singleToneColor:I

    .line 498
    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v3

    move-object v1, p0

    move v4, p2

    move v5, p3

    move-object v6, p4

    .line 496
    invoke-static/range {v1 .. v6}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->create(Landroid/content/Context;IIIZLandroid/graphics/Color;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object p0

    return-object p0
.end method

.method private regenerateBitmapIconCache()V
    .locals 8

    .line 320
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->getIntrinsicWidth()I

    move-result v0

    .line 321
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->getIntrinsicHeight()I

    move-result v1

    .line 322
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 323
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 327
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mIsDark:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mUseCustomDarkIcon:Z

    if-eqz v4, :cond_0

    .line 328
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mDarkChildState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_0

    .line 330
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mChildState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 332
    :goto_0
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->setDrawableBounds(Landroid/graphics/drawable/Drawable;)V

    .line 333
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 334
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mHorizontalFlip:Z

    if-eqz v5, :cond_1

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    int-to-float v0, v0

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v0, v7

    int-to-float v1, v1

    mul-float/2addr v1, v7

    .line 335
    invoke-virtual {v3, v5, v6, v0, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 337
    :cond_1
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 338
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    .line 340
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mIsHardwareBitmap:Z

    if-eqz v0, :cond_2

    .line 341
    sget-object v0, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 343
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mLastDrawnIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method private regenerateBitmapShadowCache()V
    .locals 9

    .line 347
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v1, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowSize:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 349
    iput-object v2, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mLastDrawnIcon:Landroid/graphics/Bitmap;

    return-void

    .line 353
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->getIntrinsicWidth()I

    move-result v0

    .line 354
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->getIntrinsicHeight()I

    move-result v1

    .line 355
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 356
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 360
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mIsDark:Z

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mUseCustomDarkIcon:Z

    if-eqz v5, :cond_1

    .line 361
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget-object v5, v5, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mDarkChildState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_0

    .line 363
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget-object v5, v5, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mChildState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 365
    :goto_0
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->setDrawableBounds(Landroid/graphics/drawable/Drawable;)V

    .line 366
    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    .line 367
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget-boolean v6, v6, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mHorizontalFlip:Z

    if-eqz v6, :cond_2

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    int-to-float v0, v0

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v0, v8

    int-to-float v1, v1

    mul-float/2addr v1, v8

    .line 368
    invoke-virtual {v4, v6, v7, v0, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 370
    :cond_2
    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 371
    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    .line 374
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 375
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v5, v5, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowSize:I

    int-to-float v5, v5

    sget-object v6, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v5, v6}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 377
    invoke-virtual {v3, v0, v1}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 378
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    const/4 v2, 0x0

    .line 379
    invoke-virtual {v3, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 380
    aget v6, v1, v2

    int-to-float v6, v6

    const/4 v7, 0x1

    aget v1, v1, v7

    int-to-float v1, v1

    invoke-virtual {v4, v5, v6, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 382
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mIsHardwareBitmap:Z

    if-eqz v0, :cond_3

    .line 383
    sget-object v0, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v3, v0, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 385
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mLastDrawnShadow:Landroid/graphics/Bitmap;

    return-void
.end method

.method private setDrawableBounds(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 404
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v1, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowSize:I

    iget v0, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetX:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/2addr v1, v0

    .line 405
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v2, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowSize:I

    iget v0, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetY:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/2addr v2, v0

    .line 406
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->getIntrinsicWidth()I

    move-result v0

    sub-int/2addr v0, v1

    .line 407
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->getIntrinsicHeight()I

    move-result p0

    sub-int/2addr p0, v2

    .line 406
    invoke-virtual {p1, v1, v2, v0, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method private updateAnimateDrawable()V
    .locals 1

    .line 115
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mIsDark:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mUseCustomDarkIcon:Z

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mDarkChildState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    goto :goto_0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mChildState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 121
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->setDrawableBounds(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method private updateShadowAlpha()V
    .locals 4

    .line 394
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 395
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mShadowPaint:Landroid/graphics/Paint;

    int-to-float v0, v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mAlpha:I

    int-to-float v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    mul-float/2addr v0, v2

    iget p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mDarkIntensity:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p0

    mul-float/2addr v0, v2

    .line 396
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 395
    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method


# virtual methods
.method public canAnimate()Z
    .locals 0

    .line 243
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mSupportsAnimation:Z

    return p0
.end method

.method public canApplyTheme()Z
    .locals 0

    .line 308
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->canApplyTheme()Z

    move-result p0

    return p0
.end method

.method public clearAnimationCallbacks()V
    .locals 0

    .line 259
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz p0, :cond_0

    .line 260
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->clearAnimationCallbacks()V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 266
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 267
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 271
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v1, :cond_1

    .line 272
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_1

    .line 276
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mIsHardwareBitmap:Z

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v2

    if-eq v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 278
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v3

    iput-boolean v3, v2, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mIsHardwareBitmap:Z

    .line 280
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mLastDrawnIcon:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    if-eqz v1, :cond_5

    .line 281
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->regenerateBitmapIconCache()V

    .line 283
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 284
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v3, v2, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mTranslationX:F

    iget v2, v2, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mTranslationY:F

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 285
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mRotateDegrees:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->getIntrinsicHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 287
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v3, v2, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowSize:I

    if-lez v3, :cond_8

    .line 288
    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mLastDrawnShadow:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_6

    if-eqz v1, :cond_7

    .line 289
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->regenerateBitmapShadowCache()V

    .line 293
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mRotateDegrees:F

    float-to-double v1, v1

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v1, v3

    const-wide v3, 0x4066800000000000L    # 180.0

    div-double/2addr v1, v3

    double-to-float v1, v1

    float-to-double v1, v1

    .line 294
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v5, v5, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetY:I

    int-to-double v5, v5

    mul-double/2addr v3, v5

    .line 295
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v8, v7, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetX:I

    int-to-double v8, v8

    mul-double/2addr v5, v8

    add-double/2addr v3, v5

    double-to-float v3, v3

    iget v4, v7, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mTranslationX:F

    sub-float/2addr v3, v4

    .line 296
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v6, v6, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetY:I

    int-to-double v6, v6

    mul-double/2addr v4, v6

    .line 297
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v7, v6, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetX:I

    int-to-double v7, v7

    mul-double/2addr v1, v7

    sub-double/2addr v4, v1

    double-to-float v1, v4

    iget v2, v6, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mTranslationY:F

    sub-float/2addr v1, v2

    .line 298
    iget-object v2, v6, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mLastDrawnShadow:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 301
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mLastDrawnIcon:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mIconPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 302
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_1
    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 0

    .line 224
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    return-object p0
.end method

.method public getDarkIntensity()F
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mDarkIntensity:F

    return p0
.end method

.method getDrawableBackgroundColor()I
    .locals 0

    .line 312
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mOvalBackgroundColor:Landroid/graphics/Color;

    invoke-virtual {p0}, Landroid/graphics/Color;->toArgb()I

    move-result p0

    return p0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .line 234
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mBaseHeight:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowSize:I

    iget p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetY:I

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    add-int/2addr v1, p0

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .line 239
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mBaseWidth:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowSize:I

    iget p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetX:I

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    add-int/2addr v1, p0

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public getRotation()F
    .locals 0

    .line 211
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mRotateDegrees:F

    return p0
.end method

.method public getTranslationY()F
    .locals 0

    .line 219
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mTranslationY:F

    return p0
.end method

.method hasOvalBg()Z
    .locals 0

    .line 316
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mOvalBackgroundColor:Landroid/graphics/Color;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public resetAnimation()V
    .locals 0

    .line 253
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz p0, :cond_0

    .line 254
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->reset()V

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iput p1, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mAlpha:I

    .line 187
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mIconPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 188
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->updateShadowAlpha()V

    .line 189
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 3

    .line 194
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mIconPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 195
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v0, :cond_1

    .line 196
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->hasOvalBg()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mLightColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 203
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setDarkIntensity(F)V
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iput p1, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mDarkIntensity:F

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 127
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mIsDark:Z

    .line 128
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->updateShadowAlpha()V

    .line 129
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mUseCustomDarkIcon:Z

    if-eqz v0, :cond_1

    .line 130
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->updateAnimateDrawable()V

    .line 131
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_1

    .line 133
    :cond_1
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mLightColor:I

    .line 134
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mDarkColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 133
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 135
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_1
    return-void
.end method

.method public setRotation(F)V
    .locals 2

    .line 140
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v1, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mRotateDegrees:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_1

    .line 145
    iput p1, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mRotateDegrees:F

    .line 146
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public setShadowProperties(IIII)V
    .locals 2

    .line 167
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v1, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetX:I

    if-ne v1, p1, :cond_1

    iget v1, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetY:I

    if-ne v1, p2, :cond_1

    iget v1, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowSize:I

    if-ne v1, p3, :cond_1

    iget v0, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowColor:I

    if-eq v0, p4, :cond_2

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iput p1, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetX:I

    .line 174
    iput p2, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetY:I

    .line 175
    iput p3, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowSize:I

    .line 176
    iput p4, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowColor:I

    .line 177
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mShadowPaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    iget p3, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowColor:I

    sget-object p4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3, p4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 179
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->updateShadowAlpha()V

    .line 180
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_2
    return-void
.end method

.method public setTranslation(FF)V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v1, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mTranslationX:F

    cmpl-float v1, v1, p1

    if-nez v1, :cond_0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mTranslationY:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iput p1, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mTranslationX:F

    .line 161
    iput p2, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mTranslationY:F

    .line 162
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public setTranslationY(F)V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mTranslationX:F

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->setTranslation(FF)V

    return-void
.end method

.method public startAnimation()V
    .locals 0

    .line 247
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz p0, :cond_0

    .line 248
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    :cond_0
    return-void
.end method
