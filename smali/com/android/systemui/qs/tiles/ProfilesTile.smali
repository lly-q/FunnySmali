.class public Lcom/android/systemui/qs/tiles/ProfilesTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "ProfilesTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/ProfilesTile$ProfilesObserver;,
        Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileDetailAdapter;,
        Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileAdapter;,
        Lcom/android/systemui/qs/tiles/ProfilesTile$KeyguardMonitorCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final PROFILES_SETTINGS:Landroid/content/Intent;


# instance fields
.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private mAdapter:Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileAdapter;

.field private final mCallback:Lcom/android/systemui/qs/tiles/ProfilesTile$KeyguardMonitorCallback;

.field private final mDetailAdapter:Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileDetailAdapter;

.field private mDetails:Lcom/android/systemui/qs/QSDetailItemsList;

.field private final mIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private final mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private mListening:Z

.field private final mObserver:Lcom/android/systemui/qs/tiles/ProfilesTile$ProfilesObserver;

.field private final mProfileManager:Llineageos/app/ProfileManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 59
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.lineageos.lineageparts.PROFILES_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/qs/tiles/ProfilesTile;->PROFILES_SETTINGS:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 1

    .line 77
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 62
    sget p1, Lcom/android/systemui/R$drawable;->ic_qs_profiles:I

    invoke-static {p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ProfilesTile;->mIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 73
    new-instance p1, Lcom/android/systemui/qs/tiles/ProfilesTile$KeyguardMonitorCallback;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/qs/tiles/ProfilesTile$KeyguardMonitorCallback;-><init>(Lcom/android/systemui/qs/tiles/ProfilesTile;Lcom/android/systemui/qs/tiles/ProfilesTile$1;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ProfilesTile;->mCallback:Lcom/android/systemui/qs/tiles/ProfilesTile$KeyguardMonitorCallback;

    .line 227
    new-instance p1, Lcom/android/systemui/qs/tiles/ProfilesTile$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/ProfilesTile$1;-><init>(Lcom/android/systemui/qs/tiles/ProfilesTile;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ProfilesTile;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 78
    const-class p1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/ActivityStarter;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ProfilesTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 79
    const-class p1, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ProfilesTile;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 80
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Llineageos/app/ProfileManager;->getInstance(Landroid/content/Context;)Llineageos/app/ProfileManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ProfilesTile;->mProfileManager:Llineageos/app/ProfileManager;

    .line 81
    new-instance p1, Lcom/android/systemui/qs/tiles/ProfilesTile$ProfilesObserver;

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/qs/tiles/ProfilesTile$ProfilesObserver;-><init>(Lcom/android/systemui/qs/tiles/ProfilesTile;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ProfilesTile;->mObserver:Lcom/android/systemui/qs/tiles/ProfilesTile$ProfilesObserver;

    .line 82
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/ProfilesTile;->createDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileDetailAdapter;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ProfilesTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileDetailAdapter;

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/ProfilesTile;)Landroid/content/Context;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/tiles/ProfilesTile;)Landroid/content/Context;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/ProfilesTile;)Landroid/content/Context;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/ProfilesTile;)Z
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/ProfilesTile;->profilesEnabled()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/ProfilesTile;)Lcom/android/systemui/qs/QSDetailItemsList;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/ProfilesTile;->mDetails:Lcom/android/systemui/qs/QSDetailItemsList;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/systemui/qs/tiles/ProfilesTile;Lcom/android/systemui/qs/QSDetailItemsList;)Lcom/android/systemui/qs/QSDetailItemsList;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ProfilesTile;->mDetails:Lcom/android/systemui/qs/QSDetailItemsList;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/ProfilesTile;)Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileAdapter;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/ProfilesTile;->mAdapter:Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileAdapter;

    return-object p0
.end method

.method static synthetic access$502(Lcom/android/systemui/qs/tiles/ProfilesTile;Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileAdapter;)Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileAdapter;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ProfilesTile;->mAdapter:Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileAdapter;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/ProfilesTile;)Llineageos/app/ProfileManager;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/ProfilesTile;->mProfileManager:Llineageos/app/ProfileManager;

    return-object p0
.end method

.method static synthetic access$700()Landroid/content/Intent;
    .locals 1

    .line 57
    sget-object v0, Lcom/android/systemui/qs/tiles/ProfilesTile;->PROFILES_SETTINGS:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/ProfilesTile;Ljava/lang/Boolean;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/ProfilesTile;->setProfilesEnabled(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/tiles/ProfilesTile;)Landroid/content/Context;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private profilesEnabled()Z
    .locals 2

    .line 163
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "system_profiles_enabled"

    invoke-static {p0, v1, v0}, Llineageos/providers/LineageSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setProfilesEnabled(Ljava/lang/Boolean;)V
    .locals 1

    .line 158
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 159
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v0, "system_profiles_enabled"

    .line 158
    invoke-static {p0, v0, p1}, Llineageos/providers/LineageSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 4

    .line 149
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/ProfilesTile;->profilesEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->accessibility_quick_settings_profiles_changed:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object p0, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 153
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->accessibility_quick_settings_profiles_changed_off:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected createDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 1

    .line 198
    new-instance v0, Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileDetailAdapter;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/ProfilesTile;)V

    return-object v0
.end method

.method public getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 0

    .line 193
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/ProfilesTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileDetailAdapter;

    return-object p0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 0

    .line 97
    sget-object p0, Lcom/android/systemui/qs/tiles/ProfilesTile;->PROFILES_SETTINGS:Landroid/content/Intent;

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const p0, -0x7fffffdf

    return p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 92
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->quick_settings_profiles_label:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected handleClick()V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ProfilesTile;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ProfilesTile;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ProfilesTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v1, Lcom/android/systemui/qs/tiles/-$$Lambda$ProfilesTile$5gs7_fMwieX8w4jMsFhm2XqcSik;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/-$$Lambda$ProfilesTile$5gs7_fMwieX8w4jMsFhm2XqcSik;-><init>(Lcom/android/systemui/qs/tiles/ProfilesTile;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    return-void

    .line 108
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/ProfilesTile;->profilesEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/ProfilesTile;->setProfilesEnabled(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected handleLongClick()V
    .locals 2

    .line 126
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/ProfilesTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    sget-object v0, Lcom/android/systemui/qs/tiles/ProfilesTile;->PROFILES_SETTINGS:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    return-void
.end method

.method protected handleSecondaryClick()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ProfilesTile;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ProfilesTile;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ProfilesTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v1, Lcom/android/systemui/qs/tiles/-$$Lambda$ProfilesTile$2k0HmqJ8BlpTAyWwRXFUw-9Y8AE;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/-$$Lambda$ProfilesTile$2k0HmqJ8BlpTAyWwRXFUw-9Y8AE;-><init>(Lcom/android/systemui/qs/tiles/ProfilesTile;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 120
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/tiles/ProfilesTile;->setProfilesEnabled(Ljava/lang/Boolean;)V

    .line 121
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showDetail(Z)V

    return-void
.end method

.method public handleSetListening(Z)V
    .locals 2

    .line 174
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/ProfilesTile;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 175
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/ProfilesTile;->mListening:Z

    if-eqz p1, :cond_1

    .line 177
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/ProfilesTile;->mObserver:Lcom/android/systemui/qs/tiles/ProfilesTile$ProfilesObserver;

    invoke-virtual {p1}, Lcom/android/systemui/qs/tiles/ProfilesTile$ProfilesObserver;->startObserving()V

    .line 178
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "lineageos.platform.intent.action.PROFILE_SELECTED"

    .line 179
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "lineageos.platform.intent.action.PROFILE_UPDATED"

    .line 180
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ProfilesTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 182
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/ProfilesTile;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ProfilesTile;->mCallback:Lcom/android/systemui/qs/tiles/ProfilesTile$KeyguardMonitorCallback;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 183
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    goto :goto_0

    .line 185
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/ProfilesTile;->mObserver:Lcom/android/systemui/qs/tiles/ProfilesTile$ProfilesObserver;

    invoke-virtual {p1}, Lcom/android/systemui/qs/tiles/ProfilesTile$ProfilesObserver;->endObserving()V

    .line 186
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ProfilesTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 187
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/ProfilesTile;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/ProfilesTile;->mCallback:Lcom/android/systemui/qs/tiles/ProfilesTile$KeyguardMonitorCallback;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 4

    .line 131
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/ProfilesTile;->mIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 132
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->quick_settings_profiles_label:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 133
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/ProfilesTile;->profilesEnabled()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 134
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/ProfilesTile;->mProfileManager:Llineageos/app/ProfileManager;

    invoke-virtual {p2}, Llineageos/app/ProfileManager;->getActiveProfile()Llineageos/app/Profile;

    move-result-object p2

    invoke-virtual {p2}, Llineageos/app/Profile;->getName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 135
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$string;->accessibility_quick_settings_profiles:I

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    aput-object v3, v1, v2

    invoke-virtual {p0, p2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    const/4 p0, 0x2

    .line 137
    iput p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 139
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 140
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$string;->accessibility_quick_settings_profiles_off:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 142
    iput v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 144
    :goto_0
    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    return-void
.end method

.method public synthetic lambda$handleClick$0$ProfilesTile()V
    .locals 1

    .line 104
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/ProfilesTile;->profilesEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/ProfilesTile;->setProfilesEnabled(Ljava/lang/Boolean;)V

    return-void
.end method

.method public synthetic lambda$handleSecondaryClick$1$ProfilesTile()V
    .locals 2

    const/4 v0, 0x1

    .line 115
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/tiles/ProfilesTile;->setProfilesEnabled(Ljava/lang/Boolean;)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showDetail(Z)V

    return-void
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 87
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$State;-><init>()V

    return-object p0
.end method
