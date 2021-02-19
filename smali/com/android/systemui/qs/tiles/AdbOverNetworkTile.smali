.class public Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "AdbOverNetworkTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/AdbOverNetworkTile$KeyguardMonitorCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# static fields
.field private static final SETTINGS_DEVELOPMENT:Landroid/content/Intent;


# instance fields
.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mKeyguardCallback:Lcom/android/systemui/qs/tiles/AdbOverNetworkTile$KeyguardMonitorCallback;

.field private final mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private mListening:Z

.field private mNetworkAddress:Ljava/lang/String;

.field private mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mObserver:Landroid/database/ContentObserver;

.field private final mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 61
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DEVELOPMENT_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;->SETTINGS_DEVELOPMENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 1

    .line 66
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 54
    new-instance p1, Lcom/android/systemui/qs/tiles/AdbOverNetworkTile$KeyguardMonitorCallback;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/qs/tiles/AdbOverNetworkTile$KeyguardMonitorCallback;-><init>(Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;Lcom/android/systemui/qs/tiles/AdbOverNetworkTile$1;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;->mKeyguardCallback:Lcom/android/systemui/qs/tiles/AdbOverNetworkTile$KeyguardMonitorCallback;

    .line 146
    new-instance p1, Lcom/android/systemui/qs/tiles/AdbOverNetworkTile$1;

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/qs/tiles/AdbOverNetworkTile$1;-><init>(Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;->mObserver:Landroid/database/ContentObserver;

    .line 181
    new-instance p1, Lcom/android/systemui/qs/tiles/AdbOverNetworkTile$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/AdbOverNetworkTile$2;-><init>(Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 67
    const-class p1, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 68
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 69
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {p1}, Lcom/android/systemui/qs/QSHost;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;->mNetworkAddress:Ljava/lang/String;

    return-object p1
.end method

.method private canEnableAdbNetwork()Z
    .locals 1

    .line 128
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;->isAdbEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;->isNetworkAvailable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isAdbEnabled()Z
    .locals 2

    .line 118
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "adb_enabled"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-lez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isAdbNetworkEnabled()Z
    .locals 2

    .line 123
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "adb_port"

    invoke-static {p0, v1, v0}, Llineageos/providers/LineageSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-lez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isNetworkAvailable()Z
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;->mNetworkAddress:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic lambda$rECy2-jClNyYRbud-d4QVdGKhk0(Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;->toggleAction()V

    return-void
.end method

.method private toggleAction()V
    .locals 3

    .line 136
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-nez v0, :cond_0

    .line 138
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;->canEnableAdbNetwork()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 141
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x15b3

    :goto_0
    const/4 v1, -0x2

    const-string v2, "adb_port"

    invoke-static {p0, v2, v0, v1}, Llineageos/providers/LineageSettings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method


# virtual methods
.method public getLongClickIntent()Landroid/content/Intent;
    .locals 0

    .line 89
    sget-object p0, Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;->SETTINGS_DEVELOPMENT:Landroid/content/Intent;

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const p0, -0x7fffffea

    return p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 109
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->quick_settings_network_adb_label:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected handleClick()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->canSkipBouncer()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v1, Lcom/android/systemui/qs/tiles/-$$Lambda$AdbOverNetworkTile$rECy2-jClNyYRbud-d4QVdGKhk0;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/-$$Lambda$AdbOverNetworkTile$rECy2-jClNyYRbud-d4QVdGKhk0;-><init>(Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;)V

    .line 81
    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 83
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;->toggleAction()V

    :goto_0
    return-void
.end method

.method public handleSetListening(Z)V
    .locals 3

    .line 155
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;->mListening:Z

    if-eq v0, p1, :cond_1

    .line 156
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;->mListening:Z

    if-eqz p1, :cond_0

    .line 158
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "adb_port"

    .line 159
    invoke-static {v0}, Llineageos/providers/LineageSettings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;->mObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    .line 158
    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 161
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "adb_enabled"

    .line 162
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;->mObserver:Landroid/database/ContentObserver;

    .line 161
    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 164
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;->mKeyguardCallback:Lcom/android/systemui/qs/tiles/AdbOverNetworkTile$KeyguardMonitorCallback;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 165
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {p1, p0}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_0

    .line 167
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 168
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;->mKeyguardCallback:Lcom/android/systemui/qs/tiles/AdbOverNetworkTile$KeyguardMonitorCallback;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 169
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {p1, p0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 1

    .line 94
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;->isAdbEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;->isAdbNetworkEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 95
    sget p2, Lcom/android/systemui/R$drawable;->ic_qs_network_adb:I

    invoke-static {p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 96
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->quick_settings_network_adb_label:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 97
    iget-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz p2, :cond_2

    .line 98
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;->mNetworkAddress:Ljava/lang/String;

    if-eqz p2, :cond_1

    goto :goto_1

    .line 99
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$string;->quick_settings_network_adb_no_network:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_1
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    const/4 p0, 0x2

    .line 100
    iput p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    .line 102
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 103
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;->canEnableAdbNetwork()Z

    move-result p0

    iput p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    :goto_2
    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .line 50
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 0

    .line 74
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 50
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object p0

    return-object p0
.end method
