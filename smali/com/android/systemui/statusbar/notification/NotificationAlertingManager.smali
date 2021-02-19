.class public Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;
.super Ljava/lang/Object;
.source "NotificationAlertingManager.java"


# instance fields
.field private mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field private final mNotificationInterruptionStateProvider:Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

.field private final mNotificationListener:Lcom/android/systemui/statusbar/NotificationListener;

.field private final mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

.field private final mShadeController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/ShadeController;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/notification/VisualStabilityManager;Ldagger/Lazy;Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;Lcom/android/systemui/statusbar/NotificationListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;",
            "Lcom/android/systemui/statusbar/notification/VisualStabilityManager;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/ShadeController;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;",
            "Lcom/android/systemui/statusbar/NotificationListener;",
            ")V"
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 66
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    .line 67
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mShadeController:Ldagger/Lazy;

    .line 68
    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mNotificationInterruptionStateProvider:Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

    .line 69
    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mNotificationListener:Lcom/android/systemui/statusbar/NotificationListener;

    .line 71
    new-instance p2, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager$1;-><init>(Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;)V

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->addNotificationEntryListener(Lcom/android/systemui/statusbar/notification/NotificationEntryListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->showAlertingView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->updateAlertState(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->stopAlerting(Ljava/lang/String;)V

    return-void
.end method

.method public static alertAgain(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/app/Notification;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 153
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->hasInterrupted()Z

    move-result p0

    if-eqz p0, :cond_1

    iget p0, p1, Landroid/app/Notification;->flags:I

    and-int/lit8 p0, p0, 0x8

    if-nez p0, :cond_0

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

.method private setNotificationShown(Landroid/service/notification/StatusBarNotification;)V
    .locals 2

    .line 159
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mNotificationListener:Lcom/android/systemui/statusbar/NotificationListener;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/service/notification/NotificationListenerService;->setNotificationsShown([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "NotifAlertManager"

    const-string v0, "failed setNotificationsShown: "

    .line 161
    invoke-static {p1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private showAlertingView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V
    .locals 12

    const/4 v0, 0x4

    and-int/2addr p2, v0

    if-eqz p2, :cond_1

    .line 107
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mNotificationInterruptionStateProvider:Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->shouldHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 108
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->showNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 109
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mShadeController:Ldagger/Lazy;

    invoke-interface {p2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {p2}, Lcom/android/systemui/statusbar/phone/ShadeController;->isDozing()Z

    move-result p2

    if-nez p2, :cond_2

    .line 111
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->setNotificationShown(Landroid/service/notification/StatusBarNotification;)V

    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->freeContentViewWhenSafe(I)V

    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_2

    iget p0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTickerEnabled:I

    if-eqz p0, :cond_2

    .line 116
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->tick(Landroid/service/notification/StatusBarNotification;ZZLandroid/media/MediaMetadata;Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v6, :cond_2

    iget p0, v6, Lcom/android/systemui/statusbar/phone/StatusBar;->mTickerEnabled:I

    if-eqz p0, :cond_2

    .line 121
    iget-object v7, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Lcom/android/systemui/statusbar/phone/StatusBar;->tick(Landroid/service/notification/StatusBarNotification;ZZLandroid/media/MediaMetadata;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private stopAlerting(Ljava/lang/String;)V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->isAlerting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 174
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 175
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->getController()Lcom/android/systemui/statusbar/RemoteInputController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/RemoteInputController;->isSpinning(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->FORCE_REMOTE_INPUT_HISTORY:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    .line 177
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->isReorderingAllowed()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 178
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->removeNotification(Ljava/lang/String;Z)Z

    :cond_3
    return-void
.end method

.method private updateAlertState(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 4

    .line 127
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->alertAgain(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/app/Notification;)Z

    move-result v0

    .line 129
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mNotificationInterruptionStateProvider:Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->shouldHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v1

    .line 130
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->isAlerting(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    .line 133
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->updateNotification(Ljava/lang/String;Z)V

    goto :goto_0

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->isEntryAutoHeadsUpped(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 136
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->removeNotification(Ljava/lang/String;Z)Z

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 140
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->showNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    return-void
.end method

.method public setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-void
.end method
