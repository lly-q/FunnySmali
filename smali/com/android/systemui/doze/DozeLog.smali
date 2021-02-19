.class public Lcom/android/systemui/doze/DozeLog;
.super Ljava/lang/Object;
.source "DozeLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/doze/DozeLog$SummaryStats;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field static final FORMAT:Ljava/text/SimpleDateFormat;

.field private static final SIZE:I

.field private static sCount:I

.field private static sEmergencyCallStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

.field private static final sKeyguardCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private static sMessages:[Ljava/lang/String;

.field private static sNotificationPulseStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

.field private static sPickupPulseNearVibrationStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

.field private static sPickupPulseNotNearVibrationStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

.field private static sPosition:I

.field private static sProxStats:[[Lcom/android/systemui/doze/DozeLog$SummaryStats;

.field private static sPulsing:Z

.field private static sRegisterKeyguardCallback:Z

.field private static sScreenOnNotPulsingStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

.field private static sScreenOnPulsingStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

.field private static sSince:J

.field private static sTimes:[J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "DozeLog"

    const/4 v1, 0x3

    .line 33
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/doze/DozeLog;->DEBUG:Z

    .line 35
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x190

    goto :goto_0

    :cond_0
    const/16 v0, 0x32

    :goto_0
    sput v0, Lcom/android/systemui/doze/DozeLog;->SIZE:I

    .line 36
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/doze/DozeLog;->FORMAT:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x1

    .line 52
    sput-boolean v0, Lcom/android/systemui/doze/DozeLog;->sRegisterKeyguardCallback:Z

    .line 315
    new-instance v0, Lcom/android/systemui/doze/DozeLog$1;

    invoke-direct {v0}, Lcom/android/systemui/doze/DozeLog$1;-><init>()V

    sput-object v0, Lcom/android/systemui/doze/DozeLog;->sKeyguardCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()J
    .locals 2

    .line 31
    sget-wide v0, Lcom/android/systemui/doze/DozeLog;->sSince:J

    return-wide v0
.end method

.method public static dump(Ljava/io/PrintWriter;)V
    .locals 9

    .line 217
    const-class v0, Lcom/android/systemui/doze/DozeLog;

    monitor-enter v0

    .line 218
    :try_start_0
    sget-object v1, Lcom/android/systemui/doze/DozeLog;->sMessages:[Ljava/lang/String;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const-string v1, "  Doze log:"

    .line 219
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 220
    sget v1, Lcom/android/systemui/doze/DozeLog;->sPosition:I

    sget v2, Lcom/android/systemui/doze/DozeLog;->sCount:I

    sub-int/2addr v1, v2

    sget v2, Lcom/android/systemui/doze/DozeLog;->SIZE:I

    add-int/2addr v1, v2

    sget v2, Lcom/android/systemui/doze/DozeLog;->SIZE:I

    rem-int/2addr v1, v2

    const/4 v2, 0x0

    move v3, v2

    .line 221
    :goto_0
    sget v4, Lcom/android/systemui/doze/DozeLog;->sCount:I

    if-ge v3, v4, :cond_1

    add-int v4, v1, v3

    .line 222
    sget v5, Lcom/android/systemui/doze/DozeLog;->SIZE:I

    rem-int/2addr v4, v5

    const-string v5, "    "

    .line 223
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 224
    sget-object v5, Lcom/android/systemui/doze/DozeLog;->FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v6, Ljava/util/Date;

    sget-object v7, Lcom/android/systemui/doze/DozeLog;->sTimes:[J

    aget-wide v7, v7, v4

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v5, 0x20

    .line 225
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 226
    sget-object v5, Lcom/android/systemui/doze/DozeLog;->sMessages:[Ljava/lang/String;

    aget-object v4, v5, v4

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "  Doze summary stats (for "

    .line 228
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, Lcom/android/systemui/doze/DozeLog;->sSince:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4, p0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v1, "):"

    .line 230
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 231
    sget-object v1, Lcom/android/systemui/doze/DozeLog;->sPickupPulseNearVibrationStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    const-string v3, "Pickup pulse (near vibration)"

    invoke-virtual {v1, p0, v3}, Lcom/android/systemui/doze/DozeLog$SummaryStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 232
    sget-object v1, Lcom/android/systemui/doze/DozeLog;->sPickupPulseNotNearVibrationStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    const-string v3, "Pickup pulse (not near vibration)"

    invoke-virtual {v1, p0, v3}, Lcom/android/systemui/doze/DozeLog$SummaryStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 233
    sget-object v1, Lcom/android/systemui/doze/DozeLog;->sNotificationPulseStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    const-string v3, "Notification pulse"

    invoke-virtual {v1, p0, v3}, Lcom/android/systemui/doze/DozeLog$SummaryStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 234
    sget-object v1, Lcom/android/systemui/doze/DozeLog;->sScreenOnPulsingStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    const-string v3, "Screen on (pulsing)"

    invoke-virtual {v1, p0, v3}, Lcom/android/systemui/doze/DozeLog$SummaryStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 235
    sget-object v1, Lcom/android/systemui/doze/DozeLog;->sScreenOnNotPulsingStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    const-string v3, "Screen on (not pulsing)"

    invoke-virtual {v1, p0, v3}, Lcom/android/systemui/doze/DozeLog$SummaryStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 236
    sget-object v1, Lcom/android/systemui/doze/DozeLog;->sEmergencyCallStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    const-string v3, "Emergency call"

    invoke-virtual {v1, p0, v3}, Lcom/android/systemui/doze/DozeLog$SummaryStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    move v1, v2

    :goto_1
    const/16 v3, 0xa

    if-ge v1, v3, :cond_2

    .line 238
    invoke-static {v1}, Lcom/android/systemui/doze/DozeLog;->reasonToString(I)Ljava/lang/String;

    move-result-object v3

    .line 239
    sget-object v4, Lcom/android/systemui/doze/DozeLog;->sProxStats:[[Lcom/android/systemui/doze/DozeLog$SummaryStats;

    aget-object v4, v4, v1

    aget-object v4, v4, v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Proximity near ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p0, v5}, Lcom/android/systemui/doze/DozeLog$SummaryStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 240
    sget-object v4, Lcom/android/systemui/doze/DozeLog;->sProxStats:[[Lcom/android/systemui/doze/DozeLog$SummaryStats;

    aget-object v4, v4, v1

    const/4 v5, 0x1

    aget-object v4, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Proximity far ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, p0, v3}, Lcom/android/systemui/doze/DozeLog$SummaryStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 242
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static init(Landroid/content/Context;)V
    .locals 8

    .line 97
    const-class v0, Lcom/android/systemui/doze/DozeLog;

    monitor-enter v0

    .line 98
    :try_start_0
    sget-object v1, Lcom/android/systemui/doze/DozeLog;->sMessages:[Ljava/lang/String;

    if-nez v1, :cond_1

    .line 99
    sget v1, Lcom/android/systemui/doze/DozeLog;->SIZE:I

    new-array v1, v1, [J

    sput-object v1, Lcom/android/systemui/doze/DozeLog;->sTimes:[J

    .line 100
    sget v1, Lcom/android/systemui/doze/DozeLog;->SIZE:I

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lcom/android/systemui/doze/DozeLog;->sMessages:[Ljava/lang/String;

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/android/systemui/doze/DozeLog;->sSince:J

    .line 102
    new-instance v1, Lcom/android/systemui/doze/DozeLog$SummaryStats;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/systemui/doze/DozeLog$SummaryStats;-><init>(Lcom/android/systemui/doze/DozeLog$1;)V

    sput-object v1, Lcom/android/systemui/doze/DozeLog;->sPickupPulseNearVibrationStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    .line 103
    new-instance v1, Lcom/android/systemui/doze/DozeLog$SummaryStats;

    invoke-direct {v1, v2}, Lcom/android/systemui/doze/DozeLog$SummaryStats;-><init>(Lcom/android/systemui/doze/DozeLog$1;)V

    sput-object v1, Lcom/android/systemui/doze/DozeLog;->sPickupPulseNotNearVibrationStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    .line 104
    new-instance v1, Lcom/android/systemui/doze/DozeLog$SummaryStats;

    invoke-direct {v1, v2}, Lcom/android/systemui/doze/DozeLog$SummaryStats;-><init>(Lcom/android/systemui/doze/DozeLog$1;)V

    sput-object v1, Lcom/android/systemui/doze/DozeLog;->sNotificationPulseStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    .line 105
    new-instance v1, Lcom/android/systemui/doze/DozeLog$SummaryStats;

    invoke-direct {v1, v2}, Lcom/android/systemui/doze/DozeLog$SummaryStats;-><init>(Lcom/android/systemui/doze/DozeLog$1;)V

    sput-object v1, Lcom/android/systemui/doze/DozeLog;->sScreenOnPulsingStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    .line 106
    new-instance v1, Lcom/android/systemui/doze/DozeLog$SummaryStats;

    invoke-direct {v1, v2}, Lcom/android/systemui/doze/DozeLog$SummaryStats;-><init>(Lcom/android/systemui/doze/DozeLog$1;)V

    sput-object v1, Lcom/android/systemui/doze/DozeLog;->sScreenOnNotPulsingStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    .line 107
    new-instance v1, Lcom/android/systemui/doze/DozeLog$SummaryStats;

    invoke-direct {v1, v2}, Lcom/android/systemui/doze/DozeLog$SummaryStats;-><init>(Lcom/android/systemui/doze/DozeLog$1;)V

    sput-object v1, Lcom/android/systemui/doze/DozeLog;->sEmergencyCallStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    const/4 v1, 0x2

    const/16 v3, 0xa

    .line 108
    filled-new-array {v3, v1}, [I

    move-result-object v1

    const-class v4, Lcom/android/systemui/doze/DozeLog$SummaryStats;

    invoke-static {v4, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Lcom/android/systemui/doze/DozeLog$SummaryStats;

    sput-object v1, Lcom/android/systemui/doze/DozeLog;->sProxStats:[[Lcom/android/systemui/doze/DozeLog$SummaryStats;

    const/4 v1, 0x0

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_0

    .line 110
    sget-object v5, Lcom/android/systemui/doze/DozeLog;->sProxStats:[[Lcom/android/systemui/doze/DozeLog$SummaryStats;

    aget-object v5, v5, v4

    new-instance v6, Lcom/android/systemui/doze/DozeLog$SummaryStats;

    invoke-direct {v6, v2}, Lcom/android/systemui/doze/DozeLog$SummaryStats;-><init>(Lcom/android/systemui/doze/DozeLog$1;)V

    aput-object v6, v5, v1

    .line 111
    sget-object v5, Lcom/android/systemui/doze/DozeLog;->sProxStats:[[Lcom/android/systemui/doze/DozeLog$SummaryStats;

    aget-object v5, v5, v4

    new-instance v6, Lcom/android/systemui/doze/DozeLog$SummaryStats;

    invoke-direct {v6, v2}, Lcom/android/systemui/doze/DozeLog$SummaryStats;-><init>(Lcom/android/systemui/doze/DozeLog$1;)V

    const/4 v7, 0x1

    aput-object v6, v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "init"

    .line 113
    invoke-static {v1}, Lcom/android/systemui/doze/DozeLog;->log(Ljava/lang/String;)V

    .line 114
    sget-boolean v1, Lcom/android/systemui/doze/DozeLog;->sRegisterKeyguardCallback:Z

    if-eqz v1, :cond_1

    .line 115
    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p0

    sget-object v1, Lcom/android/systemui/doze/DozeLog;->sKeyguardCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 118
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

.method private static log(Ljava/lang/String;)V
    .locals 5

    .line 246
    const-class v0, Lcom/android/systemui/doze/DozeLog;

    monitor-enter v0

    .line 247
    :try_start_0
    sget-object v1, Lcom/android/systemui/doze/DozeLog;->sMessages:[Ljava/lang/String;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 248
    :cond_0
    sget-object v1, Lcom/android/systemui/doze/DozeLog;->sTimes:[J

    sget v2, Lcom/android/systemui/doze/DozeLog;->sPosition:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 249
    sget-object v1, Lcom/android/systemui/doze/DozeLog;->sMessages:[Ljava/lang/String;

    sget v2, Lcom/android/systemui/doze/DozeLog;->sPosition:I

    aput-object p0, v1, v2

    .line 250
    sget v1, Lcom/android/systemui/doze/DozeLog;->sPosition:I

    add-int/lit8 v1, v1, 0x1

    sget v2, Lcom/android/systemui/doze/DozeLog;->SIZE:I

    rem-int/2addr v1, v2

    sput v1, Lcom/android/systemui/doze/DozeLog;->sPosition:I

    .line 251
    sget v1, Lcom/android/systemui/doze/DozeLog;->sCount:I

    add-int/lit8 v1, v1, 0x1

    sget v2, Lcom/android/systemui/doze/DozeLog;->SIZE:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    sput v1, Lcom/android/systemui/doze/DozeLog;->sCount:I

    .line 252
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    sget-boolean v0, Lcom/android/systemui/doze/DozeLog;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "DozeLog"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 252
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static reasonToString(I)Ljava/lang/String;
    .locals 3

    packed-switch p0, :pswitch_data_0

    .line 212
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string p0, "tap"

    return-object p0

    :pswitch_1
    const-string p0, "wakelockscreen"

    return-object p0

    :pswitch_2
    const-string p0, "wakeup"

    return-object p0

    :pswitch_3
    const-string p0, "docking"

    return-object p0

    :pswitch_4
    const-string p0, "longpress"

    return-object p0

    :pswitch_5
    const-string p0, "doubletap"

    return-object p0

    :pswitch_6
    const-string p0, "pickup"

    return-object p0

    :pswitch_7
    const-string p0, "sigmotion"

    return-object p0

    :pswitch_8
    const-string p0, "notification"

    return-object p0

    :pswitch_9
    const-string p0, "intent"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static traceDozing(Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 123
    sput-boolean v0, Lcom/android/systemui/doze/DozeLog;->sPulsing:Z

    .line 124
    invoke-static {p0}, Lcom/android/systemui/doze/DozeLog;->init(Landroid/content/Context;)V

    .line 125
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "dozing "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/doze/DozeLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static traceEmergencyCall()V
    .locals 1

    const-string v0, "emergencyCall"

    .line 137
    invoke-static {v0}, Lcom/android/systemui/doze/DozeLog;->log(Ljava/lang/String;)V

    .line 138
    sget-object v0, Lcom/android/systemui/doze/DozeLog;->sEmergencyCallStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    invoke-virtual {v0}, Lcom/android/systemui/doze/DozeLog$SummaryStats;->append()V

    return-void
.end method

.method public static traceFling(ZZZZ)V
    .locals 2

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fling expand="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " aboveThreshold="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " thresholdNeeded="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " screenOnFromTouch="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/doze/DozeLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static traceKeyguard(Z)V
    .locals 2

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "keyguard "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/doze/DozeLog;->log(Ljava/lang/String;)V

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 173
    sput-boolean p0, Lcom/android/systemui/doze/DozeLog;->sPulsing:Z

    :cond_0
    return-void
.end method

.method public static traceKeyguardBouncerChanged(Z)V
    .locals 2

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bouncer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/doze/DozeLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static traceMissedTick(Ljava/lang/String;)V
    .locals 2

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "missedTick by="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/doze/DozeLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static traceNotificationPulse(Landroid/content/Context;)V
    .locals 0

    .line 91
    invoke-static {p0}, Lcom/android/systemui/doze/DozeLog;->init(Landroid/content/Context;)V

    const-string p0, "notificationPulse"

    .line 92
    invoke-static {p0}, Lcom/android/systemui/doze/DozeLog;->log(Ljava/lang/String;)V

    .line 93
    sget-object p0, Lcom/android/systemui/doze/DozeLog;->sNotificationPulseStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeLog$SummaryStats;->append()V

    return-void
.end method

.method public static tracePickupWakeUp(Landroid/content/Context;Z)V
    .locals 1

    .line 71
    invoke-static {p0}, Lcom/android/systemui/doze/DozeLog;->init(Landroid/content/Context;)V

    .line 72
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "pickupWakeUp withinVibrationThreshold="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/doze/DozeLog;->log(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 73
    sget-object p0, Lcom/android/systemui/doze/DozeLog;->sPickupPulseNearVibrationStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    goto :goto_0

    .line 74
    :cond_0
    sget-object p0, Lcom/android/systemui/doze/DozeLog;->sPickupPulseNotNearVibrationStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeLog$SummaryStats;->append()V

    return-void
.end method

.method public static traceProximityResult(Landroid/content/Context;ZJI)V
    .locals 1

    .line 194
    invoke-static {p0}, Lcom/android/systemui/doze/DozeLog;->init(Landroid/content/Context;)V

    .line 195
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "proximityResult reason="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lcom/android/systemui/doze/DozeLog;->reasonToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " near="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " millis="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/doze/DozeLog;->log(Ljava/lang/String;)V

    .line 197
    sget-object p0, Lcom/android/systemui/doze/DozeLog;->sProxStats:[[Lcom/android/systemui/doze/DozeLog$SummaryStats;

    aget-object p0, p0, p4

    xor-int/lit8 p1, p1, 0x1

    aget-object p0, p0, p1

    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeLog$SummaryStats;->append()V

    return-void
.end method

.method public static tracePulseDropped(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 266
    invoke-static {p0}, Lcom/android/systemui/doze/DozeLog;->init(Landroid/content/Context;)V

    .line 267
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "pulseDropped why="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/doze/DozeLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static tracePulseDropped(Landroid/content/Context;ZLcom/android/systemui/doze/DozeMachine$State;Z)V
    .locals 1

    .line 259
    invoke-static {p0}, Lcom/android/systemui/doze/DozeLog;->init(Landroid/content/Context;)V

    .line 260
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "pulseDropped pulsePending="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " state="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " blocked="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/doze/DozeLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static tracePulseFinish()V
    .locals 1

    const/4 v0, 0x0

    .line 85
    sput-boolean v0, Lcom/android/systemui/doze/DozeLog;->sPulsing:Z

    const-string v0, "pulseFinish"

    .line 86
    invoke-static {v0}, Lcom/android/systemui/doze/DozeLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static tracePulseStart(I)V
    .locals 2

    const/4 v0, 0x1

    .line 79
    sput-boolean v0, Lcom/android/systemui/doze/DozeLog;->sPulsing:Z

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pulseStart reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/systemui/doze/DozeLog;->reasonToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/doze/DozeLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static tracePulseTouchDisabledByProx(Landroid/content/Context;Z)V
    .locals 1

    .line 272
    invoke-static {p0}, Lcom/android/systemui/doze/DozeLog;->init(Landroid/content/Context;)V

    .line 273
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "pulseTouchDisabledByProx "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/doze/DozeLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static traceScreenOff(I)V
    .locals 2

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "screenOff why="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/doze/DozeLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static traceScreenOn()V
    .locals 2

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "screenOn pulsing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/systemui/doze/DozeLog;->sPulsing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/doze/DozeLog;->log(Ljava/lang/String;)V

    .line 149
    sget-boolean v0, Lcom/android/systemui/doze/DozeLog;->sPulsing:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/doze/DozeLog;->sScreenOnPulsingStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/systemui/doze/DozeLog;->sScreenOnNotPulsingStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    :goto_0
    invoke-virtual {v0}, Lcom/android/systemui/doze/DozeLog$SummaryStats;->append()V

    const/4 v0, 0x0

    .line 150
    sput-boolean v0, Lcom/android/systemui/doze/DozeLog;->sPulsing:Z

    return-void
.end method

.method public static traceSensor(Landroid/content/Context;I)V
    .locals 1

    .line 289
    invoke-static {p0}, Lcom/android/systemui/doze/DozeLog;->init(Landroid/content/Context;)V

    .line 290
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sensor type="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/systemui/doze/DozeLog;->reasonToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/doze/DozeLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static traceState(Lcom/android/systemui/doze/DozeMachine$State;)V
    .locals 2

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/doze/DozeLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static traceTimeTickScheduled(JJ)V
    .locals 3

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "timeTickScheduled at="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/systemui/doze/DozeLog;->FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " triggerAt="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/android/systemui/doze/DozeLog;->FORMAT:Ljava/text/SimpleDateFormat;

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1, p2, p3}, Ljava/util/Date;-><init>(J)V

    .line 166
    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 165
    invoke-static {p0}, Lcom/android/systemui/doze/DozeLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static traceWakeDisplay(Z)V
    .locals 2

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wakeDisplay "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/doze/DozeLog;->log(Ljava/lang/String;)V

    return-void
.end method
