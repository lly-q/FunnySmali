.class public abstract Lcom/android/systemui/statusbar/phone/PanelView;
.super Landroid/widget/FrameLayout;
.source "PanelView.java"


# instance fields
.field private mAnimateAfterExpanding:Z

.field private mAnimatingOnDown:Z

.field mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

.field private mBounceInterpolator:Landroid/view/animation/Interpolator;

.field private mClosing:Z

.field private mCollapsedAndHeadsUpOnDown:Z

.field protected mDownTime:J

.field private mExpandLatencyTracking:Z

.field private mExpandedFraction:F

.field protected mExpandedHeight:F

.field protected mExpanding:Z

.field protected mExpansionListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/phone/PanelExpansionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field private mFixedDuration:I

.field private mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private mFlingAnimationUtilsClosing:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private mFlingAnimationUtilsDismissing:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private final mFlingCollapseRunnable:Ljava/lang/Runnable;

.field private mGestureWaitForTouchSlop:Z

.field private mHasLayoutedSinceDown:Z

.field protected mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

.field private mHeightAnimator:Landroid/animation/ValueAnimator;

.field protected mHintAnimationRunning:Z

.field private mHintDistance:F

.field private mIgnoreXTouchSlop:Z

.field private mInitialOffsetOnTouch:F

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mInstantExpanding:Z

.field private mJustPeeked:Z

.field protected mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

.field protected final mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field protected mLaunchingNotification:Z

.field private mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

.field private mMinExpandHeight:F

.field private mMotionAborted:Z

.field private mNextCollapseSpeedUpFactor:F

.field private mNotificationsDragEnabled:Z

.field private mOverExpandedBeforeFling:Z

.field private mPanelClosedOnDown:Z

.field private mPanelUpdateWhenAnimatorEnds:Z

.field private mPeekAnimator:Landroid/animation/ObjectAnimator;

.field private mPeekHeight:F

.field private mPeekTouching:Z

.field protected final mPostCollapseRunnable:Ljava/lang/Runnable;

.field protected mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field protected final mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field private mTouchAboveFalsingThreshold:Z

.field private mTouchDisabled:Z

.field protected mTouchSlop:I

.field private mTouchSlopExceeded:Z

.field protected mTouchSlopExceededBeforeDown:Z

.field private mTouchStartedInEmptyArea:Z

.field protected mTracking:Z

.field private mTrackingPointer:I

.field private mUnlockFalsingThreshold:I

.field private mUpdateFlingOnLayout:Z

.field private mUpdateFlingVelocity:F

.field private mUpwardsWhenTresholdReached:Z

.field private final mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVibrateOnOpening:Z

.field private final mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

.field private mViewName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 207
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    new-instance p2, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    invoke-direct {p2}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    const/4 p2, -0x1

    .line 71
    iput p2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFixedDuration:I

    .line 72
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpansionListeners:Ljava/util/ArrayList;

    const/4 p2, 0x0

    .line 85
    iput p2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    .line 86
    iput p2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    .line 109
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/high16 p2, 0x3f800000    # 1.0f

    .line 140
    iput p2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mNextCollapseSpeedUpFactor:F

    .line 146
    const-class p2, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 147
    const-class p2, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 148
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 974
    new-instance p2, Lcom/android/systemui/statusbar/phone/PanelView$3;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/PanelView$3;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingCollapseRunnable:Ljava/lang/Runnable;

    .line 1208
    new-instance p2, Lcom/android/systemui/statusbar/phone/PanelView$7;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/PanelView$7;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPostCollapseRunnable:Ljava/lang/Runnable;

    .line 208
    new-instance p2, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    const v0, 0x3f19999a    # 0.6f

    invoke-direct {p2, p1, v0, v0}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;FF)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 210
    new-instance p2, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {p2, p1, v1, v0}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;FF)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingAnimationUtilsClosing:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 212
    new-instance p2, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    const/high16 v4, 0x3f000000    # 0.5f

    const v5, 0x3e4ccccd    # 0.2f

    const v6, 0x3f19999a    # 0.6f

    const v7, 0x3f570a3d    # 0.84f

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;FFFF)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingAnimationUtilsDismissing:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 215
    new-instance p1, Lcom/android/systemui/statusbar/phone/BounceInterpolator;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/phone/BounceInterpolator;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBounceInterpolator:Landroid/view/animation/Interpolator;

    .line 216
    const-class p1, Lcom/android/systemui/plugins/FalsingManager;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/FalsingManager;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 218
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$bool;->config_enableNotificationShadeDrag:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mNotificationsDragEnabled:Z

    .line 219
    const-class p1, Lcom/android/systemui/statusbar/VibratorHelper;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/VibratorHelper;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    .line 220
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$bool;->config_vibrateOnIconAnimation:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVibrateOnOpening:Z

    return-void
.end method

.method private abortAnimations()V
    .locals 1

    .line 1055
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelPeek()V

    .line 1056
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelHeightAnimator()V

    .line 1057
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPostCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1058
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/PanelView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/PanelView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->setAnimator(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/PanelView;)F
    .locals 0

    .line 58
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mNextCollapseSpeedUpFactor:F

    return p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/PanelView;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInstantExpanding:Z

    return p0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/phone/PanelView;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInstantExpanding:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/PanelView;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mAnimateAfterExpanding:Z

    return p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingStarted()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/PanelView;Ljava/lang/Runnable;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->startUnlockHintAnimationPhase2(Ljava/lang/Runnable;)V

    return-void
.end method

.method private addMovement(Landroid/view/MotionEvent;)V
    .locals 3

    .line 235
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    .line 236
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    .line 237
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 238
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    neg-float p0, v0

    neg-float v0, v1

    .line 239
    invoke-virtual {p1, p0, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    return-void
.end method

.method private createHeightAnimator(F)Landroid/animation/ValueAnimator;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1173
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 1174
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelView$IA-IF_ME3fPevHucfSNm-kDD_eY;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelView$IA-IF_ME3fPevHucfSNm-kDD_eY;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method private endClosing()V
    .locals 1

    .line 647
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 648
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    .line 649
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onClosingFinished()V

    :cond_0
    return-void
.end method

.method private endMotionEvent(Landroid/view/MotionEvent;FFZ)V
    .locals 8

    const/4 v0, -0x1

    .line 465
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    .line 466
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlopExceeded:Z

    if-nez v0, :cond_4

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchX:F

    sub-float v0, p2, v0

    .line 467
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-gtz v0, :cond_4

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    sub-float v0, p3, v0

    .line 468
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-gtz v0, :cond_4

    .line 469
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v1, :cond_4

    if-eqz p4, :cond_1

    goto :goto_0

    .line 497
    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPanelClosedOnDown:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result p1

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 498
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isKeyguardFadingAway()Z

    move-result p1

    if-nez p1, :cond_3

    .line 499
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iget-wide p3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mDownTime:J

    sub-long/2addr p1, p3

    .line 500
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p3

    int-to-long p3, p3

    cmp-long p1, p1, p3

    if-gez p1, :cond_2

    const-wide/16 p1, 0x168

    .line 502
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getPeekHeight()F

    move-result p3

    invoke-direct {p0, p1, p2, p3, v3}, Lcom/android/systemui/statusbar/phone/PanelView;->runPeekAnimation(JFZ)V

    goto/16 :goto_4

    .line 505
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPostCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_4

    .line 507
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result p1

    if-nez p1, :cond_9

    .line 508
    iget p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchX:F

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->onEmptySpaceClick(F)Z

    move-result p1

    .line 509
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStopped(Z)V

    goto/16 :goto_4

    .line 471
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    invoke-virtual {v0, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 472
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    .line 473
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 474
    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v4

    float-to-double v4, v4

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v6

    float-to-double v6, v6

    .line 473
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v4, v4

    .line 476
    invoke-virtual {p0, v0, v4, p2, p3}, Lcom/android/systemui/statusbar/phone/PanelView;->flingExpands(FFFF)Z

    move-result v4

    if-nez v4, :cond_6

    .line 477
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eq p1, v1, :cond_6

    if-eqz p4, :cond_5

    goto :goto_1

    :cond_5
    move p1, v2

    goto :goto_2

    :cond_6
    :goto_1
    move p1, v3

    .line 479
    :goto_2
    iget-boolean p4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchAboveFalsingThreshold:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 480
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isFalsingThresholdNeeded()Z

    move-result v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 481
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->isWakeUpComingFromTouch()Z

    move-result v4

    .line 479
    invoke-static {p1, p4, v1, v4}, Lcom/android/systemui/doze/DozeLog;->traceFling(ZZZZ)V

    if-nez p1, :cond_7

    .line 483
    iget-object p4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p4

    if-ne p4, v3, :cond_7

    .line 484
    iget-object p4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p4}, Lcom/android/systemui/statusbar/phone/StatusBar;->getDisplayDensity()F

    move-result p4

    .line 485
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    sub-float v1, p3, v1

    div-float/2addr v1, p4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v1, v1

    div-float p4, v0, p4

    .line 486
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    float-to-int p4, p4

    .line 487
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    const/16 v5, 0xba

    invoke-virtual {v4, v5, v1, p4}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->write(III)V

    .line 491
    :cond_7
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/phone/PanelView;->isFalseTouch(FF)Z

    move-result p2

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelView;->fling(FZZ)V

    .line 492
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStopped(Z)V

    if-eqz p1, :cond_8

    .line 493
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPanelClosedOnDown:Z

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHasLayoutedSinceDown:Z

    if-nez p1, :cond_8

    goto :goto_3

    :cond_8
    move v3, v2

    :goto_3
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUpdateFlingOnLayout:Z

    .line 494
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUpdateFlingOnLayout:Z

    if-eqz p1, :cond_9

    .line 495
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUpdateFlingVelocity:F

    .line 512
    :cond_9
    :goto_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    .line 513
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekTouching:Z

    return-void
.end method

.method private getFalsingThreshold()I
    .locals 1

    .line 522
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isWakeUpComingFromTouch()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3fc00000    # 1.5f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 523
    :goto_0
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUnlockFalsingThreshold:I

    int-to-float p0, p0

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method private isDirectionUpwards(FF)Z
    .locals 1

    .line 440
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchX:F

    sub-float/2addr p1, v0

    .line 441
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    sub-float/2addr p2, p0

    const/4 p0, 0x0

    cmpl-float p0, p2, p0

    const/4 v0, 0x0

    if-ltz p0, :cond_0

    return v0

    .line 445
    :cond_0
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private isFalseTouch(FF)Z
    .locals 3

    .line 703
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isFalsingThresholdNeeded()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 706
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/FalsingManager;->isClassiferEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 707
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTouch()Z

    move-result p0

    return p0

    .line 709
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchAboveFalsingThreshold:Z

    const/4 v2, 0x1

    if-nez v0, :cond_2

    return v2

    .line 712
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUpwardsWhenTresholdReached:Z

    if-eqz v0, :cond_3

    return v1

    .line 715
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelView;->isDirectionUpwards(FF)Z

    move-result p0

    xor-int/2addr p0, v2

    return p0
.end method

.method private notifyExpandingStarted()V
    .locals 1

    .line 158
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpanding:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 159
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpanding:Z

    .line 160
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onExpandingStarted()V

    :cond_0
    return-void
.end method

.method private runPeekAnimation(JFZ)V
    .locals 3

    .line 173
    iput p3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekHeight:F

    .line 175
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz p3, :cond_0

    return-void

    .line 178
    :cond_0
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-eqz p3, :cond_1

    .line 179
    invoke-virtual {p3}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_1
    const/4 p3, 0x1

    new-array v0, p3, [F

    const/4 v1, 0x0

    .line 181
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekHeight:F

    aput v2, v0, v1

    const-string v1, "expandedHeight"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 182
    invoke-virtual {v0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    .line 183
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    sget-object p2, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 184
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    new-instance p2, Lcom/android/systemui/statusbar/phone/PanelView$1;

    invoke-direct {p2, p0, p4}, Lcom/android/systemui/statusbar/phone/PanelView$1;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;Z)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 201
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingStarted()V

    .line 202
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 203
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    return-void
.end method

.method private setAnimator(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1146
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_0

    .line 1147
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPanelUpdateWhenAnimatorEnds:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1148
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPanelUpdateWhenAnimatorEnds:Z

    .line 1149
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->requestPanelHeightUpdate()V

    :cond_0
    return-void
.end method

.method private startOpening(Landroid/view/MotionEvent;)V
    .locals 4

    .line 409
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getOpeningHeight()F

    move-result v0

    const-wide/16 v1, 0xc8

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/android/systemui/statusbar/phone/PanelView;->runPeekAnimation(JFZ)V

    .line 411
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyBarPanelExpansionChanged()V

    .line 412
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->maybeVibrateOnOpening()V

    .line 417
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getDisplayWidth()F

    move-result v0

    .line 418
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getDisplayHeight()F

    move-result v1

    .line 419
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getRotation()I

    move-result v2

    .line 421
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    .line 422
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    div-float/2addr v3, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    .line 423
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    div-float/2addr p1, v1

    mul-float/2addr p1, v0

    float-to-int p1, p1

    const/16 v0, 0x530

    .line 421
    invoke-virtual {p0, v0, v3, p1, v2}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->writeAtFractionalPosition(IIII)V

    return-void
.end method

.method private startUnlockHintAnimationPhase1(Ljava/lang/Runnable;)V
    .locals 7

    .line 1100
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintDistance:F

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1101
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->createHeightAnimator(F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    .line 1102
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1103
    sget-object v3, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1104
    new-instance v3, Lcom/android/systemui/statusbar/phone/PanelView$5;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView$5;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1122
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1123
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->setAnimator(Landroid/animation/ValueAnimator;)V

    const/4 p1, 0x2

    new-array p1, p1, [Landroid/view/View;

    .line 1125
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 1126
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getIndicationArea()Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, p1, v3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 1127
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getAmbientIndicationContainer()Landroid/view/View;

    move-result-object v0

    const/4 v4, 0x1

    aput-object v0, p1, v4

    .line 1128
    array-length v0, p1

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v4, p1, v3

    if-nez v4, :cond_0

    goto :goto_1

    .line 1132
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintDistance:F

    neg-float v6, v6

    .line 1133
    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    .line 1134
    invoke-virtual {v5, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    sget-object v6, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 1135
    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelView$NxwxpLj3ZElyZw-bMmniBqBlhdY;

    invoke-direct {v6, p0, v4}, Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelView$NxwxpLj3ZElyZw-bMmniBqBlhdY;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;Landroid/view/View;)V

    .line 1136
    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 1141
    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private startUnlockHintAnimationPhase2(Ljava/lang/Runnable;)V
    .locals 3

    .line 1157
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->createHeightAnimator(F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1c2

    .line 1158
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1159
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBounceInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1160
    new-instance v1, Lcom/android/systemui/statusbar/phone/PanelView$6;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView$6;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1168
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1169
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->setAnimator(Landroid/animation/ValueAnimator;)V

    return-void
.end method


# virtual methods
.method public addExpansionListener(Lcom/android/systemui/statusbar/phone/PanelExpansionListener;)V
    .locals 0

    .line 1191
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpansionListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public canPanelBeCollapsed()Z
    .locals 1

    .line 971
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected cancelHeightAnimator()V
    .locals 1

    .line 637
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 638
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 639
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPanelUpdateWhenAnimatorEnds:Z

    .line 641
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 643
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->endClosing()V

    return-void
.end method

.method public cancelPeek()V
    .locals 2

    .line 984
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 986
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 992
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyBarPanelExpansionChanged()V

    :cond_1
    return-void
.end method

.method public collapse(ZF)V
    .locals 2

    .line 955
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->canPanelBeCollapsed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 956
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelHeightAnimator()V

    .line 957
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingStarted()V

    const/4 v0, 0x1

    .line 960
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    if-eqz p1, :cond_0

    .line 962
    iput p2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mNextCollapseSpeedUpFactor:F

    .line 963
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingCollapseRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x78

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 965
    invoke-virtual {p0, p1, v0, p2, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->fling(FZFZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public collapseWithDuration(I)V
    .locals 1

    .line 1259
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFixedDuration:I

    const/4 p1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1260
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->collapse(ZF)V

    const/4 p1, -0x1

    .line 1261
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFixedDuration:I

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    const/16 p1, 0xb

    new-array p1, p1, [Ljava/lang/Object;

    .line 1223
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    aput-object p3, p1, v0

    .line 1224
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedHeight()F

    move-result p3

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    const/4 v0, 0x1

    aput-object p3, p1, v0

    .line 1225
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v0, 0x2

    aput-object p3, p1, v0

    .line 1226
    iget-boolean p3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    const-string v0, "T"

    const-string v1, "f"

    if-eqz p3, :cond_0

    move-object p3, v0

    goto :goto_0

    :cond_0
    move-object p3, v1

    :goto_0
    const/4 v2, 0x3

    aput-object p3, p1, v2

    const/4 p3, 0x4

    .line 1227
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-eqz v2, :cond_1

    move-object v2, v0

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    aput-object v2, p1, p3

    const/4 p3, 0x5

    .line 1228
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    if-eqz v2, :cond_2

    move-object v2, v0

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    aput-object v2, p1, p3

    const/4 p3, 0x6

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    aput-object v2, p1, p3

    const/4 p3, 0x7

    const-string v3, " (started)"

    const-string v4, ""

    if-eqz v2, :cond_3

    .line 1229
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v3

    goto :goto_3

    :cond_3
    move-object v2, v4

    :goto_3
    aput-object v2, p1, p3

    const/16 p3, 0x8

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    aput-object v2, p1, p3

    const/16 p3, 0x9

    if-eqz v2, :cond_4

    .line 1230
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    move-object v3, v4

    :goto_4
    aput-object v3, p1, p3

    const/16 p3, 0xa

    .line 1231
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchDisabled:Z

    if-eqz p0, :cond_5

    goto :goto_5

    :cond_5
    move-object v0, v1

    :goto_5
    aput-object v0, p1, p3

    const-string p0, "[PanelView(%s): expandedHeight=%f maxPanelHeight=%d closing=%s tracking=%s justPeeked=%s peekAnim=%s%s timeAnim=%s%s touchDisabled=%s]"

    .line 1220
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public expand(Z)V
    .locals 1

    .line 997
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isCollapsing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1001
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInstantExpanding:Z

    .line 1002
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mAnimateAfterExpanding:Z

    const/4 p1, 0x0

    .line 1003
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUpdateFlingOnLayout:Z

    .line 1004
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->abortAnimations()V

    .line 1005
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelPeek()V

    .line 1006
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-eqz p1, :cond_1

    .line 1007
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStopped(Z)V

    .line 1009
    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpanding:Z

    if-eqz p1, :cond_2

    .line 1010
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingFinished()V

    .line 1012
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyBarPanelExpansionChanged()V

    .line 1016
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/statusbar/phone/PanelView$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelView$4;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1039
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method protected fling(FZ)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 719
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->fling(FZFZ)V

    return-void
.end method

.method protected fling(FZFZ)V
    .locals 7

    .line 728
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelPeek()V

    if-eqz p2, :cond_0

    .line 729
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v4, v0

    if-nez p2, :cond_1

    const/4 v0, 0x1

    .line 731
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    :cond_1
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v5, p3

    move v6, p4

    .line 733
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/PanelView;->flingToHeight(FZFFZ)V

    return-void
.end method

.method protected fling(FZZ)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 723
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/systemui/statusbar/phone/PanelView;->fling(FZFZ)V

    return-void
.end method

.method protected flingExpands(FFFF)Z
    .locals 2

    .line 679
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/FalsingManager;->isUnlockingDisabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 683
    :cond_0
    invoke-direct {p0, p3, p4}, Lcom/android/systemui/statusbar/phone/PanelView;->isFalseTouch(FF)Z

    move-result p3

    if-eqz p3, :cond_1

    return v1

    .line 686
    :cond_1
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->getMinVelocityPxPerSecond()F

    move-result p3

    cmpg-float p2, p2, p3

    if-gez p2, :cond_2

    .line 687
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->shouldExpandWhenNotFlinging()Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected flingToHeight(FZFFZ)V
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 741
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->fullyExpandedClearAllVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    .line 742
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getClearAllHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 743
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isClearAllVisible()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    .line 745
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result p3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getClearAllHeight()I

    move-result v3

    sub-int/2addr p3, v3

    int-to-float p3, p3

    :cond_1
    move v6, p3

    .line 747
    iget p3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    cmpl-float p3, v6, p3

    if-eqz p3, :cond_a

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getOverExpansionAmount()F

    move-result p3

    const/4 v9, 0x0

    cmpl-float p3, p3, v9

    if-lez p3, :cond_2

    if-eqz p2, :cond_2

    goto/16 :goto_4

    .line 751
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getOverExpansionAmount()F

    move-result p3

    cmpl-float p3, p3, v9

    if-lez p3, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mOverExpandedBeforeFling:Z

    .line 752
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/phone/PanelView;->createHeightAnimator(F)Landroid/animation/ValueAnimator;

    move-result-object p3

    if-eqz p2, :cond_5

    if-eqz p5, :cond_4

    cmpg-float p2, p1, v9

    if-gez p2, :cond_4

    move p1, v9

    .line 757
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p2

    int-to-float v8, p2

    move-object v4, p3

    move v7, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFFF)V

    cmpl-float p1, p1, v9

    if-nez p1, :cond_9

    const-wide/16 p1, 0x15e

    .line 759
    invoke-virtual {p3, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_3

    .line 762
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->shouldUseDismissingAnimation()Z

    move-result p2

    if-eqz p2, :cond_7

    cmpl-float p2, p1, v9

    if-nez p2, :cond_6

    .line 764
    sget-object p2, Lcom/android/systemui/Interpolators;->PANEL_CLOSE_ACCELERATED:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/high16 p2, 0x43480000    # 200.0f

    .line 765
    iget p5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p5, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p5, v0

    add-float/2addr p5, p2

    float-to-long v0, p5

    .line 766
    invoke-virtual {p3, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_2

    .line 768
    :cond_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingAnimationUtilsDismissing:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    .line 769
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p2

    int-to-float v8, p2

    move-object v4, p3

    move v7, p1

    .line 768
    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFFF)V

    goto :goto_2

    .line 772
    :cond_7
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingAnimationUtilsClosing:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    .line 773
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p2

    int-to-float v8, p2

    move-object v4, p3

    move v7, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFFF)V

    :goto_2
    cmpl-float p1, p1, v9

    if-nez p1, :cond_8

    .line 778
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide p1

    long-to-float p1, p1

    div-float/2addr p1, p4

    float-to-long p1, p1

    invoke-virtual {p3, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 780
    :cond_8
    iget p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFixedDuration:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_9

    int-to-long p1, p1

    .line 781
    invoke-virtual {p3, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 784
    :cond_9
    :goto_3
    new-instance p1, Lcom/android/systemui/statusbar/phone/PanelView$2;

    invoke-direct {p1, p0, v2}, Lcom/android/systemui/statusbar/phone/PanelView$2;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;Z)V

    invoke-virtual {p3, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 804
    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/phone/PanelView;->setAnimator(Landroid/animation/ValueAnimator;)V

    .line 805
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 748
    :cond_a
    :goto_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingFinished()V

    return-void
.end method

.method protected abstract fullyExpandedClearAllVisible()Z
.end method

.method protected abstract getClearAllHeight()I
.end method

.method protected getCurrentExpandVelocity()F
    .locals 2

    .line 517
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 518
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p0

    return p0
.end method

.method public getExpandedFraction()F
    .locals 0

    .line 930
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    return p0
.end method

.method public getExpandedHeight()F
    .locals 0

    .line 926
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    return p0
.end method

.method protected abstract getMaxPanelHeight()I
.end method

.method protected abstract getOpeningHeight()F
.end method

.method protected abstract getOverExpansionAmount()F
.end method

.method protected abstract getOverExpansionPixels()F
.end method

.method protected abstract getPeekHeight()F
.end method

.method public instantCollapse()V
    .locals 1

    .line 1043
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->abortAnimations()V

    const/4 v0, 0x0

    .line 1044
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedFraction(F)V

    .line 1045
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpanding:Z

    if-eqz v0, :cond_0

    .line 1046
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingFinished()V

    .line 1048
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInstantExpanding:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1049
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInstantExpanding:Z

    .line 1050
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyBarPanelExpansionChanged()V

    :cond_1
    return-void
.end method

.method protected abstract isClearAllVisible()Z
.end method

.method public isCollapsing()Z
    .locals 1

    .line 942
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mLaunchingNotification:Z

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

.method public isFullyCollapsed()Z
    .locals 1

    .line 938
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    const/4 v0, 0x0

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFullyExpanded()Z
    .locals 1

    .line 934
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result p0

    int-to-float p0, p0

    cmpl-float p0, v0, p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected abstract isInContentBounds(FF)Z
.end method

.method protected abstract isPanelVisibleBecauseOfHeadsUp()Z
.end method

.method protected isScrolledToBottom()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isTracking()Z
    .locals 0

    .line 946
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    return p0
.end method

.method protected abstract isTrackingBlocked()Z
.end method

.method public isUnlockHintRunning()Z
    .locals 0

    .line 1093
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintAnimationRunning:Z

    return p0
.end method

.method public synthetic lambda$createHeightAnimator$3$PanelView(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1175
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedHeightInternal(F)V

    return-void
.end method

.method public synthetic lambda$setExpandedHeightInternal$0$PanelView()V
    .locals 1

    .line 867
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    return-void
.end method

.method public synthetic lambda$startUnlockHintAnimation$1$PanelView()V
    .locals 1

    .line 1076
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingFinished()V

    .line 1077
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onUnlockHintFinished()V

    const/4 v0, 0x0

    .line 1078
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintAnimationRunning:Z

    return-void
.end method

.method public synthetic lambda$startUnlockHintAnimationPhase1$2$PanelView(Landroid/view/View;)V
    .locals 2

    .line 1136
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    .line 1137
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x1c2

    .line 1138
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBounceInterpolator:Landroid/view/animation/Interpolator;

    .line 1139
    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 1140
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method protected loadDimens()V
    .locals 2

    .line 225
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 226
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 227
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlop:I

    .line 228
    sget v1, Lcom/android/systemui/R$dimen;->hint_move_distance:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintDistance:F

    .line 229
    sget v1, Lcom/android/systemui/R$dimen;->unlock_falsing_threshold:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUnlockFalsingThreshold:I

    return-void
.end method

.method protected maybeVibrateOnOpening()V
    .locals 1

    .line 428
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVibrateOnOpening:Z

    if-eqz v0, :cond_0

    .line 429
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/VibratorHelper;->vibrate(I)V

    :cond_0
    return-void
.end method

.method protected notifyBarPanelExpansionChanged()V
    .locals 4

    .line 1180
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1181
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-gtz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInstantExpanding:Z

    if-nez v3, :cond_1

    .line 1183
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isPanelVisibleBecauseOfHeadsUp()Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    .line 1181
    :goto_1
    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelExpansionChanged(FZ)V

    .line 1185
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpansionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 1186
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpansionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/PanelExpansionListener;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    invoke-interface {v0, v2, v3}, Lcom/android/systemui/statusbar/phone/PanelExpansionListener;->onPanelExpansionChanged(FZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method protected final notifyExpandingFinished()V
    .locals 1

    .line 165
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->endClosing()V

    .line 166
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpanding:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 167
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpanding:Z

    .line 168
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onExpandingFinished()V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 812
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 813
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mViewName:Ljava/lang/String;

    return-void
.end method

.method protected onClosingFinished()V
    .locals 0

    .line 1062
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onClosingFinished()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 669
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 670
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->loadDimens()V

    return-void
.end method

.method protected onEmptySpaceClick(F)Z
    .locals 0

    .line 1202
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintAnimationRunning:Z

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1205
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onMiddleClicked()Z

    move-result p0

    return p0
.end method

.method protected onExpandingFinished()V
    .locals 0

    .line 151
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onExpandingFinished()V

    return-void
.end method

.method protected onExpandingStarted()V
    .locals 0

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 663
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 664
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->loadDimens()V

    return-void
.end method

.method protected abstract onHeightUpdated(F)V
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 546
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInstantExpanding:Z

    const/4 v1, 0x0

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mNotificationsDragEnabled:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchDisabled:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mMotionAborted:Z

    if-eqz v0, :cond_0

    .line 547
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 559
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_1

    .line 562
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    move v0, v1

    .line 564
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 565
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 566
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isScrolledToBottom()Z

    move-result v3

    .line 568
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_9

    if-eq v4, v5, :cond_8

    const/4 v6, 0x2

    if-eq v4, v6, :cond_5

    const/4 v0, 0x3

    if-eq v4, v0, :cond_8

    const/4 v0, 0x5

    if-eq v4, v0, :cond_4

    const/4 v0, 0x6

    if-eq v4, v0, :cond_2

    goto/16 :goto_1

    .line 595
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 596
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    if-ne v2, v0, :cond_e

    .line 598
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    if-eq v2, v0, :cond_3

    move v5, v1

    .line 599
    :cond_3
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    .line 600
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchX:F

    .line 601
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    goto/16 :goto_1

    .line 605
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p1

    if-ne p1, v5, :cond_e

    .line 606
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mMotionAborted:Z

    .line 607
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_1

    .line 611
    :cond_5
    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    sub-float v4, v0, v4

    .line 612
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->addMovement(Landroid/view/MotionEvent;)V

    if-nez v3, :cond_6

    .line 613
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchStartedInEmptyArea:Z

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mAnimatingOnDown:Z

    if-eqz p1, :cond_e

    .line 614
    :cond_6
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 615
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlop:I

    neg-int v6, v3

    int-to-float v6, v6

    cmpg-float v4, v4, v6

    if-ltz v4, :cond_7

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mAnimatingOnDown:Z

    if-eqz v4, :cond_e

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-lez v3, :cond_e

    :cond_7
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchX:F

    sub-float v3, v2, v3

    .line 616
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float p1, p1, v3

    if-lez p1, :cond_e

    .line 617
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelHeightAnimator()V

    .line 618
    iget p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {p0, v2, v0, v5, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->startExpandMotion(FFZF)V

    return v5

    .line 625
    :cond_8
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_1

    .line 570
    :cond_9
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->userActivity()V

    .line 571
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_a

    move v3, v5

    goto :goto_0

    :cond_a
    move v3, v1

    :goto_0
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mAnimatingOnDown:Z

    const/4 v3, 0x0

    .line 572
    iput v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mMinExpandHeight:F

    .line 573
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mDownTime:J

    .line 574
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mAnimatingOnDown:Z

    if-eqz v3, :cond_b

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    if-eqz v3, :cond_b

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintAnimationRunning:Z

    if-eqz v3, :cond_c

    :cond_b
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v3, :cond_d

    .line 576
    :cond_c
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelHeightAnimator()V

    .line 577
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelPeek()V

    .line 578
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlopExceeded:Z

    return v5

    .line 581
    :cond_d
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    .line 582
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchX:F

    .line 583
    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->isInContentBounds(FF)Z

    move-result v0

    xor-int/2addr v0, v5

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchStartedInEmptyArea:Z

    .line 584
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlopExceededBeforeDown:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlopExceeded:Z

    .line 585
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    .line 586
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mMotionAborted:Z

    .line 587
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPanelClosedOnDown:Z

    .line 588
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mCollapsedAndHeadsUpOnDown:Z

    .line 589
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHasLayoutedSinceDown:Z

    .line 590
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUpdateFlingOnLayout:Z

    .line 591
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchAboveFalsingThreshold:Z

    .line 592
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->addMovement(Landroid/view/MotionEvent;)V

    :cond_e
    :goto_1
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 827
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 828
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->onPanelLaidOut()V

    .line 829
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->requestPanelHeightUpdate()V

    const/4 p1, 0x1

    .line 830
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHasLayoutedSinceDown:Z

    .line 831
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUpdateFlingOnLayout:Z

    if-eqz p2, :cond_0

    .line 832
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->abortAnimations()V

    .line 833
    iget p2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUpdateFlingVelocity:F

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->fling(FZ)V

    const/4 p1, 0x0

    .line 834
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUpdateFlingOnLayout:Z

    :cond_0
    return-void
.end method

.method protected abstract onMiddleClicked()Z
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 263
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInstantExpanding:Z

    const/4 v1, 0x0

    if-nez v0, :cond_21

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchDisabled:Z

    const/4 v2, 0x3

    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v2, :cond_21

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mMotionAborted:Z

    if-eqz v0, :cond_1

    .line 265
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_8

    .line 270
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mNotificationsDragEnabled:Z

    const/4 v3, 0x1

    if-nez v0, :cond_3

    .line 271
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-eqz p1, :cond_2

    .line 273
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStopped(Z)V

    :cond_2
    return v1

    .line 279
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 280
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v3, :cond_4

    .line 281
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/PanelView;->expand(Z)V

    :cond_4
    return v3

    .line 295
    :cond_5
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_6

    .line 298
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    move v0, v1

    .line 300
    :cond_6
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 301
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 303
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    if-nez v5, :cond_9

    .line 304
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->shouldGestureWaitForTouchSlop()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mGestureWaitForTouchSlop:Z

    .line 305
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {p0, v4, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->shouldGestureIgnoreXTouchSlop(FF)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_0

    :cond_7
    move v5, v1

    goto :goto_1

    :cond_8
    :goto_0
    move v5, v3

    :goto_1
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mIgnoreXTouchSlop:Z

    .line 308
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_17

    if-eq v5, v3, :cond_16

    const/4 v7, 0x2

    if-eq v5, v7, :cond_d

    if-eq v5, v2, :cond_16

    const/4 v2, 0x5

    if-eq v5, v2, :cond_c

    const/4 v0, 0x6

    if-eq v5, v0, :cond_a

    goto/16 :goto_7

    .line 338
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 339
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    if-ne v2, v0, :cond_1f

    .line 341
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    if-eq v2, v0, :cond_b

    move v0, v1

    goto :goto_2

    :cond_b
    move v0, v3

    .line 342
    :goto_2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 343
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 344
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    .line 345
    iget p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {p0, v4, v2, v3, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->startExpandMotion(FFZF)V

    goto/16 :goto_7

    .line 349
    :cond_c
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v2

    if-ne v2, v3, :cond_1f

    .line 350
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mMotionAborted:Z

    .line 351
    invoke-direct {p0, p1, v4, v0, v3}, Lcom/android/systemui/statusbar/phone/PanelView;->endMotionEvent(Landroid/view/MotionEvent;FFZ)V

    return v1

    .line 356
    :cond_d
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->addMovement(Landroid/view/MotionEvent;)V

    .line 357
    iget p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    sub-float p1, v0, p1

    .line 361
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v2, v2, v5

    if-lez v2, :cond_10

    .line 362
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchX:F

    sub-float v5, v4, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v2, v2, v5

    if-gtz v2, :cond_e

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mIgnoreXTouchSlop:Z

    if-eqz v2, :cond_10

    .line 364
    :cond_e
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlopExceeded:Z

    .line 365
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mGestureWaitForTouchSlop:Z

    if-eqz v2, :cond_10

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-nez v2, :cond_10

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mCollapsedAndHeadsUpOnDown:Z

    if-nez v2, :cond_10

    .line 366
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    if-nez v2, :cond_f

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialOffsetOnTouch:F

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_f

    .line 367
    iget p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {p0, v4, v0, v1, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->startExpandMotion(FFZF)V

    move p1, v6

    .line 370
    :cond_f
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelHeightAnimator()V

    .line 371
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStarted()V

    .line 374
    :cond_10
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialOffsetOnTouch:F

    add-float/2addr v2, p1

    invoke-static {v6, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 375
    iget v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekHeight:F

    cmpl-float v5, v2, v5

    if-lez v5, :cond_12

    .line 376
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v5, :cond_11

    .line 377
    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 379
    :cond_11
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    goto :goto_3

    .line 380
    :cond_12
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-nez v5, :cond_13

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    if-eqz v5, :cond_13

    .line 383
    iget v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    iput v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialOffsetOnTouch:F

    .line 384
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    .line 385
    iput v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mMinExpandHeight:F

    .line 386
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    .line 388
    :cond_13
    :goto_3
    iget v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mMinExpandHeight:F

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    neg-float p1, p1

    .line 389
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getFalsingThreshold()I

    move-result v5

    int-to-float v5, v5

    cmpl-float p1, p1, v5

    if-ltz p1, :cond_14

    .line 390
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchAboveFalsingThreshold:Z

    .line 391
    invoke-direct {p0, v4, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->isDirectionUpwards(FF)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUpwardsWhenTresholdReached:Z

    .line 393
    :cond_14
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    if-nez p1, :cond_1f

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mGestureWaitForTouchSlop:Z

    if-eqz p1, :cond_15

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-eqz p1, :cond_1f

    .line 394
    :cond_15
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isTrackingBlocked()Z

    move-result p1

    if-nez p1, :cond_1f

    .line 395
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedHeightInternal(F)V

    goto/16 :goto_7

    .line 401
    :cond_16
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->addMovement(Landroid/view/MotionEvent;)V

    .line 402
    invoke-direct {p0, p1, v4, v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->endMotionEvent(Landroid/view/MotionEvent;FFZ)V

    goto/16 :goto_7

    .line 310
    :cond_17
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {p0, v4, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/PanelView;->startExpandMotion(FFZF)V

    .line 311
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    .line 312
    iput v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mMinExpandHeight:F

    .line 313
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPanelClosedOnDown:Z

    .line 314
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHasLayoutedSinceDown:Z

    .line 315
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUpdateFlingOnLayout:Z

    .line 316
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mMotionAborted:Z

    .line 317
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPanelClosedOnDown:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekTouching:Z

    .line 318
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mDownTime:J

    .line 319
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchAboveFalsingThreshold:Z

    .line 320
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 321
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v0

    if-eqz v0, :cond_18

    move v0, v3

    goto :goto_4

    :cond_18
    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mCollapsedAndHeadsUpOnDown:Z

    .line 322
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->addMovement(Landroid/view/MotionEvent;)V

    .line 323
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mGestureWaitForTouchSlop:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintAnimationRunning:Z

    if-eqz v0, :cond_1a

    :cond_19
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1e

    .line 325
    :cond_1a
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintAnimationRunning:Z

    if-eqz v0, :cond_1d

    :cond_1b
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_1d

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlopExceededBeforeDown:Z

    if-eqz v0, :cond_1c

    goto :goto_5

    :cond_1c
    move v0, v1

    goto :goto_6

    :cond_1d
    :goto_5
    move v0, v3

    :goto_6
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlopExceeded:Z

    .line 327
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelHeightAnimator()V

    .line 328
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelPeek()V

    .line 329
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStarted()V

    .line 331
    :cond_1e
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 332
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 333
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->startOpening(Landroid/view/MotionEvent;)V

    .line 405
    :cond_1f
    :goto_7
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mGestureWaitForTouchSlop:Z

    if-eqz p1, :cond_20

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-eqz p0, :cond_21

    :cond_20
    move v1, v3

    :cond_21
    :goto_8
    return v1
.end method

.method protected onTrackingStarted()V
    .locals 1

    .line 537
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->endClosing()V

    const/4 v0, 0x1

    .line 538
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    .line 539
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTrackingStarted()V

    .line 540
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingStarted()V

    .line 541
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyBarPanelExpansionChanged()V

    return-void
.end method

.method protected onTrackingStopped(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 531
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    .line 532
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTrackingStopped(Z)V

    .line 533
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyBarPanelExpansionChanged()V

    return-void
.end method

.method protected onUnlockHintFinished()V
    .locals 0

    .line 1085
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onHintFinished()V

    return-void
.end method

.method protected onUnlockHintStarted()V
    .locals 0

    .line 1089
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onUnlockHintStarted()V

    return-void
.end method

.method protected requestPanelHeightUpdate()V
    .locals 2

    .line 839
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v0

    int-to-float v0, v0

    .line 841
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 845
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    return-void

    .line 849
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekTouching:Z

    if-eqz v1, :cond_2

    goto :goto_0

    .line 853
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isTrackingBlocked()Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    .line 857
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    .line 858
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPanelUpdateWhenAnimatorEnds:Z

    return-void

    .line 862
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedHeight(F)V

    :cond_5
    :goto_0
    return-void
.end method

.method public abstract resetViews(Z)V
.end method

.method public setBar(Lcom/android/systemui/statusbar/phone/PanelBar;)V
    .locals 0

    .line 950
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    return-void
.end method

.method public setExpandedFraction(F)V
    .locals 1

    .line 922
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedHeight(F)V

    return-void
.end method

.method public setExpandedHeight(F)V
    .locals 1

    .line 822
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getOverExpansionPixels()F

    move-result v0

    add-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedHeightInternal(F)V

    return-void
.end method

.method public setExpandedHeightInternal(F)V
    .locals 4

    .line 866
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandLatencyTracking:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    cmpl-float v0, p1, v2

    if-eqz v0, :cond_0

    .line 867
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelView$NcQsgCLFImw9_GKeELFJ1HpKiII;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelView$NcQsgCLFImw9_GKeELFJ1HpKiII;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;)V

    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->postAfterTraversal(Ljava/lang/Runnable;)V

    .line 869
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandLatencyTracking:Z

    .line 871
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getOverExpansionAmount()F

    move-result v3

    sub-float/2addr v0, v3

    .line 872
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-nez v3, :cond_2

    sub-float v1, p1, v0

    .line 873
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 874
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getOverExpansionPixels()F

    move-result v3

    cmpl-float v3, v3, v1

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    .line 875
    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/statusbar/phone/PanelView;->setOverExpansion(FZ)V

    .line 877
    :cond_1
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getOverExpansionAmount()F

    move-result v1

    add-float/2addr p1, v1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    goto :goto_0

    .line 879
    :cond_2
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    .line 880
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mOverExpandedBeforeFling:Z

    if-eqz v3, :cond_3

    sub-float/2addr p1, v0

    .line 881
    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->setOverExpansion(FZ)V

    .line 887
    :cond_3
    :goto_0
    iget p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v3, p1, v1

    if-gez v3, :cond_4

    cmpl-float p1, p1, v2

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    if-eqz p1, :cond_4

    .line 888
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    .line 889
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_4

    .line 890
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    :cond_4
    cmpl-float p1, v0, v2

    if-nez p1, :cond_5

    goto :goto_1

    .line 894
    :cond_5
    iget p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    div-float v2, p1, v0

    .line 893
    :goto_1
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    .line 895
    iget p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->onHeightUpdated(F)V

    .line 896
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyBarPanelExpansionChanged()V

    return-void
.end method

.method public setHeadsUpManager(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)V
    .locals 0

    .line 1251
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    return-void
.end method

.method public setLaunchingNotification(Z)V
    .locals 0

    .line 1255
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mLaunchingNotification:Z

    return-void
.end method

.method protected abstract setOverExpansion(FZ)V
.end method

.method public setTouchAndAnimationDisabled(Z)V
    .locals 0

    .line 243
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchDisabled:Z

    .line 244
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchDisabled:Z

    if-eqz p1, :cond_1

    .line 245
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelHeightAnimator()V

    .line 246
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 247
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStopped(Z)V

    .line 249
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingFinished()V

    :cond_1
    return-void
.end method

.method protected shouldExpandWhenNotFlinging()Z
    .locals 1

    .line 694
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedFraction()F

    move-result p0

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected abstract shouldGestureIgnoreXTouchSlop(FF)Z
.end method

.method protected abstract shouldGestureWaitForTouchSlop()Z
.end method

.method protected abstract shouldUseDismissingAnimation()Z
.end method

.method public startExpandLatencyTracking()V
    .locals 2

    .line 254
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/util/LatencyTracker;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    const/4 v0, 0x1

    .line 257
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandLatencyTracking:Z

    :cond_0
    return-void
.end method

.method protected startExpandMotion(FFZF)V
    .locals 0

    .line 454
    iput p4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialOffsetOnTouch:F

    .line 455
    iput p2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    .line 456
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchX:F

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    .line 458
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlopExceeded:Z

    .line 459
    iget p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialOffsetOnTouch:F

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedHeight(F)V

    .line 460
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStarted()V

    :cond_0
    return-void
.end method

.method protected startExpandingFromPeek()V
    .locals 0

    .line 449
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->handlePeekToExpandTransistion()V

    return-void
.end method

.method protected startUnlockHintAnimation()V
    .locals 1

    .line 1070
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1073
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelPeek()V

    .line 1074
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingStarted()V

    .line 1075
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelView$tAljekoGx9mlKIleW6Fmi59MCOs;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelView$tAljekoGx9mlKIleW6Fmi59MCOs;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->startUnlockHintAnimationPhase1(Ljava/lang/Runnable;)V

    .line 1080
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onUnlockHintStarted()V

    const/4 v0, 0x1

    .line 1081
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintAnimationRunning:Z

    :cond_1
    :goto_0
    return-void
.end method
