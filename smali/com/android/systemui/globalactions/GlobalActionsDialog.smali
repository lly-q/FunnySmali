.class public Lcom/android/systemui/globalactions/GlobalActionsDialog;
.super Ljava/lang/Object;
.source "GlobalActionsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$SilentModeTriStateAction;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$SilentModeToggleAction;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$LongPressAction;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$LogoutAction;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$BugReportAction;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$ScreenshotAction;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartFastbootAction;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartDownloadAction;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartBootloaderAction;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartRecoveryAction;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$EmergencyDialerAction;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$EmergencyAffordanceAction;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$EmergencyAction;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$PowerAction;
    }
.end annotation


# instance fields
.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

.field private mAirplaneModeBits:Ljava/util/BitSet;

.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mAirplaneModeOn:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

.field private mAirplaneState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentMenuActions:[Ljava/lang/String;

.field private mDefaultMenuActions:[Ljava/lang/String;

.field private final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mDeviceProvisioned:Z

.field private mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

.field private final mDreamManager:Landroid/service/dreams/IDreamManager;

.field private final mEmergencyAffordanceManager:Lcom/android/internal/util/EmergencyAffordanceManager;

.field private mHandler:Landroid/os/Handler;

.field private mHasLockdownButton:Z

.field private mHasLogoutButton:Z

.field private mHasTelephony:Z

.field private mHasVibrator:Z

.field private mIsRestartMenu:Z

.field private mIsWaitingForEcmExit:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeyguardManager:Landroid/app/KeyguardManager;

.field private mKeyguardShowing:Z

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPanelPlugin:Lcom/android/systemui/plugins/GlobalActionsPanelPlugin;

.field private final mPhoneStateListeners:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/PhoneStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRestartMenuActions:[Ljava/lang/String;

.field private mRingerModeReceiver:Landroid/content/BroadcastReceiver;

.field private mRootMenuActions:[Ljava/lang/String;

.field private final mScreenRecordHelper:Lcom/android/internal/util/ScreenRecordHelper;

.field private final mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

.field private final mShowSilentToggle:Z

.field private mSilentModeAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

.field private final mWindowManagerFuncs:Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;)V
    .locals 4

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 163
    iput-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mKeyguardShowing:Z

    .line 164
    iput-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDeviceProvisioned:Z

    .line 165
    sget-object v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->Off:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    iput-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    .line 166
    iput-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsWaitingForEcmExit:Z

    .line 186
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mPhoneStateListeners:Ljava/util/Hashtable;

    .line 1653
    new-instance v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$10;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$10;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    iput-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1688
    new-instance v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$11;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$11;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    iput-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    .line 1697
    new-instance v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$12;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$12;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 1710
    new-instance v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$13;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$13;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    iput-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHandler:Landroid/os/Handler;

    .line 193
    new-instance v1, Landroid/view/ContextThemeWrapper;

    sget v2, Lcom/android/systemui/R$style;->qs_theme:I

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    .line 194
    iput-object p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mWindowManagerFuncs:Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;

    .line 195
    iget-object p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    iput-object p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAudioManager:Landroid/media/AudioManager;

    const-string p2, "dreams"

    .line 197
    invoke-static {p2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    .line 196
    invoke-static {p2}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDreamManager:Landroid/service/dreams/IDreamManager;

    .line 198
    iget-object p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/admin/DevicePolicyManager;

    iput-object p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 200
    new-instance p2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-direct {p2, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 201
    iget-object p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/KeyguardManager;

    iput-object p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 204
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 205
    invoke-virtual {p2, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 206
    invoke-virtual {p2, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "lineageos.intent.action.UPDATE_POWER_MENU"

    .line 207
    invoke-virtual {p2, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    .line 208
    invoke-virtual {p2, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 209
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 212
    iget-object p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p2

    new-instance v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$1;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    invoke-virtual {p2, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 220
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->setupAirplaneModeListeners()V

    .line 221
    iget-object p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v1, "airplane_mode_on"

    .line 222
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    .line 221
    invoke-virtual {p2, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 224
    iget-object p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Vibrator;

    if-eqz p2, :cond_0

    .line 225
    invoke-virtual {p2}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    iput-boolean v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHasVibrator:Z

    .line 227
    iput-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mShowSilentToggle:Z

    .line 230
    new-instance p2, Lcom/android/internal/util/EmergencyAffordanceManager;

    invoke-direct {p2, p1}, Lcom/android/internal/util/EmergencyAffordanceManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mEmergencyAffordanceManager:Lcom/android/internal/util/EmergencyAffordanceManager;

    .line 231
    new-instance p2, Lcom/android/internal/util/ScreenshotHelper;

    invoke-direct {p2, p1}, Lcom/android/internal/util/ScreenshotHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    .line 232
    new-instance p2, Lcom/android/internal/util/ScreenRecordHelper;

    invoke-direct {p2, p1}, Lcom/android/internal/util/ScreenRecordHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mScreenRecordHelper:Lcom/android/internal/util/ScreenRecordHelper;

    .line 234
    const-class p2, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {p2, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 236
    const-class p2, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/plugins/ActivityStarter;

    iput-object p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 237
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p2

    .line 238
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object p1

    .line 239
    new-instance v0, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$NxSDqubsrXIyjP1lCUP3BAtymNY;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$NxSDqubsrXIyjP1lCUP3BAtymNY;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/statusbar/phone/UnlockMethodCache;Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->addListener(Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;)V

    .line 248
    iget-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1070048

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDefaultMenuActions:[Ljava/lang/String;

    .line 250
    iget-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x3f030004

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mRestartMenuActions:[Ljava/lang/String;

    .line 253
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->updatePowerMenuActions()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V
    .locals 0

    .line 136
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->setupAirplaneModeListeners()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Ljava/util/BitSet;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneModeBits:Ljava/util/BitSet;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z
    .locals 0

    .line 136
    iget-boolean p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsWaitingForEcmExit:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/android/systemui/globalactions/GlobalActionsDialog;Z)Z
    .locals 0

    .line 136
    iput-boolean p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsWaitingForEcmExit:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/content/Context;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/globalactions/GlobalActionsDialog;Z)V
    .locals 0

    .line 136
    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->changeAirplaneModeSystemSetting(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/plugins/ActivityStarter;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mWindowManagerFuncs:Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;

    return-object p0
.end method

.method static synthetic access$1900()Z
    .locals 1

    .line 136
    invoke-static {}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->shouldUseSeparatedView()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/internal/util/EmergencyAffordanceManager;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mEmergencyAffordanceManager:Lcom/android/internal/util/EmergencyAffordanceManager;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;)Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z
    .locals 0

    .line 136
    iget-boolean p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsRestartMenu:Z

    return p0
.end method

.method static synthetic access$2102(Lcom/android/systemui/globalactions/GlobalActionsDialog;Z)Z
    .locals 0

    .line 136
    iput-boolean p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsRestartMenu:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z
    .locals 0

    .line 136
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->shouldShowRestartSubmenu()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2302(Lcom/android/systemui/globalactions/GlobalActionsDialog;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mCurrentMenuActions:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/systemui/globalactions/GlobalActionsDialog;)[Ljava/lang/String;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mRestartMenuActions:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    return-object p0
.end method

.method static synthetic access$2502(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/os/Handler;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V
    .locals 0

    .line 136
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->handleShow()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/internal/util/ScreenRecordHelper;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mScreenRecordHelper:Lcom/android/internal/util/ScreenRecordHelper;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/internal/util/ScreenshotHelper;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneModeOn:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/content/pm/UserInfo;
    .locals 0

    .line 136
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3100(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V
    .locals 0

    .line 136
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->lockProfiles()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Ljava/util/ArrayList;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z
    .locals 0

    .line 136
    iget-boolean p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mKeyguardShowing:Z

    return p0
.end method

.method static synthetic access$3400(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z
    .locals 0

    .line 136
    iget-boolean p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDeviceProvisioned:Z

    return p0
.end method

.method static synthetic access$3500(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/media/AudioManager;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V
    .locals 0

    .line 136
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->onAirplaneModeChanged()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V
    .locals 0

    .line 136
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->refreshSilentMode()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    return-object p0
.end method

.method static synthetic access$4000(Landroid/content/Context;)Z
    .locals 0

    .line 136
    invoke-static {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->isForceGridEnabled(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z
    .locals 0

    .line 136
    iget-boolean p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHasTelephony:Z

    return p0
.end method

.method private addUsersToMenu(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;",
            ">;)V"
        }
    .end annotation

    .line 1104
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1105
    invoke-virtual {v0}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1106
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 1107
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 1108
    iget-object v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$dimen;->global_actions_avatar_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1110
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Landroid/content/pm/UserInfo;

    .line 1111
    invoke-virtual {v10}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_1

    .line 1113
    iget v6, v10, Landroid/content/pm/UserInfo;->id:I

    if-nez v6, :cond_2

    goto :goto_1

    :cond_1
    iget v6, v2, Landroid/content/pm/UserInfo;->id:I

    iget v7, v10, Landroid/content/pm/UserInfo;->id:I

    if-ne v6, v7, :cond_2

    goto :goto_1

    :cond_2
    move v4, v5

    .line 1115
    :goto_1
    iget v6, v10, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v6}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v6

    if-nez v6, :cond_4

    .line 1117
    iget-object v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    .line 1118
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 1119
    invoke-virtual {v10}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, -0x2710

    goto :goto_2

    :cond_3
    iget v7, v10, Landroid/content/pm/UserInfo;->id:I

    .line 1117
    :goto_2
    invoke-static {v6, v7, v5}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(Landroid/content/res/Resources;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/util/UserIcons;->convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1121
    :cond_4
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1122
    invoke-static {v6, v3, v3}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->createCircularClip(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {v8, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1124
    new-instance v11, Lcom/android/systemui/globalactions/GlobalActionsDialog$9;

    sget v7, Lcom/android/systemui/R$drawable;->ic_lock_user:I

    .line 1126
    iget-object v5, v10, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz v5, :cond_5

    goto :goto_3

    :cond_5
    const-string v5, "Primary"

    :goto_3
    move-object v9, v5

    move-object v5, v11

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/systemui/globalactions/GlobalActionsDialog$9;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/pm/UserInfo;)V

    if-eqz v4, :cond_6

    .line 1144
    iget-object v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->global_action_current_user:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;->setStatus(Ljava/lang/CharSequence;)V

    .line 1147
    :cond_6
    invoke-virtual {p1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    return-void
.end method

.method private awakenIfNecessary()V
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-eqz v0, :cond_0

    .line 341
    :try_start_0
    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {p0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private changeAirplaneModeSystemSetting(Z)V
    .locals 3

    .line 1753
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    .line 1754
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    .line 1753
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1757
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x20000000

    .line 1758
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "state"

    .line 1759
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1760
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1761
    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHasTelephony:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 1762
    sget-object p1, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->On:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->Off:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    :goto_0
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    :cond_1
    return-void
.end method

.method private static createCircularClip(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 8

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1777
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 1778
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 1779
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1780
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1781
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 1782
    new-instance v5, Landroid/graphics/BitmapShader;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v5, p0, v6, v6}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 p0, 0x1

    .line 1783
    invoke-virtual {v4, p0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1784
    new-instance p0, Landroid/graphics/RectF;

    int-to-float v5, v0

    int-to-float v6, v1

    const/4 v7, 0x0

    invoke-direct {p0, v7, v7, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1785
    new-instance v5, Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-direct {v5, v7, v7, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1786
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 1787
    sget-object p2, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, p0, v5, p2}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 1788
    invoke-virtual {v3, p1}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 1789
    div-int/lit8 v0, v0, 0x2

    int-to-float p0, v0

    div-int/lit8 v1, v1, 0x2

    int-to-float p1, v1

    invoke-virtual {v3, p0, p1, p0, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-object v2
.end method

.method private createDialog()Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;
    .locals 10

    .line 406
    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHasVibrator:Z

    if-nez v0, :cond_0

    .line 407
    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SilentModeToggleAction;

    invoke-direct {v0, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$SilentModeToggleAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mSilentModeAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    goto :goto_0

    .line 409
    :cond_0
    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SilentModeTriStateAction;

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$SilentModeTriStateAction;-><init>(Landroid/media/AudioManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mSilentModeAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    .line 411
    :goto_0
    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$3;

    sget v5, Lcom/android/systemui/R$drawable;->ic_lock_airplane_mode_enabled:I

    sget v6, Lcom/android/systemui/R$drawable;->ic_lock_airplane_mode_disabled:I

    const v7, 0x10402cf

    const v8, 0x10402ce

    const v9, 0x10402cd

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/globalactions/GlobalActionsDialog$3;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;IIIII)V

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneModeOn:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

    .line 452
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->onAirplaneModeChanged()V

    .line 454
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    .line 457
    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsRestartMenu:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 458
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/systemui/globalactions/GlobalActionsDialog$PowerAction;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$PowerAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$1;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$1;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    :cond_1
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    const/4 v2, 0x0

    .line 463
    iput-boolean v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHasLogoutButton:Z

    .line 464
    iput-boolean v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHasLockdownButton:Z

    move v3, v2

    .line 465
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mCurrentMenuActions:[Ljava/lang/String;

    array-length v5, v4

    if-ge v3, v5, :cond_16

    .line 466
    aget-object v4, v4, v3

    .line 467
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto/16 :goto_3

    :cond_2
    const-string v5, "power"

    .line 471
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto/16 :goto_3

    :cond_3
    const-string v5, "airplane"

    .line 473
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 474
    iget-object v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneModeOn:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_4
    const-string v5, "bugreport"

    .line 475
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 476
    iget-object v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "bugreport_in_power_menu"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_15

    .line 477
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->isCurrentUserOwner()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 478
    iget-object v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/systemui/globalactions/GlobalActionsDialog$BugReportAction;

    invoke-direct {v6, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$BugReportAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_5
    const-string v5, "silent"

    .line 480
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 481
    iget-boolean v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mShowSilentToggle:Z

    if-eqz v5, :cond_15

    .line 482
    iget-object v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mSilentModeAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_6
    const-string v5, "users"

    .line 484
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_7

    .line 485
    iget-object v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    const-string v7, "user"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    .line 486
    invoke-virtual {v5}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v5

    .line 487
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v6, :cond_15

    .line 488
    iget-object v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0, v5}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->addUsersToMenu(Ljava/util/ArrayList;)V

    goto/16 :goto_2

    :cond_7
    const-string v5, "settings"

    .line 490
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 491
    iget-object v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->getSettingsAction()Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_8
    const-string v5, "lockdown"

    .line 492
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 493
    iget-object v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 494
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    const-string v8, "lockdown_in_power_menu"

    .line 493
    invoke-static {v5, v8, v2, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_15

    .line 495
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->shouldDisplayLockdown()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 496
    iget-object v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->getLockdownAction()Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 497
    iput-boolean v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHasLockdownButton:Z

    goto/16 :goto_2

    :cond_9
    const-string v5, "voiceassist"

    .line 499
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 500
    iget-object v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->getVoiceAssistAction()Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_a
    const-string v5, "assist"

    .line 501
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 502
    iget-object v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->getAssistAction()Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_b
    const-string v5, "restart"

    .line 503
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 504
    iget-boolean v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsRestartMenu:Z

    if-nez v5, :cond_c

    goto/16 :goto_3

    .line 507
    :cond_c
    iget-object v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;

    invoke-direct {v6, p0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$1;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_d
    const-string v5, "restart_recovery"

    .line 509
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    .line 510
    invoke-static {v5}, Lorg/lineageos/internal/util/PowerMenuUtils;->isAdvancedRestartPossible(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 511
    iget-object v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartRecoveryAction;

    invoke-direct {v6, p0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartRecoveryAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$1;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_e
    const-string v5, "restart_bootloader"

    .line 512
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    .line 513
    invoke-static {v5}, Lorg/lineageos/internal/util/PowerMenuUtils;->isAdvancedRestartPossible(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 514
    iget-object v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartBootloaderAction;

    invoke-direct {v6, p0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartBootloaderAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$1;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_f
    const-string v5, "restart_download"

    .line 515
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    .line 516
    invoke-static {v5}, Lorg/lineageos/internal/util/PowerMenuUtils;->isAdvancedRestartPossible(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 517
    iget-object v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartDownloadAction;

    invoke-direct {v6, p0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartDownloadAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$1;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_10
    const-string v5, "restart_fastboot"

    .line 518
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    .line 519
    invoke-static {v5}, Lorg/lineageos/internal/util/PowerMenuUtils;->isAdvancedRestartPossible(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 520
    iget-object v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartFastbootAction;

    invoke-direct {v6, p0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartFastbootAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$1;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_11
    const-string v5, "screenshot"

    .line 521
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 522
    iget-object v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/systemui/globalactions/GlobalActionsDialog$ScreenshotAction;

    invoke-direct {v6, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ScreenshotAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_12
    const-string v5, "logout"

    .line 523
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 524
    iget-object v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v5}, Landroid/app/admin/DevicePolicyManager;->isLogoutEnabled()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 525
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    if-eqz v5, :cond_15

    .line 526
    iget-object v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/systemui/globalactions/GlobalActionsDialog$LogoutAction;

    invoke-direct {v7, p0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$LogoutAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$1;)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    iput-boolean v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHasLogoutButton:Z

    goto :goto_2

    :cond_13
    const-string v5, "emergency"

    .line 529
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 530
    iget-object v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mEmergencyAffordanceManager:Lcom/android/internal/util/EmergencyAffordanceManager;

    invoke-virtual {v5}, Lcom/android/internal/util/EmergencyAffordanceManager;->needsEmergencyAffordance()Z

    move-result v5

    if-nez v5, :cond_15

    iget-boolean v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsRestartMenu:Z

    if-nez v5, :cond_15

    .line 531
    iget-object v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/systemui/globalactions/GlobalActionsDialog$EmergencyDialerAction;

    invoke-direct {v6, p0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$EmergencyDialerAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$1;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 534
    :cond_14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid global action key "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "GlobalActionsDialog"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :cond_15
    :goto_2
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 540
    :cond_16
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mEmergencyAffordanceManager:Lcom/android/internal/util/EmergencyAffordanceManager;

    invoke-virtual {v0}, Lcom/android/internal/util/EmergencyAffordanceManager;->needsEmergencyAffordance()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsRestartMenu:Z

    if-nez v0, :cond_17

    .line 541
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/globalactions/GlobalActionsDialog$EmergencyAffordanceAction;

    invoke-direct {v3, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$EmergencyAffordanceAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    :cond_17
    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    invoke-direct {v0, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    .line 547
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mPanelPlugin:Lcom/android/systemui/plugins/GlobalActionsPanelPlugin;

    if-eqz v0, :cond_18

    .line 548
    new-instance v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$4;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    iget-object v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 562
    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isDeviceLocked()Z

    move-result v3

    .line 548
    invoke-interface {v0, v1, v3}, Lcom/android/systemui/plugins/GlobalActionsPanelPlugin;->onPanelShown(Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$Callbacks;Z)Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$PanelViewController;

    move-result-object v1

    .line 565
    :cond_18
    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    iget-object v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    invoke-direct {v0, v3, v4, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;-><init>(Landroid/content/Context;Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$PanelViewController;)V

    .line 566
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 567
    iget-boolean v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mKeyguardShowing:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->setKeyguardShowing(Z)V

    .line 569
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 570
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object v0
.end method

.method private getAssistAction()Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;
    .locals 3

    .line 1004
    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$6;

    const v1, 0x1080324

    const v2, 0x10402be

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$6;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;II)V

    return-object v0
.end method

.method private getCurrentRestartMenuItems()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;",
            ">;"
        }
    .end annotation

    .line 371
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 373
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x3f030004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 375
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_4

    .line 376
    aget-object v3, v1, v2

    const-string v4, "restart_recovery"

    .line 377
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 378
    new-instance v3, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartRecoveryAction;

    invoke-direct {v3, p0, v5}, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartRecoveryAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$1;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const-string v4, "restart_bootloader"

    .line 379
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 380
    new-instance v3, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartBootloaderAction;

    invoke-direct {v3, p0, v5}, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartBootloaderAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$1;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string v4, "restart_download"

    .line 381
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 382
    new-instance v3, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartDownloadAction;

    invoke-direct {v3, p0, v5}, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartDownloadAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$1;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const-string v4, "restart_fastboot"

    .line 383
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 384
    new-instance v3, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartFastbootAction;

    invoke-direct {v3, p0, v5}, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartFastbootAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$1;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private getCurrentUser()Landroid/content/pm/UserInfo;
    .locals 0

    .line 1092
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getLockdownAction()Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;
    .locals 3

    .line 1048
    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$8;

    const v1, 0x10803d1

    const v2, 0x10402c2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$8;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;II)V

    return-object v0
.end method

.method private getSettingsAction()Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;
    .locals 3

    .line 981
    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$5;

    const v1, 0x1080526

    const v2, 0x10402c7

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$5;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;II)V

    return-object v0
.end method

.method private getUpdatedAirplaneToggleState()Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;
    .locals 2

    .line 1736
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    .line 1735
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "airplane_mode_on"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 1737
    sget-object p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->On:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    goto :goto_0

    .line 1738
    :cond_0
    sget-object p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->Off:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    :goto_0
    return-object p0
.end method

.method private getVoiceAssistAction()Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;
    .locals 3

    .line 1026
    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$7;

    const v1, 0x108054e

    const v2, 0x10402cb

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$7;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;II)V

    return-object v0
.end method

.method private handleShow()V
    .locals 3

    .line 351
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->awakenIfNecessary()V

    .line 352
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->createDialog()Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    .line 353
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->prepareDialog()V

    .line 356
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    const/4 v2, 0x0

    .line 357
    invoke-virtual {v0, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->getItem(I)Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    move-result-object v0

    instance-of v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    .line 358
    invoke-virtual {v0, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->getItem(I)Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    move-result-object v0

    instance-of v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$LongPressAction;

    if-nez v0, :cond_0

    .line 359
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    invoke-virtual {p0, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->getItem(I)Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;->onPress()V

    goto :goto_0

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const-string v2, "ActionsDialog"

    .line 362
    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 363
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 364
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 365
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->show()V

    .line 366
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mWindowManagerFuncs:Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;->onGlobalActionsShown()V

    :goto_0
    return-void
.end method

.method private isCurrentUserOwner()Z
    .locals 0

    .line 1099
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1100
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isPrimary()Z

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

.method private static isForceGridEnabled(Landroid/content/Context;)Z
    .locals 0

    .line 2127
    invoke-static {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->isPanelDebugModeEnabled(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private static isPanelDebugModeEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 2118
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "global_actions_panel_debug_enabled"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method private lockProfiles()V
    .locals 6

    .line 1079
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1080
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    const-string v2, "trust"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/trust/TrustManager;

    .line 1081
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    .line 1082
    invoke-virtual {v0, p0}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object v0

    .line 1083
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v0, v3

    if-eq v4, p0, :cond_0

    const/4 v5, 0x1

    .line 1085
    invoke-virtual {v1, v4, v5}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private onAirplaneModeChanged()V
    .locals 1

    .line 1743
    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHasTelephony:Z

    if-eqz v0, :cond_0

    return-void

    .line 1745
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->getUpdatedAirplaneToggleState()Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    .line 1746
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneModeOn:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    invoke-virtual {v0, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->updateState(Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;)V

    return-void
.end method

.method private prepareDialog()V
    .locals 2

    .line 1154
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->refreshSilentMode()V

    .line 1155
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneModeOn:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    invoke-virtual {v0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->updateState(Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;)V

    .line 1156
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 1157
    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mShowSilentToggle:Z

    if-eqz v0, :cond_0

    .line 1158
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1159
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private refreshSilentMode()V
    .locals 2

    .line 1164
    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHasVibrator:Z

    if-nez v0, :cond_2

    .line 1165
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAudioManager:Landroid/media/AudioManager;

    .line 1166
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1167
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mSilentModeAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    check-cast p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

    if-eqz v0, :cond_1

    .line 1168
    sget-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->On:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->Off:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    .line 1167
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->updateState(Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;)V

    :cond_2
    return-void
.end method

.method private setupAirplaneModeListeners()V
    .locals 8

    .line 265
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 266
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mPhoneStateListeners:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 267
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 268
    iget-object v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mPhoneStateListeners:Ljava/util/Hashtable;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/PhoneStateListener;

    .line 269
    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v4, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0

    .line 272
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mPhoneStateListeners:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    .line 273
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    .line 274
    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 276
    iput-boolean v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHasTelephony:Z

    .line 277
    new-instance v4, Ljava/util/BitSet;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/BitSet;-><init>(I)V

    iput-object v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneModeBits:Ljava/util/BitSet;

    .line 278
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 281
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    .line 282
    new-instance v5, Lcom/android/systemui/globalactions/GlobalActionsDialog$2;

    invoke-direct {v5, p0, v3}, Lcom/android/systemui/globalactions/GlobalActionsDialog$2;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;I)V

    .line 297
    iget-object v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mPhoneStateListeners:Ljava/util/Hashtable;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    invoke-virtual {v0, v4}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4, v5, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 302
    :cond_1
    iput-boolean v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHasTelephony:Z

    .line 305
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->getUpdatedAirplaneToggleState()Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    return-void
.end method

.method private shouldDisplayLockdown()Z
    .locals 3

    .line 576
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 578
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1, v0}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 583
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getStrongAuthForUser(I)I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method private shouldShowRestartSubmenu()Z
    .locals 2

    .line 391
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/lineageos/internal/util/PowerMenuUtils;->isAdvancedRestartPossible(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 394
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->getCurrentRestartMenuItems()Ljava/util/List;

    move-result-object p0

    .line 395
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private static shouldUseSeparatedView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 597
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public dismissDialog()V
    .locals 2

    .line 334
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 335
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public synthetic lambda$new$0$GlobalActionsDialog(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->access$4100(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$PanelViewController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 242
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->canSkipBouncer()Z

    move-result p1

    if-nez p1, :cond_0

    .line 243
    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 244
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    invoke-static {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->access$4100(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$PanelViewController;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$PanelViewController;->onDeviceLockStateChanged(Z)V

    :cond_1
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1174
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 1175
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    .line 1177
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mWindowManagerFuncs:Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;

    invoke-interface {p1}, Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;->onGlobalActionsHidden()V

    .line 1178
    iget-boolean p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mShowSilentToggle:Z

    if-eqz p1, :cond_1

    .line 1180
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "GlobalActionsDialog"

    .line 1183
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1190
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    const/16 p1, 0x620

    invoke-static {p0, p1}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    return-void
.end method

.method public onUiModeChanged()V
    .locals 3

    .line 590
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getThemeResId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 591
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->refreshDialog()V

    :cond_0
    return-void
.end method

.method public showDialog(ZZLcom/android/systemui/plugins/GlobalActionsPanelPlugin;)V
    .locals 0

    .line 315
    iput-boolean p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mKeyguardShowing:Z

    .line 316
    iput-boolean p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDeviceProvisioned:Z

    .line 317
    iput-object p3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mPanelPlugin:Lcom/android/systemui/plugins/GlobalActionsPanelPlugin;

    const/4 p1, 0x0

    .line 318
    iput-boolean p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsRestartMenu:Z

    .line 319
    iget-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mRootMenuActions:[Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mCurrentMenuActions:[Ljava/lang/String;

    .line 320
    iget-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    if-eqz p1, :cond_0

    .line 321
    invoke-virtual {p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->dismiss()V

    const/4 p1, 0x0

    .line 322
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    .line 324
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 326
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->handleShow()V

    :goto_0
    return-void
.end method

.method protected updatePowerMenuActions()V
    .locals 3

    .line 1677
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "power_menu_actions"

    const/4 v2, -0x2

    .line 1678
    invoke-static {v0, v1, v2}, Llineageos/providers/LineageSettings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "\\|"

    .line 1682
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mRootMenuActions:[Ljava/lang/String;

    goto :goto_0

    .line 1684
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDefaultMenuActions:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mRootMenuActions:[Ljava/lang/String;

    :goto_0
    return-void
.end method
