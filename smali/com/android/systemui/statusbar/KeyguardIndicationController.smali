.class public Lcom/android/systemui/statusbar/KeyguardIndicationController;
.super Ljava/lang/Object;
.source "KeyguardIndicationController.java"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
.implements Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;
    }
.end annotation


# instance fields
.field private final mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

.field private mAlignmentIndication:Ljava/lang/String;

.field private final mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

.field private mBatteryLevel:I

.field private mChargingSpeed:I

.field private mChargingWattage:I

.field private final mClippingParams:Lcom/android/internal/widget/ViewClippingUtil$ClippingParameters;

.field private final mContext:Landroid/content/Context;

.field private final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mDisclosure:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

.field private final mDockManager:Lcom/android/systemui/dock/DockManager;

.field private mDozing:Z

.field private final mFastThreshold:I

.field private final mHandler:Landroid/os/Handler;

.field private mHideTransientMessageOnScreenOff:Z

.field private mIndicationArea:Landroid/view/ViewGroup;

.field private mInitialTextColorState:Landroid/content/res/ColorStateList;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

.field private mMessageToShowOnScreenOn:Ljava/lang/String;

.field private mPowerCharged:Z

.field private mPowerPluggedIn:Z

.field private mPowerPluggedInWired:Z

.field private mRestingIndication:Ljava/lang/String;

.field private final mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

.field private final mSlowThreshold:I

.field private mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

.field private final mTickReceiver:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mTransientIndication:Ljava/lang/CharSequence;

.field private mTransientTextColorState:Landroid/content/res/ColorStateList;

.field private final mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

.field private mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mUserManager:Landroid/os/UserManager;

.field private mVisible:Z

.field private final mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/LockIcon;)V
    .locals 12

    .line 141
    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v4, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    const-string v0, "Doze:KeyguardIndication"

    .line 142
    invoke-static {p1, v0}, Lcom/android/systemui/util/wakelock/WakeLock;->createPartial(Landroid/content/Context;Ljava/lang/String;)Lcom/android/systemui/util/wakelock/WakeLock;

    move-result-object v5

    const-class v0, Lcom/android/systemui/statusbar/phone/ShadeController;

    .line 143
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/statusbar/phone/ShadeController;

    const-class v0, Lcom/android/systemui/statusbar/policy/AccessibilityController;

    .line 144
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/systemui/statusbar/policy/AccessibilityController;

    .line 145
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v8

    const-class v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 146
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 147
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v10

    const-class v0, Lcom/android/systemui/dock/DockManager;

    .line 148
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/systemui/dock/DockManager;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 141
    invoke-direct/range {v0 .. v11}, Lcom/android/systemui/statusbar/KeyguardIndicationController;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/LockIcon;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/statusbar/policy/AccessibilityController;Lcom/android/systemui/statusbar/phone/UnlockMethodCache;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/dock/DockManager;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/LockIcon;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/statusbar/policy/AccessibilityController;Lcom/android/systemui/statusbar/phone/UnlockMethodCache;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/dock/DockManager;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    const-string v0, ""

    .line 109
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mAlignmentIndication:Ljava/lang/String;

    .line 128
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mClippingParams:Lcom/android/internal/widget/ViewClippingUtil$ClippingParameters;

    .line 591
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$3;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTickReceiver:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 601
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$4;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    .line 161
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    .line 162
    iput-object p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    .line 163
    iput-object p6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    .line 164
    iput-object p7, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    .line 165
    iput-object p8, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 166
    iput-object p9, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 167
    iput-object p10, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 168
    iput-object p11, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDockManager:Lcom/android/systemui/dock/DockManager;

    .line 169
    iget-object p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDockManager:Lcom/android/systemui/dock/DockManager;

    new-instance p6, Lcom/android/systemui/statusbar/-$$Lambda$KeyguardIndicationController$MNRKvB1L0H3Iaik26PzOwQaf05I;

    invoke-direct {p6, p0}, Lcom/android/systemui/statusbar/-$$Lambda$KeyguardIndicationController$MNRKvB1L0H3Iaik26PzOwQaf05I;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    invoke-interface {p3, p6}, Lcom/android/systemui/dock/DockManager;->addAlignmentStateListener(Lcom/android/systemui/dock/DockManager$AlignmentStateListener;)V

    .line 172
    iget-object p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    if-eqz p3, :cond_0

    .line 173
    new-instance p6, Lcom/android/systemui/statusbar/-$$Lambda$KeyguardIndicationController$bqGTofRbajWF7T9LSeA5X_gxSW8;

    invoke-direct {p6, p0}, Lcom/android/systemui/statusbar/-$$Lambda$KeyguardIndicationController$bqGTofRbajWF7T9LSeA5X_gxSW8;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    invoke-virtual {p3, p6}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 174
    iget-object p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    new-instance p6, Lcom/android/systemui/statusbar/-$$Lambda$KeyguardIndicationController$KgoVbt1hJQ-ysK1ds1xLhviRDjE;

    invoke-direct {p6, p0}, Lcom/android/systemui/statusbar/-$$Lambda$KeyguardIndicationController$KgoVbt1hJQ-ysK1ds1xLhviRDjE;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    invoke-virtual {p3, p6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    :cond_0
    new-instance p3, Lcom/android/systemui/util/wakelock/SettableWakeLock;

    const-string p6, "KeyguardIndication"

    invoke-direct {p3, p5, p6}, Lcom/android/systemui/util/wakelock/SettableWakeLock;-><init>(Lcom/android/systemui/util/wakelock/WakeLock;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    .line 177
    iput-object p4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 179
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 180
    sget p4, Lcom/android/systemui/R$integer;->config_chargingSlowlyThreshold:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p4

    iput p4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mSlowThreshold:I

    .line 181
    sget p4, Lcom/android/systemui/R$integer;->config_chargingFastThreshold:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    iput p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFastThreshold:I

    .line 183
    const-class p3, Landroid/os/UserManager;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/UserManager;

    iput-object p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUserManager:Landroid/os/UserManager;

    const-string p3, "batterystats"

    .line 185
    invoke-static {p3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p3

    .line 184
    invoke-static {p3}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    const-string p3, "device_policy"

    .line 187
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 189
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setIndicationArea(Landroid/view/ViewGroup;)V

    .line 190
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateDisclosure()V

    .line 192
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getKeyguardCallback()Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 193
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTickReceiver:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 194
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 195
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->addListener(Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/view/ViewGroup;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIndicationArea:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/internal/widget/ViewClippingUtil$ClippingParameters;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mClippingParams:Lcom/android/internal/widget/ViewClippingUtil$ClippingParameters;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/KeyguardIndicationController;)I
    .locals 0

    .line 75
    iget p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mSlowThreshold:I

    return p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/KeyguardIndicationController;)I
    .locals 0

    .line 75
    iget p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFastThreshold:I

    return p0
.end method

.method static synthetic access$1202(Lcom/android/systemui/statusbar/KeyguardIndicationController;I)I
    .locals 0

    .line 75
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    return p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateDisclosure()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/res/ColorStateList;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColorState:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/KeyguardIndicationController;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/os/Handler;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mVisible:Z

    return p0
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mMessageToShowOnScreenOn:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2002(Lcom/android/systemui/statusbar/KeyguardIndicationController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mMessageToShowOnScreenOn:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/Context;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/systemui/statusbar/phone/LockIcon;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showSwipeUpToUnlock()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    return p0
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/KeyguardIndicationController;Z)Z
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedInWired:Z

    return p0
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/KeyguardIndicationController;Z)Z
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedInWired:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/systemui/statusbar/KeyguardIndicationController;Z)Z
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerCharged:Z

    return p1
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/KeyguardIndicationController;I)I
    .locals 0

    .line 75
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingWattage:I

    return p1
.end method

.method static synthetic access$902(Lcom/android/systemui/statusbar/KeyguardIndicationController;I)I
    .locals 0

    .line 75
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingSpeed:I

    return p1
.end method

.method private animateText(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;Ljava/lang/String;)V
    .locals 5

    .line 472
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$integer;->wired_charging_keyguard_text_animation_distance:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 474
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$integer;->wired_charging_keyguard_text_animation_duration_up:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 476
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$integer;->wired_charging_keyguard_text_animation_duration_down:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 478
    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 479
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mClippingParams:Lcom/android/internal/widget/ViewClippingUtil$ClippingParameters;

    const/4 v4, 0x1

    invoke-static {p1, v4, v3}, Lcom/android/internal/widget/ViewClippingUtil;->setClippingDeactivated(Landroid/view/View;ZLcom/android/internal/widget/ViewClippingUtil$ClippingParameters;)V

    .line 480
    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-float v0, v0

    .line 481
    invoke-virtual {v3, v0}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v3, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 482
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v3, v1

    .line 483
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/KeyguardIndicationController$2;

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController$2;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;Ljava/lang/String;I)V

    .line 484
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private getTrustManagedIndication()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method private handleLockClick(Landroid/view/View;)V
    .locals 1

    .line 218
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->isAccessibilityEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 221
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/ShadeController;->animateCollapsePanels(IZ)V

    return-void
.end method

.method private handleLockLongClick(Landroid/view/View;)Z
    .locals 2

    .line 208
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    const/4 v0, 0x0

    const/16 v1, 0xbf

    invoke-virtual {p1, v1, v0, v0}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->write(III)V

    .line 210
    sget p1, Lcom/android/systemui/R$string;->keyguard_indication_trust_disabled:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(I)V

    .line 211
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->onLockIconPressed()V

    .line 212
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->requireCredentialEntry(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic lambda$KgoVbt1hJQ-ysK1ds1xLhviRDjE(Lcom/android/systemui/statusbar/KeyguardIndicationController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->handleLockClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$bqGTofRbajWF7T9LSeA5X_gxSW8(Lcom/android/systemui/statusbar/KeyguardIndicationController;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->handleLockLongClick(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private showSwipeUpToUnlock()V
    .locals 3

    .line 615
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    if-eqz v0, :cond_0

    return-void

    .line 619
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 620
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->keyguard_retry:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 621
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColorState:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->showBouncerMessage(Ljava/lang/String;Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 622
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 623
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->keyguard_unlock:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColorState:Landroid/content/res/ColorStateList;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V

    const-wide/16 v0, 0x1388

    .line 625
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndicationDelayed(J)V

    :cond_2
    :goto_0
    return-void
.end method

.method private showTransientIndication(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V
    .locals 2

    .line 361
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 362
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHideTransientMessageOnScreenOff:Z

    .line 363
    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientTextColorState:Landroid/content/res/ColorStateList;

    .line 364
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 365
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 366
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 368
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    invoke-virtual {p1, v1}, Lcom/android/systemui/util/wakelock/SettableWakeLock;->setAcquired(Z)V

    const-wide/16 p1, 0x1388

    .line 369
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndicationDelayed(J)V

    .line 372
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication(Z)V

    return-void
.end method

.method private updateDisclosure()V
    .locals 6

    .line 257
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    return-void

    .line 261
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isDeviceManaged()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 262
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 263
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 265
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDisclosure:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$string;->do_disclosure_with_name:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDisclosure:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    sget v2, Lcom/android/systemui/R$string;->do_disclosure_generic:I

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(I)V

    .line 270
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDisclosure:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 272
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDisclosure:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method computePowerIndication()Ljava/lang/String;
    .locals 10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 523
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerCharged:Z

    if-eqz v0, :cond_0

    .line 524
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->keyguard_charged:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/16 v0, 0x0

    .line 530
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v2}, Lcom/android/internal/app/IBatteryStats;->computeChargeTimeRemaining()J

    move-result-wide v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "KeyguardIndication"

    const-string v4, "Error calling IBatteryStats: "

    .line 533
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-wide v2, v0

    :goto_0
    cmp-long v0, v2, v0

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-lez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v4

    .line 538
    :goto_1
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedInWired:Z

    const/4 v6, 0x2

    if-eqz v5, :cond_7

    .line 539
    iget v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingSpeed:I

    if-eqz v5, :cond_5

    if-eq v5, v6, :cond_3

    if-eqz v0, :cond_2

    .line 552
    sget v5, Lcom/android/systemui/R$string;->keyguard_indication_charging_time:I

    goto :goto_2

    .line 553
    :cond_2
    sget v5, Lcom/android/systemui/R$string;->keyguard_plugged_in:I

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_4

    .line 542
    sget v5, Lcom/android/systemui/R$string;->keyguard_indication_charging_time_fast:I

    goto :goto_2

    .line 543
    :cond_4
    sget v5, Lcom/android/systemui/R$string;->keyguard_plugged_in_charging_fast:I

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_6

    .line 547
    sget v5, Lcom/android/systemui/R$string;->keyguard_indication_charging_time_slowly:I

    goto :goto_2

    .line 548
    :cond_6
    sget v5, Lcom/android/systemui/R$string;->keyguard_plugged_in_charging_slowly:I

    goto :goto_2

    :cond_7
    if-eqz v0, :cond_8

    .line 558
    sget v5, Lcom/android/systemui/R$string;->keyguard_indication_charging_time_wireless:I

    goto :goto_2

    .line 559
    :cond_8
    sget v5, Lcom/android/systemui/R$string;->keyguard_plugged_in_wireless:I

    .line 562
    :goto_2
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v7

    iget v8, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    int-to-float v8, v8

    const/high16 v9, 0x42c80000    # 100.0f

    div-float/2addr v8, v9

    float-to-double v8, v8

    .line 563
    invoke-virtual {v7, v8, v9}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    if-eqz v0, :cond_9

    .line 568
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatShortElapsedTimeRoundingUpToMinutes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 571
    :try_start_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v4

    aput-object v7, v3, v1

    invoke-virtual {v2, v5, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/util/IllegalFormatConversionException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    .line 574
    :catch_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v4

    invoke-virtual {p0, v5, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 579
    :cond_9
    :try_start_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v7, v1, v4

    invoke-virtual {v0, v5, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Ljava/util/IllegalFormatConversionException; {:try_start_2 .. :try_end_2} :catch_2

    return-object p0

    .line 581
    :catch_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "KeyguardIndicationController:"

    .line 643
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 644
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mTransientTextColorState: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientTextColorState:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 645
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mInitialTextColorState: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColorState:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 646
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mPowerPluggedInWired: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedInWired:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 647
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mPowerPluggedIn: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 648
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mPowerCharged: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerCharged:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 649
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mChargingSpeed: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingSpeed:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 650
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mChargingWattage: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingWattage:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 651
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mMessageToShowOnScreenOn: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mMessageToShowOnScreenOn:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 652
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mDozing: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 653
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mBatteryLevel: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 654
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mTextView.getText(): "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    :goto_0
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 655
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  computePowerIndication(): "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->computePowerIndication()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected getKeyguardCallback()Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-nez v0, :cond_0

    .line 251
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 253
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-object p0
.end method

.method getTrustGrantedIndication()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 313
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->keyguard_indication_trust_unlocked:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hideTransientIndication()V
    .locals 3

    .line 379
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 380
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    .line 381
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHideTransientMessageOnScreenOff:Z

    .line 382
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 383
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication(Z)V

    :cond_0
    return-void
.end method

.method public hideTransientIndicationDelayed(J)V
    .locals 1

    .line 337
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 338
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 337
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public onDozingChanged(Z)V
    .locals 0

    .line 665
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setDozing(Z)V

    return-void
.end method

.method public onStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onUnlockMethodStateChanged()V
    .locals 1

    .line 670
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication(Z)V

    return-void
.end method

.method public setDozing(Z)V
    .locals 1

    .line 630
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 633
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    .line 634
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHideTransientMessageOnScreenOff:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    if-eqz p1, :cond_1

    .line 635
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndication()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 637
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication(Z)V

    .line 639
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateDisclosure()V

    return-void
.end method

.method public setIndicationArea(Landroid/view/ViewGroup;)V
    .locals 1

    .line 199
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIndicationArea:Landroid/view/ViewGroup;

    .line 200
    sget v0, Lcom/android/systemui/R$id;->keyguard_indication_text:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 201
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColorState:Landroid/content/res/ColorStateList;

    .line 203
    sget v0, Lcom/android/systemui/R$id;->keyguard_indication_enterprise_disclosure:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDisclosure:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    const/4 p1, 0x0

    .line 204
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication(Z)V

    return-void
.end method

.method setPowerPluggedIn(Z)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 321
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    return-void
.end method

.method public setStatusBarKeyguardViewManager(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V
    .locals 0

    .line 588
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-void
.end method

.method public setVisible(Z)V
    .locals 3

    .line 277
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mVisible:Z

    .line 278
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIndicationArea:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-eqz p1, :cond_2

    .line 282
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 283
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndication()V

    .line 285
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication(Z)V

    goto :goto_1

    :cond_2
    if-nez p1, :cond_3

    .line 288
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndication()V

    :cond_3
    :goto_1
    return-void
.end method

.method public showTransientIndication(I)V
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showTransientIndication(Ljava/lang/CharSequence;)V
    .locals 2

    .line 352
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColorState:Landroid/content/res/ColorStateList;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V

    return-void
.end method

.method protected final updateIndication(Z)V
    .locals 6

    .line 388
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/wakelock/SettableWakeLock;->setAcquired(Z)V

    .line 392
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mVisible:Z

    if-eqz v0, :cond_f

    .line 395
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    if-eqz v0, :cond_5

    .line 398
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 399
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 400
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/CharSequence;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 401
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mAlignmentIndication:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 402
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mAlignmentIndication:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;)V

    .line 403
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorError(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 404
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    if-eqz v0, :cond_4

    .line 405
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->computePowerIndication()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_3

    .line 407
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->animateText(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;Ljava/lang/String;)V

    goto :goto_0

    .line 409
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 412
    :cond_4
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object p1

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    .line 413
    invoke-virtual {p1, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    .line 414
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    .line 419
    :cond_5
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 420
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getTrustGrantedIndication()Ljava/lang/String;

    move-result-object v2

    .line 421
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getTrustManagedIndication()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 424
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    if-eqz v5, :cond_6

    .line 425
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->computePowerIndication()Ljava/lang/String;

    move-result-object v4

    .line 428
    :cond_6
    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5, v0}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v5

    if-nez v5, :cond_7

    .line 429
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    const v0, 0x10403a7

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(I)V

    .line 430
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColorState:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_2

    .line 431
    :cond_7
    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 432
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;)V

    .line 433
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientTextColorState:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_2

    .line 434
    :cond_8
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 435
    invoke-virtual {v5, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v5

    if-eqz v5, :cond_a

    if-eqz v4, :cond_9

    .line 437
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$string;->keyguard_indication_trust_unlocked_plugged_in:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v1

    const/4 v1, 0x1

    aput-object v4, v3, v1

    invoke-virtual {p1, v0, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 440
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 442
    :cond_9
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;)V

    .line 444
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColorState:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_2

    .line 445
    :cond_a
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mAlignmentIndication:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 446
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mAlignmentIndication:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;)V

    .line 447
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorError(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_2

    .line 448
    :cond_b
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    if-eqz v1, :cond_d

    .line 452
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColorState:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    if-eqz p1, :cond_c

    .line 454
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-direct {p0, p1, v4}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->animateText(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;Ljava/lang/String;)V

    goto :goto_2

    .line 456
    :cond_c
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 458
    :cond_d
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_e

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 459
    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserTrustIsManaged(I)Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 460
    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result p1

    if-nez p1, :cond_e

    .line 461
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;)V

    .line 462
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColorState:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_2

    .line 464
    :cond_e
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRestingIndication:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;)V

    .line 465
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColorState:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_f
    :goto_2
    return-void
.end method
