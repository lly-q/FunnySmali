.class public Llineageos/preference/RemotePreferenceManager;
.super Ljava/lang/Object;
.source "RemotePreferenceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llineageos/preference/RemotePreferenceManager$OnRemoteUpdateListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "RemotePreferenceManager"

.field private static sInstance:Llineageos/preference/RemotePreferenceManager;


# instance fields
.field private final mCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Llineageos/preference/RemotePreferenceManager$OnRemoteUpdateListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mListener:Landroid/content/BroadcastReceiver;

.field private final mMainHandler:Landroid/os/Handler;

.field private mThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 52
    const-class v0, Llineageos/preference/RemotePreference;

    .line 53
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    .line 52
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Llineageos/preference/RemotePreferenceManager;->DEBUG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Llineageos/preference/RemotePreferenceManager;->mCache:Ljava/util/Map;

    .line 59
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Llineageos/preference/RemotePreferenceManager;->mCallbacks:Ljava/util/Map;

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Llineageos/preference/RemotePreferenceManager;->mMainHandler:Landroid/os/Handler;

    .line 140
    new-instance v0, Llineageos/preference/RemotePreferenceManager$1;

    invoke-direct {v0, p0}, Llineageos/preference/RemotePreferenceManager$1;-><init>(Llineageos/preference/RemotePreferenceManager;)V

    iput-object v0, p0, Llineageos/preference/RemotePreferenceManager;->mListener:Landroid/content/BroadcastReceiver;

    .line 73
    iput-object p1, p0, Llineageos/preference/RemotePreferenceManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 48
    sget-boolean v0, Llineageos/preference/RemotePreferenceManager;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 48
    sget-object v0, Llineageos/preference/RemotePreferenceManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Llineageos/preference/RemotePreferenceManager;)Ljava/util/Map;
    .locals 0

    .line 48
    iget-object p0, p0, Llineageos/preference/RemotePreferenceManager;->mCallbacks:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$300(Llineageos/preference/RemotePreferenceManager;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Llineageos/preference/RemotePreferenceManager;->requestUpdate(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Llineageos/preference/RemotePreferenceManager;)Landroid/os/Handler;
    .locals 0

    .line 48
    iget-object p0, p0, Llineageos/preference/RemotePreferenceManager;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Llineageos/preference/RemotePreferenceManager;
    .locals 2

    const-class v0, Llineageos/preference/RemotePreferenceManager;

    monitor-enter v0

    .line 77
    :try_start_0
    sget-object v1, Llineageos/preference/RemotePreferenceManager;->sInstance:Llineageos/preference/RemotePreferenceManager;

    if-nez v1, :cond_0

    .line 78
    new-instance v1, Llineageos/preference/RemotePreferenceManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Llineageos/preference/RemotePreferenceManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Llineageos/preference/RemotePreferenceManager;->sInstance:Llineageos/preference/RemotePreferenceManager;

    .line 80
    :cond_0
    sget-object p0, Llineageos/preference/RemotePreferenceManager;->sInstance:Llineageos/preference/RemotePreferenceManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private requestUpdate(Ljava/lang/String;)V
    .locals 10

    .line 129
    iget-object v0, p0, Llineageos/preference/RemotePreferenceManager;->mCache:Ljava/util/Map;

    monitor-enter v0

    .line 130
    :try_start_0
    iget-object v1, p0, Llineageos/preference/RemotePreferenceManager;->mCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/content/Intent;

    if-nez v2, :cond_0

    .line 132
    monitor-exit v0

    return-void

    .line 134
    :cond_0
    iget-object v1, p0, Llineageos/preference/RemotePreferenceManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v4, "lineageos.permission.MANAGE_REMOTE_PREFERENCES"

    iget-object v5, p0, Llineageos/preference/RemotePreferenceManager;->mListener:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Llineageos/preference/RemotePreferenceManager;->mHandler:Landroid/os/Handler;

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 137
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public attach(Ljava/lang/String;Llineageos/preference/RemotePreferenceManager$OnRemoteUpdateListener;)V
    .locals 7

    .line 85
    iget-object v0, p0, Llineageos/preference/RemotePreferenceManager;->mCache:Ljava/util/Map;

    monitor-enter v0

    .line 86
    :try_start_0
    iget-object v1, p0, Llineageos/preference/RemotePreferenceManager;->mCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    if-nez v1, :cond_0

    .line 87
    iget-object v2, p0, Llineageos/preference/RemotePreferenceManager;->mCache:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 88
    invoke-interface {p2}, Llineageos/preference/RemotePreferenceManager$OnRemoteUpdateListener;->getReceiverIntent()Landroid/content/Intent;

    move-result-object v1

    .line 89
    iget-object v2, p0, Llineageos/preference/RemotePreferenceManager;->mCache:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 92
    iget-object v2, p0, Llineageos/preference/RemotePreferenceManager;->mCallbacks:Ljava/util/Map;

    monitor-enter v2

    if-eqz v1, :cond_2

    .line 94
    :try_start_1
    iget-object v0, p0, Llineageos/preference/RemotePreferenceManager;->mCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_1

    .line 96
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 97
    iget-object v1, p0, Llineageos/preference/RemotePreferenceManager;->mCallbacks:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v1, p0, Llineageos/preference/RemotePreferenceManager;->mCallbacks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 99
    new-instance v1, Landroid/os/HandlerThread;

    const-string v3, "RemotePreference"

    invoke-direct {v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Llineageos/preference/RemotePreferenceManager;->mThread:Landroid/os/HandlerThread;

    .line 100
    iget-object v1, p0, Llineageos/preference/RemotePreferenceManager;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 101
    new-instance v1, Landroid/os/Handler;

    iget-object v3, p0, Llineageos/preference/RemotePreferenceManager;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Llineageos/preference/RemotePreferenceManager;->mHandler:Landroid/os/Handler;

    .line 102
    iget-object v1, p0, Llineageos/preference/RemotePreferenceManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Llineageos/preference/RemotePreferenceManager;->mListener:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "lineageos.intent.action.REFRESH_PREFERENCE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v5, "lineageos.permission.MANAGE_REMOTE_PREFERENCES"

    iget-object v6, p0, Llineageos/preference/RemotePreferenceManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 107
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-direct {p0, p1}, Llineageos/preference/RemotePreferenceManager;->requestUpdate(Ljava/lang/String;)V

    .line 110
    :cond_2
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 91
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public detach(Ljava/lang/String;Llineageos/preference/RemotePreferenceManager$OnRemoteUpdateListener;)V
    .locals 2

    .line 114
    iget-object v0, p0, Llineageos/preference/RemotePreferenceManager;->mCallbacks:Ljava/util/Map;

    monitor-enter v0

    .line 115
    :try_start_0
    iget-object v1, p0, Llineageos/preference/RemotePreferenceManager;->mCallbacks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-eqz v1, :cond_1

    .line 116
    invoke-interface {v1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Llineageos/preference/RemotePreferenceManager;->mCallbacks:Ljava/util/Map;

    .line 117
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Llineageos/preference/RemotePreferenceManager;->mCallbacks:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 118
    iget-object p1, p0, Llineageos/preference/RemotePreferenceManager;->mContext:Landroid/content/Context;

    iget-object p2, p0, Llineageos/preference/RemotePreferenceManager;->mListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 119
    iget-object p1, p0, Llineageos/preference/RemotePreferenceManager;->mThread:Landroid/os/HandlerThread;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 120
    iget-object p1, p0, Llineageos/preference/RemotePreferenceManager;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    .line 121
    iput-object p2, p0, Llineageos/preference/RemotePreferenceManager;->mThread:Landroid/os/HandlerThread;

    .line 123
    :cond_0
    iput-object p2, p0, Llineageos/preference/RemotePreferenceManager;->mHandler:Landroid/os/Handler;

    .line 125
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
