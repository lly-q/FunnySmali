.class public Lcom/android/systemui/ScreenDecorations;
.super Lcom/android/systemui/SystemUI;
.source "ScreenDecorations.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$DarkIntensityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/ScreenDecorations$ValidatingPreDrawListener;,
        Lcom/android/systemui/ScreenDecorations$RestartingPreDrawListener;,
        Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;,
        Lcom/android/systemui/ScreenDecorations$TunablePaddingTagListener;
    }
.end annotation


# static fields
.field private static final DEBUG_COLOR:Z

.field private static final DEBUG_SCREENSHOT_ROUNDED_CORNERS:Z


# instance fields
.field private mAssistHintBlocked:Z

.field private mAssistHintVisible:Z

.field private mBottomOverlay:Landroid/view/View;

.field private mCameraListener:Lcom/android/systemui/CameraAvailabilityListener;

.field private mCameraTransitionCallback:Lcom/android/systemui/CameraAvailabilityListener$CameraTransitionCallback;

.field private mColorInversionSetting:Lcom/android/systemui/qs/SecureSetting;

.field private mCutoutBottom:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

.field private mCutoutTop:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

.field private mDensity:F

.field private mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mHandler:Landroid/os/Handler;

.field private mInGesturalMode:Z

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsReceivingNavBarColor:Z

.field private mIsRoundedCornerMultipleRadius:Z

.field private mOverlay:Landroid/view/View;

.field private mPendingRotationChange:Z

.field private mRotation:I

.field protected mRoundedDefault:I

.field protected mRoundedDefaultBottom:I

.field protected mRoundedDefaultTop:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "debug.screenshot_rounded_corners"

    const/4 v1, 0x0

    .line 112
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/ScreenDecorations;->DEBUG_SCREENSHOT_ROUNDED_CORNERS:Z

    .line 114
    sget-boolean v0, Lcom/android/systemui/ScreenDecorations;->DEBUG_SCREENSHOT_ROUNDED_CORNERS:Z

    sput-boolean v0, Lcom/android/systemui/ScreenDecorations;->DEBUG_COLOR:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 104
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    const/4 v0, 0x0

    .line 137
    iput-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mAssistHintBlocked:Z

    .line 138
    iput-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mIsReceivingNavBarColor:Z

    .line 142
    new-instance v0, Lcom/android/systemui/ScreenDecorations$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/ScreenDecorations$1;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mCameraTransitionCallback:Lcom/android/systemui/CameraAvailabilityListener$CameraTransitionCallback;

    .line 485
    new-instance v0, Lcom/android/systemui/ScreenDecorations$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/ScreenDecorations$5;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/ScreenDecorations;)Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutTop:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/ScreenDecorations;)Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutBottom:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/ScreenDecorations;)Landroid/view/View;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/ScreenDecorations;)Landroid/view/View;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/ScreenDecorations;)I
    .locals 0

    .line 104
    iget p0, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    return p0
.end method

.method static synthetic access$500(Lcom/android/systemui/ScreenDecorations;)Z
    .locals 0

    .line 104
    iget-boolean p0, p0, Lcom/android/systemui/ScreenDecorations;->mPendingRotationChange:Z

    return p0
.end method

.method static synthetic access$502(Lcom/android/systemui/ScreenDecorations;Z)Z
    .locals 0

    .line 104
    iput-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mPendingRotationChange:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/ScreenDecorations;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateOrientation()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/ScreenDecorations;I)V
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lcom/android/systemui/ScreenDecorations;->updateColorInversion(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/ScreenDecorations;)Lcom/android/systemui/qs/SecureSetting;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mColorInversionSetting:Lcom/android/systemui/qs/SecureSetting;

    return-object p0
.end method

.method private fade(Landroid/view/View;ZZ)V
    .locals 15

    move-object/from16 v8, p1

    const/4 v9, 0x0

    if-eqz p2, :cond_0

    .line 240
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/high16 v10, 0x3f800000    # 1.0f

    .line 241
    invoke-virtual {v8, v10}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    .line 242
    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 247
    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v2, 0x0

    const v3, 0x3f8ccccd    # 1.1f

    const-wide/16 v5, 0x2ee

    .line 248
    new-instance v7, Landroid/view/animation/PathInterpolator;

    const v0, 0x3ee66666    # 0.45f

    const v12, 0x3f2b851f    # 0.67f

    invoke-direct {v7, v9, v0, v12, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v4, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/ScreenDecorations;->getHandleAnimator(Landroid/view/View;FFZJLandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v13

    .line 250
    new-instance v14, Landroid/view/animation/PathInterpolator;

    const v0, 0x3ea8f5c3    # 0.33f

    invoke-direct {v14, v0, v9, v12, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const v2, 0x3f8ccccd    # 1.1f

    const v3, 0x3f7851ec    # 0.97f

    const-wide/16 v5, 0x190

    move-object v0, p0

    move-object v7, v14

    .line 251
    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/ScreenDecorations;->getHandleAnimator(Landroid/view/View;FFZJLandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v9

    const v2, 0x3f7851ec    # 0.97f

    const v3, 0x3f828f5c    # 1.02f

    .line 253
    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/ScreenDecorations;->getHandleAnimator(Landroid/view/View;FFZJLandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v10

    const v2, 0x3f828f5c    # 1.02f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 255
    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/ScreenDecorations;->getHandleAnimator(Landroid/view/View;FFZJLandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v0

    .line 257
    invoke-virtual {v11, v13}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 258
    invoke-virtual {v11, v9}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 259
    invoke-virtual {v11, v10}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 260
    invoke-virtual {v11}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 262
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 263
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    .line 264
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    .line 265
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 266
    invoke-virtual {v0, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    :goto_0
    return-void
.end method

.method private getBottomLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 2

    .line 768
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const-string v1, "ScreenDecorOverlayBottom"

    .line 769
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 770
    iget p0, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x55

    .line 774
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_1

    :cond_1
    :goto_0
    const/16 p0, 0x33

    .line 772
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :goto_1
    return-object v0
.end method

.method private hasRoundedCorners()Z
    .locals 1

    .line 691
    iget v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefault:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottom:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTop:I

    if-gtz v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/ScreenDecorations;->mIsRoundedCornerMultipleRadius:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private hideAssistHandles()V
    .locals 3

    .line 559
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 560
    sget v1, Lcom/android/systemui/R$id;->assist_hint_left:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 561
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->assist_hint_right:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 562
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->assist_hint_left:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 563
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->assist_hint_right:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    .line 564
    iput-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mAssistHintVisible:Z

    :cond_0
    return-void
.end method

.method private isLandscape(I)Z
    .locals 1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return p0
.end method

.method public static synthetic lambda$IfAux2ksmJXT9o9i38WaSEQXJTQ(Lcom/android/systemui/ScreenDecorations;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->startOnScreenDecorationsThread()V

    return-void
.end method

.method public static synthetic lambda$aq1MVJyy_LkZ11q5t5cPVZOqbG0(Lcom/android/systemui/ScreenDecorations;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateWindowVisibilities()V

    return-void
.end method

.method public static rectsToRegion(Ljava/util/List;)Landroid/graphics/Region;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)",
            "Landroid/graphics/Region;"
        }
    .end annotation

    .line 167
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v0

    if-eqz p0, :cond_1

    .line 169
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    .line 170
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 171
    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private setSize(Landroid/view/View;I)V
    .locals 0

    .line 815
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 816
    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 817
    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 818
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setupCameraListener()V
    .locals 4

    .line 476
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 477
    sget v1, Lcom/android/systemui/R$bool;->config_enableDisplayCutoutProtection:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    sget-object v0, Lcom/android/systemui/CameraAvailabilityListener;->Factory:Lcom/android/systemui/CameraAvailabilityListener$Factory;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$LfzJt661qZfn2w-6SYHFbD3aMy0;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$LfzJt661qZfn2w-6SYHFbD3aMy0;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/CameraAvailabilityListener$Factory;->build(Landroid/content/Context;Ljava/util/concurrent/Executor;)Lcom/android/systemui/CameraAvailabilityListener;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mCameraListener:Lcom/android/systemui/CameraAvailabilityListener;

    .line 480
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mCameraListener:Lcom/android/systemui/CameraAvailabilityListener;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mCameraTransitionCallback:Lcom/android/systemui/CameraAvailabilityListener$CameraTransitionCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/CameraAvailabilityListener;->addTransitionCallback(Lcom/android/systemui/CameraAvailabilityListener$CameraTransitionCallback;)V

    .line 481
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mCameraListener:Lcom/android/systemui/CameraAvailabilityListener;

    invoke-virtual {p0}, Lcom/android/systemui/CameraAvailabilityListener;->startListening()V

    :cond_0
    return-void
.end method

.method private setupDecorations()V
    .locals 7

    .line 406
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->rounded_corners:I

    const/4 v2, 0x0

    .line 407
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    .line 408
    new-instance v0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/systemui/-$$Lambda$ScreenDecorations$aq1MVJyy_LkZ11q5t5cPVZOqbG0;

    invoke-direct {v3, p0}, Lcom/android/systemui/-$$Lambda$ScreenDecorations$aq1MVJyy_LkZ11q5t5cPVZOqbG0;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v3, p0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;-><init>(Landroid/content/Context;ZLjava/lang/Runnable;Lcom/android/systemui/ScreenDecorations;)V

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutTop:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    .line 410
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutTop:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 411
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->rounded_corners:I

    .line 412
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    .line 413
    new-instance v0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/systemui/-$$Lambda$ScreenDecorations$aq1MVJyy_LkZ11q5t5cPVZOqbG0;

    invoke-direct {v3, p0}, Lcom/android/systemui/-$$Lambda$ScreenDecorations$aq1MVJyy_LkZ11q5t5cPVZOqbG0;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    const/4 v5, 0x0

    invoke-direct {v0, v1, v5, v3, p0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;-><init>(Landroid/content/Context;ZLjava/lang/Runnable;Lcom/android/systemui/ScreenDecorations;)V

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutBottom:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    .line 415
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutBottom:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 417
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 418
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 419
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setForceDarkAllowed(Z)V

    .line 421
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 422
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 423
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setForceDarkAllowed(Z)V

    .line 425
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateViews()V

    .line 427
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 428
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->getBottomLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 430
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 431
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 432
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/systemui/ScreenDecorations;->mDensity:F

    .line 434
    sget-object v0, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/-$$Lambda$ScreenDecorations$80y3DVvpOo5hQVD-W3EJlUKhPsU;

    invoke-direct {v1, p0}, Lcom/android/systemui/-$$Lambda$ScreenDecorations$80y3DVvpOo5hQVD-W3EJlUKhPsU;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 438
    new-instance v0, Lcom/android/systemui/ScreenDecorations$3;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    const-string v6, "accessibility_display_inversion_enabled"

    invoke-direct {v0, p0, v1, v3, v6}, Lcom/android/systemui/ScreenDecorations$3;-><init>(Lcom/android/systemui/ScreenDecorations;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mColorInversionSetting:Lcom/android/systemui/qs/SecureSetting;

    .line 445
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mColorInversionSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v0, v4}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    .line 446
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mColorInversionSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v0, v5}, Lcom/android/systemui/qs/SecureSetting;->onChange(Z)V

    .line 448
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_SWITCHED"

    .line 449
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 450
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/ScreenDecorations;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, v0, v2, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 452
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/ScreenDecorations$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/ScreenDecorations$4;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 469
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/ScreenDecorations$ValidatingPreDrawListener;

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/ScreenDecorations$ValidatingPreDrawListener;-><init>(Lcom/android/systemui/ScreenDecorations;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 471
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/ScreenDecorations$ValidatingPreDrawListener;

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/ScreenDecorations$ValidatingPreDrawListener;-><init>(Lcom/android/systemui/ScreenDecorations;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private setupStatusBarPadding(I)V
    .locals 3

    .line 718
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0, v0}, Lcom/android/systemui/SystemUI;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz p0, :cond_0

    .line 719
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarWindow()Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 721
    sget v0, Lcom/android/systemui/R$id;->keyguard_header:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "sysui_rounded_content_padding"

    invoke-static {v0, v2, p1, v1}, Lcom/android/systemui/tuner/TunablePadding;->addTunablePadding(Landroid/view/View;Ljava/lang/String;II)Lcom/android/systemui/tuner/TunablePadding;

    .line 724
    invoke-static {p0}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object p0

    .line 725
    new-instance v0, Lcom/android/systemui/ScreenDecorations$TunablePaddingTagListener;

    sget v1, Lcom/android/systemui/R$id;->status_bar:I

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/ScreenDecorations$TunablePaddingTagListener;-><init>(II)V

    const-string v1, "CollapsedStatusBarFragment"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/fragments/FragmentHostManager;->addTagListener(Ljava/lang/String;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)Lcom/android/systemui/fragments/FragmentHostManager;

    .line 727
    new-instance v0, Lcom/android/systemui/ScreenDecorations$TunablePaddingTagListener;

    sget v1, Lcom/android/systemui/R$id;->header:I

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/ScreenDecorations$TunablePaddingTagListener;-><init>(II)V

    const-string p1, "QS"

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/fragments/FragmentHostManager;->addTagListener(Ljava/lang/String;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)Lcom/android/systemui/fragments/FragmentHostManager;

    :cond_1
    return-void
.end method

.method private setupStatusBarPaddingIfNeeded()V
    .locals 2

    .line 708
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->rounded_corner_content_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 711
    invoke-direct {p0, v0}, Lcom/android/systemui/ScreenDecorations;->setupStatusBarPadding(I)V

    :cond_0
    return-void
.end method

.method private shouldDrawCutout()Z
    .locals 0

    .line 696
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/ScreenDecorations;->shouldDrawCutout(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static shouldDrawCutout(Landroid/content/Context;)Z
    .locals 1

    .line 700
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1110086

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method private shouldHostHandles()Z
    .locals 0

    .line 348
    iget-boolean p0, p0, Lcom/android/systemui/ScreenDecorations;->mInGesturalMode:Z

    return p0
.end method

.method private startOnScreenDecorationsThread()V
    .locals 3

    .line 352
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/leak/RotationUtils;->getExactRotation(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    .line 353
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mWindowManager:Landroid/view/WindowManager;

    .line 354
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$bool;->config_roundedCornerMultipleRadius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mIsRoundedCornerMultipleRadius:Z

    .line 356
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateRoundedCornerRadii()V

    .line 357
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->hasRoundedCorners()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->shouldDrawCutout()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->shouldHostHandles()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 358
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->setupDecorations()V

    .line 359
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->setupCameraListener()V

    .line 362
    :cond_1
    new-instance v0, Lcom/android/systemui/ScreenDecorations$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/ScreenDecorations$2;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 399
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 401
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 402
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateOrientation()V

    return-void
.end method

.method private updateAssistantHandleViews()V
    .locals 12

    .line 631
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->assist_hint_left:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 632
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->assist_hint_right:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 633
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    sget v3, Lcom/android/systemui/R$id;->assist_hint_left:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 634
    iget-object v3, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    sget v4, Lcom/android/systemui/R$id;->assist_hint_right:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 636
    iget-boolean v4, p0, Lcom/android/systemui/ScreenDecorations;->mAssistHintVisible:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/4 v4, 0x4

    .line 638
    :goto_0
    iget v5, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    const/16 v6, 0xb4

    const/16 v7, 0x55

    const/16 v8, 0x10e

    const/16 v9, 0x53

    const/16 v10, 0x8

    if-nez v5, :cond_1

    .line 639
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 640
    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 641
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 642
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 643
    invoke-direct {p0, v2, v9, v8}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 644
    invoke-direct {p0, v3, v7, v6}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    goto :goto_1

    :cond_1
    const/4 v11, 0x1

    if-ne v5, v11, :cond_2

    .line 646
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 647
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 648
    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 649
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 650
    invoke-direct {p0, v1, v9, v8}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 651
    invoke-direct {p0, v3, v7, v6}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    goto :goto_1

    :cond_2
    const/4 v11, 0x3

    if-ne v5, v11, :cond_3

    .line 653
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 654
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 655
    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 656
    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 657
    invoke-direct {p0, v0, v9, v8}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 658
    invoke-direct {p0, v1, v7, v6}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    goto :goto_1

    :cond_3
    const/4 v11, 0x2

    if-ne v5, v11, :cond_4

    .line 660
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 661
    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 662
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 663
    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 664
    invoke-direct {p0, v0, v7, v6}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 665
    invoke-direct {p0, v2, v9, v8}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    :cond_4
    :goto_1
    return-void
.end method

.method private updateColorInversion(I)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/high16 p1, -0x1000000

    .line 501
    :goto_0
    sget-boolean v0, Lcom/android/systemui/ScreenDecorations;->DEBUG_COLOR:Z

    if-eqz v0, :cond_1

    const/high16 p1, -0x10000

    .line 504
    :cond_1
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 505
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->left:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 506
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->right:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 507
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->left:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 508
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->right:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 509
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutTop:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->setColor(I)V

    .line 510
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutBottom:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->setColor(I)V

    return-void
.end method

.method private updateLayoutParams()V
    .locals 3

    .line 780
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 781
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->getBottomLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateOrientation()V
    .locals 4

    .line 535
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "must call on "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    .line 536
    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", but was "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 535
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 538
    iget-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mPendingRotationChange:Z

    if-eqz v0, :cond_1

    return-void

    .line 541
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/leak/RotationUtils;->getExactRotation(Landroid/content/Context;)I

    move-result v0

    .line 542
    iget v1, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    if-eq v0, v1, :cond_2

    .line 543
    iput v0, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    .line 545
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 546
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateLayoutParams()V

    .line 547
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateViews()V

    .line 548
    iget-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mAssistHintVisible:Z

    if-eqz v0, :cond_2

    .line 551
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->hideAssistHandles()V

    .line 552
    invoke-virtual {p0, v2}, Lcom/android/systemui/ScreenDecorations;->setAssistHintVisible(Z)V

    :cond_2
    return-void
.end method

.method private updateRoundedCornerRadii()V
    .locals 4

    .line 569
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050202

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 571
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050206

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 573
    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050204

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 575
    iget v3, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefault:I

    if-ne v3, v0, :cond_1

    iget v3, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottom:I

    if-ne v3, v2, :cond_1

    iget v3, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTop:I

    if-eq v3, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_3

    .line 582
    iget-boolean v3, p0, Lcom/android/systemui/ScreenDecorations;->mIsRoundedCornerMultipleRadius:Z

    if-eqz v3, :cond_2

    .line 583
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$drawable;->rounded:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/VectorDrawable;

    .line 584
    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable;->getIntrinsicHeight()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefault:I

    .line 585
    iget v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefault:I

    iput v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottom:I

    iput v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTop:I

    goto :goto_2

    .line 587
    :cond_2
    iput v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefault:I

    .line 588
    iput v1, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTop:I

    .line 589
    iput v2, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottom:I

    :goto_2
    const/4 v0, 0x0

    const-string v1, "sysui_rounded_size"

    .line 591
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/ScreenDecorations;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private updateView(Landroid/view/View;II)V
    .locals 0

    .line 670
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    iput p2, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    int-to-float p0, p3

    .line 671
    invoke-virtual {p1, p0}, Landroid/view/View;->setRotation(F)V

    return-void
.end method

.method private updateViews()V
    .locals 14

    .line 596
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->left:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 597
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->right:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 598
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    sget v3, Lcom/android/systemui/R$id;->left:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 599
    iget-object v3, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    sget v4, Lcom/android/systemui/R$id;->right:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 601
    iget v4, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    const/16 v5, 0xb4

    const/16 v6, 0x55

    const/16 v7, 0x10e

    const/16 v8, 0x53

    const/16 v9, 0x5a

    const/16 v10, 0x35

    const/4 v11, 0x0

    const/16 v12, 0x33

    if-nez v4, :cond_0

    .line 602
    invoke-direct {p0, v0, v12, v11}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 603
    invoke-direct {p0, v1, v10, v9}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 604
    invoke-direct {p0, v2, v8, v7}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 605
    invoke-direct {p0, v3, v6, v5}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    goto :goto_0

    :cond_0
    const/4 v13, 0x1

    if-ne v4, v13, :cond_1

    .line 607
    invoke-direct {p0, v0, v12, v11}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 608
    invoke-direct {p0, v1, v8, v7}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 609
    invoke-direct {p0, v2, v10, v9}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 610
    invoke-direct {p0, v3, v6, v5}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    goto :goto_0

    :cond_1
    const/4 v13, 0x3

    if-ne v4, v13, :cond_2

    .line 612
    invoke-direct {p0, v0, v8, v7}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 613
    invoke-direct {p0, v1, v6, v5}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 614
    invoke-direct {p0, v2, v12, v11}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 615
    invoke-direct {p0, v3, v10, v9}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    goto :goto_0

    :cond_2
    const/4 v13, 0x2

    if-ne v4, v13, :cond_3

    .line 617
    invoke-direct {p0, v0, v6, v5}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 618
    invoke-direct {p0, v1, v10, v9}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 619
    invoke-direct {p0, v2, v8, v7}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 620
    invoke-direct {p0, v3, v12, v11}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 623
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateAssistantHandleViews()V

    .line 624
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutTop:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    iget v1, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->setRotation(I)V

    .line 625
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutBottom:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    iget v1, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->setRotation(I)V

    .line 627
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateWindowVisibilities()V

    return-void
.end method

.method private updateWindowVisibilities()V
    .locals 1

    .line 675
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/systemui/ScreenDecorations;->updateWindowVisibility(Landroid/view/View;)V

    .line 676
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/systemui/ScreenDecorations;->updateWindowVisibility(Landroid/view/View;)V

    return-void
.end method

.method private updateWindowVisibility(Landroid/view/View;)V
    .locals 4

    .line 680
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->shouldDrawCutout()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/systemui/R$id;->display_cutout:I

    .line 681
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 682
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->hasRoundedCorners()Z

    move-result p0

    .line 683
    sget v3, Lcom/android/systemui/R$id;->assist_hint_left:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_2

    sget v3, Lcom/android/systemui/R$id;->assist_hint_right:I

    .line 684
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    if-nez v0, :cond_4

    if-nez p0, :cond_4

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    const/16 v2, 0x8

    .line 686
    :cond_4
    :goto_2
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method getHandleAnimator(Landroid/view/View;FFZJLandroid/view/animation/Interpolator;)Landroid/animation/Animator;
    .locals 8

    const/high16 p0, 0x3f800000    # 1.0f

    const/high16 v0, 0x40000000    # 2.0f

    .line 216
    invoke-static {v0, p0, p2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v1

    .line 217
    invoke-static {v0, p0, p3}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    .line 218
    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v5, 0x1

    aput p0, v3, v5

    invoke-static {p1, v0, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 219
    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v2, [F

    aput v1, v6, v4

    aput p0, v6, v5

    invoke-static {p1, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const/4 v1, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    .line 220
    invoke-static {v3, v1, p2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p2

    .line 221
    invoke-static {v3, v1, p3}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p3

    if-eqz p4, :cond_0

    const/4 p4, -0x1

    goto :goto_0

    :cond_0
    move p4, v5

    .line 223
    :goto_0
    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v3, v2, [F

    int-to-float p4, p4

    mul-float v6, p4, p2

    .line 224
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    aput v6, v3, v4

    mul-float/2addr p4, p3

    .line 225
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr p4, v6

    aput p4, v3, v5

    .line 223
    invoke-static {p1, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p4

    .line 226
    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v2, v2, [F

    .line 227
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr p2, v3

    aput p2, v2, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p3, p2

    aput p3, v2, v5

    .line 226
    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 229
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 230
    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p3

    invoke-virtual {p3, p0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 231
    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p0

    invoke-virtual {p0, p4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 232
    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 233
    invoke-virtual {p2, p5, p6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 234
    invoke-virtual {p2, p7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p2
.end method

.method getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 7

    .line 734
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/16 v3, 0x7e8

    const v4, 0x20800128

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 744
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v0, v0, 0x50

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 747
    sget-boolean v0, Lcom/android/systemui/ScreenDecorations;->DEBUG_SCREENSHOT_ROUNDED_CORNERS:Z

    if-nez v0, :cond_0

    .line 748
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :cond_0
    const-string v0, "ScreenDecorOverlay"

    .line 751
    invoke-virtual {v6, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 752
    iget v0, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x33

    .line 756
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_1

    :cond_2
    :goto_0
    const/16 v0, 0x55

    .line 754
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :goto_1
    const/4 v0, 0x1

    .line 758
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 759
    iget v0, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    invoke-direct {p0, v0}, Lcom/android/systemui/ScreenDecorations;->isLandscape(I)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, -0x2

    .line 760
    iput p0, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 p0, -0x1

    .line 761
    iput p0, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 763
    :cond_3
    iget p0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v0, 0x1000000

    or-int/2addr p0, v0

    iput p0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    return-object v6
.end method

.method handleNavigationModeChange(I)V
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/-$$Lambda$ScreenDecorations$4F6CKqAgtSx8ZovPRT6WEWEYS4E;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/-$$Lambda$ScreenDecorations$4F6CKqAgtSx8ZovPRT6WEWEYS4E;-><init>(Lcom/android/systemui/ScreenDecorations;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 195
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p1

    .line 196
    iget-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mInGesturalMode:Z

    if-eq v0, p1, :cond_1

    .line 197
    iput-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mInGesturalMode:Z

    .line 199
    iget-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mInGesturalMode:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    if-nez p1, :cond_1

    .line 200
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->setupDecorations()V

    .line 201
    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 202
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateLayoutParams()V

    :cond_1
    return-void
.end method

.method public synthetic lambda$handleNavigationModeChange$0$ScreenDecorations(I)V
    .locals 0

    .line 192
    invoke-virtual {p0, p1}, Lcom/android/systemui/ScreenDecorations;->handleNavigationModeChange(I)V

    return-void
.end method

.method public synthetic lambda$onConfigurationChanged$4$ScreenDecorations()V
    .locals 1

    const/4 v0, 0x0

    .line 517
    iput-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mPendingRotationChange:Z

    .line 518
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateOrientation()V

    .line 519
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateRoundedCornerRadii()V

    .line 521
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->shouldDrawCutout()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    if-nez v0, :cond_0

    .line 522
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->setupDecorations()V

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 529
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateLayoutParams()V

    :cond_1
    return-void
.end method

.method public synthetic lambda$onDarkIntensity$6$ScreenDecorations(F)V
    .locals 0

    .line 824
    invoke-virtual {p0, p1}, Lcom/android/systemui/ScreenDecorations;->onDarkIntensity(F)V

    return-void
.end method

.method public synthetic lambda$onTuningChanged$5$ScreenDecorations(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 787
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "sysui_rounded_size"

    .line 788
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 789
    iget p1, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefault:I

    .line 790
    iget v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTop:I

    .line 791
    iget v1, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottom:I

    if-eqz p2, :cond_1

    .line 794
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    int-to-float p2, p2

    iget p1, p0, Lcom/android/systemui/ScreenDecorations;->mDensity:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    mul-float/2addr p2, p1

    float-to-int p1, p2

    :catch_0
    :cond_1
    if-nez v0, :cond_2

    move v0, p1

    :cond_2
    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    move p1, v1

    .line 806
    :goto_0
    iget-object p2, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->left:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2, v0}, Lcom/android/systemui/ScreenDecorations;->setSize(Landroid/view/View;I)V

    .line 807
    iget-object p2, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->right:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2, v0}, Lcom/android/systemui/ScreenDecorations;->setSize(Landroid/view/View;I)V

    .line 808
    iget-object p2, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->left:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/android/systemui/ScreenDecorations;->setSize(Landroid/view/View;I)V

    .line 809
    iget-object p2, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->right:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/android/systemui/ScreenDecorations;->setSize(Landroid/view/View;I)V

    :cond_4
    return-void
.end method

.method public synthetic lambda$setAssistHintBlocked$2$ScreenDecorations(Z)V
    .locals 0

    .line 330
    invoke-virtual {p0, p1}, Lcom/android/systemui/ScreenDecorations;->setAssistHintBlocked(Z)V

    return-void
.end method

.method public synthetic lambda$setAssistHintVisible$1$ScreenDecorations(Z)V
    .locals 0

    .line 278
    invoke-virtual {p0, p1}, Lcom/android/systemui/ScreenDecorations;->setAssistHintVisible(Z)V

    return-void
.end method

.method public synthetic lambda$setupDecorations$3$ScreenDecorations()V
    .locals 2

    .line 435
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string v1, "sysui_rounded_size"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 515
    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/-$$Lambda$ScreenDecorations$ZcXfKc-loCI7zxM2FCddG-g2uzM;

    invoke-direct {v0, p0}, Lcom/android/systemui/-$$Lambda$ScreenDecorations$ZcXfKc-loCI7zxM2FCddG-g2uzM;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDarkIntensity(F)V
    .locals 3

    .line 823
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 824
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/-$$Lambda$ScreenDecorations$0LxH4_gyyT9LgXM946gQ6FsGA7o;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/-$$Lambda$ScreenDecorations$0LxH4_gyyT9LgXM946gQ6FsGA7o;-><init>(Lcom/android/systemui/ScreenDecorations;F)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 827
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 828
    sget v1, Lcom/android/systemui/R$id;->assist_hint_left:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/CornerHandleView;

    .line 829
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->assist_hint_right:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/CornerHandleView;

    .line 831
    invoke-virtual {v0, p1}, Lcom/android/systemui/CornerHandleView;->updateDarkness(F)V

    .line 832
    invoke-virtual {v1, p1}, Lcom/android/systemui/CornerHandleView;->updateDarkness(F)V

    .line 835
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 836
    sget v1, Lcom/android/systemui/R$id;->assist_hint_left:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/CornerHandleView;

    .line 838
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->assist_hint_right:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/CornerHandleView;

    .line 841
    invoke-virtual {v0, p1}, Lcom/android/systemui/CornerHandleView;->updateDarkness(F)V

    .line 842
    invoke-virtual {p0, p1}, Lcom/android/systemui/CornerHandleView;->updateDarkness(F)V

    :cond_2
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 786
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/-$$Lambda$ScreenDecorations$mdf60Bg4ecef-imWHJ4lSsesAIU;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/-$$Lambda$ScreenDecorations$mdf60Bg4ecef-imWHJ4lSsesAIU;-><init>(Lcom/android/systemui/ScreenDecorations;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setAssistHintBlocked(Z)V
    .locals 2

    .line 329
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/-$$Lambda$ScreenDecorations$X65dAPl3paBdNr5xrYJHzDmgROE;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/-$$Lambda$ScreenDecorations$X65dAPl3paBdNr5xrYJHzDmgROE;-><init>(Lcom/android/systemui/ScreenDecorations;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 334
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mAssistHintBlocked:Z

    .line 335
    iget-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mAssistHintVisible:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mAssistHintBlocked:Z

    if-eqz p1, :cond_1

    .line 336
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->hideAssistHandles()V

    :cond_1
    return-void
.end method

.method public setAssistHintVisible(Z)V
    .locals 6

    .line 277
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/-$$Lambda$ScreenDecorations$v4Vg-fK79EV22k9HdjvuSqrLHx4;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/-$$Lambda$ScreenDecorations$v4Vg-fK79EV22k9HdjvuSqrLHx4;-><init>(Lcom/android/systemui/ScreenDecorations;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 282
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mAssistHintBlocked:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    return-void

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    if-nez v1, :cond_2

    goto :goto_1

    .line 293
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/ScreenDecorations;->mAssistHintVisible:Z

    if-eq v1, p1, :cond_7

    .line 294
    iput-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mAssistHintVisible:Z

    .line 296
    sget p1, Lcom/android/systemui/R$id;->assist_hint_left:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/CornerHandleView;

    .line 297
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->assist_hint_right:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/CornerHandleView;

    .line 298
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->assist_hint_left:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/CornerHandleView;

    .line 300
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    sget v3, Lcom/android/systemui/R$id;->assist_hint_right:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/CornerHandleView;

    .line 303
    iget v3, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_6

    if-eq v3, v5, :cond_5

    const/4 v2, 0x2

    if-eq v3, v2, :cond_4

    const/4 v1, 0x3

    if-eq v3, v1, :cond_3

    goto :goto_0

    .line 317
    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/ScreenDecorations;->mAssistHintVisible:Z

    invoke-direct {p0, p1, v1, v4}, Lcom/android/systemui/ScreenDecorations;->fade(Landroid/view/View;ZZ)V

    .line 318
    iget-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mAssistHintVisible:Z

    invoke-direct {p0, v0, p1, v5}, Lcom/android/systemui/ScreenDecorations;->fade(Landroid/view/View;ZZ)V

    goto :goto_0

    .line 313
    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mAssistHintVisible:Z

    invoke-direct {p0, p1, v0, v4}, Lcom/android/systemui/ScreenDecorations;->fade(Landroid/view/View;ZZ)V

    .line 314
    iget-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mAssistHintVisible:Z

    invoke-direct {p0, v1, p1, v5}, Lcom/android/systemui/ScreenDecorations;->fade(Landroid/view/View;ZZ)V

    goto :goto_0

    .line 309
    :cond_5
    iget-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mAssistHintVisible:Z

    invoke-direct {p0, v0, p1, v5}, Lcom/android/systemui/ScreenDecorations;->fade(Landroid/view/View;ZZ)V

    .line 310
    iget-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mAssistHintVisible:Z

    invoke-direct {p0, v2, p1, v4}, Lcom/android/systemui/ScreenDecorations;->fade(Landroid/view/View;ZZ)V

    goto :goto_0

    .line 305
    :cond_6
    iget-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mAssistHintVisible:Z

    invoke-direct {p0, v1, p1, v5}, Lcom/android/systemui/ScreenDecorations;->fade(Landroid/view/View;ZZ)V

    .line 306
    iget-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mAssistHintVisible:Z

    invoke-direct {p0, v2, p1, v4}, Lcom/android/systemui/ScreenDecorations;->fade(Landroid/view/View;ZZ)V

    .line 322
    :cond_7
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateWindowVisibilities()V

    :cond_8
    :goto_1
    return-void
.end method

.method public start()V
    .locals 2

    .line 180
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->startHandlerThread()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    .line 181
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/-$$Lambda$ScreenDecorations$IfAux2ksmJXT9o9i38WaSEQXJTQ;

    invoke-direct {v1, p0}, Lcom/android/systemui/-$$Lambda$ScreenDecorations$IfAux2ksmJXT9o9i38WaSEQXJTQ;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 182
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->setupStatusBarPaddingIfNeeded()V

    .line 183
    const-class v0, Lcom/android/systemui/ScreenDecorations;

    invoke-virtual {p0, v0, p0}, Lcom/android/systemui/SystemUI;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 184
    const-class v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;

    .line 185
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;

    new-instance v1, Lcom/android/systemui/-$$Lambda$60rw5ghsFNPB4OvLwvmy1hJgGv0;

    invoke-direct {v1, p0}, Lcom/android/systemui/-$$Lambda$60rw5ghsFNPB4OvLwvmy1hJgGv0;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    .line 186
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->addListener(Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;)I

    move-result v0

    .line 184
    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mInGesturalMode:Z

    return-void
.end method

.method startHandlerThread()Landroid/os/Handler;
    .locals 1

    .line 342
    new-instance p0, Landroid/os/HandlerThread;

    const-string v0, "ScreenDecorations"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    .line 344
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method
