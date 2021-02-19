.class public Lcom/android/systemui/statusbar/phone/LockIcon;
.super Lcom/android/systemui/statusbar/KeyguardAffordanceView;
.source "LockIcon.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;
.implements Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$WakeUpListener;
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;


# static fields
.field private static final LOCK_ANIM_RES_IDS:[[I


# instance fields
.field private final mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

.field private mBlockUpdates:Z

.field private mBouncerShowingScrimmed:Z

.field private final mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field private mDensity:I

.field private final mDockEventListener:Lcom/android/systemui/dock/DockManager$DockEventListener;

.field private final mDockManager:Lcom/android/systemui/dock/DockManager;

.field private mDocked:Z

.field private mDozeAmount:F

.field private mDozing:Z

.field private mForceUpdate:Z

.field private final mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

.field private mIconColor:I

.field private mIsFaceUnlockState:Z

.field private mKeyguardJustShown:Z

.field private final mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private final mKeyguardMonitorCallback:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

.field private mKeyguardShowing:Z

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mLastState:I

.field private mPulsing:Z

.field private mShowingLaunchAffordance:Z

.field private mSimLocked:Z

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private mTransientBiometricsError:Z

.field private final mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

.field private final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mUpdatePending:Z

.field private mWakeAndUnlockRunning:Z

.field private final mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x4

    new-array v1, v0, [[I

    new-array v2, v0, [I

    .line 470
    sget v3, Lcom/android/systemui/R$anim;->lock_to_error:I

    const/4 v4, 0x0

    aput v3, v2, v4

    sget v3, Lcom/android/systemui/R$anim;->lock_unlock:I

    const/4 v5, 0x1

    aput v3, v2, v5

    sget v3, Lcom/android/systemui/R$anim;->lock_lock:I

    const/4 v6, 0x2

    aput v3, v2, v6

    sget v3, Lcom/android/systemui/R$anim;->lock_scanning:I

    const/4 v7, 0x3

    aput v3, v2, v7

    aput-object v2, v1, v4

    new-array v2, v0, [I

    sget v3, Lcom/android/systemui/R$anim;->lock_to_error_circular:I

    aput v3, v2, v4

    sget v3, Lcom/android/systemui/R$anim;->lock_unlock_circular:I

    aput v3, v2, v5

    sget v3, Lcom/android/systemui/R$anim;->lock_lock_circular:I

    aput v3, v2, v6

    sget v3, Lcom/android/systemui/R$anim;->lock_scanning_circular:I

    aput v3, v2, v7

    aput-object v2, v1, v5

    new-array v2, v0, [I

    sget v3, Lcom/android/systemui/R$anim;->lock_to_error_filled:I

    aput v3, v2, v4

    sget v3, Lcom/android/systemui/R$anim;->lock_unlock_filled:I

    aput v3, v2, v5

    sget v3, Lcom/android/systemui/R$anim;->lock_lock_filled:I

    aput v3, v2, v6

    sget v3, Lcom/android/systemui/R$anim;->lock_scanning_filled:I

    aput v3, v2, v7

    aput-object v2, v1, v6

    new-array v0, v0, [I

    sget v2, Lcom/android/systemui/R$anim;->lock_to_error_rounded:I

    aput v2, v0, v4

    sget v2, Lcom/android/systemui/R$anim;->lock_unlock_rounded:I

    aput v2, v0, v5

    sget v2, Lcom/android/systemui/R$anim;->lock_lock_rounded:I

    aput v2, v0, v6

    sget v2, Lcom/android/systemui/R$anim;->lock_scanning_rounded:I

    aput v2, v0, v7

    aput-object v0, v1, v7

    sput-object v1, Lcom/android/systemui/statusbar/phone/LockIcon;->LOCK_ANIM_RES_IDS:[[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/policy/AccessibilityController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)V
    .locals 0

    .line 182
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 89
    iput p2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    .line 108
    new-instance p2, Lcom/android/systemui/statusbar/phone/LockIcon$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/LockIcon$1;-><init>(Lcom/android/systemui/statusbar/phone/LockIcon;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardMonitorCallback:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    .line 133
    new-instance p2, Lcom/android/systemui/statusbar/phone/LockIcon$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/LockIcon$2;-><init>(Lcom/android/systemui/statusbar/phone/LockIcon;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDockEventListener:Lcom/android/systemui/dock/DockManager$DockEventListener;

    .line 146
    new-instance p2, Lcom/android/systemui/statusbar/phone/LockIcon$3;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/LockIcon$3;-><init>(Lcom/android/systemui/statusbar/phone/LockIcon;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 183
    iput-object p1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    .line 184
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 185
    iget-object p1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 186
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    .line 187
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 188
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 189
    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 190
    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    .line 191
    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 192
    iput-object p9, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDockManager:Lcom/android/systemui/dock/DockManager;

    .line 193
    iput-object p10, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/LockIcon;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardShowing:Z

    return p0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/LockIcon;Z)Z
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardShowing:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/LockIcon;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/LockIcon;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mBlockUpdates:Z

    return p0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/phone/LockIcon;Z)Z
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mBlockUpdates:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/phone/LockIcon;Z)Z
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardJustShown:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/phone/LockIcon;Z)Z
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mSimLocked:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/LockIcon;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/LockIcon;)I
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getState()I

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/LockIcon;I)Z
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/LockIcon;->doesAnimationLoop(I)Z

    move-result p0

    return p0
.end method

.method private canBlockUpdates()Z
    .locals 1

    .line 368
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardShowing:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isKeyguardFadingAway()Z

    move-result p0

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

.method private doesAnimationLoop(I)Z
    .locals 0

    const/4 p0, 0x3

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static getAnimationIndexForTransition(IIZZZ)I
    .locals 2

    const/4 v0, -0x1

    if-eqz p3, :cond_0

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/4 p2, 0x3

    if-ne p1, p2, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p3, 0x1

    if-eq p0, p3, :cond_2

    if-ne p1, p3, :cond_2

    return p3

    :cond_2
    const/4 v1, 0x2

    if-ne p0, p3, :cond_3

    if-nez p1, :cond_3

    if-nez p4, :cond_3

    return v1

    :cond_3
    if-ne p1, v1, :cond_4

    return p2

    :cond_4
    return v0
.end method

.method private getIconForState(I)I
    .locals 0

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const/4 p0, 0x3

    if-ne p1, p0, :cond_0

    goto :goto_0

    .line 419
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    const p0, 0x10803d2

    goto :goto_1

    :cond_2
    :goto_0
    const p0, 0x10803c9

    :goto_1
    return p0
.end method

.method private getState()I
    .locals 2

    .line 512
    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 513
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->canSkipBouncer()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardShowing:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 514
    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isKeyguardGoingAway()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mSimLocked:Z

    if-nez v1, :cond_1

    const/4 p0, 0x1

    return p0

    .line 516
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTransientBiometricsError:Z

    if-eqz v1, :cond_2

    const/4 p0, 0x3

    return p0

    .line 518
    :cond_2
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mPulsing:Z

    if-nez p0, :cond_3

    const/4 p0, 0x2

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private getThemedAnimationResId(I)I
    .locals 1

    .line 499
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "theme_customization_overlay_packages"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 498
    invoke-static {p0}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.android.theme.icon_pack.circular.android"

    .line 501
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    sget-object p0, Lcom/android/systemui/statusbar/phone/LockIcon;->LOCK_ANIM_RES_IDS:[[I

    const/4 v0, 0x1

    aget-object p0, p0, v0

    aget p0, p0, p1

    return p0

    :cond_0
    const-string v0, "com.android.theme.icon_pack.filled.android"

    .line 503
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 504
    sget-object p0, Lcom/android/systemui/statusbar/phone/LockIcon;->LOCK_ANIM_RES_IDS:[[I

    const/4 v0, 0x2

    aget-object p0, p0, v0

    aget p0, p0, p1

    return p0

    :cond_1
    const-string v0, "com.android.theme.icon_pack.rounded.android"

    .line 505
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 506
    sget-object p0, Lcom/android/systemui/statusbar/phone/LockIcon;->LOCK_ANIM_RES_IDS:[[I

    const/4 v0, 0x3

    aget-object p0, p0, v0

    aget p0, p0, p1

    return p0

    .line 508
    :cond_2
    sget-object p0, Lcom/android/systemui/statusbar/phone/LockIcon;->LOCK_ANIM_RES_IDS:[[I

    const/4 v0, 0x0

    aget-object p0, p0, v0

    aget p0, p0, p1

    return p0
.end method

.method private updateClickability()V
    .locals 4

    .line 372
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    if-nez v0, :cond_0

    return-void

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isMethodSecure()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 376
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->canSkipBouncer()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 377
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->isAccessibilityEnabled()Z

    move-result v3

    .line 378
    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    if-eqz v0, :cond_2

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    .line 379
    :goto_1
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setLongClickable(Z)V

    .line 380
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->isAccessibilityEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setFocusable(Z)V

    return-void
.end method

.method private updateDarkTint()V
    .locals 3

    .line 550
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mIconColor:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDozeAmount:F

    const/4 v2, -0x1

    invoke-static {v0, v2, v1}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    .line 551
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private updateIconVisibility()Z
    .locals 5

    .line 337
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDozing:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mPulsing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDocked:Z

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-nez v0, :cond_3

    .line 338
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mWakeAndUnlockRunning:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mShowingLaunchAffordance:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    :goto_1
    move v0, v2

    .line 340
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mBouncerShowingScrimmed:Z

    if-nez v3, :cond_5

    .line 341
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->isHeadsUpGoingAway()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 342
    invoke-interface {v3}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v3

    if-ne v3, v2, :cond_5

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    .line 343
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->getNotificationsFullyHidden()Z

    move-result v3

    if-nez v3, :cond_5

    move v0, v2

    .line 347
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_6

    move v3, v2

    goto :goto_3

    :cond_6
    move v3, v1

    :goto_3
    if-eq v0, v3, :cond_9

    if-eqz v0, :cond_7

    move v1, v4

    .line 349
    :cond_7
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 350
    invoke-virtual {p0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 352
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 353
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 354
    invoke-virtual {p0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 355
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 356
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 357
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 358
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0xe9

    .line 359
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 360
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_8
    return v2

    :cond_9
    return v1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .line 198
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 199
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 200
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 201
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardMonitorCallback:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 202
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 203
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->addListener(Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;)V

    .line 204
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->addListener(Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$WakeUpListener;)V

    .line 205
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mSimLocked:Z

    .line 206
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDockManager:Lcom/android/systemui/dock/DockManager;

    if-eqz v0, :cond_0

    .line 207
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDockEventListener:Lcom/android/systemui/dock/DockManager$DockEventListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/dock/DockManager;->addListener(Lcom/android/systemui/dock/DockManager$DockEventListener;)V

    .line 209
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->onThemeChanged()V

    .line 210
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    return-void
.end method

.method public onBiometricAuthModeChanged(ZZ)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 585
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mWakeAndUnlockRunning:Z

    :cond_0
    if-eqz p2, :cond_1

    .line 587
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->canBlockUpdates()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 589
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mBlockUpdates:Z

    .line 591
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 251
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 252
    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 253
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDensity:I

    if-eq p1, v0, :cond_0

    .line 254
    iput p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDensity:I

    .line 255
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    :cond_0
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 3

    .line 556
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 560
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->keyguard_lock_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 561
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->keyguard_lock_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 562
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    .line 563
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update(Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 215
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 216
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 217
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 218
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 219
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardMonitorCallback:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 220
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->removeListener(Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$WakeUpListener;)V

    .line 221
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->removeListener(Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;)V

    .line 222
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDockManager:Lcom/android/systemui/dock/DockManager;

    if-eqz v0, :cond_0

    .line 223
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDockEventListener:Lcom/android/systemui/dock/DockManager$DockEventListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/dock/DockManager;->removeListener(Lcom/android/systemui/dock/DockManager$DockEventListener;)V

    :cond_0
    return-void
.end method

.method public onDozeAmountChanged(FF)V
    .locals 0

    .line 527
    iput p2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDozeAmount:F

    .line 528
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->updateDarkTint()V

    return-void
.end method

.method public onDozingChanged(Z)V
    .locals 0

    .line 545
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDozing:Z

    .line 546
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    return-void
.end method

.method public onFullyHiddenChanged(Z)V
    .locals 0

    .line 451
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 452
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->updateIconVisibility()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 454
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    .line 385
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 386
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result v0

    .line 387
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 389
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/16 v1, 0x10

    .line 392
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$string;->accessibility_unlock_without_fingerprint:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 393
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 394
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->accessibility_waiting_for_fingerprint:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setHintText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 396
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mIsFaceUnlockState:Z

    if-eqz v0, :cond_1

    .line 398
    const-class v0, Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 399
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->accessibility_scanning_face:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onLocaleListChanged()V
    .locals 2

    .line 568
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->accessibility_unlock_button:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 569
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update(Z)V

    return-void
.end method

.method public onPreDraw()Z
    .locals 7

    const/4 v0, 0x0

    .line 275
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUpdatePending:Z

    .line 276
    invoke-virtual {p0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 278
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getState()I

    move-result v1

    .line 279
    iget v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    .line 280
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardJustShown:Z

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-ne v1, v5, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v0

    .line 281
    :goto_0
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mIsFaceUnlockState:Z

    .line 282
    iput v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    .line 283
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardJustShown:Z

    if-ne v2, v1, :cond_2

    .line 285
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mForceUpdate:Z

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move v5, v0

    goto :goto_2

    :cond_2
    :goto_1
    move v5, v4

    .line 286
    :goto_2
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mBlockUpdates:Z

    if-eqz v6, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->canBlockUpdates()Z

    move-result v6

    if-eqz v6, :cond_3

    move v5, v0

    :cond_3
    if-eqz v5, :cond_8

    .line 290
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mForceUpdate:Z

    .line 291
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mPulsing:Z

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDozing:Z

    invoke-static {v2, v1, v5, v6, v3}, Lcom/android/systemui/statusbar/phone/LockIcon;->getAnimationIndexForTransition(IIZZZ)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    move v3, v4

    goto :goto_3

    :cond_4
    move v3, v0

    :goto_3
    if-eqz v3, :cond_5

    .line 294
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->getThemedAnimationResId(I)I

    move-result v5

    goto :goto_4

    :cond_5
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->getIconForState(I)I

    move-result v5

    .line 296
    :goto_4
    iget-object v6, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 297
    instance-of v6, v5, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v6, :cond_6

    .line 298
    move-object v6, v5

    check-cast v6, Landroid/graphics/drawable/AnimatedVectorDrawable;

    goto :goto_5

    :cond_6
    const/4 v6, 0x0

    .line 300
    :goto_5
    invoke-virtual {p0, v5, v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageDrawable(Landroid/graphics/drawable/Drawable;Z)V

    .line 301
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mIsFaceUnlockState:Z

    if-eqz v0, :cond_7

    .line 302
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v5, Lcom/android/systemui/R$string;->accessibility_scanning_face:I

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_7
    if-eqz v6, :cond_8

    if-eqz v3, :cond_8

    .line 307
    invoke-virtual {v6}, Landroid/graphics/drawable/AnimatedVectorDrawable;->forceAnimationOnUI()V

    .line 308
    invoke-virtual {v6}, Landroid/graphics/drawable/AnimatedVectorDrawable;->clearAnimationCallbacks()V

    .line 309
    new-instance v0, Lcom/android/systemui/statusbar/phone/LockIcon$4;

    invoke-direct {v0, p0, v6, v1, v2}, Lcom/android/systemui/statusbar/phone/LockIcon$4;-><init>(Lcom/android/systemui/statusbar/phone/LockIcon;Landroid/graphics/drawable/AnimatedVectorDrawable;II)V

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    const-string v0, "LockIcon#Animation"

    .line 320
    invoke-static {v0, v1}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    .line 321
    invoke-virtual {v6}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 324
    :cond_8
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->updateDarkTint()V

    .line 326
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->updateIconVisibility()Z

    .line 327
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->updateClickability()V

    return v4
.end method

.method public onScrimVisibilityChanged(I)V
    .locals 1

    .line 606
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mWakeAndUnlockRunning:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 608
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mWakeAndUnlockRunning:Z

    .line 609
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    :cond_0
    return-void
.end method

.method public onShowingLaunchAffordanceChanged(Z)V
    .locals 0

    .line 598
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mShowingLaunchAffordance:Z

    .line 599
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    return-void
.end method

.method public onThemeChanged()V
    .locals 4

    .line 229
    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    sget v2, Lcom/android/systemui/R$attr;->wallpaperTextColor:I

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, -0x1

    .line 231
    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mIconColor:I

    .line 232
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 233
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->updateDarkTint()V

    return-void
.end method

.method public onUnlockMethodStateChanged()V
    .locals 0

    .line 574
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    return-void
.end method

.method public onUserInfoChanged(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0

    .line 238
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    return-void
.end method

.method public setBouncerShowingScrimmed(Z)V
    .locals 0

    .line 460
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mBouncerShowingScrimmed:Z

    .line 461
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 462
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    :cond_0
    return-void
.end method

.method public setPulsing(Z)V
    .locals 0

    .line 536
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mPulsing:Z

    .line 537
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    return-void
.end method

.method public setTransientBiometricsError(Z)V
    .locals 0

    .line 245
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTransientBiometricsError:Z

    .line 246
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    return-void
.end method

.method public update()V
    .locals 1

    const/4 v0, 0x0

    .line 260
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update(Z)V

    return-void
.end method

.method public update(Z)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 265
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mForceUpdate:Z

    .line 267
    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUpdatePending:Z

    if-nez p1, :cond_1

    .line 268
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUpdatePending:Z

    .line 269
    invoke-virtual {p0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_1
    return-void
.end method
