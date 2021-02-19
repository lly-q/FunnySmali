.class public Lcom/android/systemui/statusbar/phone/ScrimController;
.super Ljava/lang/Object;
.source "ScrimController.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/ScrimController$KeyguardVisibilityCallback;,
        Lcom/android/systemui/statusbar/phone/ScrimController$Callback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG_END_ALPHA:I

.field static final TAG_KEY_ANIM:I

.field private static final TAG_START_ALPHA:I


# instance fields
.field protected mAnimateChange:Z

.field private mAnimationDelay:J

.field protected mAnimationDuration:J

.field private mBlankScreen:Z

.field private mBlankingTransitionRunnable:Ljava/lang/Runnable;

.field private mCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

.field private final mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

.field private mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

.field private final mContext:Landroid/content/Context;

.field private mCurrentBehindAlpha:F

.field private mCurrentBehindTint:I

.field private mCurrentInFrontAlpha:F

.field private mCurrentInFrontTint:I

.field private mDarkenWhileDragging:Z

.field private mDeferFinishedListener:Z

.field private final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private mExpansionAffectsAlpha:Z

.field private mExpansionFraction:F

.field private final mHandler:Landroid/os/Handler;

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mKeyguardOccluded:Z

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mKeyguardVisibilityCallback:Lcom/android/systemui/statusbar/phone/ScrimController$KeyguardVisibilityCallback;

.field private mNeedsDrawableColorUpdate:Z

.field private mOnAnimationFinished:Ljava/lang/Runnable;

.field private mPendingFrameCallback:Ljava/lang/Runnable;

.field private mScreenBlankingCallbackCalled:Z

.field private mScreenOn:Z

.field protected final mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

.field protected mScrimBehindAlpha:F

.field protected mScrimBehindAlphaKeyguard:F

.field protected mScrimBehindAlphaResValue:F

.field protected final mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

.field private final mScrimStateListener:Lcom/android/internal/util/function/TriConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/function/TriConsumer<",
            "Lcom/android/systemui/statusbar/phone/ScrimState;",
            "Ljava/lang/Float;",
            "Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;",
            ">;"
        }
    .end annotation
.end field

.field private final mScrimVisibleListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mScrimsVisibility:I

.field private mState:Lcom/android/systemui/statusbar/phone/ScrimState;

.field private final mTimeTicker:Lcom/android/systemui/util/AlarmTimeout;

.field private mTracking:Z

.field private final mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

.field private mUpdatePending:Z

.field private final mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

.field private mWakeLockHeld:Z

.field private mWallpaperSupportsAmbientMode:Z

.field private mWallpaperVisibilityTimedOut:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ScrimController"

    const/4 v1, 0x3

    .line 71
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/ScrimController;->DEBUG:Z

    .line 121
    sget v0, Lcom/android/systemui/R$id;->scrim:I

    sput v0, Lcom/android/systemui/statusbar/phone/ScrimController;->TAG_KEY_ANIM:I

    .line 122
    sget v0, Lcom/android/systemui/R$id;->scrim_alpha_start:I

    sput v0, Lcom/android/systemui/statusbar/phone/ScrimController;->TAG_START_ALPHA:I

    .line 123
    sget v0, Lcom/android/systemui/R$id;->scrim_alpha_end:I

    sput v0, Lcom/android/systemui/statusbar/phone/ScrimController;->TAG_END_ALPHA:I

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/ScrimView;Lcom/android/systemui/statusbar/ScrimView;Lcom/android/internal/util/function/TriConsumer;Ljava/util/function/Consumer;Lcom/android/systemui/statusbar/phone/DozeParameters;Landroid/app/AlarmManager;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/ScrimView;",
            "Lcom/android/systemui/statusbar/ScrimView;",
            "Lcom/android/internal/util/function/TriConsumer<",
            "Lcom/android/systemui/statusbar/phone/ScrimState;",
            "Ljava/lang/Float;",
            "Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            "Landroid/app/AlarmManager;",
            "Lcom/android/systemui/statusbar/policy/KeyguardMonitor;",
            ")V"
        }
    .end annotation

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->UNINITIALIZED:Lcom/android/systemui/statusbar/phone/ScrimState;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    const v0, 0x3e4ccccd    # 0.2f

    .line 143
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehindAlphaKeyguard:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 146
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mExpansionFraction:F

    const/4 v0, 0x1

    .line 149
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mExpansionAffectsAlpha:Z

    const-wide/16 v1, -0x1

    .line 153
    iput-wide v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDuration:J

    .line 157
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInterpolator:Landroid/view/animation/Interpolator;

    const/high16 v1, -0x40800000    # -1.0f

    .line 158
    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentInFrontAlpha:F

    .line 159
    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentBehindAlpha:F

    .line 184
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    .line 185
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    .line 186
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimStateListener:Lcom/android/internal/util/function/TriConsumer;

    .line 187
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimVisibleListener:Ljava/util/function/Consumer;

    .line 188
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mContext:Landroid/content/Context;

    .line 189
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 190
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->canSkipBouncer()Z

    move-result p1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDarkenWhileDragging:Z

    .line 191
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 192
    new-instance p1, Lcom/android/systemui/statusbar/phone/ScrimController$KeyguardVisibilityCallback;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/statusbar/phone/ScrimController$KeyguardVisibilityCallback;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/phone/ScrimController$1;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardVisibilityCallback:Lcom/android/systemui/statusbar/phone/ScrimController$KeyguardVisibilityCallback;

    .line 193
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardVisibilityCallback:Lcom/android/systemui/statusbar/phone/ScrimController$KeyguardVisibilityCallback;

    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 194
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->scrim_behind_alpha:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehindAlphaResValue:F

    .line 195
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mHandler:Landroid/os/Handler;

    .line 196
    new-instance p1, Lcom/android/systemui/util/AlarmTimeout;

    new-instance p2, Lcom/android/systemui/statusbar/phone/-$$Lambda$ZxOK9HbkOUnaEI0FKoidLb2saOY;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$ZxOK9HbkOUnaEI0FKoidLb2saOY;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mHandler:Landroid/os/Handler;

    const-string p4, "hide_aod_wallpaper"

    invoke-direct {p1, p6, p2, p4, p3}, Lcom/android/systemui/util/AlarmTimeout;-><init>(Landroid/app/AlarmManager;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mTimeTicker:Lcom/android/systemui/util/AlarmTimeout;

    .line 198
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->createWakeLock()Lcom/android/systemui/util/wakelock/WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    .line 201
    iget p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehindAlphaResValue:F

    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehindAlpha:F

    .line 202
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 203
    new-instance p1, Lcom/android/systemui/statusbar/phone/ScrimController$1;

    invoke-direct {p1, p0, p7}, Lcom/android/systemui/statusbar/phone/ScrimController$1;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;)V

    invoke-interface {p7, p1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 211
    const-class p1, Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    .line 212
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-virtual {p1, p0}, Lcom/android/internal/colorextraction/ColorExtractor;->addOnColorsChangedListener(Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;)V

    .line 213
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-virtual {p1}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->getNeutralColors()Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .line 214
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNeedsDrawableColorUpdate:Z

    .line 216
    invoke-static {}, Lcom/android/systemui/statusbar/phone/ScrimState;->values()[Lcom/android/systemui/statusbar/phone/ScrimState;

    move-result-object p1

    const/4 p2, 0x0

    move p3, p2

    .line 217
    :goto_0
    array-length p4, p1

    if-ge p3, p4, :cond_0

    .line 218
    aget-object p4, p1, p3

    iget-object p5, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    iget-object p6, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    iget-object p7, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {p4, p5, p6, p7}, Lcom/android/systemui/statusbar/phone/ScrimState;->init(Lcom/android/systemui/statusbar/ScrimView;Lcom/android/systemui/statusbar/ScrimView;Lcom/android/systemui/statusbar/phone/DozeParameters;)V

    .line 219
    aget-object p4, p1, p3

    iget p5, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehindAlphaKeyguard:F

    invoke-virtual {p4, p5}, Lcom/android/systemui/statusbar/phone/ScrimState;->setScrimBehindAlphaKeyguard(F)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 222
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setDefaultFocusHighlightEnabled(Z)V

    .line 223
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setDefaultFocusHighlightEnabled(Z)V

    .line 225
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrims()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/ScrimController;ZJ)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/ScrimController;->setKeyguardFadingAway(ZJ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/ScrimController;)Lcom/android/systemui/statusbar/phone/ScrimController$Callback;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/phone/ScrimController$Callback;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->onFinished(Lcom/android/systemui/statusbar/phone/ScrimController$Callback;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/ScrimController;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->dispatchScrimsVisible()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/ScrimController;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDeferFinishedListener:Z

    return p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/ScrimController;)Ljava/lang/Runnable;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mOnAnimationFinished:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/phone/ScrimController;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mOnAnimationFinished:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$702(Lcom/android/systemui/statusbar/phone/ScrimController;Z)Z
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNeedsDrawableColorUpdate:Z

    return p1
.end method

.method private applyExpansionToAlpha()V
    .locals 6

    .line 449
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mExpansionAffectsAlpha:Z

    if-nez v0, :cond_0

    return-void

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    const/4 v2, 0x0

    const v3, 0x3f333333    # 0.7f

    if-ne v0, v1, :cond_1

    .line 455
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->getInterpolatedFraction()F

    move-result v0

    float-to-double v0, v0

    const-wide v4, 0x3fe99999a0000000L    # 0.800000011920929

    .line 456
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, v3

    .line 457
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentBehindAlpha:F

    .line 458
    iput v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentInFrontAlpha:F

    goto :goto_1

    .line 459
    :cond_1
    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->KEYGUARD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne v0, v1, :cond_4

    .line 462
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->getInterpolatedFraction()F

    move-result v0

    .line 463
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ScrimState;->getBehindAlpha()F

    move-result v1

    .line 464
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDarkenWhileDragging:Z

    if-eqz v4, :cond_3

    .line 465
    invoke-static {v3, v1, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentBehindAlpha:F

    .line 467
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ScrimState;->getFrontAlpha()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentInFrontAlpha:F

    goto :goto_0

    .line 469
    :cond_3
    invoke-static {v2, v1, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentBehindAlpha:F

    .line 471
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ScrimState;->getFrontAlpha()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentInFrontAlpha:F

    .line 473
    :goto_0
    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ScrimState;->getBehindTint()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 474
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/ScrimState;->getBehindTint()I

    move-result v2

    .line 473
    invoke-static {v1, v2, v0}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentBehindTint:I

    .line 476
    :cond_4
    :goto_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentBehindAlpha:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_5

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentInFrontAlpha:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    .line 477
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scrim opacity is NaN for state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", front: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentInFrontAlpha:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", back: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentBehindAlpha:F

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blankDisplay()V
    .locals 3

    .line 840
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x1000000

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimColor(Landroid/view/View;FI)V

    .line 844
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$ScrimController$kDQtFE2BFSUNax7wJ8UgLaBZyEo;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$ScrimController$kDQtFE2BFSUNax7wJ8UgLaBZyEo;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPendingFrameCallback:Ljava/lang/Runnable;

    .line 866
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPendingFrameCallback:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->doOnTheNextFrame(Ljava/lang/Runnable;)V

    return-void
.end method

.method private dispatchScrimState(F)V
    .locals 2

    .line 594
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimStateListener:Lcom/android/internal/util/function/TriConsumer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ScrimView;->getColors()Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object p0

    invoke-interface {v0, v1, p1, p0}, Lcom/android/internal/util/function/TriConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private dispatchScrimsVisible()V
    .locals 2

    .line 599
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ScrimView;->getViewAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ScrimView;->getViewAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    .line 601
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ScrimView;->getViewAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ScrimView;->getViewAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x2

    .line 607
    :goto_1
    iget v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimsVisibility:I

    if-eq v1, v0, :cond_3

    .line 608
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimsVisibility:I

    .line 609
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimVisibleListener:Ljava/util/function/Consumer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method private getCurrentScrimAlpha(Landroid/view/View;)F
    .locals 1

    .line 709
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    if-ne p1, v0, :cond_0

    .line 710
    iget p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentInFrontAlpha:F

    return p0

    .line 711
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    if-ne p1, v0, :cond_1

    .line 712
    iget p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentBehindAlpha:F

    return p0

    .line 714
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown scrim view"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getCurrentScrimTint(Landroid/view/View;)I
    .locals 1

    .line 719
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    if-ne p1, v0, :cond_0

    .line 720
    iget p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentInFrontTint:I

    return p0

    .line 721
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    if-ne p1, v0, :cond_1

    .line 722
    iget p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentBehindTint:I

    return p0

    .line 724
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown scrim view"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getInterpolatedFraction()F
    .locals 8

    .line 614
    iget p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mExpansionFraction:F

    const v0, 0x3f99999a    # 1.2f

    mul-float/2addr p0, v0

    const v0, 0x3e4ccccd    # 0.2f

    sub-float/2addr p0, v0

    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    if-gtz v1, :cond_0

    return v0

    :cond_0
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    const-wide v2, 0x400921fa00000000L    # 3.141590118408203

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, p0

    float-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 621
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v2, v4, v2

    mul-double/2addr v2, v0

    sub-double/2addr v4, v2

    double-to-float p0, v4

    return p0
.end method

.method private holdWakeLock()V
    .locals 3

    .line 380
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWakeLockHeld:Z

    if-nez v0, :cond_1

    .line 381
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    const-string v1, "ScrimController"

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 382
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWakeLockHeld:Z

    .line 383
    invoke-interface {v0, v1}, Lcom/android/systemui/util/wakelock/WakeLock;->acquire(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "Cannot hold wake lock, it has not been set yet"

    .line 385
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private isAnimating(Landroid/view/View;)Z
    .locals 0

    .line 771
    sget p0, Lcom/android/systemui/statusbar/phone/ScrimController;->TAG_KEY_ANIM:I

    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private onFinished()V
    .locals 1

    .line 745
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->onFinished(Lcom/android/systemui/statusbar/phone/ScrimController$Callback;)V

    return-void
.end method

.method private onFinished(Lcom/android/systemui/statusbar/phone/ScrimController$Callback;)V
    .locals 3

    .line 749
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWakeLockHeld:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 750
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    const-string v2, "ScrimController"

    invoke-interface {v0, v2}, Lcom/android/systemui/util/wakelock/WakeLock;->release(Ljava/lang/String;)V

    .line 751
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWakeLockHeld:Z

    :cond_0
    if-eqz p1, :cond_1

    .line 755
    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/ScrimController$Callback;->onFinished()V

    .line 757
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    .line 758
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    .line 764
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne p1, v0, :cond_2

    .line 765
    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentInFrontTint:I

    .line 766
    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentBehindTint:I

    :cond_2
    return-void
.end method

.method private setKeyguardFadingAway(ZJ)V
    .locals 3

    .line 984
    invoke-static {}, Lcom/android/systemui/statusbar/phone/ScrimState;->values()[Lcom/android/systemui/statusbar/phone/ScrimState;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 985
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/ScrimState;->setKeyguardFadingAway(ZJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setOrAdaptCurrentAnimation(Landroid/view/View;)V
    .locals 3

    .line 433
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->isAnimating(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 434
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->getCurrentScrimAlpha(Landroid/view/View;)F

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->getCurrentScrimTint(Landroid/view/View;)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimColor(Landroid/view/View;FI)V

    goto :goto_0

    .line 436
    :cond_0
    sget v0, Lcom/android/systemui/statusbar/phone/ScrimController;->TAG_KEY_ANIM:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 437
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->getCurrentScrimAlpha(Landroid/view/View;)F

    move-result p0

    .line 438
    sget v1, Lcom/android/systemui/statusbar/phone/ScrimController;->TAG_END_ALPHA:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 439
    sget v2, Lcom/android/systemui/statusbar/phone/ScrimController;->TAG_START_ALPHA:I

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float v1, p0, v1

    add-float/2addr v2, v1

    .line 442
    sget v1, Lcom/android/systemui/statusbar/phone/ScrimController;->TAG_START_ALPHA:I

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 443
    sget v1, Lcom/android/systemui/statusbar/phone/ScrimController;->TAG_END_ALPHA:I

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 444
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    :goto_0
    return-void
.end method

.method private setScrimAlpha(Lcom/android/systemui/statusbar/ScrimView;F)V
    .locals 3

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 635
    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    .line 638
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v2, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    .line 640
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrim(Lcom/android/systemui/statusbar/ScrimView;F)V

    return-void
.end method

.method private setScrimBehindAlpha(F)V
    .locals 1

    .line 626
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimAlpha(Lcom/android/systemui/statusbar/ScrimView;F)V

    return-void
.end method

.method private setScrimInFrontAlpha(F)V
    .locals 1

    .line 630
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimAlpha(Lcom/android/systemui/statusbar/ScrimView;F)V

    return-void
.end method

.method private shouldFadeAwayWallpaper()Z
    .locals 4

    .line 328
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWallpaperSupportsAmbientMode:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v2, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result v0

    if-eqz v0, :cond_1

    return v3

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v2, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne v0, v2, :cond_2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    if-eqz p0, :cond_2

    .line 337
    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/ScrimController$Callback;->shouldTimeoutWallpaper()Z

    move-result p0

    if-eqz p0, :cond_2

    return v3

    :cond_2
    return v1
.end method

.method private startScrimAnimation(Landroid/view/View;F)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 665
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 666
    instance-of v1, p1, Lcom/android/systemui/statusbar/ScrimView;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ScrimView;->getTint()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 668
    :goto_0
    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$ScrimController$RfJJyPt1cPl4hraLjBCUJgqPhOM;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$ScrimController$RfJJyPt1cPl4hraLjBCUJgqPhOM;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;Landroid/view/View;I)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 679
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 680
    iget-wide v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDelay:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 681
    iget-wide v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 682
    new-instance v1, Lcom/android/systemui/statusbar/phone/ScrimController$2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController$2;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 701
    sget v1, Lcom/android/systemui/statusbar/phone/ScrimController;->TAG_START_ALPHA:I

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 702
    sget p2, Lcom/android/systemui/statusbar/phone/ScrimController;->TAG_END_ALPHA:I

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->getCurrentScrimAlpha(Landroid/view/View;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 704
    sget p0, Lcom/android/systemui/statusbar/phone/ScrimController;->TAG_KEY_ANIM:I

    invoke-virtual {p1, p0, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 705
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateScrim(Lcom/android/systemui/statusbar/ScrimView;F)V
    .locals 6

    .line 780
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ScrimView;->getViewAlpha()F

    move-result v0

    .line 782
    sget v1, Lcom/android/systemui/statusbar/phone/ScrimController;->TAG_KEY_ANIM:I

    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 784
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z

    if-eqz v4, :cond_0

    .line 786
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDeferFinishedListener:Z

    .line 792
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->cancelAnimator(Landroid/animation/ValueAnimator;)V

    .line 793
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDeferFinishedListener:Z

    .line 796
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPendingFrameCallback:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    return-void

    .line 799
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankScreen:Z

    if-eqz v1, :cond_3

    .line 801
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->blankDisplay()V

    return-void

    .line 803
    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScreenBlankingCallbackCalled:Z

    if-nez v1, :cond_4

    .line 806
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    if-eqz v1, :cond_4

    .line 807
    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/ScrimController$Callback;->onDisplayBlanked()V

    .line 808
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScreenBlankingCallbackCalled:Z

    .line 812
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    if-ne p1, v1, :cond_5

    .line 813
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/ScrimController;->dispatchScrimState(F)V

    :cond_5
    cmpl-float v1, p2, v0

    if-eqz v1, :cond_6

    move v1, v3

    goto :goto_0

    :cond_6
    move v1, v2

    .line 817
    :goto_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ScrimView;->getTint()I

    move-result v4

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->getCurrentScrimTint(Landroid/view/View;)I

    move-result v5

    if-eq v4, v5, :cond_7

    move v2, v3

    :cond_7
    if-nez v1, :cond_9

    if-eqz v2, :cond_8

    goto :goto_1

    .line 828
    :cond_8
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->onFinished()V

    goto :goto_2

    .line 820
    :cond_9
    :goto_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z

    if-eqz v1, :cond_a

    .line 821
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->startScrimAnimation(Landroid/view/View;F)V

    goto :goto_2

    .line 824
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->getCurrentScrimTint(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimColor(Landroid/view/View;FI)V

    .line 825
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->onFinished()V

    :goto_2
    return-void
.end method

.method private updateScrimColor(Landroid/view/View;FI)V
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    .line 644
    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 645
    instance-of v0, p1, Lcom/android/systemui/statusbar/ScrimView;

    if-eqz v0, :cond_2

    .line 646
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ScrimView;

    .line 649
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    if-ne p1, v1, :cond_0

    const-string v1, "front_scrim_alpha"

    goto :goto_0

    :cond_0
    const-string v1, "back_scrim_alpha"

    :goto_0
    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v2, p2

    float-to-int v2, v2

    const-wide/16 v3, 0x1000

    .line 648
    invoke-static {v3, v4, v1, v2}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 653
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    if-ne p1, v1, :cond_1

    const-string p1, "front_scrim_tint"

    goto :goto_1

    :cond_1
    const-string p1, "back_scrim_tint"

    .line 654
    :goto_1
    invoke-static {p3}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 652
    invoke-static {v3, v4, p1, v1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 656
    invoke-virtual {v0, p3}, Lcom/android/systemui/statusbar/ScrimView;->setTint(I)V

    .line 657
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/ScrimView;->setViewAlpha(F)V

    goto :goto_2

    .line 659
    :cond_2
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 661
    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->dispatchScrimsVisible()V

    return-void
.end method


# virtual methods
.method protected cancelAnimator(Landroid/animation/ValueAnimator;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    if-eqz p1, :cond_0

    .line 835
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method protected createWakeLock()Lcom/android/systemui/util/wakelock/WakeLock;
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 908
    new-instance v0, Lcom/android/systemui/util/wakelock/DelayedWakeLock;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mContext:Landroid/content/Context;

    const-string v2, "Scrims"

    invoke-static {p0, v2}, Lcom/android/systemui/util/wakelock/WakeLock;->createPartial(Landroid/content/Context;Ljava/lang/String;)Lcom/android/systemui/util/wakelock/WakeLock;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/util/wakelock/DelayedWakeLock;-><init>(Landroid/os/Handler;Lcom/android/systemui/util/wakelock/WakeLock;)V

    return-object v0
.end method

.method protected doOnTheNextFrame(Ljava/lang/Runnable;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 877
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    const-wide/16 v0, 0x20

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string p1, " ScrimController: "

    .line 913
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  state: "

    .line 914
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string p1, "  frontScrim:"

    .line 915
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, " viewAlpha="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/ScrimView;->getViewAlpha()F

    move-result p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(F)V

    const-string p3, " alpha="

    .line 916
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentInFrontAlpha:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string v0, " tint=0x"

    .line 917
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ScrimView;->getTint()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  backScrim:"

    .line 919
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ScrimView;->getViewAlpha()F

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(F)V

    .line 920
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentBehindAlpha:F

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(F)V

    .line 921
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ScrimView;->getTint()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  mTracking="

    .line 923
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mTracking:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mExpansionFraction="

    .line 925
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mExpansionFraction:F

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(F)V

    return-void
.end method

.method protected getHandler()Landroid/os/Handler;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 882
    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-object p0
.end method

.method public getState()Lcom/android/systemui/statusbar/phone/ScrimState;
    .locals 0

    .line 345
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    return-object p0
.end method

.method public synthetic lambda$blankDisplay$1$ScrimController()V
    .locals 1

    const/4 v0, 0x0

    .line 851
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankingTransitionRunnable:Ljava/lang/Runnable;

    .line 852
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPendingFrameCallback:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 853
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankScreen:Z

    .line 855
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrims()V

    return-void
.end method

.method public synthetic lambda$blankDisplay$2$ScrimController()V
    .locals 4

    .line 845
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    if-eqz v0, :cond_0

    .line 846
    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/ScrimController$Callback;->onDisplayBlanked()V

    const/4 v0, 0x1

    .line 847
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScreenBlankingCallbackCalled:Z

    .line 850
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$ScrimController$xRo1WgiULtMHpaX-VTe04p0hBHI;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$ScrimController$xRo1WgiULtMHpaX-VTe04p0hBHI;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankingTransitionRunnable:Ljava/lang/Runnable;

    .line 860
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScreenOn:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x20

    goto :goto_0

    :cond_1
    const/16 v0, 0x1f4

    .line 861
    :goto_0
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/ScrimController;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 862
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fading out scrims with delay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScrimController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankingTransitionRunnable:Ljava/lang/Runnable;

    int-to-long v2, v0

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public synthetic lambda$startScrimAnimation$0$ScrimController(Landroid/view/View;ILandroid/animation/ValueAnimator;)V
    .locals 4

    .line 669
    sget v0, Lcom/android/systemui/statusbar/phone/ScrimController;->TAG_START_ALPHA:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 670
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    .line 671
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->getCurrentScrimTint(Landroid/view/View;)I

    move-result v1

    .line 672
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->getCurrentScrimAlpha(Landroid/view/View;)F

    move-result v2

    .line 673
    invoke-static {v0, v2, p3}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 674
    invoke-static {v0, v2, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    .line 675
    invoke-static {p2, v1, p3}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p2

    .line 676
    invoke-direct {p0, p1, v0, p2}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimColor(Landroid/view/View;FI)V

    .line 677
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->dispatchScrimsVisible()V

    return-void
.end method

.method public onColorsChanged(Lcom/android/internal/colorextraction/ColorExtractor;I)V
    .locals 0

    .line 901
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-virtual {p1}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->getNeutralColors()Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    const/4 p1, 0x1

    .line 902
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNeedsDrawableColorUpdate:Z

    .line 903
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->scheduleUpdate()V

    return-void
.end method

.method public onExpandingFinished()V
    .locals 1

    const/4 v0, 0x0

    .line 363
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mTracking:Z

    return-void
.end method

.method protected onHideWallpaperTimeout()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 368
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq v0, v1, :cond_0

    return-void

    .line 372
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->holdWakeLock()V

    const/4 v0, 0x1

    .line 373
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWallpaperVisibilityTimedOut:Z

    .line 374
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z

    .line 375
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getWallpaperFadeOutDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDuration:J

    .line 376
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->scheduleUpdate()V

    return-void
.end method

.method public onPreDraw()Z
    .locals 1

    .line 730
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x0

    .line 731
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mUpdatePending:Z

    .line 732
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    if-eqz v0, :cond_0

    .line 733
    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/ScrimController$Callback;->onStart()V

    .line 735
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrims()V

    .line 736
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mOnAnimationFinished:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->isAnimating(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    .line 737
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->isAnimating(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 738
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mOnAnimationFinished:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 739
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mOnAnimationFinished:Ljava/lang/Runnable;

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public onScreenTurnedOff()V
    .locals 1

    const/4 v0, 0x0

    .line 951
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScreenOn:Z

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 2

    const/4 v0, 0x1

    .line 940
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScreenOn:Z

    .line 941
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankingTransitionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 942
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/ScrimController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ScrimController"

    const-string v1, "Shorter blanking because screen turned on. All good."

    .line 943
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankingTransitionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 946
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankingTransitionRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method public onTrackingStarted()V
    .locals 2

    const/4 v0, 0x1

    .line 358
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mTracking:Z

    .line 359
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->canSkipBouncer()Z

    move-result v1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDarkenWhileDragging:Z

    return-void
.end method

.method protected scheduleUpdate()V
    .locals 1

    .line 549
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mUpdatePending:Z

    if-eqz v0, :cond_0

    return-void

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 553
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x1

    .line 554
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mUpdatePending:Z

    return-void
.end method

.method public setAodFrontScrimAlpha(F)V
    .locals 2

    .line 501
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne v0, v1, :cond_2

    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentInFrontAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_2

    .line 503
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentInFrontAlpha:F

    .line 504
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrims()V

    .line 507
    :cond_2
    sget-object p0, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->setAodFrontScrimAlpha(F)V

    .line 508
    sget-object p0, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->setAodFrontScrimAlpha(F)V

    return-void
.end method

.method public setCurrentUser(I)V
    .locals 0

    return-void
.end method

.method public setExpansionAffectsAlpha(Z)V
    .locals 0

    .line 955
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mExpansionAffectsAlpha:Z

    return-void
.end method

.method public setHasBackdrop(Z)V
    .locals 4

    .line 964
    invoke-static {}, Lcom/android/systemui/statusbar/phone/ScrimState;->values()[Lcom/android/systemui/statusbar/phone/ScrimState;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 965
    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->setHasBackdrop(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 970
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne p1, v0, :cond_2

    .line 971
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->getBehindAlpha()F

    move-result p1

    .line 972
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_3

    .line 976
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentBehindAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_2

    .line 977
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentBehindAlpha:F

    .line 978
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrims()V

    :cond_2
    return-void

    .line 973
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scrim opacity is NaN for state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", back: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentBehindAlpha:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setKeyguardOccluded(Z)V
    .locals 0

    .line 959
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardOccluded:Z

    .line 960
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrims()V

    return-void
.end method

.method public setLaunchingAffordanceWithPreview(Z)V
    .locals 3

    .line 990
    invoke-static {}, Lcom/android/systemui/statusbar/phone/ScrimState;->values()[Lcom/android/systemui/statusbar/phone/ScrimState;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 991
    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->setLaunchingAffordanceWithPreview(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method setOnAnimationFinished(Ljava/lang/Runnable;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 776
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mOnAnimationFinished:Ljava/lang/Runnable;

    return-void
.end method

.method public setPanelExpansion(F)V
    .locals 3

    .line 399
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_5

    .line 402
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mExpansionFraction:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_4

    .line 403
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mExpansionFraction:F

    .line 405
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->KEYGUARD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v2

    :goto_1
    if-eqz p1, :cond_4

    .line 407
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mExpansionAffectsAlpha:Z

    if-nez p1, :cond_2

    goto :goto_2

    .line 411
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->applyExpansionToAlpha()V

    .line 413
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mUpdatePending:Z

    if-eqz p1, :cond_3

    return-void

    .line 417
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setOrAdaptCurrentAnimation(Landroid/view/View;)V

    .line 418
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setOrAdaptCurrentAnimation(Landroid/view/View;)V

    .line 420
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ScrimView;->getViewAlpha()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->dispatchScrimState(F)V

    .line 424
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWallpaperVisibilityTimedOut:Z

    if-eqz p1, :cond_4

    .line 425
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWallpaperVisibilityTimedOut:Z

    .line 426
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mTimeTicker:Lcom/android/systemui/util/AlarmTimeout;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getWallpaperAodDuration()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/systemui/util/AlarmTimeout;->schedule(JI)Z

    nop

    :cond_4
    :goto_2
    return-void

    .line 400
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Fraction should not be NaN"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setScrimBehindChangeRunnable(Ljava/lang/Runnable;)V
    .locals 0

    .line 892
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/ScrimView;->setChangeRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setWakeLockScreenSensorActive(Z)V
    .locals 4

    .line 531
    invoke-static {}, Lcom/android/systemui/statusbar/phone/ScrimState;->values()[Lcom/android/systemui/statusbar/phone/ScrimState;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 532
    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->setWakeLockScreenSensorActive(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 535
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne p1, v0, :cond_2

    .line 536
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->getBehindAlpha()F

    move-result p1

    .line 537
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentBehindAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_2

    .line 538
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentBehindAlpha:F

    .line 539
    iget p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentBehindAlpha:F

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-nez p1, :cond_1

    .line 543
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrims()V

    goto :goto_1

    .line 540
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scrim opacity is NaN for state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", back: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentBehindAlpha:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public setWallpaperSupportsAmbientMode(Z)V
    .locals 2

    .line 929
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWallpaperSupportsAmbientMode:Z

    .line 930
    invoke-static {}, Lcom/android/systemui/statusbar/phone/ScrimState;->values()[Lcom/android/systemui/statusbar/phone/ScrimState;

    move-result-object p0

    const/4 v0, 0x0

    .line 931
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 932
    aget-object v1, p0, v0

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->setWallpaperSupportsAmbientMode(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public transitionTo(Lcom/android/systemui/statusbar/phone/ScrimState;)V
    .locals 1

    const/4 v0, 0x0

    .line 229
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->transitionTo(Lcom/android/systemui/statusbar/phone/ScrimState;Lcom/android/systemui/statusbar/phone/ScrimController$Callback;)V

    return-void
.end method

.method public transitionTo(Lcom/android/systemui/statusbar/phone/ScrimState;Lcom/android/systemui/statusbar/phone/ScrimController$Callback;)V
    .locals 5

    .line 233
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    .line 235
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    if-eq p0, p2, :cond_0

    .line 236
    invoke-interface {p2}, Lcom/android/systemui/statusbar/phone/ScrimController$Callback;->onFinished()V

    :cond_0
    return-void

    .line 239
    :cond_1
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/ScrimController;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State changed to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScrimController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->UNINITIALIZED:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq p1, v0, :cond_e

    .line 247
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 248
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    const-wide/16 v1, 0x1000

    .line 249
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/ScrimState;->getIndex()I

    move-result v3

    const-string v4, "scrim_state"

    invoke-static {v1, v2, v4, v3}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 251
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    if-eqz v1, :cond_3

    .line 252
    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/ScrimController$Callback;->onCancelled()V

    .line 254
    :cond_3
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    .line 256
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/ScrimState;->prepare(Lcom/android/systemui/statusbar/phone/ScrimState;)V

    const/4 p2, 0x0

    .line 257
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScreenBlankingCallbackCalled:Z

    const-wide/16 v1, 0x0

    .line 258
    iput-wide v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDelay:J

    .line 259
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->getBlanksScreen()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankScreen:Z

    .line 260
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->getAnimateChange()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z

    .line 261
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->getAnimationDuration()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDuration:J

    .line 262
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->getFrontTint()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentInFrontTint:I

    .line 263
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->getBehindTint()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentBehindTint:I

    .line 264
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->getFrontAlpha()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentInFrontAlpha:F

    .line 265
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->getBehindAlpha()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentBehindAlpha:F

    .line 266
    iget v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentBehindAlpha:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_d

    iget v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentInFrontAlpha:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_d

    .line 270
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->applyExpansionToAlpha()V

    .line 274
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->isLowPowerState()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 275
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->isLowPowerState()Z

    move-result v2

    xor-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 278
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPendingFrameCallback:Ljava/lang/Runnable;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 279
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v4, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 280
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPendingFrameCallback:Ljava/lang/Runnable;

    .line 282
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankingTransitionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 283
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankingTransitionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 284
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankingTransitionRunnable:Ljava/lang/Runnable;

    .line 289
    :cond_5
    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->BRIGHTNESS_MIRROR:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq p1, v1, :cond_6

    move p1, v3

    goto :goto_0

    :cond_6
    move p1, p2

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNeedsDrawableColorUpdate:Z

    .line 295
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->isLowPowerState()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 296
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->holdWakeLock()V

    .line 301
    :cond_7
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWallpaperVisibilityTimedOut:Z

    .line 302
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->shouldFadeAwayWallpaper()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 303
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mTimeTicker:Lcom/android/systemui/util/AlarmTimeout;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getWallpaperAodDuration()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2, v3}, Lcom/android/systemui/util/AlarmTimeout;->schedule(JI)Z

    goto :goto_1

    .line 306
    :cond_8
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mTimeTicker:Lcom/android/systemui/util/AlarmTimeout;

    invoke-virtual {p1}, Lcom/android/systemui/util/AlarmTimeout;->cancel()V

    .line 309
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->needsSlowUnlockTransition()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object p2, Lcom/android/systemui/statusbar/phone/ScrimState;->UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne p1, p2, :cond_9

    .line 312
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    new-instance p2, Lcom/android/systemui/statusbar/phone/-$$Lambda$5DY8P9cXHTvbVZZOVB_VSCJUZk0;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$5DY8P9cXHTvbVZZOVB_VSCJUZk0;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    const-wide/16 v0, 0x10

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    const-wide/16 p1, 0x64

    .line 313
    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDelay:J

    goto :goto_2

    .line 314
    :cond_9
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result p1

    if-nez p1, :cond_a

    sget-object p1, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq v0, p1, :cond_b

    :cond_a
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object p2, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne p1, p2, :cond_c

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 315
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayNeedsBlanking()Z

    move-result p1

    if-nez p1, :cond_c

    .line 319
    :cond_b
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->onPreDraw()Z

    goto :goto_2

    .line 321
    :cond_c
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->scheduleUpdate()V

    .line 324
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ScrimView;->getViewAlpha()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->dispatchScrimState(F)V

    return-void

    .line 267
    :cond_d
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scrim opacity is NaN for state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", front: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentInFrontAlpha:F

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", back: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentBehindAlpha:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 244
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot change to UNINITIALIZED."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected updateScrims()V
    .locals 6

    .line 559
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNeedsDrawableColorUpdate:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 560
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNeedsDrawableColorUpdate:Z

    .line 562
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ScrimView;->getViewAlpha()F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankScreen:Z

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 563
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ScrimView;->getViewAlpha()F

    move-result v4

    cmpl-float v3, v4, v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankScreen:Z

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 564
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-virtual {v4, v5, v0}, Lcom/android/systemui/statusbar/ScrimView;->setColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V

    .line 565
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-virtual {v0, v4, v3}, Lcom/android/systemui/statusbar/ScrimView;->setColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V

    .line 568
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-virtual {v0}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->supportsDarkText()Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v0, -0x1000000

    goto :goto_2

    :cond_2
    const/4 v0, -0x1

    .line 569
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-virtual {v3}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->getMainColor()I

    move-result v3

    const/high16 v4, 0x40900000    # 4.5f

    .line 570
    invoke-static {v0, v3, v4}, Lcom/android/internal/graphics/ColorUtils;->calculateMinimumBackgroundAlpha(IIF)I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v0, v3

    .line 572
    iget v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehindAlphaResValue:F

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehindAlpha:F

    .line 573
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ScrimView;->getViewAlpha()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->dispatchScrimState(F)V

    .line 578
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v3, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq v0, v3, :cond_4

    sget-object v3, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne v0, v3, :cond_5

    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWallpaperVisibilityTimedOut:Z

    if-eqz v0, :cond_5

    move v0, v1

    goto :goto_3

    :cond_5
    move v0, v2

    .line 581
    :goto_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v4, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq v3, v4, :cond_6

    sget-object v4, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne v3, v4, :cond_7

    :cond_6
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardOccluded:Z

    if-eqz v3, :cond_7

    goto :goto_4

    :cond_7
    move v1, v2

    :goto_4
    if-nez v0, :cond_8

    if-eqz v1, :cond_9

    :cond_8
    const/high16 v0, 0x3f800000    # 1.0f

    .line 584
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentBehindAlpha:F

    .line 587
    :cond_9
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentInFrontAlpha:F

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimInFrontAlpha(F)V

    .line 588
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentBehindAlpha:F

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimBehindAlpha(F)V

    .line 590
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->dispatchScrimsVisible()V

    return-void
.end method
