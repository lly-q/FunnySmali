.class public Lcom/android/systemui/qs/tiles/PowerShareTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "PowerShareTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;",
        "Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;"
    }
.end annotation


# instance fields
.field private mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private mNotification:Landroid/app/Notification;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPowerShare:Lvendor/lineage/powershare/V1_0/IPowerShare;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/statusbar/policy/BatteryController;)V
    .locals 3

    .line 53
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 54
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/PowerShareTile;->getPowerShare()Lvendor/lineage/powershare/V1_0/IPowerShare;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/PowerShareTile;->mPowerShare:Lvendor/lineage/powershare/V1_0/IPowerShare;

    .line 55
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/PowerShareTile;->mPowerShare:Lvendor/lineage/powershare/V1_0/IPowerShare;

    if-nez p1, :cond_0

    return-void

    .line 59
    :cond_0
    iput-object p2, p0, Lcom/android/systemui/qs/tiles/PowerShareTile;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 60
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/PowerShareTile;->mNotificationManager:Landroid/app/NotificationManager;

    .line 62
    new-instance p1, Landroid/app/NotificationChannel;

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->quick_settings_powershare_label:I

    .line 63
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "powershare"

    invoke-direct {p1, v2, v0, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 65
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PowerShareTile;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 67
    new-instance p1, Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->quick_settings_powershare_enabled_label:I

    .line 69
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 70
    sget v0, Lcom/android/systemui/R$drawable;->ic_qs_powershare:I

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    const/4 v0, 0x1

    .line 71
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 72
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/PowerShareTile;->mNotification:Landroid/app/Notification;

    .line 73
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/PowerShareTile;->mNotification:Landroid/app/Notification;

    iget v1, p1, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x22

    iput v1, p1, Landroid/app/Notification;->flags:I

    .line 74
    iput v0, p1, Landroid/app/Notification;->visibility:I

    .line 76
    invoke-interface {p2, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method private getBatteryLevel()I
    .locals 1

    .line 219
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/BatteryManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/BatteryManager;

    const/4 v0, 0x4

    .line 220
    invoke-virtual {p0, v0}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result p0

    return p0
.end method

.method private getMinBatteryLevel()I
    .locals 0

    .line 210
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/PowerShareTile;->mPowerShare:Lvendor/lineage/powershare/V1_0/IPowerShare;

    invoke-interface {p0}, Lvendor/lineage/powershare/V1_0/IPowerShare;->getMinBattery()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 212
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method private declared-synchronized getPowerShare()Lvendor/lineage/powershare/V1_0/IPowerShare;
    .locals 1

    monitor-enter p0

    .line 198
    :try_start_0
    invoke-static {}, Lvendor/lineage/powershare/V1_0/IPowerShare;->getService()Lvendor/lineage/powershare/V1_0/IPowerShare;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 200
    :try_start_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_1
    const/4 v0, 0x0

    .line 205
    monitor-exit p0

    return-object v0

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method private updatePowerShareState()V
    .locals 2

    .line 92
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/PowerShareTile;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PowerShareTile;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/BatteryController;->isPowerSave()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PowerShareTile;->mPowerShare:Lvendor/lineage/powershare/V1_0/IPowerShare;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lvendor/lineage/powershare/V1_0/IPowerShare;->setEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 100
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 105
    :cond_1
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PowerShareTile;->mPowerShare:Lvendor/lineage/powershare/V1_0/IPowerShare;

    invoke-interface {v0}, Lvendor/lineage/powershare/V1_0/IPowerShare;->isEnabled()Z

    move-result v0

    const v1, 0x42b92

    if-eqz v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PowerShareTile;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/PowerShareTile;->mNotification:Landroid/app/Notification;

    invoke-virtual {v0, v1, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_1

    .line 108
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/PowerShareTile;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, v1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 111
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method public getLongClickIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const p0, -0x7fffffd0

    return p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PowerShareTile;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/BatteryController;->isPowerSave()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->quick_settings_powershare_off_powersave_label:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 150
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/PowerShareTile;->getBatteryLevel()I

    move-result v0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/PowerShareTile;->getMinBatteryLevel()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 151
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->quick_settings_powershare_off_low_battery_label:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 155
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->quick_settings_powershare_label:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public handleClick()V
    .locals 3

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PowerShareTile;->mPowerShare:Lvendor/lineage/powershare/V1_0/IPowerShare;

    invoke-interface {v0}, Lvendor/lineage/powershare/V1_0/IPowerShare;->isEnabled()Z

    move-result v0

    .line 132
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/PowerShareTile;->mPowerShare:Lvendor/lineage/powershare/V1_0/IPowerShare;

    if-nez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1, v2}, Lvendor/lineage/powershare/V1_0/IPowerShare;->setEnabled(Z)Z

    move-result v1

    if-eq v1, v0, :cond_1

    .line 133
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/PowerShareTile;->refreshState()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 136
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public handleSetListening(Z)V
    .locals 0

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 2

    .line 160
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/PowerShareTile;->isAvailable()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 164
    :cond_0
    iget-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    if-nez p2, :cond_1

    .line 165
    new-instance p2, Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    invoke-direct {p2}, Lcom/android/systemui/plugins/qs/QSTile$SlashState;-><init>()V

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    .line 168
    :cond_1
    sget p2, Lcom/android/systemui/R$drawable;->ic_qs_powershare:I

    invoke-static {p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    const/4 p2, 0x0

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PowerShareTile;->mPowerShare:Lvendor/lineage/powershare/V1_0/IPowerShare;

    invoke-interface {v0}, Lvendor/lineage/powershare/V1_0/IPowerShare;->isEnabled()Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 172
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 173
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 175
    :goto_0
    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    iget-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    iput-boolean v1, v0, Lcom/android/systemui/plugins/qs/QSTile$SlashState;->isSlashed:Z

    .line 176
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->quick_settings_powershare_label:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 178
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PowerShareTile;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/BatteryController;->isPowerSave()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/PowerShareTile;->getBatteryLevel()I

    move-result v0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/PowerShareTile;->getMinBatteryLevel()I

    move-result p0

    if-ge v0, p0, :cond_2

    goto :goto_1

    .line 180
    :cond_2
    iget-boolean p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-nez p0, :cond_3

    const/4 p0, 0x1

    .line 181
    iput p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    goto :goto_2

    :cond_3
    const/4 p0, 0x2

    .line 183
    iput p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    goto :goto_2

    .line 179
    :cond_4
    :goto_1
    iput p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    :goto_2
    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .line 41
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/PowerShareTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/PowerShareTile;->mPowerShare:Lvendor/lineage/powershare/V1_0/IPowerShare;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 1

    .line 122
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    const/4 v0, 0x0

    .line 123
    iput-boolean v0, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->handlesLongClick:Z

    return-object p0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 41
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/PowerShareTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object p0

    return-object p0
.end method

.method public onPowerSaveChanged(Z)V
    .locals 0

    .line 81
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/PowerShareTile;->refreshState()V

    return-void
.end method

.method public refreshState()V
    .locals 0

    .line 86
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/PowerShareTile;->updatePowerShareState()V

    .line 88
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    return-void
.end method
