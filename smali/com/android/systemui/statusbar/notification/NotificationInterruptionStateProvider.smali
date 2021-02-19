.class public Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;
.super Ljava/lang/Object;
.source "NotificationInterruptionStateProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider$HeadsUpSuppressor;
    }
.end annotation


# static fields
.field private static final DEBUG_HEADS_UP:Z


# instance fields
.field private final mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

.field private final mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private final mContext:Landroid/content/Context;

.field private mDisableNotificationAlerts:Z

.field private final mDreamManager:Landroid/service/dreams/IDreamManager;

.field private mGamingModeNoAlert:Z

.field private mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field private mHeadsUpObserver:Landroid/database/ContentObserver;

.field private mHeadsUpSuppressor:Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider$HeadsUpSuppressor;

.field private final mNotificationFilter:Lcom/android/systemui/statusbar/notification/NotificationFilter;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field protected mUseHeadsUp:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->DEBUG_HEADS_UP:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/PowerManager;Landroid/service/dreams/IDreamManager;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/statusbar/notification/NotificationFilter;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mUseHeadsUp:Z

    .line 80
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mGamingModeNoAlert:Z

    .line 104
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mContext:Landroid/content/Context;

    .line 105
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mPowerManager:Landroid/os/PowerManager;

    .line 106
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mDreamManager:Landroid/service/dreams/IDreamManager;

    .line 107
    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 108
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 109
    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mNotificationFilter:Lcom/android/systemui/statusbar/notification/NotificationFilter;

    .line 110
    iput-object p7, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/NotificationFilter;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/BatteryController;)V
    .locals 9

    const-string v0, "power"

    .line 86
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/os/PowerManager;

    const-string v0, "dreams"

    .line 88
    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 87
    invoke-static {v0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v4

    new-instance v5, Landroid/hardware/display/AmbientDisplayConfiguration;

    invoke-direct {v5, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    move-object v7, p4

    move-object v8, p3

    .line 85
    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;-><init>(Landroid/content/Context;Landroid/os/PowerManager;Landroid/service/dreams/IDreamManager;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/statusbar/notification/NotificationFilter;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mDisableNotificationAlerts:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;)Landroid/content/Context;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;)Lcom/android/systemui/statusbar/policy/HeadsUpManager;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    return-object p0
.end method

.method private isSnoozedPackage(Landroid/service/notification/StatusBarNotification;)Z
    .locals 0

    .line 419
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->isSnoozed(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private shouldHeadsUpWhenAwake(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 6

    .line 231
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 232
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->rowExists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->blockHeadsUp()Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    .line 236
    :cond_0
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 238
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mUseHeadsUp:Z

    const-string v4, "InterruptionStateProvider"

    if-nez v3, :cond_2

    .line 239
    sget-boolean p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->DEBUG_HEADS_UP:Z

    if-eqz p0, :cond_1

    const-string p0, "No heads up: no huns"

    .line 240
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v2

    .line 245
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->canAlertCommon(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    .line 249
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->canAlertAwakeCommon(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    .line 253
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v3}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v3

    if-nez v3, :cond_5

    move v3, v1

    goto :goto_0

    :cond_5
    move v3, v2

    .line 254
    :goto_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isBubble()Z

    move-result v5

    if-eqz v5, :cond_7

    if-eqz v3, :cond_7

    .line 255
    sget-boolean p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->DEBUG_HEADS_UP:Z

    if-eqz p0, :cond_6

    .line 256
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No heads up: in unlocked shade where notification is shown as a bubble: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 256
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return v2

    .line 262
    :cond_7
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->shouldSuppressPeek()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 263
    sget-boolean p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->DEBUG_HEADS_UP:Z

    if-eqz p0, :cond_8

    .line 264
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No heads up: suppressed by DND: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return v2

    .line 269
    :cond_9
    iget v3, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->importance:I

    const/4 v5, 0x4

    if-ge v3, v5, :cond_b

    .line 270
    sget-boolean p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->DEBUG_HEADS_UP:Z

    if-eqz p0, :cond_a

    .line 271
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No heads up: unimportant notification: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return v2

    .line 278
    :cond_b
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v3}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    const-string v5, "Failed to query dream manager."

    .line 280
    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v2

    .line 282
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v5}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v5

    if-eqz v5, :cond_c

    if-nez v3, :cond_c

    move v3, v1

    goto :goto_2

    :cond_c
    move v3, v2

    :goto_2
    if-nez v3, :cond_e

    .line 285
    sget-boolean p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->DEBUG_HEADS_UP:Z

    if-eqz p0, :cond_d

    .line 286
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No heads up: not in use: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    return v2

    .line 291
    :cond_e
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mHeadsUpSuppressor:Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider$HeadsUpSuppressor;

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider$HeadsUpSuppressor;->canHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/service/notification/StatusBarNotification;)Z

    move-result p0

    if-nez p0, :cond_10

    .line 292
    sget-boolean p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->DEBUG_HEADS_UP:Z

    if-eqz p0, :cond_f

    .line 293
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No heads up: aborted by suppressor: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    return v2

    :cond_10
    return v1
.end method

.method private shouldHeadsUpWhenDozing(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 4

    .line 309
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 311
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Landroid/hardware/display/AmbientDisplayConfiguration;->pulseOnNotificationEnabled(I)Z

    move-result v1

    const-string v2, "InterruptionStateProvider"

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 312
    sget-boolean p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->DEBUG_HEADS_UP:Z

    if-eqz p0, :cond_0

    .line 313
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No pulsing: disabled by setting: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v3

    .line 318
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/BatteryController;->isAodPowerSave()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 319
    sget-boolean p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->DEBUG_HEADS_UP:Z

    if-eqz p0, :cond_2

    .line 320
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No pulsing: disabled by battery saver: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v3

    .line 325
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->canAlertCommon(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    if-nez p0, :cond_5

    .line 326
    sget-boolean p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->DEBUG_HEADS_UP:Z

    if-eqz p0, :cond_4

    .line 327
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No pulsing: notification shouldn\'t alert: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v3

    .line 332
    :cond_5
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->shouldSuppressAmbient()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 333
    sget-boolean p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->DEBUG_HEADS_UP:Z

    if-eqz p0, :cond_6

    .line 334
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No pulsing: ambient effect suppressed: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return v3

    .line 339
    :cond_7
    iget p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->importance:I

    const/4 p1, 0x3

    if-ge p0, p1, :cond_9

    .line 340
    sget-boolean p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->DEBUG_HEADS_UP:Z

    if-eqz p0, :cond_8

    .line 341
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No pulsing: not important enough: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return v3

    :cond_9
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public areNotificationAlertsDisabled()Z
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 431
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mDisableNotificationAlerts:Z

    return p0
.end method

.method public canAlertAwakeCommon(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 383
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 385
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mGamingModeNoAlert:Z

    const-string v2, "InterruptionStateProvider"

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 386
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->category:Ljava/lang/String;

    const-string v4, "call"

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 387
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->category:Ljava/lang/String;

    const-string v4, "alarm"

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 388
    sget-boolean p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->DEBUG_HEADS_UP:Z

    if-eqz p0, :cond_0

    const-string p0, "No alerting: gaming mode, category is not alarm or call"

    .line 389
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v3

    .line 394
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/NotificationPresenter;->isDeviceInVrMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 395
    sget-boolean p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->DEBUG_HEADS_UP:Z

    if-eqz p0, :cond_2

    const-string p0, "No alerting: no huns or vr mode"

    .line 396
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v3

    .line 401
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->isSnoozedPackage(Landroid/service/notification/StatusBarNotification;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 402
    sget-boolean p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->DEBUG_HEADS_UP:Z

    if-eqz p0, :cond_4

    .line 403
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No alerting: snoozed package: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v3

    .line 408
    :cond_5
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->hasJustLaunchedFullScreenIntent()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 409
    sget-boolean p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->DEBUG_HEADS_UP:Z

    if-eqz p0, :cond_6

    .line 410
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No alerting: recent fullscreen: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return v3

    :cond_7
    const/4 p0, 0x1

    return p0
.end method

.method public canAlertCommon(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 356
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 358
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mNotificationFilter:Lcom/android/systemui/statusbar/notification/NotificationFilter;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationFilter;->shouldFilterOut(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    const-string p1, "InterruptionStateProvider"

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    .line 359
    sget-boolean p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->DEBUG_HEADS_UP:Z

    if-eqz p0, :cond_0

    .line 360
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No alerting: filtered notification: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1

    .line 366
    :cond_1
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Notification;->suppressAlertingDueToGrouping()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 367
    sget-boolean p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->DEBUG_HEADS_UP:Z

    if-eqz p0, :cond_2

    const-string p0, "No alerting: suppressed due to group alert behavior"

    .line 368
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public getUseHeadsUp()Z
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 437
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mUseHeadsUp:Z

    return p0
.end method

.method public setDisableNotificationAlerts(Z)V
    .locals 0

    .line 424
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mDisableNotificationAlerts:Z

    .line 425
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mHeadsUpObserver:Landroid/database/ContentObserver;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method

.method public setGamingModeNoAlert(Z)V
    .locals 0

    .line 227
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mGamingModeNoAlert:Z

    return-void
.end method

.method public setUpWithPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider$HeadsUpSuppressor;)V
    .locals 2

    .line 118
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider$1;

    sget-object v1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 119
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider$1;-><init>(Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;Landroid/os/Handler;)V

    .line 118
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->setUpWithPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider$HeadsUpSuppressor;Landroid/database/ContentObserver;)V

    return-void
.end method

.method public setUpWithPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider$HeadsUpSuppressor;Landroid/database/ContentObserver;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    .line 148
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 149
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mHeadsUpSuppressor:Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider$HeadsUpSuppressor;

    .line 150
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mHeadsUpObserver:Landroid/database/ContentObserver;

    .line 153
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "heads_up_notifications_enabled"

    .line 154
    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mHeadsUpObserver:Landroid/database/ContentObserver;

    const/4 p4, 0x1

    .line 153
    invoke-virtual {p1, p2, p4, p3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 157
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "ticker_gets_heads_up"

    .line 158
    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mHeadsUpObserver:Landroid/database/ContentObserver;

    .line 157
    invoke-virtual {p1, p2, p4, p3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 161
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mHeadsUpObserver:Landroid/database/ContentObserver;

    invoke-virtual {p0, p4}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method

.method public shouldBubbleUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 3

    .line 171
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->rowExists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isAppLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 175
    :cond_0
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 177
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->canAlertCommon(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 181
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->canAlertAwakeCommon(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    if-nez p0, :cond_2

    return v1

    .line 185
    :cond_2
    iget-boolean p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->canBubble:Z

    if-nez p0, :cond_3

    return v1

    .line 192
    :cond_3
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isBubble()Z

    move-result p0

    if-nez p0, :cond_4

    return v1

    .line 200
    :cond_4
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    .line 201
    invoke-virtual {p0}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Notification$BubbleMetadata;->getIntent()Landroid/app/PendingIntent;

    move-result-object p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 p0, 0x1

    return p0

    :cond_6
    :goto_0
    return v1
.end method

.method public shouldHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->shouldHeadsUpWhenDozing(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    return p0

    .line 222
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->shouldHeadsUpWhenAwake(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    return p0
.end method

.method public shouldLaunchFullScreenIntentWhenAdded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 2

    .line 452
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 453
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->shouldHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 454
    invoke-interface {p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method
