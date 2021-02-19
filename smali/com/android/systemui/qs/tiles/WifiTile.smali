.class public Lcom/android/systemui/qs/tiles/WifiTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "WifiTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;,
        Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;,
        Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$SignalState;",
        ">;"
    }
.end annotation


# static fields
.field private static final WIFI_SETTINGS:Landroid/content/Intent;


# instance fields
.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field protected final mController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private final mDetailAdapter:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

.field private mExpectDisabled:Z

.field protected final mSignalCallback:Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;

.field private final mStateBeforeClick:Lcom/android/systemui/plugins/qs/QSTile$SignalState;

.field private final mWifiController:Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/qs/tiles/WifiTile;->WIFI_SETTINGS:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/plugins/ActivityStarter;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 63
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mStateBeforeClick:Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    .line 65
    new-instance p1, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;-><init>(Lcom/android/systemui/qs/tiles/WifiTile;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;

    .line 73
    iput-object p2, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 74
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/NetworkController;->getAccessPointController()Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiController:Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;

    .line 75
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->createDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    .line 76
    iput-object p3, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 77
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p2

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;

    invoke-interface {p1, p2, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 57
    sget-boolean v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/WifiTile;)Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/tiles/WifiTile;)Landroid/content/Context;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1100()Z
    .locals 1

    .line 57
    sget-boolean v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/tiles/WifiTile;)Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiController:Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/plugins/ActivityStarter;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/qs/QSHost;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/WifiTile;)Z
    .locals 0

    .line 57
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->isShowingDetail()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/WifiTile;)Landroid/content/Context;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600()Landroid/content/Intent;
    .locals 1

    .line 57
    sget-object v0, Lcom/android/systemui/qs/tiles/WifiTile;->WIFI_SETTINGS:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    return-object p0
.end method

.method static synthetic access$800()Z
    .locals 1

    .line 57
    sget-boolean v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/tiles/WifiTile;)Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method private getSecondaryLabel(ZLjava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    if-eqz p1, :cond_0

    .line 226
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->quick_settings_wifi_secondary_label_transient:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method private static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 256
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    const/4 v2, 0x0

    .line 257
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-ne v2, v3, :cond_1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1

    .line 258
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_0

    .line 243
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->accessibility_quick_settings_wifi_changed_on:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 245
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->accessibility_quick_settings_wifi_changed_off:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected createDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 1

    .line 105
    new-instance v0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/WifiTile;)V

    return-object v0
.end method

.method public createTileView(Landroid/content/Context;)Lcom/android/systemui/plugins/qs/QSIconView;
    .locals 0

    .line 110
    new-instance p0, Lcom/android/systemui/qs/AlphaControlledSignalTileView;

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/AlphaControlledSignalTileView;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    return-object p0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 0

    .line 115
    sget-object p0, Lcom/android/systemui/qs/tiles/WifiTile;->WIFI_SETTINGS:Landroid/content/Intent;

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x7e

    return p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 152
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->quick_settings_wifi_label:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected handleClick()V
    .locals 4

    .line 121
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mStateBeforeClick:Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    invoke-virtual {v0, v1}, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->copyTo(Lcom/android/systemui/plugins/qs/QSTile$State;)Z

    .line 122
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 124
    :cond_0
    sget-object v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 125
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    if-nez v0, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->setWifiEnabled(Z)V

    .line 126
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mExpectDisabled:Z

    .line 127
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mExpectDisabled:Z

    if-eqz v0, :cond_2

    .line 128
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    new-instance v1, Lcom/android/systemui/qs/tiles/-$$Lambda$WifiTile$FBMX-zj483F7uFPAUwutmnquiRU;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/-$$Lambda$WifiTile$FBMX-zj483F7uFPAUwutmnquiRU;-><init>(Lcom/android/systemui/qs/tiles/WifiTile;)V

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method protected handleSecondaryClick()V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiController:Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;->canConfigWifi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 144
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showDetail(Z)V

    .line 145
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    iget-boolean v1, v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-nez v1, :cond_1

    .line 146
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->setWifiEnabled(Z)V

    :cond_1
    return-void
.end method

.method public handleSetListening(Z)V
    .locals 0

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$SignalState;Ljava/lang/Object;)V
    .locals 8

    .line 157
    sget-boolean v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleUpdateState arg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    .line 159
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mExpectDisabled:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 160
    iget-boolean v1, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    if-eqz v1, :cond_1

    return-void

    .line 163
    :cond_1
    iput-boolean v2, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mExpectDisabled:Z

    .line 166
    :cond_2
    sget-object v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    const/4 v3, 0x1

    if-ne p2, v1, :cond_3

    move p2, v3

    goto :goto_0

    :cond_3
    move p2, v2

    .line 167
    :goto_0
    iget-boolean v1, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    if-eqz v1, :cond_4

    iget v1, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiSignalIconId:I

    if-lez v1, :cond_4

    iget-object v1, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->ssid:Ljava/lang/String;

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_1

    :cond_4
    move v1, v2

    .line 168
    :goto_1
    iget v4, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiSignalIconId:I

    if-lez v4, :cond_5

    iget-object v4, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->ssid:Ljava/lang/String;

    if-nez v4, :cond_5

    move v4, v3

    goto :goto_2

    :cond_5
    move v4, v2

    .line 169
    :goto_2
    iget-boolean v5, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    iget-boolean v6, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    if-eq v5, v6, :cond_6

    move v5, v3

    goto :goto_3

    :cond_6
    move v5, v2

    :goto_3
    if-eqz v5, :cond_7

    .line 171
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    iget-boolean v6, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    invoke-virtual {v5, v6}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->setItemsVisible(Z)V

    .line 172
    iget-boolean v5, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->fireToggleStateChanged(Z)V

    .line 174
    :cond_7
    iget-object v5, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    if-nez v5, :cond_8

    .line 175
    new-instance v5, Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    invoke-direct {v5}, Lcom/android/systemui/plugins/qs/QSTile$SlashState;-><init>()V

    iput-object v5, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    .line 176
    iget-object v5, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    const/high16 v6, 0x40c00000    # 6.0f

    iput v6, v5, Lcom/android/systemui/plugins/qs/QSTile$SlashState;->rotation:F

    .line 178
    :cond_8
    iget-object v5, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    iput-boolean v2, v5, Lcom/android/systemui/plugins/qs/QSTile$SlashState;->isSlashed:Z

    if-nez p2, :cond_a

    .line 179
    iget-boolean v5, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->isTransient:Z

    if-eqz v5, :cond_9

    goto :goto_4

    :cond_9
    move v5, v2

    goto :goto_5

    :cond_a
    :goto_4
    move v5, v3

    .line 180
    :goto_5
    iget-object v6, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->statusLabel:Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcom/android/systemui/qs/tiles/WifiTile;->getSecondaryLabel(ZLjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    const/4 v6, 0x2

    .line 181
    iput v6, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 182
    iput-boolean v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    if-nez p2, :cond_c

    .line 183
    iget-boolean p2, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    if-eqz p2, :cond_b

    goto :goto_6

    :cond_b
    move p2, v2

    goto :goto_7

    :cond_c
    :goto_6
    move p2, v3

    :goto_7
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 184
    iget-boolean p2, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    if-eqz p2, :cond_d

    iget-boolean p2, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->activityIn:Z

    if-eqz p2, :cond_d

    move p2, v3

    goto :goto_8

    :cond_d
    move p2, v2

    :goto_8
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityIn:Z

    .line 185
    iget-boolean p2, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    if-eqz p2, :cond_e

    iget-boolean p2, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->activityOut:Z

    if-eqz p2, :cond_e

    move p2, v3

    goto :goto_9

    :cond_e
    move p2, v2

    :goto_9
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityOut:Z

    .line 186
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    .line 187
    iget-object v6, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    if-eqz v5, :cond_f

    const v4, 0x1080539

    .line 189
    invoke-static {v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 191
    sget v4, Lcom/android/systemui/R$string;->quick_settings_wifi_label:I

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    goto :goto_a

    .line 192
    :cond_f
    iget-boolean v5, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    const v7, 0x1080559

    if-nez v5, :cond_10

    .line 193
    iget-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    iput-boolean v3, v4, Lcom/android/systemui/plugins/qs/QSTile$SlashState;->isSlashed:Z

    .line 194
    iput v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 195
    invoke-static {v7}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 196
    sget v4, Lcom/android/systemui/R$string;->quick_settings_wifi_label:I

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    goto :goto_a

    :cond_10
    if-eqz v1, :cond_11

    .line 198
    iget v4, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiSignalIconId:I

    invoke-static {v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 199
    iget-object v4, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->ssid:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/WifiTile;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    goto :goto_a

    :cond_11
    if-eqz v4, :cond_12

    .line 201
    sget v4, Lcom/android/systemui/R$drawable;->ic_qs_wifi_disconnected:I

    invoke-static {v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 202
    sget v4, Lcom/android/systemui/R$string;->quick_settings_wifi_label:I

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    goto :goto_a

    .line 204
    :cond_12
    invoke-static {v7}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 205
    sget v4, Lcom/android/systemui/R$string;->quick_settings_wifi_label:I

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 207
    :goto_a
    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->quick_settings_wifi_label:I

    .line 208
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 207
    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, ","

    .line 208
    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 209
    iget-boolean v5, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v5, :cond_13

    if-eqz v1, :cond_13

    .line 211
    iget-object v1, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiSignalContentDescription:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 212
    iget-object v0, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->ssid:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 213
    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 214
    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 218
    :cond_13
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 219
    sget p2, Lcom/android/systemui/R$string;->accessibility_quick_settings_open_settings:I

    new-array v0, v3, [Ljava/lang/Object;

    .line 220
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->getTileLabel()Ljava/lang/CharSequence;

    move-result-object p0

    aput-object p0, v0, v2

    .line 219
    invoke-virtual {v6, p2, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualLabelContentDescription:Ljava/lang/CharSequence;

    .line 221
    const-class p0, Landroid/widget/Switch;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .line 57
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/WifiTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$SignalState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 1

    .line 251
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.wifi"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$handleClick$0$WifiTile()V
    .locals 1

    .line 129
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mExpectDisabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 130
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mExpectDisabled:Z

    .line 131
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    :cond_0
    return-void
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$SignalState;
    .locals 0

    .line 82
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$SignalState;-><init>()V

    return-object p0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 57
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    move-result-object p0

    return-object p0
.end method

.method public setDetailListening(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 92
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiController:Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;->addAccessPointCallback(Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;)V

    goto :goto_0

    .line 94
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiController:Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;->removeAccessPointCallback(Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;)V

    :goto_0
    return-void
.end method

.method protected shouldAnnouncementBeDelayed()Z
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mStateBeforeClick:Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast p0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    iget-boolean p0, p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
