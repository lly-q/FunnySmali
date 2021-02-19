.class public Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;
.super Landroid/widget/FrameLayout;
.source "NavigationBarInflaterView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# instance fields
.field private mAlternativeOrder:Z

.field mButtonDispatchers:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/statusbar/phone/ButtonDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentLayout:Ljava/lang/String;

.field protected mHorizontal:Landroid/widget/FrameLayout;

.field private mInverseLayout:Z

.field private mIsHintEnabled:Z

.field private mIsVertical:Z

.field protected mLandscapeInflater:Landroid/view/LayoutInflater;

.field private mLastLandscape:Landroid/view/View;

.field private mLastPortrait:Landroid/view/View;

.field protected mLayoutInflater:Landroid/view/LayoutInflater;

.field private mNavBarMode:I

.field private mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

.field private mUsingCustomLayout:Z

.field protected mVertical:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 119
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 113
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mNavBarMode:I

    .line 120
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->createInflaters()V

    .line 121
    const-class p1, Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/recents/OverviewProxyService;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    .line 122
    const-class p1, Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->addListener(Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mNavBarMode:I

    return-void
.end method

.method private addAll(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;Landroid/view/ViewGroup;)V
    .locals 3

    const/4 v0, 0x0

    .line 295
    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 299
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 300
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->addView(Landroid/view/View;)V

    .line 302
    :cond_0
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 303
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->addAll(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;Landroid/view/ViewGroup;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private addGravitySpacer(Landroid/widget/LinearLayout;)V
    .locals 3

    .line 361
    new-instance v0, Landroid/widget/Space;

    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v1, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v0, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private addToDispatchers(Landroid/view/View;)V
    .locals 3

    .line 541
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    .line 542
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 544
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->addView(Landroid/view/View;)V

    .line 546
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 547
    check-cast p1, Landroid/view/ViewGroup;

    .line 548
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 550
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->addToDispatchers(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private applySize(Landroid/view/View;Ljava/lang/String;ZZ)Landroid/view/View;
    .locals 5

    .line 414
    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->extractSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    const-string v0, "W"

    .line 417
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "A"

    if-nez v1, :cond_2

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 456
    :cond_1
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    .line 457
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 458
    iget p3, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float p3, p3

    mul-float/2addr p3, p0

    float-to-int p0, p3

    iput p0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    return-object p1

    .line 420
    :cond_2
    :goto_0
    new-instance v1, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout$ReverseRelativeLayout;

    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout$ReverseRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 421
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p3, :cond_4

    if-eqz p4, :cond_3

    const/16 p3, 0x30

    goto :goto_1

    :cond_3
    const/16 p3, 0x50

    goto :goto_1

    :cond_4
    if-eqz p4, :cond_5

    const p3, 0x800003

    goto :goto_1

    :cond_5
    const p3, 0x800005

    :goto_1
    const-string p4, "WC"

    .line 426
    invoke-virtual {p2, p4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_6

    const/16 p3, 0x11

    goto :goto_2

    :cond_6
    const-string p4, "C"

    .line 428
    invoke-virtual {p2, p4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_7

    const/16 p3, 0x10

    .line 433
    :cond_7
    :goto_2
    invoke-virtual {v1, p3}, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout$ReverseRelativeLayout;->setDefaultGravity(I)V

    .line 434
    invoke-virtual {v1, p3}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 436
    invoke-virtual {v1, p1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 438
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p3, -0x1

    const/4 p4, 0x0

    if-eqz p1, :cond_8

    .line 441
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p2, p4, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 440
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    .line 442
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, p4, p3, p0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 444
    :cond_8
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 445
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    .line 444
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->convertDpToPx(Landroid/content/Context;F)F

    move-result p0

    float-to-int p0, p0

    .line 446
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, p0, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 450
    :goto_3
    invoke-virtual {v1, p4}, Landroid/widget/RelativeLayout;->setClipChildren(Z)V

    .line 451
    invoke-virtual {v1, p4}, Landroid/widget/RelativeLayout;->setClipToPadding(Z)V

    return-object v1
.end method

.method private clearAllChildren(Landroid/view/ViewGroup;)V
    .locals 1

    const/4 p0, 0x0

    .line 567
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p0, v0, :cond_0

    .line 568
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private clearViews()V
    .locals 2

    .line 557
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 558
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 559
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->clear()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    sget v1, Lcom/android/systemui/R$id;->nav_buttons:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->clearAllChildren(Landroid/view/ViewGroup;)V

    .line 563
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mVertical:Landroid/widget/FrameLayout;

    sget v1, Lcom/android/systemui/R$id;->nav_buttons:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->clearAllChildren(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private static convertDpToPx(Landroid/content/Context;F)F
    .locals 0

    .line 573
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    return p1
.end method

.method private createView(Ljava/lang/String;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 3

    .line 464
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->extractButton(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "left"

    .line 465
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "menu_ime"

    const-string v1, "space"

    if-eqz p1, :cond_0

    .line 466
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->extractButton(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p1, "right"

    .line 467
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 468
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->extractButton(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_0
    const-string p1, "home"

    .line 470
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 471
    sget p0, Lcom/android/systemui/R$layout;->home:I

    invoke-virtual {p3, p0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    goto/16 :goto_2

    :cond_2
    const-string p1, "back"

    .line 472
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 473
    sget p0, Lcom/android/systemui/R$layout;->back:I

    invoke-virtual {p3, p0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    goto/16 :goto_2

    :cond_3
    const-string p1, "recent"

    .line 474
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 475
    sget p0, Lcom/android/systemui/R$layout;->recent_apps:I

    invoke-virtual {p3, p0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    goto/16 :goto_2

    .line 476
    :cond_4
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 477
    sget p0, Lcom/android/systemui/R$layout;->menu_ime:I

    invoke-virtual {p3, p0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    goto/16 :goto_2

    .line 478
    :cond_5
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 479
    sget p0, Lcom/android/systemui/R$layout;->nav_key_space:I

    invoke-virtual {p3, p0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    goto/16 :goto_2

    :cond_6
    const-string p1, "clipboard"

    .line 480
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 481
    sget p0, Lcom/android/systemui/R$layout;->clipboard:I

    invoke-virtual {p3, p0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    goto/16 :goto_2

    :cond_7
    const-string p1, "contextual"

    .line 482
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 483
    sget p0, Lcom/android/systemui/R$layout;->contextual:I

    invoke-virtual {p3, p0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    goto/16 :goto_2

    :cond_8
    const-string p1, "home_handle"

    .line 484
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 485
    sget p0, Lcom/android/systemui/R$layout;->home_handle:I

    invoke-virtual {p3, p0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    goto :goto_2

    :cond_9
    const-string p1, "ime_switcher"

    .line 486
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 487
    sget p0, Lcom/android/systemui/R$layout;->ime_switcher:I

    invoke-virtual {p3, p0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    goto :goto_2

    :cond_a
    const-string p1, "key"

    .line 488
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 489
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->extractImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 490
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->extractKeycode(Ljava/lang/String;)I

    move-result p0

    .line 491
    sget v0, Lcom/android/systemui/R$layout;->custom_key:I

    invoke-virtual {p3, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 492
    move-object p3, p2

    check-cast p3, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {p3, p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setCode(I)V

    if-eqz p1, :cond_c

    const-string p0, ":"

    .line 494
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 495
    invoke-static {p1}, Landroid/graphics/drawable/Icon;->createWithContentUri(Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->loadAsync(Landroid/graphics/drawable/Icon;)V

    goto :goto_1

    :cond_b
    const-string p0, "/"

    .line 496
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/16 p0, 0x2f

    .line 497
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    .line 498
    invoke-virtual {p1, v2, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 p0, p0, 0x1

    .line 499
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 500
    invoke-static {v0, p0}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->loadAsync(Landroid/graphics/drawable/Icon;)V

    :cond_c
    :goto_1
    move-object p0, p2

    goto :goto_2

    :cond_d
    const/4 p0, 0x0

    :goto_2
    return-object p0
.end method

.method public static extractButton(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "["

    .line 534
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    .line 537
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static extractImage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ":"

    .line 508
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 511
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const-string v1, ")"

    .line 512
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static extractKeycode(Ljava/lang/String;)I
    .locals 3

    const-string v0, "("

    .line 517
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    .line 520
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v2

    const-string v1, ":"

    .line 521
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 522
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static extractSize(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "["

    .line 526
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 529
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const-string v1, "]"

    .line 530
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private inflateButtons([Ljava/lang/String;Landroid/view/ViewGroup;ZZ)V
    .locals 2

    const/4 v0, 0x0

    .line 366
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 367
    aget-object v1, p1, v0

    invoke-virtual {p0, v1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->inflateButton(Ljava/lang/String;Landroid/view/ViewGroup;ZZ)Landroid/view/View;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private inflateChildren()V
    .locals 3

    .line 143
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/systemui/R$layout;->navigation_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 147
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/systemui/R$layout;->navigation_layout_vertical:I

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mVertical:Landroid/widget/FrameLayout;

    .line 149
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mVertical:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 150
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->updateAlternativeOrder()V

    return-void
.end method

.method private inflateCursorButtons(Landroid/view/ViewGroup;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 372
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mLandscapeInflater:Landroid/view/LayoutInflater;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mLayoutInflater:Landroid/view/LayoutInflater;

    :goto_0
    if-eqz p2, :cond_1

    .line 374
    sget p2, Lcom/android/systemui/R$layout;->nav_buttons_dpad_group_vertical:I

    goto :goto_1

    :cond_1
    sget p2, Lcom/android/systemui/R$layout;->nav_buttons_dpad_group:I

    .line 375
    :goto_1
    invoke-virtual {v0, p2, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 376
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->addToDispatchers(Landroid/view/View;)V

    return-void
.end method

.method private initiallyFill(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;)V
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    sget v1, Lcom/android/systemui/R$id;->ends_group:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->addAll(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;Landroid/view/ViewGroup;)V

    .line 287
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    sget v1, Lcom/android/systemui/R$id;->center_group:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->addAll(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;Landroid/view/ViewGroup;)V

    .line 288
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    sget v1, Lcom/android/systemui/R$id;->dpad_group:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->addAll(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;Landroid/view/ViewGroup;)V

    .line 289
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mVertical:Landroid/widget/FrameLayout;

    sget v1, Lcom/android/systemui/R$id;->ends_group:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->addAll(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;Landroid/view/ViewGroup;)V

    .line 290
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mVertical:Landroid/widget/FrameLayout;

    sget v1, Lcom/android/systemui/R$id;->center_group:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->addAll(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;Landroid/view/ViewGroup;)V

    .line 291
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mVertical:Landroid/widget/FrameLayout;

    sget v1, Lcom/android/systemui/R$id;->dpad_group:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->addAll(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;Landroid/view/ViewGroup;)V

    return-void
.end method

.method private updateAlternativeOrder()V
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    sget v1, Lcom/android/systemui/R$id;->ends_group:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->updateAlternativeOrder(Landroid/view/View;)V

    .line 256
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    sget v1, Lcom/android/systemui/R$id;->center_group:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->updateAlternativeOrder(Landroid/view/View;)V

    .line 257
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mVertical:Landroid/widget/FrameLayout;

    sget v1, Lcom/android/systemui/R$id;->ends_group:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->updateAlternativeOrder(Landroid/view/View;)V

    .line 258
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mVertical:Landroid/widget/FrameLayout;

    sget v1, Lcom/android/systemui/R$id;->center_group:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->updateAlternativeOrder(Landroid/view/View;)V

    return-void
.end method

.method private updateAlternativeOrder(Landroid/view/View;)V
    .locals 1

    .line 262
    instance-of v0, p1, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout;

    if-eqz v0, :cond_0

    .line 263
    check-cast p1, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mAlternativeOrder:Z

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout;->setAlternativeOrder(Z)V

    :cond_0
    return-void
.end method

.method private updateHint()V
    .locals 4

    const-string v0, "org.lineageos.overlay.customization.navbar.nohint"

    const-string v1, "overlay"

    .line 269
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 268
    invoke-static {v1}, Landroid/content/om/IOverlayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/om/IOverlayManager;

    move-result-object v1

    .line 270
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mNavBarMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mIsHintEnabled:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 271
    :goto_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 273
    :try_start_0
    invoke-interface {v1, v0, p0, v2}, Landroid/content/om/IOverlayManager;->setEnabled(Ljava/lang/String;ZI)Z

    if-eqz p0, :cond_2

    .line 277
    invoke-interface {v1, v0, v2}, Landroid/content/om/IOverlayManager;->setHighestPriority(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 280
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_1

    const-string p0, "enable"

    goto :goto_1

    :cond_1
    const-string p0, "disable"

    :goto_1
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " overlay "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " for user "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NavBarInflater"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    return-void
.end method

.method private updateLayoutInversion()V
    .locals 2

    .line 348
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mInverseLayout:Z

    if-eqz v0, :cond_1

    .line 349
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 350
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 351
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    goto :goto_0

    .line 353
    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    .line 356
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method createInflaters()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 127
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 128
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 129
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    const/4 v1, 0x2

    .line 130
    iput v1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 131
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mLandscapeInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method protected getDefaultLayout()Ljava/lang/String;
    .locals 2

    .line 154
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mNavBarMode:I

    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    sget v0, Lcom/android/systemui/R$string;->config_navBarLayoutHandle:I

    goto :goto_0

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/recents/OverviewProxyService;->shouldShowSwipeUpUI()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    sget v0, Lcom/android/systemui/R$string;->config_navBarLayoutQuickstep:I

    goto :goto_0

    .line 158
    :cond_1
    sget v0, Lcom/android/systemui/R$string;->config_navBarLayout:I

    .line 159
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mIsHintEnabled:Z

    if-nez v1, :cond_2

    sget v1, Lcom/android/systemui/R$string;->config_navBarLayoutHandle:I

    if-ne v0, v1, :cond_2

    .line 160
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "home_handle"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 162
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected inflateButton(Ljava/lang/String;Landroid/view/ViewGroup;ZZ)Landroid/view/View;
    .locals 1

    if-eqz p3, :cond_0

    .line 390
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mLandscapeInflater:Landroid/view/LayoutInflater;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 391
    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->createView(Ljava/lang/String;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 394
    :cond_1
    invoke-direct {p0, v0, p1, p3, p4}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->applySize(Landroid/view/View;Ljava/lang/String;ZZ)Landroid/view/View;

    move-result-object p1

    .line 395
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 396
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->addToDispatchers(Landroid/view/View;)V

    if-eqz p3, :cond_2

    .line 397
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mLastLandscape:Landroid/view/View;

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mLastPortrait:Landroid/view/View;

    .line 399
    :goto_1
    instance-of p4, p1, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout$ReverseRelativeLayout;

    if-eqz p4, :cond_3

    .line 400
    move-object p4, p1

    check-cast p4, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout$ReverseRelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    goto :goto_2

    :cond_3
    move-object p4, p1

    :goto_2
    if-eqz p2, :cond_4

    .line 403
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    invoke-virtual {p4, p2}, Landroid/view/View;->setAccessibilityTraversalAfter(I)V

    :cond_4
    if-eqz p3, :cond_5

    .line 406
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mLastLandscape:Landroid/view/View;

    goto :goto_3

    .line 408
    :cond_5
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mLastPortrait:Landroid/view/View;

    :goto_3
    return-object p1
.end method

.method protected inflateLayout(Ljava/lang/String;)V
    .locals 6

    .line 309
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mCurrentLayout:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 311
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->getDefaultLayout()Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v0, ";"

    const/4 v1, 0x3

    .line 313
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 314
    array-length v2, p1

    if-eq v2, v1, :cond_1

    const-string p1, "NavBarInflater"

    const-string v2, "Invalid layout."

    .line 315
    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->getDefaultLayout()Ljava/lang/String;

    move-result-object p1

    .line 317
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    :cond_1
    const/4 v0, 0x0

    .line 319
    aget-object v1, p1, v0

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    .line 320
    aget-object v4, p1, v3

    invoke-virtual {v4, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    .line 321
    aget-object p1, p1, v5

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 323
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    sget v5, Lcom/android/systemui/R$id;->ends_group:I

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->inflateButtons([Ljava/lang/String;Landroid/view/ViewGroup;ZZ)V

    .line 325
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mVertical:Landroid/widget/FrameLayout;

    sget v5, Lcom/android/systemui/R$id;->ends_group:I

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v1, v2, v3, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->inflateButtons([Ljava/lang/String;Landroid/view/ViewGroup;ZZ)V

    .line 328
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    sget v2, Lcom/android/systemui/R$id;->center_group:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v4, v1, v0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->inflateButtons([Ljava/lang/String;Landroid/view/ViewGroup;ZZ)V

    .line 330
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mVertical:Landroid/widget/FrameLayout;

    sget v2, Lcom/android/systemui/R$id;->center_group:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v4, v1, v3, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->inflateButtons([Ljava/lang/String;Landroid/view/ViewGroup;ZZ)V

    .line 333
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    sget v2, Lcom/android/systemui/R$id;->ends_group:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->addGravitySpacer(Landroid/widget/LinearLayout;)V

    .line 334
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mVertical:Landroid/widget/FrameLayout;

    sget v2, Lcom/android/systemui/R$id;->ends_group:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->addGravitySpacer(Landroid/widget/LinearLayout;)V

    .line 336
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    sget v2, Lcom/android/systemui/R$id;->ends_group:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v1, v0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->inflateButtons([Ljava/lang/String;Landroid/view/ViewGroup;ZZ)V

    .line 338
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mVertical:Landroid/widget/FrameLayout;

    sget v2, Lcom/android/systemui/R$id;->ends_group:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v1, v3, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->inflateButtons([Ljava/lang/String;Landroid/view/ViewGroup;ZZ)V

    .line 341
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    sget v1, Lcom/android/systemui/R$id;->dpad_group:I

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->inflateCursorButtons(Landroid/view/ViewGroup;Z)V

    .line 342
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mVertical:Landroid/widget/FrameLayout;

    sget v0, Lcom/android/systemui/R$id;->dpad_group:I

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->inflateCursorButtons(Landroid/view/ViewGroup;Z)V

    .line 344
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->updateButtonDispatchersCurrentView()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 174
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 175
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string v1, "sysui_nav_bar_inverse"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 176
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string v1, "lineagesystem:navigation_bar_hint"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 200
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 201
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->updateLayoutInversion()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 181
    const-class v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->removeListener(Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;)V

    .line 182
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 183
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 136
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 137
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->inflateChildren()V

    .line 138
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->clearViews()V

    .line 139
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->getDefaultLayout()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->inflateLayout(Ljava/lang/String;)V

    return-void
.end method

.method public onLikelyDefaultLayoutChange()V
    .locals 2

    .line 214
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mUsingCustomLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 217
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->getDefaultLayout()Ljava/lang/String;

    move-result-object v0

    .line 218
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mCurrentLayout:Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 219
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->clearViews()V

    .line 220
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->inflateLayout(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onNavigationModeChanged(I)V
    .locals 0

    .line 167
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mNavBarMode:I

    .line 168
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->updateHint()V

    .line 169
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->onLikelyDefaultLayoutChange()V

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "sysui_nav_bar_inverse"

    .line 188
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 189
    invoke-static {p2, p1}, Lcom/android/systemui/tuner/TunerService;->parseIntegerSwitch(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mInverseLayout:Z

    .line 190
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->updateLayoutInversion()V

    goto :goto_0

    :cond_0
    const-string v0, "lineagesystem:navigation_bar_hint"

    .line 191
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 192
    invoke-static {p2, p1}, Lcom/android/systemui/tuner/TunerService;->parseIntegerSwitch(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mIsHintEnabled:Z

    .line 193
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->updateHint()V

    .line 194
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->onLikelyDefaultLayoutChange()V

    :cond_1
    :goto_0
    return-void
.end method

.method setAlternativeOrder(Z)V
    .locals 1

    .line 248
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mAlternativeOrder:Z

    if-eq p1, v0, :cond_0

    .line 249
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mAlternativeOrder:Z

    .line 250
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->updateAlternativeOrder()V

    :cond_0
    return-void
.end method

.method public setButtonDispatchers(Landroid/util/SparseArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/statusbar/phone/ButtonDispatcher;",
            ">;)V"
        }
    .end annotation

    .line 225
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 226
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 227
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->initiallyFill(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method setVertical(Z)V
    .locals 1

    .line 242
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mIsVertical:Z

    if-eq p1, v0, :cond_0

    .line 243
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mIsVertical:Z

    :cond_0
    return-void
.end method

.method updateButtonDispatchersCurrentView()V
    .locals 3

    .line 232
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    .line 233
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mIsVertical:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mVertical:Landroid/widget/FrameLayout;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    :goto_0
    const/4 v1, 0x0

    .line 234
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 235
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    .line 236
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setCurrentView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
