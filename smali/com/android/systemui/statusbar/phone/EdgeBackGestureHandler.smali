.class public Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;
.super Ljava/lang/Object;
.source "EdgeBackGestureHandler.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$SysUiInputEventReceiver;
    }
.end annotation


# static fields
.field private static final MAX_LONG_PRESS_TIMEOUT:I


# instance fields
.field private mAllowGesture:Z

.field private mBottomGestureHeight:I

.field private final mContext:Landroid/content/Context;

.field private final mDisplayId:I

.field private final mDisplaySize:Landroid/graphics/Point;

.field private final mDownPoint:Landroid/graphics/PointF;

.field private mEdgePanel:Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;

.field private mEdgePanelLp:Landroid/view/WindowManager$LayoutParams;

.field private mEdgeWidth:I

.field private final mExcludeRegion:Landroid/graphics/Region;

.field private final mFingerOffset:I

.field private mGestureExclusionListener:Landroid/view/ISystemGestureExclusionListener;

.field private mInRejectedExclusion:Z

.field private mInputEventReceiver:Landroid/view/InputEventReceiver;

.field private mInputMonitor:Landroid/view/InputMonitor;

.field private mIsAttached:Z

.field private mIsEnabled:Z

.field private mIsGesturalModeEnabled:Z

.field private mIsInTransientImmersiveStickyState:Z

.field private mIsLongSwipeEnabled:Z

.field private mIsOnLeftEdge:Z

.field private mLeftInset:I

.field private final mLongPressTimeout:I

.field private mLongSwipeWidth:F

.field private final mMainExecutor:Ljava/util/concurrent/Executor;

.field private final mMinArrowPosition:I

.field private final mNavBarHeight:I

.field private final mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

.field private mRegionSamplingHelper:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

.field private mRightInset:I

.field private final mSamplingRect:Landroid/graphics/Rect;

.field private mThresholdCrossed:Z

.field private final mTouchSlop:F

.field private final mUnrestrictedExcludeRegion:Landroid/graphics/Region;

.field private mUserExclude:I

.field private final mWm:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "gestures.back_timeout"

    const/16 v1, 0xfa

    .line 77
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->MAX_LONG_PRESS_TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/recents/OverviewProxyService;)V
    .locals 2

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$1;-><init>(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mGestureExclusionListener:Landroid/view/ISystemGestureExclusionListener;

    .line 104
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    .line 109
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mExcludeRegion:Landroid/graphics/Region;

    .line 110
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mUnrestrictedExcludeRegion:Landroid/graphics/Region;

    .line 131
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    const/4 v0, 0x0

    .line 132
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mThresholdCrossed:Z

    .line 133
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mAllowGesture:Z

    .line 134
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mInRejectedExclusion:Z

    .line 150
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mSamplingRect:Landroid/graphics/Rect;

    .line 157
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 158
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    .line 159
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplayId:I

    .line 160
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 161
    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mWm:Landroid/view/WindowManager;

    .line 162
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    .line 164
    const-class p2, Lcom/android/systemui/tuner/TunerService;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/tuner/TunerService;

    const-string v1, "lineagesystem:key_edge_long_swipe_action"

    .line 165
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    const-string v1, "lineagesecure:gesture_back_exclude_top"

    .line 166
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 171
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x3f400000    # 0.75f

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mTouchSlop:F

    .line 172
    sget p1, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->MAX_LONG_PRESS_TIMEOUT:I

    .line 173
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p2

    .line 172
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mLongPressTimeout:I

    .line 175
    sget p1, Lcom/android/systemui/R$dimen;->navigation_bar_frame_height:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mNavBarHeight:I

    .line 176
    sget p1, Lcom/android/systemui/R$dimen;->navigation_edge_arrow_min_y:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mMinArrowPosition:I

    .line 177
    sget p1, Lcom/android/systemui/R$dimen;->navigation_edge_finger_offset:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mFingerOffset:I

    .line 178
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->updateCurrentUserResources(Landroid/content/res/Resources;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)I
    .locals 0

    .line 74
    iget p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplayId:I

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mMainExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)Landroid/graphics/Region;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mExcludeRegion:Landroid/graphics/Region;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)Landroid/graphics/Region;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mUnrestrictedExcludeRegion:Landroid/graphics/Region;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanel:Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)Landroid/graphics/Rect;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mSamplingRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;Landroid/view/InputEvent;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->onInputEvent(Landroid/view/InputEvent;)V

    return-void
.end method

.method private cancelGesture(Landroid/view/MotionEvent;)V
    .locals 1

    const/4 v0, 0x0

    .line 351
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mAllowGesture:Z

    .line 352
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mInRejectedExclusion:Z

    .line 353
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    const/4 v0, 0x3

    .line 354
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 355
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanel:Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->handleTouch(Landroid/view/MotionEvent;)V

    .line 356
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method private disposeInputChannel()V
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {v0}, Landroid/view/InputEventReceiver;->dispose()V

    .line 219
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    if-eqz v0, :cond_1

    .line 222
    invoke-virtual {v0}, Landroid/view/InputMonitor;->dispose()V

    .line 223
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    :cond_1
    return-void
.end method

.method private isWithinTouchRegion(II)Z
    .locals 8

    .line 316
    iget v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mUserExclude:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mNavBarHeight:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v0

    if-ge p2, v2, :cond_0

    return v1

    .line 321
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgeWidth:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mLeftInset:I

    add-int/2addr v2, v0

    if-le p1, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mRightInset:I

    sub-int/2addr v2, v0

    if-ge p1, v2, :cond_1

    return v1

    .line 326
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mBottomGestureHeight:I

    sub-int/2addr v0, v2

    if-lt p2, v0, :cond_2

    return v1

    .line 331
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsInTransientImmersiveStickyState:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    return v1

    .line 335
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Region;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 337
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsOnLeftEdge:Z

    xor-int/lit8 v7, p1, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/recents/OverviewProxyService;->notifyBackAction(ZIIZZ)V

    const/16 p1, 0xe0

    const/4 v2, 0x3

    .line 341
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsOnLeftEdge:Z

    if-eqz p0, :cond_4

    move p0, v1

    goto :goto_0

    :cond_4
    const/4 p0, 0x2

    .line 339
    :goto_0
    invoke-static {p1, v2, p2, p0}, Landroid/util/StatsLog;->write(IIII)I

    goto :goto_1

    .line 344
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mUnrestrictedExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Region;->contains(II)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mInRejectedExclusion:Z

    :goto_1
    xor-int/lit8 p0, v0, 0x1

    return p0
.end method

.method private loadUserExclusion()V
    .locals 3

    .line 526
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    if-nez v0, :cond_0

    return-void

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "gesture_back_exclude_top"

    invoke-static {v0, v2, v1}, Llineageos/providers/LineageSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 532
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x64

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mUserExclude:I

    goto :goto_0

    .line 534
    :cond_1
    iput v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mUserExclude:I

    :goto_0
    return-void
.end method

.method private onInputEvent(Landroid/view/InputEvent;)V
    .locals 1

    .line 309
    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 310
    check-cast p1, Landroid/view/MotionEvent;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->onMotionEvent(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method private onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 14

    .line 360
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 364
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/recents/OverviewProxyService;->getSystemUiStateFlags()I

    move-result v0

    .line 365
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgeWidth:I

    iget v5, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mLeftInset:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsOnLeftEdge:Z

    .line 366
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mInRejectedExclusion:Z

    .line 367
    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isBackGestureDisabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 368
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {p0, v0, v3}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->isWithinTouchRegion(II)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mAllowGesture:Z

    .line 369
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mAllowGesture:Z

    if-eqz v0, :cond_13

    .line 370
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanelLp:Landroid/view/WindowManager$LayoutParams;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsOnLeftEdge:Z

    if-eqz v2, :cond_2

    const/16 v2, 0x33

    goto :goto_2

    :cond_2
    const/16 v2, 0x35

    .line 372
    :goto_2
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 373
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanel:Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsOnLeftEdge:Z

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->setIsLeftPanel(Z)V

    .line 374
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanel:Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->handleTouch(Landroid/view/MotionEvent;)V

    .line 375
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->updateEdgePanelPosition(F)V

    .line 376
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mWm:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanel:Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanelLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 377
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mRegionSamplingHelper:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mSamplingRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->start(Landroid/graphics/Rect;)V

    .line 379
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v2, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 380
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mThresholdCrossed:Z

    goto/16 :goto_8

    .line 382
    :cond_3
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mAllowGesture:Z

    if-eqz v3, :cond_13

    .line 383
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mThresholdCrossed:Z

    const/4 v4, 0x2

    if-nez v3, :cond_7

    const/4 v3, 0x5

    if-ne v0, v3, :cond_4

    .line 386
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->cancelGesture(Landroid/view/MotionEvent;)V

    return-void

    :cond_4
    if-ne v0, v4, :cond_7

    .line 389
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    iget v3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mLongPressTimeout:I

    int-to-long v7, v3

    cmp-long v3, v5, v7

    if-lez v3, :cond_5

    .line 390
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->cancelGesture(Landroid/view/MotionEvent;)V

    return-void

    .line 393
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 394
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v6, v5, v3

    if-lez v6, :cond_6

    .line 395
    iget v6, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mTouchSlop:F

    cmpl-float v6, v5, v6

    if-lez v6, :cond_6

    .line 396
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->cancelGesture(Landroid/view/MotionEvent;)V

    return-void

    :cond_6
    cmpl-float v5, v3, v5

    if-lez v5, :cond_7

    .line 399
    iget v5, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mTouchSlop:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_7

    .line 400
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mThresholdCrossed:Z

    .line 402
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    invoke-virtual {v3}, Landroid/view/InputMonitor;->pilferPointers()V

    .line 409
    :cond_7
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanel:Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->handleTouch(Landroid/view/MotionEvent;)V

    if-ne v0, v2, :cond_8

    move p1, v2

    goto :goto_3

    :cond_8
    move p1, v1

    :goto_3
    if-eqz p1, :cond_10

    .line 413
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanel:Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->shouldTriggerBack()Z

    move-result v3

    .line 414
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanel:Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->shouldTriggerLongSwipe()Z

    move-result v5

    const/4 v6, 0x4

    if-eqz v5, :cond_9

    const/16 v7, 0x80

    .line 417
    invoke-direct {p0, v1, v6, v7}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->sendEvent(III)V

    .line 419
    invoke-direct {p0, v2, v6, v7}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->sendEvent(III)V

    goto :goto_4

    :cond_9
    if-eqz v3, :cond_a

    .line 423
    invoke-direct {p0, v1, v6}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->sendEvent(II)V

    .line 424
    invoke-direct {p0, v2, v6}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->sendEvent(II)V

    :cond_a
    :goto_4
    if-nez v3, :cond_b

    if-eqz v5, :cond_c

    :cond_b
    move v1, v2

    .line 427
    :cond_c
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    iget v5, v3, Landroid/graphics/PointF;->x:F

    float-to-int v10, v5

    iget v3, v3, Landroid/graphics/PointF;->y:F

    float-to-int v11, v3

    const/4 v12, 0x0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsOnLeftEdge:Z

    xor-int/lit8 v13, v3, 0x1

    move v9, v1

    invoke-virtual/range {v8 .. v13}, Lcom/android/systemui/recents/OverviewProxyService;->notifyBackAction(ZIIZZ)V

    if-eqz v1, :cond_e

    .line 429
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mInRejectedExclusion:Z

    if-eqz v1, :cond_d

    move v6, v4

    goto :goto_5

    :cond_d
    move v6, v2

    :cond_e
    :goto_5
    const/16 v1, 0xe0

    .line 433
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    float-to-int v3, v3

    .line 434
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsOnLeftEdge:Z

    if-eqz v5, :cond_f

    goto :goto_6

    :cond_f
    move v2, v4

    .line 433
    :goto_6
    invoke-static {v1, v6, v3, v2}, Landroid/util/StatsLog;->write(IIII)I

    :cond_10
    if-nez p1, :cond_12

    const/4 p1, 0x3

    if-ne v0, p1, :cond_11

    goto :goto_7

    .line 441
    :cond_11
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->updateSamplingRect()V

    .line 442
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mRegionSamplingHelper:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->updateSamplingRect()V

    goto :goto_8

    .line 439
    :cond_12
    :goto_7
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mRegionSamplingHelper:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->stop()V

    :cond_13
    :goto_8
    return-void
.end method

.method private sendEvent(II)V
    .locals 1

    const/4 v0, 0x0

    .line 506
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->sendEvent(III)V

    return-void
.end method

.method private sendEvent(III)V
    .locals 14

    .line 510
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 511
    new-instance v13, Landroid/view/KeyEvent;

    or-int/lit8 v0, p3, 0x8

    or-int/lit8 v11, v0, 0x40

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/16 v12, 0x101

    move-object v0, v13

    move-wide v1, v3

    move v5, p1

    move/from16 v6, p2

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 517
    const-class v0, Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/bubbles/BubbleController;

    move-object v1, p0

    .line 518
    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/bubbles/BubbleController;->getExpandedDisplayId(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x4

    move/from16 v2, p2

    if-ne v2, v1, :cond_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 520
    invoke-virtual {v13, v0}, Landroid/view/KeyEvent;->setDisplayId(I)V

    .line 522
    :cond_0
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v13, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    return-void
.end method

.method private updateDisplaySize()V
    .locals 2

    .line 489
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 490
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->updateLongSwipeWidth()V

    .line 491
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->loadUserExclusion()V

    return-void
.end method

.method private updateEdgePanelPosition(F)V
    .locals 3

    .line 448
    iget v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mFingerOffset:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 449
    iget v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mMinArrowPosition:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 450
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanelLp:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float/2addr p1, v0

    .line 451
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanelLp:Landroid/view/WindowManager$LayoutParams;

    float-to-int p1, p1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    const/4 v2, 0x0

    invoke-static {p1, v2, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 452
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->updateSamplingRect()V

    return-void
.end method

.method private updateIsEnabled()V
    .locals 10

    .line 228
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsAttached:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsGesturalModeEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 229
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsEnabled:Z

    if-ne v0, v2, :cond_1

    return-void

    .line 232
    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsEnabled:Z

    .line 233
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->disposeInputChannel()V

    .line 235
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanel:Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;

    if-eqz v0, :cond_2

    .line 236
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mWm:Landroid/view/WindowManager;

    invoke-interface {v2, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 237
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanel:Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;

    .line 238
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mRegionSamplingHelper:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->stop()V

    .line 239
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mRegionSamplingHelper:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    .line 242
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsEnabled:Z

    const-string v2, "EdgeBackGestureHandler"

    if-nez v0, :cond_3

    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 246
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mGestureExclusionListener:Landroid/view/ISystemGestureExclusionListener;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplayId:I

    .line 247
    invoke-interface {v0, v1, p0}, Landroid/view/IWindowManager;->unregisterSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception p0

    const-string v0, "Failed to unregister window manager callbacks"

    .line 250
    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 254
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->updateDisplaySize()V

    .line 255
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    const-class v3, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    .line 256
    invoke-virtual {v3}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v3

    .line 255
    invoke-virtual {v0, p0, v3}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 259
    :try_start_1
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mGestureExclusionListener:Landroid/view/ISystemGestureExclusionListener;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplayId:I

    .line 260
    invoke-interface {v0, v3, v4}, Landroid/view/IWindowManager;->registerSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v3, "Failed to register window manager callbacks"

    .line 263
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 267
    :goto_1
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    iget v3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplayId:I

    const-string v4, "edge-swipe"

    invoke-virtual {v0, v4, v3}, Landroid/hardware/input/InputManager;->monitorGestureInput(Ljava/lang/String;I)Landroid/view/InputMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    .line 269
    new-instance v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$SysUiInputEventReceiver;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    .line 270
    invoke-virtual {v3}, Landroid/view/InputMonitor;->getInputChannel()Landroid/view/InputChannel;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v0, p0, v3, v4}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$SysUiInputEventReceiver;-><init>(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    .line 273
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanel:Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;

    .line 274
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    .line 275
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$dimen;->navigation_edge_panel_width:I

    .line 276
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    .line 277
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$dimen;->navigation_edge_panel_height:I

    .line 278
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const/16 v7, 0x7e8

    const v8, 0x800128

    const/4 v9, -0x3

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanelLp:Landroid/view/WindowManager$LayoutParams;

    .line 285
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanelLp:Landroid/view/WindowManager$LayoutParams;

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 287
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplayId:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanelLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->nav_bar_edge_panel:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    .line 289
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanelLp:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 290
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanel:Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 291
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->updateLongSwipeWidth()V

    .line 292
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mWm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanel:Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanelLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 293
    new-instance v0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanel:Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;

    new-instance v2, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$2;-><init>(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)V

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;-><init>(Landroid/view/View;Lcom/android/systemui/statusbar/phone/RegionSamplingHelper$SamplingCallback;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mRegionSamplingHelper:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    :goto_2
    return-void
.end method

.method private updateLongSwipeWidth()V
    .locals 3

    .line 465
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanel:Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;

    if-eqz v0, :cond_1

    .line 466
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsLongSwipeEnabled:Z

    if-eqz v1, :cond_0

    .line 467
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanelLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    int-to-float v1, v1

    const/high16 v2, 0x40200000    # 2.5f

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Landroid/util/MathUtils;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mLongSwipeWidth:F

    .line 468
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanel:Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mLongSwipeWidth:F

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->setLongSwipeThreshold(F)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 470
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->setLongSwipeThreshold(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateSamplingRect()V
    .locals 5

    .line 456
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanelLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 457
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsOnLeftEdge:Z

    if-eqz v2, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mLeftInset:I

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mRightInset:I

    sub-int/2addr v2, v3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int v0, v2, v0

    .line 458
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanelLp:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/2addr v2, v0

    .line 459
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanelLp:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/2addr v3, v1

    .line 460
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mSamplingRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 461
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanel:Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mSamplingRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->adjustRectToBoundingBox(Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "EdgeBackGestureHandler:"

    .line 544
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAllowGesture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mAllowGesture:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mInRejectedExclusion"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mInRejectedExclusion:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mExcludeRegion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUnrestrictedExcludeRegion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mUnrestrictedExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsAttached="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsAttached:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mEdgeWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgeWidth:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 1

    .line 483
    iget v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplayId:I

    if-ne p1, v0, :cond_0

    .line 484
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->updateDisplaySize()V

    :cond_0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method

.method public onNavBarAttached()V
    .locals 1

    const/4 v0, 0x1

    .line 192
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsAttached:Z

    .line 193
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->updateIsEnabled()V

    return-void
.end method

.method public onNavBarDetached()V
    .locals 1

    const/4 v0, 0x0

    .line 200
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsAttached:Z

    .line 201
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->updateIsEnabled()V

    return-void
.end method

.method public onNavigationModeChanged(ILandroid/content/Context;)V
    .locals 0

    .line 205
    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsGesturalModeEnabled:Z

    .line 206
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->updateIsEnabled()V

    .line 207
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->updateCurrentUserResources(Landroid/content/res/Resources;)V

    return-void
.end method

.method public onSystemUiVisibilityChanged(I)V
    .locals 1

    and-int/lit16 v0, p1, 0x1000

    if-eqz v0, :cond_0

    const/high16 v0, 0x8000000

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 211
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsInTransientImmersiveStickyState:Z

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "lineagesystem:key_edge_long_swipe_action"

    .line 496
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 498
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->fromIntSafe(I)Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    move-result-object p1

    sget-object p2, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->NOTHING:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    if-eq p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsLongSwipeEnabled:Z

    .line 499
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->updateLongSwipeWidth()V

    goto :goto_1

    :cond_1
    const-string p2, "lineagesecure:gesture_back_exclude_top"

    .line 500
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 501
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->loadUserExclusion()V

    :cond_2
    :goto_1
    return-void
.end method

.method public setInsets(II)V
    .locals 0

    .line 539
    iput p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mLeftInset:I

    .line 540
    iput p2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mRightInset:I

    return-void
.end method

.method public updateCurrentUserResources(Landroid/content/res/Resources;)V
    .locals 1

    const v0, 0x105009a

    .line 182
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgeWidth:I

    const v0, 0x105018c

    .line 184
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mBottomGestureHeight:I

    return-void
.end method
