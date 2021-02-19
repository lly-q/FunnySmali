.class public Llineageos/app/ProfileManager;
.super Ljava/lang/Object;
.source "ProfileManager.java"


# static fields
.field public static final NO_PROFILE:Ljava/util/UUID;

.field private static sProfileManagerInstance:Llineageos/app/ProfileManager;

.field private static sService:Llineageos/app/IProfileManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "00000000-0000-0000-0000-000000000000"

    .line 143
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Llineageos/app/ProfileManager;->NO_PROFILE:Ljava/util/UUID;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 235
    iput-object v0, p0, Llineageos/app/ProfileManager;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 237
    :cond_0
    iput-object p1, p0, Llineageos/app/ProfileManager;->mContext:Landroid/content/Context;

    .line 239
    :goto_0
    invoke-static {}, Llineageos/app/ProfileManager;->getService()Llineageos/app/IProfileManager;

    move-result-object p0

    sput-object p0, Llineageos/app/ProfileManager;->sService:Llineageos/app/IProfileManager;

    .line 241
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string p1, "org.lineageos.profiles"

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Llineageos/app/ProfileManager;->sService:Llineageos/app/IProfileManager;

    if-nez p0, :cond_1

    const-string p0, "ProfileManager"

    const-string p1, "Unable to get ProfileManagerService. The service either crashed, was not started, or the interface has been called to early in SystemServer init"

    .line 243
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Llineageos/app/ProfileManager;
    .locals 1

    .line 255
    sget-object v0, Llineageos/app/ProfileManager;->sProfileManagerInstance:Llineageos/app/ProfileManager;

    if-nez v0, :cond_0

    .line 256
    new-instance v0, Llineageos/app/ProfileManager;

    invoke-direct {v0, p0}, Llineageos/app/ProfileManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Llineageos/app/ProfileManager;->sProfileManagerInstance:Llineageos/app/ProfileManager;

    .line 258
    :cond_0
    sget-object p0, Llineageos/app/ProfileManager;->sProfileManagerInstance:Llineageos/app/ProfileManager;

    return-object p0
.end method

.method public static getService()Llineageos/app/IProfileManager;
    .locals 1

    .line 263
    sget-object v0, Llineageos/app/ProfileManager;->sService:Llineageos/app/IProfileManager;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "profile"

    .line 266
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 267
    invoke-static {v0}, Llineageos/app/IProfileManager$Stub;->asInterface(Landroid/os/IBinder;)Llineageos/app/IProfileManager;

    move-result-object v0

    sput-object v0, Llineageos/app/ProfileManager;->sService:Llineageos/app/IProfileManager;

    .line 268
    sget-object v0, Llineageos/app/ProfileManager;->sService:Llineageos/app/IProfileManager;

    return-object v0
.end method


# virtual methods
.method public getActiveProfile()Llineageos/app/Profile;
    .locals 2

    .line 301
    :try_start_0
    invoke-static {}, Llineageos/app/ProfileManager;->getService()Llineageos/app/IProfileManager;

    move-result-object p0

    invoke-interface {p0}, Llineageos/app/IProfileManager;->getActiveProfile()Llineageos/app/Profile;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 303
    invoke-virtual {p0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProfileManager"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getProfiles()[Llineageos/app/Profile;
    .locals 2

    .line 399
    :try_start_0
    invoke-static {}, Llineageos/app/ProfileManager;->getService()Llineageos/app/IProfileManager;

    move-result-object p0

    invoke-interface {p0}, Llineageos/app/IProfileManager;->getProfiles()[Llineageos/app/Profile;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 401
    invoke-virtual {p0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProfileManager"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public setActiveProfile(Ljava/util/UUID;)V
    .locals 1

    .line 289
    :try_start_0
    invoke-static {}, Llineageos/app/ProfileManager;->getService()Llineageos/app/IProfileManager;

    move-result-object p0

    new-instance v0, Landroid/os/ParcelUuid;

    invoke-direct {v0, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {p0, v0}, Llineageos/app/IProfileManager;->setActiveProfile(Landroid/os/ParcelUuid;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 291
    invoke-virtual {p0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ProfileManager"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
