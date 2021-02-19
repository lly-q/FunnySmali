.class public Lcom/android/systemui/doze/DozeTriggers;
.super Ljava/lang/Object;
.source "DozeTriggers.java"

# interfaces
.implements Lcom/android/systemui/doze/DozeMachine$Part;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/doze/DozeTriggers$DockEventListener;,
        Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;,
        Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static sWakeDisplaySensorState:Z


# instance fields
.field private final mAllowPulseTriggers:Z

.field private final mBroadcastReceiver:Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;

.field private final mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

.field private final mContext:Landroid/content/Context;

.field private final mDockEventListener:Lcom/android/systemui/doze/DozeTriggers$DockEventListener;

.field private final mDockManager:Lcom/android/systemui/dock/DockManager;

.field private final mDozeHost:Lcom/android/systemui/doze/DozeHost;

.field private final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private final mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

.field private final mHandler:Landroid/os/Handler;

.field private mHostCallback:Lcom/android/systemui/doze/DozeHost$Callback;

.field private final mMachine:Lcom/android/systemui/doze/DozeMachine;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mNotificationPulseTime:J

.field private mPulsePending:Z

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private final mUiModeManager:Landroid/app/UiModeManager;

.field private final mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/doze/DozeTriggers;->DEBUG:Z

    const/4 v0, 0x1

    .line 68
    sput-boolean v0, Lcom/android/systemui/doze/DozeTriggers;->sWakeDisplaySensorState:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/doze/DozeMachine;Lcom/android/systemui/doze/DozeHost;Landroid/app/AlarmManager;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/statusbar/phone/DozeParameters;Landroid/hardware/SensorManager;Landroid/os/Handler;Lcom/android/systemui/util/wakelock/WakeLock;ZLcom/android/systemui/dock/DockManager;)V
    .locals 13

    move-object v0, p0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v1, Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;-><init>(Lcom/android/systemui/doze/DozeTriggers;Lcom/android/systemui/doze/DozeTriggers$1;)V

    iput-object v1, v0, Lcom/android/systemui/doze/DozeTriggers;->mBroadcastReceiver:Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;

    .line 82
    new-instance v1, Lcom/android/systemui/doze/DozeTriggers$DockEventListener;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/doze/DozeTriggers$DockEventListener;-><init>(Lcom/android/systemui/doze/DozeTriggers;Lcom/android/systemui/doze/DozeTriggers$1;)V

    iput-object v1, v0, Lcom/android/systemui/doze/DozeTriggers;->mDockEventListener:Lcom/android/systemui/doze/DozeTriggers$DockEventListener;

    .line 88
    const-class v1, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/logging/MetricsLogger;

    iput-object v1, v0, Lcom/android/systemui/doze/DozeTriggers;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 571
    new-instance v1, Lcom/android/systemui/doze/DozeTriggers$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/doze/DozeTriggers$2;-><init>(Lcom/android/systemui/doze/DozeTriggers;)V

    iput-object v1, v0, Lcom/android/systemui/doze/DozeTriggers;->mHostCallback:Lcom/android/systemui/doze/DozeHost$Callback;

    move-object v1, p1

    .line 94
    iput-object v1, v0, Lcom/android/systemui/doze/DozeTriggers;->mContext:Landroid/content/Context;

    move-object v2, p2

    .line 95
    iput-object v2, v0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    move-object/from16 v2, p3

    .line 96
    iput-object v2, v0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    move-object/from16 v7, p5

    .line 97
    iput-object v7, v0, Lcom/android/systemui/doze/DozeTriggers;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    move-object/from16 v6, p6

    .line 98
    iput-object v6, v0, Lcom/android/systemui/doze/DozeTriggers;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-object/from16 v2, p7

    .line 99
    iput-object v2, v0, Lcom/android/systemui/doze/DozeTriggers;->mSensorManager:Landroid/hardware/SensorManager;

    move-object/from16 v2, p8

    .line 100
    iput-object v2, v0, Lcom/android/systemui/doze/DozeTriggers;->mHandler:Landroid/os/Handler;

    move-object/from16 v8, p9

    .line 101
    iput-object v8, v0, Lcom/android/systemui/doze/DozeTriggers;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    move/from16 v2, p10

    .line 102
    iput-boolean v2, v0, Lcom/android/systemui/doze/DozeTriggers;->mAllowPulseTriggers:Z

    .line 103
    new-instance v12, Lcom/android/systemui/doze/DozeSensors;

    iget-object v5, v0, Lcom/android/systemui/doze/DozeTriggers;->mSensorManager:Landroid/hardware/SensorManager;

    new-instance v9, Lcom/android/systemui/doze/-$$Lambda$XuSeOmLZ56lHJGoIP26_sIwbcBM;

    invoke-direct {v9, p0}, Lcom/android/systemui/doze/-$$Lambda$XuSeOmLZ56lHJGoIP26_sIwbcBM;-><init>(Lcom/android/systemui/doze/DozeTriggers;)V

    new-instance v10, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$ulqUMEXi8OgK7771oZ9BOr21BBk;

    invoke-direct {v10, p0}, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$ulqUMEXi8OgK7771oZ9BOr21BBk;-><init>(Lcom/android/systemui/doze/DozeTriggers;)V

    .line 105
    invoke-virtual/range {p6 .. p6}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPolicy()Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    move-result-object v11

    move-object v2, v12

    move-object v3, p1

    move-object/from16 v4, p4

    invoke-direct/range {v2 .. v11}, Lcom/android/systemui/doze/DozeSensors;-><init>(Landroid/content/Context;Landroid/app/AlarmManager;Landroid/hardware/SensorManager;Lcom/android/systemui/statusbar/phone/DozeParameters;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/doze/DozeSensors$Callback;Ljava/util/function/Consumer;Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;)V

    iput-object v12, v0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    .line 106
    iget-object v1, v0, Lcom/android/systemui/doze/DozeTriggers;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/UiModeManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/UiModeManager;

    iput-object v1, v0, Lcom/android/systemui/doze/DozeTriggers;->mUiModeManager:Landroid/app/UiModeManager;

    move-object/from16 v1, p11

    .line 107
    iput-object v1, v0, Lcom/android/systemui/doze/DozeTriggers;->mDockManager:Lcom/android/systemui/dock/DockManager;

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/doze/DozeTriggers;Ljava/lang/Runnable;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeTriggers;->onNotification(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/doze/DozeTriggers;)Lcom/android/systemui/doze/DozeHost;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/doze/DozeTriggers;)Landroid/content/Context;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/doze/DozeTriggers;)Landroid/hardware/SensorManager;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mSensorManager:Landroid/hardware/SensorManager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/doze/DozeTriggers;)Lcom/android/systemui/doze/DozeSensors;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/doze/DozeTriggers;)Landroid/os/Handler;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/doze/DozeTriggers;)Lcom/android/systemui/util/wakelock/WakeLock;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/doze/DozeTriggers;IZLjava/lang/Runnable;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/doze/DozeTriggers;->requestPulse(IZLjava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/doze/DozeTriggers;)Lcom/android/systemui/doze/DozeMachine;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    return-object p0
.end method

.method private canPulse()Z
    .locals 2

    .line 395
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {v0}, Lcom/android/systemui/doze/DozeMachine;->getState()Lcom/android/systemui/doze/DozeMachine$State;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    .line 396
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeMachine;->getState()Lcom/android/systemui/doze/DozeMachine$State;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p0, v0, :cond_0

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

.method private checkTriggersAtInit()V
    .locals 2

    .line 347
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    .line 348
    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->isBlockingDoze()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    .line 349
    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->isProvisioned()Z

    move-result v0

    if-nez v0, :cond_1

    .line 350
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->FINISH:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {p0, v0}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    :cond_1
    return-void
.end method

.method private continuePulseRequest(I)V
    .locals 2

    const/4 v0, 0x0

    .line 400
    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mPulsePending:Z

    .line 401
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->isPulsingBlocked()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/doze/DozeTriggers;->canPulse()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 406
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeMachine;->requestPulse(I)V

    return-void

    .line 402
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mContext:Landroid/content/Context;

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mPulsePending:Z

    iget-object v1, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {v1}, Lcom/android/systemui/doze/DozeMachine;->getState()Lcom/android/systemui/doze/DozeMachine$State;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    .line 403
    invoke-interface {p0}, Lcom/android/systemui/doze/DozeHost;->isPulsingBlocked()Z

    move-result p0

    .line 402
    invoke-static {p1, v0, v1, p0}, Lcom/android/systemui/doze/DozeLog;->tracePulseDropped(Landroid/content/Context;ZLcom/android/systemui/doze/DozeMachine$State;Z)V

    return-void
.end method

.method private gentleWakeUp(I)V
    .locals 3

    .line 209
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v1, Landroid/metrics/LogMaker;

    const/16 v2, 0xdf

    invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v2, 0x6

    .line 210
    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 211
    invoke-virtual {v1, p1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 209
    invoke-virtual {v0, p1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 212
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayNeedsBlanking()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 216
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p1, v0}, Lcom/android/systemui/doze/DozeHost;->setAodDimmingScrim(F)V

    .line 218
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeMachine;->wakeUp()V

    return-void
.end method

.method public static synthetic lambda$ulqUMEXi8OgK7771oZ9BOr21BBk(Lcom/android/systemui/doze/DozeTriggers;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeTriggers;->onProximityFar(Z)V

    return-void
.end method

.method private onNotification(Ljava/lang/Runnable;)V
    .locals 2

    .line 111
    sget-boolean v0, Lcom/android/systemui/doze/DozeMachine;->DEBUG:Z

    const-string v1, "DozeTriggers"

    if-eqz v0, :cond_0

    const-string v0, "requestNotificationPulse"

    .line 112
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_0
    sget-boolean v0, Lcom/android/systemui/doze/DozeTriggers;->sWakeDisplaySensorState:Z

    if-nez v0, :cond_1

    const-string v0, "Wake display false. Pulse denied."

    .line 115
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-static {p1}, Lcom/android/systemui/doze/DozeTriggers;->runIfNotNull(Ljava/lang/Runnable;)V

    .line 117
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mContext:Landroid/content/Context;

    const-string p1, "wakeDisplaySensor"

    invoke-static {p0, p1}, Lcom/android/systemui/doze/DozeLog;->tracePulseDropped(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 120
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mNotificationPulseTime:J

    .line 121
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/hardware/display/AmbientDisplayConfiguration;->pulseOnNotificationEnabled(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 122
    invoke-static {p1}, Lcom/android/systemui/doze/DozeTriggers;->runIfNotNull(Ljava/lang/Runnable;)V

    .line 123
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mContext:Landroid/content/Context;

    const-string p1, "pulseOnNotificationsDisabled"

    invoke-static {p0, p1}, Lcom/android/systemui/doze/DozeLog;->tracePulseDropped(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 126
    invoke-direct {p0, v0, v1, p1}, Lcom/android/systemui/doze/DozeTriggers;->requestPulse(IZLjava/lang/Runnable;)V

    .line 128
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/doze/DozeLog;->traceNotificationPulse(Landroid/content/Context;)V

    return-void
.end method

.method private onProximityFar(Z)V
    .locals 8

    .line 225
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {v0}, Lcom/android/systemui/doze/DozeMachine;->isExecutingTransition()Z

    move-result v0

    const-string v1, "DozeTriggers"

    if-eqz v0, :cond_0

    const-string p0, "onProximityFar called during transition. Ignoring sensor response."

    .line 226
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    xor-int/lit8 v0, p1, 0x1

    .line 231
    iget-object v2, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {v2}, Lcom/android/systemui/doze/DozeMachine;->getState()Lcom/android/systemui/doze/DozeMachine$State;

    move-result-object v2

    .line 232
    sget-object v3, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSED:Lcom/android/systemui/doze/DozeMachine$State;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v4

    .line 233
    :goto_0
    sget-object v6, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSING:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne v2, v6, :cond_2

    move v6, v5

    goto :goto_1

    :cond_2
    move v6, v4

    .line 234
    :goto_1
    sget-object v7, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne v2, v7, :cond_3

    move v4, v5

    .line 236
    :cond_3
    sget-object v5, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSING:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq v2, v5, :cond_4

    sget-object v5, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSING_BRIGHT:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne v2, v5, :cond_6

    .line 239
    :cond_4
    sget-boolean v2, Lcom/android/systemui/doze/DozeTriggers;->DEBUG:Z

    if-eqz v2, :cond_5

    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Prox changed, ignore touch = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {v2, v0}, Lcom/android/systemui/doze/DozeHost;->onIgnoreTouchWhilePulsing(Z)V

    :cond_6
    if-eqz p1, :cond_9

    if-nez v3, :cond_7

    if-eqz v6, :cond_9

    .line 246
    :cond_7
    sget-boolean p1, Lcom/android/systemui/doze/DozeTriggers;->DEBUG:Z

    if-eqz p1, :cond_8

    const-string p1, "Prox FAR, unpausing AOD"

    .line 247
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_8
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    goto :goto_2

    :cond_9
    if-eqz v0, :cond_b

    if-eqz v4, :cond_b

    .line 251
    sget-boolean p1, Lcom/android/systemui/doze/DozeTriggers;->DEBUG:Z

    if-eqz p1, :cond_a

    const-string p1, "Prox NEAR, pausing AOD"

    .line 252
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_a
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSING:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    :cond_b
    :goto_2
    return-void
.end method

.method private onWakeScreen(ZLcom/android/systemui/doze/DozeMachine$State;)V
    .locals 4

    .line 265
    invoke-static {p1}, Lcom/android/systemui/doze/DozeLog;->traceWakeDisplay(Z)V

    .line 266
    sput-boolean p1, Lcom/android/systemui/doze/DozeTriggers;->sWakeDisplaySensorState:Z

    const/4 v0, 0x7

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 269
    new-instance p1, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$vUNGpAqR9niD5s7OS6n7KlXtw9c;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$vUNGpAqR9niD5s7OS6n7KlXtw9c;-><init>(Lcom/android/systemui/doze/DozeTriggers;Lcom/android/systemui/doze/DozeMachine$State;)V

    invoke-direct {p0, p1, v1, v0}, Lcom/android/systemui/doze/DozeTriggers;->proximityCheckThenCall(Ljava/util/function/IntConsumer;ZI)V

    goto :goto_2

    .line 283
    :cond_0
    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSED:Lcom/android/systemui/doze/DozeMachine$State;

    const/4 v2, 0x0

    if-ne p2, p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v2

    .line 284
    :goto_0
    sget-object v3, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSING:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p2, v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    if-nez v1, :cond_3

    if-nez p1, :cond_3

    .line 286
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    sget-object p2, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {p1, p2}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    .line 288
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance p1, Landroid/metrics/LogMaker;

    const/16 p2, 0xdf

    invoke-direct {p1, p2}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 p2, 0x2

    .line 289
    invoke-virtual {p1, p2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 290
    invoke-virtual {p1, v0}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 288
    invoke-virtual {p0, p1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    :cond_3
    :goto_2
    return-void
.end method

.method private proximityCheckThenCall(Ljava/util/function/IntConsumer;ZI)V
    .locals 6

    .line 140
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    invoke-virtual {v0}, Lcom/android/systemui/doze/DozeSensors;->isProximityCurrentlyFar()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz p2, :cond_0

    const/4 p0, 0x3

    .line 142
    invoke-interface {p1, p0}, Ljava/util/function/IntConsumer;->accept(I)V

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_2

    .line 144
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    invoke-interface {p1, p0}, Ljava/util/function/IntConsumer;->accept(I)V

    goto :goto_1

    .line 146
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 147
    new-instance p2, Lcom/android/systemui/doze/DozeTriggers$1;

    move-object v0, p2

    move-object v1, p0

    move v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/doze/DozeTriggers$1;-><init>(Lcom/android/systemui/doze/DozeTriggers;JILjava/util/function/IntConsumer;)V

    .line 155
    invoke-virtual {p2}, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->check()V

    :goto_1
    return-void
.end method

.method private requestPulse(IZLjava/lang/Runnable;)V
    .locals 2

    .line 356
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 357
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {v0, p1}, Lcom/android/systemui/doze/DozeHost;->extendPulse(I)V

    .line 361
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {v0}, Lcom/android/systemui/doze/DozeMachine;->getState()Lcom/android/systemui/doze/DozeMachine$State;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSING:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne v0, v1, :cond_0

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 363
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSING_BRIGHT:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    return-void

    .line 367
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mPulsePending:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mAllowPulseTriggers:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/doze/DozeTriggers;->canPulse()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    .line 376
    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mPulsePending:Z

    .line 377
    new-instance v1, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$uVbqdwTqPYfR4HMOhbGgCZULuxk;

    invoke-direct {v1, p0, p3, p1}, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$uVbqdwTqPYfR4HMOhbGgCZULuxk;-><init>(Lcom/android/systemui/doze/DozeTriggers;Ljava/lang/Runnable;I)V

    iget-object p3, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 387
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getProxCheckBeforePulse()Z

    move-result p3

    if-eqz p3, :cond_3

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 377
    :cond_3
    :goto_0
    invoke-direct {p0, v1, v0, p1}, Lcom/android/systemui/doze/DozeTriggers;->proximityCheckThenCall(Ljava/util/function/IntConsumer;ZI)V

    .line 390
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance p2, Landroid/metrics/LogMaker;

    const/16 p3, 0xdf

    invoke-direct {p2, p3}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 p3, 0x6

    .line 391
    invoke-virtual {p2, p3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 390
    invoke-virtual {p0, p1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    return-void

    .line 368
    :cond_4
    :goto_1
    iget-boolean p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mAllowPulseTriggers:Z

    if-eqz p1, :cond_5

    .line 369
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mContext:Landroid/content/Context;

    iget-boolean p2, p0, Lcom/android/systemui/doze/DozeTriggers;->mPulsePending:Z

    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {v0}, Lcom/android/systemui/doze/DozeMachine;->getState()Lcom/android/systemui/doze/DozeMachine$State;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    .line 370
    invoke-interface {p0}, Lcom/android/systemui/doze/DozeHost;->isPulsingBlocked()Z

    move-result p0

    .line 369
    invoke-static {p1, p2, v0, p0}, Lcom/android/systemui/doze/DozeLog;->tracePulseDropped(Landroid/content/Context;ZLcom/android/systemui/doze/DozeMachine$State;Z)V

    .line 372
    :cond_5
    invoke-static {p3}, Lcom/android/systemui/doze/DozeTriggers;->runIfNotNull(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static runIfNotNull(Ljava/lang/Runnable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 133
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 3

    const-string v0, " notificationPulseTime="

    .line 411
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/systemui/doze/DozeTriggers;->mNotificationPulseTime:J

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, " pulsePending="

    .line 414
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mPulsePending:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "DozeSensors:"

    .line 415
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 416
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeSensors;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public synthetic lambda$onSensor$0$DozeTriggers(ZZFFIZI)V
    .locals 1

    const/4 v0, 0x1

    if-ne p7, v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_3

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p6, :cond_2

    .line 191
    invoke-direct {p0, p5}, Lcom/android/systemui/doze/DozeTriggers;->gentleWakeUp(I)V

    goto :goto_1

    .line 193
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {p0, p5}, Lcom/android/systemui/doze/DozeHost;->extendPulse(I)V

    goto :goto_1

    :cond_3
    :goto_0
    const/high16 p1, -0x40800000    # -1.0f

    cmpl-float p2, p3, p1

    if-eqz p2, :cond_4

    cmpl-float p1, p4, p1

    if-eqz p1, :cond_4

    .line 187
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {p1, p3, p4}, Lcom/android/systemui/doze/DozeHost;->onSlpiTap(FF)V

    .line 189
    :cond_4
    invoke-direct {p0, p5}, Lcom/android/systemui/doze/DozeTriggers;->gentleWakeUp(I)V

    :goto_1
    return-void
.end method

.method public synthetic lambda$onWakeScreen$1$DozeTriggers(Lcom/android/systemui/doze/DozeMachine$State;I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    return-void

    .line 274
    :cond_0
    sget-object p2, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p1, p2, :cond_1

    .line 275
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    sget-object p2, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {p1, p2}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    .line 277
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance p1, Landroid/metrics/LogMaker;

    const/16 p2, 0xdf

    invoke-direct {p1, p2}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 278
    invoke-virtual {p1, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p1

    const/4 p2, 0x7

    .line 279
    invoke-virtual {p1, p2}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 277
    invoke-virtual {p0, p1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$requestPulse$2$DozeTriggers(Ljava/lang/Runnable;II)V
    .locals 1

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 380
    iget-object p2, p0, Lcom/android/systemui/doze/DozeTriggers;->mContext:Landroid/content/Context;

    const-string p3, "inPocket"

    invoke-static {p2, p3}, Lcom/android/systemui/doze/DozeLog;->tracePulseDropped(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 381
    iput-boolean p2, p0, Lcom/android/systemui/doze/DozeTriggers;->mPulsePending:Z

    .line 382
    invoke-static {p1}, Lcom/android/systemui/doze/DozeTriggers;->runIfNotNull(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 385
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/systemui/doze/DozeTriggers;->continuePulseRequest(I)V

    :goto_0
    return-void
.end method

.method onSensor(IFF[F)V
    .locals 11
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    move v5, v1

    goto :goto_0

    :cond_0
    move v5, v0

    :goto_0
    const/16 v2, 0x9

    if-ne p1, v2, :cond_1

    move v6, v1

    goto :goto_1

    :cond_1
    move v6, v0

    :goto_1
    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    move v2, v0

    :goto_2
    const/4 v3, 0x5

    if-ne p1, v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    move v3, v0

    :goto_3
    const/4 v4, 0x7

    if-ne p1, v4, :cond_4

    move v4, v1

    goto :goto_4

    :cond_4
    move v4, v0

    :goto_4
    const/16 v7, 0x8

    if-ne p1, v7, :cond_5

    move v7, v1

    goto :goto_5

    :cond_5
    move v7, v0

    :goto_5
    if-eqz p4, :cond_6

    .line 167
    array-length v8, p4

    if-lez v8, :cond_6

    aget p4, p4, v0

    const/4 v8, 0x0

    cmpl-float p4, p4, v8

    if-eqz p4, :cond_6

    move p4, v1

    goto :goto_6

    :cond_6
    move p4, v0

    :goto_6
    const/4 v8, 0x0

    if-eqz v4, :cond_8

    .line 170
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {p1}, Lcom/android/systemui/doze/DozeMachine;->isExecutingTransition()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_7

    :cond_7
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {p1}, Lcom/android/systemui/doze/DozeMachine;->getState()Lcom/android/systemui/doze/DozeMachine$State;

    move-result-object v8

    :goto_7
    invoke-direct {p0, p4, v8}, Lcom/android/systemui/doze/DozeTriggers;->onWakeScreen(ZLcom/android/systemui/doze/DozeMachine$State;)V

    goto :goto_8

    :cond_8
    if-eqz v3, :cond_9

    .line 172
    invoke-direct {p0, p1, v1, v8}, Lcom/android/systemui/doze/DozeTriggers;->requestPulse(IZLjava/lang/Runnable;)V

    goto :goto_8

    :cond_9
    if-eqz v7, :cond_a

    if-eqz p4, :cond_b

    .line 176
    invoke-direct {p0, p1, v1, v8}, Lcom/android/systemui/doze/DozeTriggers;->requestPulse(IZLjava/lang/Runnable;)V

    goto :goto_8

    .line 180
    :cond_a
    new-instance p4, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$KXJDb4lGP0PpY23yKRXX1q0y7kA;

    move-object v3, p4

    move-object v4, p0

    move v7, p2

    move v8, p3

    move v9, p1

    move v10, v2

    invoke-direct/range {v3 .. v10}, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$KXJDb4lGP0PpY23yKRXX1q0y7kA;-><init>(Lcom/android/systemui/doze/DozeTriggers;ZZFFIZ)V

    invoke-direct {p0, p4, v1, p1}, Lcom/android/systemui/doze/DozeTriggers;->proximityCheckThenCall(Ljava/util/function/IntConsumer;ZI)V

    :cond_b
    :goto_8
    if-eqz v2, :cond_d

    .line 200
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iget-wide p3, p0, Lcom/android/systemui/doze/DozeTriggers;->mNotificationPulseTime:J

    sub-long/2addr p1, p3

    .line 201
    iget-object p3, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 202
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPickupVibrationThreshold()I

    move-result p3

    int-to-long p3, p3

    cmp-long p1, p1, p3

    if-gez p1, :cond_c

    move v0, v1

    .line 203
    :cond_c
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/android/systemui/doze/DozeLog;->tracePickupWakeUp(Landroid/content/Context;Z)V

    :cond_d
    return-void
.end method

.method public transitionTo(Lcom/android/systemui/doze/DozeMachine$State;Lcom/android/systemui/doze/DozeMachine$State;)V
    .locals 3

    .line 297
    sget-object p1, Lcom/android/systemui/doze/DozeTriggers$3;->$SwitchMap$com$android$systemui$doze$DozeMachine$State:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 334
    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mBroadcastReceiver:Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;

    iget-object p2, p0, Lcom/android/systemui/doze/DozeTriggers;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;->unregister(Landroid/content/Context;)V

    .line 335
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    iget-object p2, p0, Lcom/android/systemui/doze/DozeTriggers;->mHostCallback:Lcom/android/systemui/doze/DozeHost$Callback;

    invoke-interface {p1, p2}, Lcom/android/systemui/doze/DozeHost;->removeCallback(Lcom/android/systemui/doze/DozeHost$Callback;)V

    .line 336
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mDockManager:Lcom/android/systemui/dock/DockManager;

    if-eqz p1, :cond_0

    .line 337
    iget-object p2, p0, Lcom/android/systemui/doze/DozeTriggers;->mDockEventListener:Lcom/android/systemui/doze/DozeTriggers$DockEventListener;

    invoke-interface {p1, p2}, Lcom/android/systemui/dock/DockManager;->removeListener(Lcom/android/systemui/dock/DockManager$DockEventListener;)V

    .line 339
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    invoke-virtual {p1, v1}, Lcom/android/systemui/doze/DozeSensors;->setListening(Z)V

    .line 340
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    invoke-virtual {p0, v1}, Lcom/android/systemui/doze/DozeSensors;->setProxListening(Z)V

    goto :goto_1

    .line 328
    :pswitch_1
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    invoke-virtual {p1}, Lcom/android/systemui/doze/DozeSensors;->requestTemporaryDisable()V

    .line 331
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeSensors;->updateListening()V

    goto :goto_1

    .line 323
    :pswitch_2
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    invoke-virtual {p1, v1}, Lcom/android/systemui/doze/DozeSensors;->setTouchscreenSensorsListening(Z)V

    .line 324
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    invoke-virtual {p1, v0}, Lcom/android/systemui/doze/DozeSensors;->setProxListening(Z)V

    .line 325
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    invoke-virtual {p0, v1}, Lcom/android/systemui/doze/DozeSensors;->setPaused(Z)V

    goto :goto_1

    .line 318
    :pswitch_3
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    invoke-virtual {p1, v0}, Lcom/android/systemui/doze/DozeSensors;->setProxListening(Z)V

    .line 319
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    invoke-virtual {p0, v0}, Lcom/android/systemui/doze/DozeSensors;->setPaused(Z)V

    goto :goto_1

    .line 309
    :pswitch_4
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    sget-object v2, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq p2, v2, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    invoke-virtual {p1, v2}, Lcom/android/systemui/doze/DozeSensors;->setProxListening(Z)V

    .line 310
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    invoke-virtual {p1, v0}, Lcom/android/systemui/doze/DozeSensors;->setListening(Z)V

    .line 311
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    invoke-virtual {p1, v1}, Lcom/android/systemui/doze/DozeSensors;->setPaused(Z)V

    .line 312
    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p2, p1, :cond_3

    sget-boolean p1, Lcom/android/systemui/doze/DozeTriggers;->sWakeDisplaySensorState:Z

    if-nez p1, :cond_3

    .line 313
    invoke-direct {p0, v1, p2}, Lcom/android/systemui/doze/DozeTriggers;->onWakeScreen(ZLcom/android/systemui/doze/DozeMachine$State;)V

    goto :goto_1

    .line 299
    :pswitch_5
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mBroadcastReceiver:Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;

    iget-object p2, p0, Lcom/android/systemui/doze/DozeTriggers;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;->register(Landroid/content/Context;)V

    .line 300
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    iget-object p2, p0, Lcom/android/systemui/doze/DozeTriggers;->mHostCallback:Lcom/android/systemui/doze/DozeHost$Callback;

    invoke-interface {p1, p2}, Lcom/android/systemui/doze/DozeHost;->addCallback(Lcom/android/systemui/doze/DozeHost$Callback;)V

    .line 301
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mDockManager:Lcom/android/systemui/dock/DockManager;

    if-eqz p1, :cond_2

    .line 302
    iget-object p2, p0, Lcom/android/systemui/doze/DozeTriggers;->mDockEventListener:Lcom/android/systemui/doze/DozeTriggers$DockEventListener;

    invoke-interface {p1, p2}, Lcom/android/systemui/dock/DockManager;->addListener(Lcom/android/systemui/dock/DockManager$DockEventListener;)V

    .line 304
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    invoke-virtual {p1}, Lcom/android/systemui/doze/DozeSensors;->requestTemporaryDisable()V

    .line 305
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeTriggers;->checkTriggersAtInit()V

    :cond_3
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
