.class public Llineageos/hardware/LiveDisplayManager;
.super Ljava/lang/Object;
.source "LiveDisplayManager.java"


# static fields
.field private static sInstance:Llineageos/hardware/LiveDisplayManager;

.field private static sService:Llineageos/hardware/ILiveDisplayService;


# instance fields
.field private mConfig:Llineageos/hardware/LiveDisplayConfig;

.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    iput-object v0, p0, Llineageos/hardware/LiveDisplayManager;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 150
    :cond_0
    iput-object p1, p0, Llineageos/hardware/LiveDisplayManager;->mContext:Landroid/content/Context;

    .line 152
    :goto_0
    invoke-static {}, Llineageos/hardware/LiveDisplayManager;->getService()Llineageos/hardware/ILiveDisplayService;

    move-result-object v0

    sput-object v0, Llineageos/hardware/LiveDisplayManager;->sService:Llineageos/hardware/ILiveDisplayService;

    .line 154
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "org.lineageos.livedisplay"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 155
    invoke-direct {p0}, Llineageos/hardware/LiveDisplayManager;->checkService()Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    const-string p0, "LiveDisplay"

    const-string p1, "Unable to get LiveDisplayService. The service either crashed, was not started, or the interface has been called to early in SystemServer init"

    .line 156
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private checkService()Z
    .locals 1

    .line 191
    sget-object p0, Llineageos/hardware/LiveDisplayManager;->sService:Llineageos/hardware/ILiveDisplayService;

    if-nez p0, :cond_0

    const-string p0, "LiveDisplay"

    const-string v0, "not connected to LineageHardwareManagerService"

    .line 192
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Llineageos/hardware/LiveDisplayManager;
    .locals 2

    const-class v0, Llineageos/hardware/LiveDisplayManager;

    monitor-enter v0

    .line 168
    :try_start_0
    sget-object v1, Llineageos/hardware/LiveDisplayManager;->sInstance:Llineageos/hardware/LiveDisplayManager;

    if-nez v1, :cond_0

    .line 169
    new-instance v1, Llineageos/hardware/LiveDisplayManager;

    invoke-direct {v1, p0}, Llineageos/hardware/LiveDisplayManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Llineageos/hardware/LiveDisplayManager;->sInstance:Llineageos/hardware/LiveDisplayManager;

    .line 171
    :cond_0
    sget-object p0, Llineageos/hardware/LiveDisplayManager;->sInstance:Llineageos/hardware/LiveDisplayManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getService()Llineageos/hardware/ILiveDisplayService;
    .locals 1

    .line 176
    sget-object v0, Llineageos/hardware/LiveDisplayManager;->sService:Llineageos/hardware/ILiveDisplayService;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "lineagelivedisplay"

    .line 179
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 181
    invoke-static {v0}, Llineageos/hardware/ILiveDisplayService$Stub;->asInterface(Landroid/os/IBinder;)Llineageos/hardware/ILiveDisplayService;

    move-result-object v0

    sput-object v0, Llineageos/hardware/LiveDisplayManager;->sService:Llineageos/hardware/ILiveDisplayService;

    .line 182
    sget-object v0, Llineageos/hardware/LiveDisplayManager;->sService:Llineageos/hardware/ILiveDisplayService;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getConfig()Llineageos/hardware/LiveDisplayConfig;
    .locals 2

    const/4 v0, 0x0

    .line 205
    :try_start_0
    iget-object v1, p0, Llineageos/hardware/LiveDisplayManager;->mConfig:Llineageos/hardware/LiveDisplayConfig;

    if-nez v1, :cond_1

    .line 206
    invoke-direct {p0}, Llineageos/hardware/LiveDisplayManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Llineageos/hardware/LiveDisplayManager;->sService:Llineageos/hardware/ILiveDisplayService;

    invoke-interface {v1}, Llineageos/hardware/ILiveDisplayService;->getConfig()Llineageos/hardware/LiveDisplayConfig;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Llineageos/hardware/LiveDisplayManager;->mConfig:Llineageos/hardware/LiveDisplayConfig;

    .line 208
    :cond_1
    iget-object p0, p0, Llineageos/hardware/LiveDisplayManager;->mConfig:Llineageos/hardware/LiveDisplayConfig;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public getDayColorTemperature()I
    .locals 1

    const/4 v0, -0x1

    .line 329
    :try_start_0
    invoke-direct {p0}, Llineageos/hardware/LiveDisplayManager;->checkService()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Llineageos/hardware/LiveDisplayManager;->sService:Llineageos/hardware/ILiveDisplayService;

    invoke-interface {p0}, Llineageos/hardware/ILiveDisplayService;->getDayColorTemperature()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return v0
.end method

.method public getMode()I
    .locals 1

    const/4 v0, 0x0

    .line 221
    :try_start_0
    invoke-direct {p0}, Llineageos/hardware/LiveDisplayManager;->checkService()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Llineageos/hardware/LiveDisplayManager;->sService:Llineageos/hardware/ILiveDisplayService;

    invoke-interface {p0}, Llineageos/hardware/ILiveDisplayService;->getMode()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return v0
.end method

.method public setMode(I)Z
    .locals 1

    const/4 v0, 0x0

    .line 235
    :try_start_0
    invoke-direct {p0}, Llineageos/hardware/LiveDisplayManager;->checkService()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Llineageos/hardware/LiveDisplayManager;->sService:Llineageos/hardware/ILiveDisplayService;

    invoke-interface {p0, p1}, Llineageos/hardware/ILiveDisplayService;->setMode(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method
