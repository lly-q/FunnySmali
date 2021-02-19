.class public Lcom/android/systemui/qs/tiles/DndTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "DndTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;
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
.field private static final ZEN_PRIORITY_SETTINGS:Landroid/content/Intent;

.field private static final ZEN_SETTINGS:Landroid/content/Intent;


# instance fields
.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private final mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

.field private final mDetailAdapter:Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;

.field private mListening:Z

.field private final mPrefListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiverRegistered:Z

.field private mShowingDetail:Z

.field private final mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

.field private final mZenModePanelCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 73
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ZEN_MODE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/qs/tiles/DndTile;->ZEN_SETTINGS:Landroid/content/Intent;

    .line 76
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ZEN_MODE_PRIORITY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/qs/tiles/DndTile;->ZEN_PRIORITY_SETTINGS:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/plugins/ActivityStarter;)V
    .locals 1

    .line 93
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 321
    new-instance p1, Lcom/android/systemui/qs/tiles/DndTile$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/DndTile$2;-><init>(Lcom/android/systemui/qs/tiles/DndTile;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mPrefListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 333
    new-instance p1, Lcom/android/systemui/qs/tiles/DndTile$3;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/DndTile$3;-><init>(Lcom/android/systemui/qs/tiles/DndTile;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    .line 350
    new-instance p1, Lcom/android/systemui/qs/tiles/DndTile$4;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/DndTile$4;-><init>(Lcom/android/systemui/qs/tiles/DndTile;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 471
    new-instance p1, Lcom/android/systemui/qs/tiles/DndTile$5;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/DndTile$5;-><init>(Lcom/android/systemui/qs/tiles/DndTile;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mZenModePanelCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

    .line 94
    iput-object p2, p0, Lcom/android/systemui/qs/tiles/DndTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 95
    iput-object p3, p0, Lcom/android/systemui/qs/tiles/DndTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 96
    new-instance p1, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/DndTile;Lcom/android/systemui/qs/tiles/DndTile$1;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;

    .line 97
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/DndTile;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance p3, Landroid/content/IntentFilter;

    const-string v0, "com.android.systemui.dndtile.SET_VISIBLE"

    invoke-direct {p3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 98
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mReceiverRegistered:Z

    .line 99
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p2

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    invoke-interface {p1, p2, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/DndTile;)Lcom/android/systemui/statusbar/policy/ZenModeController;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/tiles/DndTile;)Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    return-object p0
.end method

.method static synthetic access$1100()Landroid/content/Intent;
    .locals 1

    .line 67
    sget-object v0, Lcom/android/systemui/qs/tiles/DndTile;->ZEN_SETTINGS:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/tiles/DndTile;)Landroid/content/Context;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/tiles/DndTile;)Ljava/lang/String;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/qs/tiles/DndTile;)Lcom/android/systemui/volume/ZenModePanel$Callback;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mZenModePanelCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/systemui/qs/tiles/DndTile;)Landroid/content/Context;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/qs/tiles/DndTile;)Landroid/content/Context;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/systemui/qs/tiles/DndTile;)Landroid/content/Context;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/systemui/qs/tiles/DndTile;)Landroid/content/Context;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/systemui/qs/tiles/DndTile;)Ljava/lang/String;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/DndTile;Ljava/lang/Object;)V
    .locals 0

    .line 67
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2002(Lcom/android/systemui/qs/tiles/DndTile;Z)Z
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mShowingDetail:Z

    return p1
.end method

.method static synthetic access$2100()Landroid/content/Intent;
    .locals 1

    .line 67
    sget-object v0, Lcom/android/systemui/qs/tiles/DndTile;->ZEN_PRIORITY_SETTINGS:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/systemui/qs/tiles/DndTile;)Lcom/android/systemui/plugins/ActivityStarter;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/DndTile;)Z
    .locals 0

    .line 67
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->isShowingDetail()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/DndTile;)Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/DndTile;Ljava/lang/Object;)V
    .locals 0

    .line 67
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/DndTile;)Z
    .locals 0

    .line 67
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->isShowingDetail()Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/DndTile;)Landroid/content/Context;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/tiles/DndTile;)Landroid/content/Context;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static isCombinedIcon(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "DndTileCombinedIcon"

    const/4 v1, 0x0

    .line 124
    invoke-static {p0, v0, v1}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isVisible(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "DndTileVisible"

    const/4 v1, 0x0

    .line 116
    invoke-static {p0, v0, v1}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static setCombinedIcon(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "DndTileCombinedIcon"

    .line 120
    invoke-static {p0, v0, p1}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setVisible(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "DndTileVisible"

    .line 112
    invoke-static {p0, v0, p1}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_0

    .line 299
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->accessibility_quick_settings_dnd_changed_on:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 301
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->accessibility_quick_settings_dnd_changed_off:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;

    return-object p0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 0

    .line 140
    sget-object p0, Lcom/android/systemui/qs/tiles/DndTile;->ZEN_SETTINGS:Landroid/content/Intent;

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x76

    return p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 239
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->quick_settings_dnd_label:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected handleClick()V
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p0}, Lcom/android/systemui/statusbar/policy/ZenModeController;->setZen(ILandroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 149
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/DndTile;->turnOnDND(I)V

    :goto_0
    return-void
.end method

.method protected handleDestroy()V
    .locals 2

    .line 104
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    .line 105
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 107
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mReceiverRegistered:Z

    :cond_0
    return-void
.end method

.method protected handleSecondaryClick()V
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/ZenModeController;->isVolumeRestricted()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v0}, Lcom/android/systemui/qs/QSHost;->collapsePanels()V

    .line 225
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v0, 0x1040229

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 227
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 231
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/DndTile;->turnOnDND(I)V

    goto :goto_0

    .line 233
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showDetail(Z)V

    :goto_0
    return-void
.end method

.method public handleSetListening(Z)V
    .locals 1

    .line 307
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 308
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mListening:Z

    .line 309
    iget-boolean p1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mListening:Z

    if-eqz p1, :cond_1

    .line 310
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mPrefListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-static {p1, p0}, Lcom/android/systemui/Prefs;->registerListener(Landroid/content/Context;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    goto :goto_0

    .line 312
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mPrefListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-static {p1, p0}, Lcom/android/systemui/Prefs;->unregisterListener(Landroid/content/Context;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :goto_0
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 7

    .line 244
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    if-nez v0, :cond_0

    return-void

    .line 245
    :cond_0
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getZen()I

    move-result v0

    .line 246
    :goto_0
    instance-of v1, p2, Landroid/service/notification/ZenModeConfig;

    if-eqz v1, :cond_2

    .line 247
    check-cast p2, Landroid/service/notification/ZenModeConfig;

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/DndTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object p2

    :goto_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    move v3, v2

    goto :goto_2

    :cond_3
    move v3, v1

    .line 249
    :goto_2
    iget-boolean v4, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eq v4, v3, :cond_4

    move v4, v2

    goto :goto_3

    :cond_4
    move v4, v1

    .line 250
    :goto_3
    iget-object v5, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    if-nez v5, :cond_5

    new-instance v5, Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    invoke-direct {v5}, Lcom/android/systemui/plugins/qs/QSTile$SlashState;-><init>()V

    iput-object v5, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    .line 251
    :cond_5
    iput-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    .line 252
    iput-boolean v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 253
    iget-boolean v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    const/4 v5, 0x2

    if-eqz v3, :cond_6

    move v3, v5

    goto :goto_4

    :cond_6
    move v3, v2

    :goto_4
    iput v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 254
    iget-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    iget-boolean v6, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    xor-int/2addr v6, v2

    iput-boolean v6, v3, Lcom/android/systemui/plugins/qs/QSTile$SlashState;->isSlashed:Z

    .line 255
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DndTile;->getTileLabel()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 256
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_7

    move v6, v2

    goto :goto_5

    :cond_7
    move v6, v1

    :goto_5
    invoke-static {v3, v6, p2, v1}, Landroid/service/notification/ZenModeConfig;->getDescription(Landroid/content/Context;ZLandroid/service/notification/ZenModeConfig;Z)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    const p2, 0x1080518

    .line 258
    invoke-static {p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    const-string p2, "no_adjust_volume"

    .line 259
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->checkIfRestrictionEnforcedByAdminOnly(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/String;)V

    const-string p2, ", "

    if-eq v0, v2, :cond_a

    if-eq v0, v5, :cond_9

    const/4 v3, 0x3

    if-eq v0, v3, :cond_8

    .line 279
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->accessibility_quick_settings_dnd:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    goto :goto_6

    .line 273
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->accessibility_quick_settings_dnd:I

    .line 274
    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->accessibility_quick_settings_dnd_alarms_on:I

    .line 275
    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    goto :goto_6

    .line 267
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->accessibility_quick_settings_dnd:I

    .line 268
    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->accessibility_quick_settings_dnd_none_on:I

    .line 269
    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    goto :goto_6

    .line 262
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->accessibility_quick_settings_dnd:I

    .line 263
    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    :goto_6
    if-eqz v4, :cond_b

    .line 284
    iget-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->fireToggleStateChanged(Z)V

    .line 286
    :cond_b
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$string;->accessibility_quick_settings_open_settings:I

    new-array v2, v2, [Ljava/lang/Object;

    .line 287
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DndTile;->getTileLabel()Ljava/lang/CharSequence;

    move-result-object p0

    aput-object p0, v2, v1

    .line 286
    invoke-virtual {p2, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualLabelContentDescription:Ljava/lang/CharSequence;

    .line 288
    const-class p0, Landroid/widget/Switch;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .line 67
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/DndTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 0

    .line 318
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/DndTile;->isVisible(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 0

    .line 135
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 67
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DndTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object p0

    return-object p0
.end method

.method public turnOnDND(I)V
    .locals 6

    .line 154
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "zen_duration"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 156
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_zen_upgrade_notification"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 158
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "zen_settings_updated"

    invoke-static {v2, v5, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v4, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const/4 v5, 0x0

    if-eqz v2, :cond_1

    .line 162
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 165
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    invoke-interface {p1, v4, v5, v0}, Lcom/android/systemui/statusbar/policy/ZenModeController;->setZen(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 167
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.ZEN_MODE_ONBOARDING"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v0, 0x10008000

    .line 168
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 169
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {p0, p1, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    goto :goto_1

    .line 174
    :cond_1
    new-instance v1, Lcom/android/systemui/qs/tiles/DndTile$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/DndTile$1;-><init>(Lcom/android/systemui/qs/tiles/DndTile;)V

    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 183
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DndTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v2, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    :cond_2
    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    if-eqz v0, :cond_3

    .line 213
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 214
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 213
    invoke-static {p1, v0, v1, v4}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;IIZ)Landroid/service/notification/Condition;

    move-result-object p1

    iget-object p1, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    .line 215
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    invoke-interface {v0, v4, p1, p0}, Lcom/android/systemui/statusbar/policy/ZenModeController;->setZen(ILandroid/net/Uri;Ljava/lang/String;)V

    goto :goto_1

    .line 210
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    invoke-interface {p1, v4, v5, p0}, Lcom/android/systemui/statusbar/policy/ZenModeController;->setZen(ILandroid/net/Uri;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    if-ne p1, v4, :cond_5

    .line 189
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {p1, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 191
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    invoke-interface {p1, v4, v5, p0}, Lcom/android/systemui/statusbar/policy/ZenModeController;->setZen(ILandroid/net/Uri;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
