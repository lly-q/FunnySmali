.class public Lcom/android/systemui/statusbar/notification/NotificationEntryManager;
.super Ljava/lang/Object;
.source "NotificationEntryManager.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationCallback;
.implements Lcom/android/systemui/statusbar/NotificationUpdateHandler;
.implements Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/NotificationEntryManager$SettingsObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mAppLockCallback:Landroid/app/AppLockManager$AppLockCallback;

.field private final mAppLockManager:Landroid/app/AppLockManager;

.field private mLockNotifications:Z

.field protected mNotificationData:Lcom/android/systemui/statusbar/notification/collection/NotificationData;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mNotificationEntryListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryListener;",
            ">;"
        }
    .end annotation
.end field

.field final mNotificationLifetimeExtenders:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/NotificationLifetimeExtender;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationRowBinder:Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinder;

.field protected final mPendingNotifications:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

.field private mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

.field private mRemoveInterceptor:Lcom/android/systemui/statusbar/NotificationRemoveInterceptor;

.field private final mRetainedNotifications:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            "Lcom/android/systemui/statusbar/NotificationLifetimeExtender;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingsObserver:Lcom/android/systemui/statusbar/notification/NotificationEntryManager$SettingsObserver;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "NotificationEntryMgr"

    const/4 v1, 0x3

    .line 83
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mPendingNotifications:Ljava/util/HashMap;

    .line 95
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mRetainedNotifications:Ljava/util/Map;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationLifetimeExtenders:Ljava/util/ArrayList;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationEntryListeners:Ljava/util/List;

    .line 118
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager$1;-><init>(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mAppLockCallback:Landroid/app/AppLockManager$AppLockCallback;

    .line 164
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    const-string v0, "applock"

    .line 165
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppLockManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mAppLockManager:Landroid/app/AppLockManager;

    .line 166
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mAppLockManager:Landroid/app/AppLockManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mAppLockCallback:Landroid/app/AppLockManager$AppLockCallback;

    invoke-virtual {v0, v1}, Landroid/app/AppLockManager;->addAppLockCallback(Landroid/app/IAppLockCallback;)V

    .line 167
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager$SettingsObserver;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager$SettingsObserver;-><init>(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mSettingsObserver:Lcom/android/systemui/statusbar/notification/NotificationEntryManager$SettingsObserver;

    .line 168
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mSettingsObserver:Lcom/android/systemui/statusbar/notification/NotificationEntryManager$SettingsObserver;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager$SettingsObserver;->observe()V

    return-void
.end method

.method private abortExistingInflation(Ljava/lang/String;)V
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mPendingNotifications:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mPendingNotifications:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 249
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->abortTask()V

    .line 250
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mPendingNotifications:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 254
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->abortTask()V

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Ljava/lang/String;Z)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateAppNotifications(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;)Z
    .locals 0

    .line 77
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mLockNotifications:Z

    return p0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Z)Z
    .locals 0

    .line 77
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mLockNotifications:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;)Landroid/app/AppLockManager;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mAppLockManager:Landroid/app/AppLockManager;

    return-object p0
.end method

.method private addNotificationInternal(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/systemui/statusbar/notification/InflationException;
        }
    .end annotation

    .line 436
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 437
    sget-boolean v1, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 438
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addNotification key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NotificationEntryMgr"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 442
    new-instance v1, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v1}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    .line 443
    invoke-virtual {p2, v0, v1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 445
    new-instance p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-direct {p2, p1, v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;-><init>(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$Ranking;)V

    .line 447
    const-class v1, Lcom/android/systemui/util/leak/LeakDetector;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/leak/LeakDetector;

    invoke-virtual {v1, p2}, Lcom/android/systemui/util/leak/LeakDetector;->trackInstance(Ljava/lang/Object;)V

    .line 449
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->requireBinder()Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinder;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationEntryManager$ez4F1DKBl4YOmeLqcZdauVzWn0c;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationEntryManager$ez4F1DKBl4YOmeLqcZdauVzWn0c;-><init>(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Landroid/service/notification/StatusBarNotification;)V

    invoke-interface {v1, p2, v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinder;->inflateViews(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/Runnable;)V

    .line 452
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->abortExistingInflation(Ljava/lang/String;)V

    .line 454
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mPendingNotifications:Ljava/util/HashMap;

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationEntryListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;

    .line 456
    invoke-interface {p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;->onPendingEntryAdded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private cancelLifetimeExtension(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 1

    .line 609
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mRetainedNotifications:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/NotificationLifetimeExtender;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 611
    invoke-interface {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationLifetimeExtender;->setShouldManageLifetime(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V

    :cond_0
    return-void
.end method

.method private extendLifetime(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/NotificationLifetimeExtender;)V
    .locals 2

    .line 600
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mRetainedNotifications:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationLifetimeExtender;

    if-eqz v0, :cond_0

    if-eq v0, p2, :cond_0

    const/4 v1, 0x0

    .line 602
    invoke-interface {v0, p1, v1}, Lcom/android/systemui/statusbar/NotificationLifetimeExtender;->setShouldManageLifetime(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V

    .line 604
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mRetainedNotifications:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    .line 605
    invoke-interface {p2, p1, p0}, Lcom/android/systemui/statusbar/NotificationLifetimeExtender;->setShouldManageLifetime(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V

    return-void
.end method

.method private getRemoteInputManager()Lcom/android/systemui/statusbar/NotificationRemoteInputManager;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    if-nez v0, :cond_0

    .line 186
    const-class v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 188
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    return-object p0
.end method

.method private handleGroupSummaryRemoved(Ljava/lang/String;)V
    .locals 7

    .line 403
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 404
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->rowExists()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isSummaryWithChildren()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 405
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowDismissed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 410
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getChildren()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    move v2, v1

    .line 414
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 415
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 416
    iget-object v4, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget v4, v4, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x40

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    move v4, v5

    goto :goto_1

    :cond_2
    move v4, v1

    .line 419
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getRemoteInputManager()Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->shouldKeepForRemoteInputHistory(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 420
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getRemoteInputManager()Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->shouldKeepForSmartReplyHistory(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    move v6, v1

    goto :goto_3

    :cond_4
    :goto_2
    move v6, v5

    :goto_3
    if-nez v4, :cond_6

    if-eqz v6, :cond_5

    goto :goto_4

    .line 426
    :cond_5
    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setKeepInParent(Z)V

    .line 429
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->removeRow()V

    :cond_6
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method private obtainVisibility(Ljava/lang/String;)Lcom/android/internal/statusbar/NotificationVisibility;
    .locals 3

    .line 239
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getRank(Ljava/lang/String;)I

    move-result v0

    .line 240
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 242
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->getNotificationLocation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    move-result-object p0

    const/4 v2, 0x1

    .line 243
    invoke-static {p1, v0, v1, v2, p0}, Lcom/android/internal/statusbar/NotificationVisibility;->obtain(Ljava/lang/String;IIZLcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object p0

    return-object p0
.end method

.method private removeNotificationInternal(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;Lcom/android/internal/statusbar/NotificationVisibility;ZZI)V
    .locals 6

    .line 327
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mRemoveInterceptor:Lcom/android/systemui/statusbar/NotificationRemoveInterceptor;

    if-eqz v0, :cond_0

    .line 328
    invoke-interface {v0, p1, p6}, Lcom/android/systemui/statusbar/NotificationRemoveInterceptor;->onNotificationRemoveRequested(Ljava/lang/String;I)Z

    move-result p6

    if-eqz p6, :cond_0

    return-void

    .line 333
    :cond_0
    iget-object p6, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-virtual {p6, p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p6, :cond_2

    .line 338
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mPendingNotifications:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v2, :cond_2

    .line 340
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationLifetimeExtenders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/NotificationLifetimeExtender;

    .line 341
    invoke-interface {v4, v2}, Lcom/android/systemui/statusbar/NotificationLifetimeExtender;->shouldExtendLifetimeForPendingNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 342
    invoke-direct {p0, v2, v4}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->extendLifetime(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/NotificationLifetimeExtender;)V

    move v0, v1

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    .line 350
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->abortExistingInflation(Ljava/lang/String;)V

    :cond_3
    if-eqz p6, :cond_7

    .line 356
    invoke-virtual {p6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowDismissed()Z

    move-result v2

    if-nez p4, :cond_5

    if-nez v2, :cond_5

    .line 358
    iget-object p4, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationLifetimeExtenders:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_4
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/NotificationLifetimeExtender;

    .line 359
    invoke-interface {v3, p6}, Lcom/android/systemui/statusbar/NotificationLifetimeExtender;->shouldExtendLifetime(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 360
    invoke-direct {p0, p6, v3}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->extendLifetime(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/NotificationLifetimeExtender;)V

    move v0, v1

    :cond_5
    if-nez v0, :cond_7

    .line 371
    invoke-direct {p0, p6}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->cancelLifetimeExtension(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 373
    invoke-virtual {p6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->rowExists()Z

    move-result p4

    if-eqz p4, :cond_6

    .line 374
    invoke-virtual {p6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->removeRow()V

    .line 378
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->handleGroupSummaryRemoved(Ljava/lang/String;)V

    .line 380
    iget-object p4, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-virtual {p4, p1, p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->remove(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 381
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateNotifications()V

    .line 382
    const-class p1, Lcom/android/systemui/util/leak/LeakDetector;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/leak/LeakDetector;

    invoke-virtual {p1, p6}, Lcom/android/systemui/util/leak/LeakDetector;->trackGarbage(Ljava/lang/Object;)V

    or-int p1, p5, v2

    .line 385
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationEntryListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;

    .line 386
    invoke-interface {p2, p6, p3, p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;->onEntryRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/internal/statusbar/NotificationVisibility;Z)V

    goto :goto_1

    :cond_7
    return-void
.end method

.method private requireBinder()Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinder;
    .locals 1

    .line 616
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationRowBinder:Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinder;

    if-eqz p0, :cond_0

    return-object p0

    .line 617
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "You must initialize NotificationEntryManager by callingsetRowBinder() before using."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private updateAppNotifications(Ljava/lang/String;Z)V
    .locals 4

    .line 126
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getAllNotificationsForPackage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 128
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->rowExists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v1

    .line 130
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mAppLockManager:Landroid/app/AppLockManager;

    invoke-virtual {v2, p1}, Landroid/app/AppLockManager;->isAppLocked(Ljava/lang/String;)Z

    move-result v2

    .line 131
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setAppLocked(Z)V

    .line 132
    sget-object v2, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationEntryManager$OIv1QwTLqkfZAW_4otV_TR11-g4;

    invoke-direct {v3, p0, v1, p2}, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationEntryManager$OIv1QwTLqkfZAW_4otV_TR11-g4;-><init>(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateNotificationInternal(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/systemui/statusbar/notification/InflationException;
        }
    .end annotation

    .line 472
    sget-boolean v0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->DEBUG:Z

    const-string v1, "NotificationEntryMgr"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateNotification("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 475
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->abortExistingInflation(Ljava/lang/String;)V

    .line 476
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 481
    :cond_1
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .line 482
    const-class v3, Lcom/android/systemui/statusbar/notification/collection/NotificationData$KeyguardEnvironment;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/NotificationData$KeyguardEnvironment;

    .line 483
    invoke-interface {v3, p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationData$KeyguardEnvironment;->isNotificationForCurrentProfiles(Landroid/service/notification/StatusBarNotification;)Z

    move-result v3

    .line 484
    sget-boolean v4, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->DEBUG:Z

    if-eqz v4, :cond_3

    .line 486
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notification is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_2

    const-string v5, ""

    goto :goto_0

    :cond_2
    const-string v5, "not "

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "for you"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v1, :cond_4

    if-eqz v3, :cond_4

    .line 490
    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateLyricTicker(Landroid/service/notification/StatusBarNotification;)V

    .line 492
    :cond_4
    iget v1, v2, Landroid/app/Notification;->flags:I

    const/high16 v4, 0x2000000

    and-int/2addr v1, v4

    if-eqz v1, :cond_5

    return-void

    .line 498
    :cond_5
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->cancelLifetimeExtension(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 500
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-virtual {v1, v0, p2, p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->update(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/service/notification/NotificationListenerService$RankingMap;Landroid/service/notification/StatusBarNotification;)V

    .line 502
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationEntryListeners:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;

    .line 503
    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;->onPreEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    goto :goto_1

    .line 506
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->requireBinder()Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinder;

    move-result-object p2

    new-instance v1, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationEntryManager$SIBfGdq3jJyc8bf22Z8ScPgTe3w;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationEntryManager$SIBfGdq3jJyc8bf22Z8ScPgTe3w;-><init>(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Landroid/service/notification/StatusBarNotification;)V

    invoke-interface {p2, v0, v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinder;->inflateViews(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/Runnable;)V

    .line 508
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateNotifications()V

    .line 510
    iget-object p2, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz p2, :cond_7

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 511
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7

    const/4 p2, 0x1

    goto :goto_2

    :cond_7
    const/4 p2, 0x0

    :goto_2
    if-eqz p2, :cond_8

    if-eqz v3, :cond_8

    .line 514
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz p2, :cond_8

    .line 515
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->haltTicker()V

    .line 516
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->tick(Landroid/service/notification/StatusBarNotification;ZZLandroid/media/MediaMetadata;Ljava/lang/String;)V

    .line 520
    :cond_8
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationEntryListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;

    .line 521
    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;->onPostEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    goto :goto_3

    :cond_9
    return-void
.end method

.method private updateRankingOfPendingNotifications(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 583
    :cond_0
    new-instance v0, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v0}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    .line 584
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mPendingNotifications:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 585
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 586
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->populateFromRanking(Landroid/service/notification/NotificationListenerService$Ranking;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0

    .line 464
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->addNotificationInternal(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    :try_end_0
    .catch Lcom/android/systemui/statusbar/notification/InflationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 466
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->handleInflationException(Landroid/service/notification/StatusBarNotification;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public addNotificationEntryListener(Lcom/android/systemui/statusbar/notification/NotificationEntryListener;)V
    .locals 0

    .line 173
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationEntryListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addNotificationLifetimeExtender(Lcom/android/systemui/statusbar/NotificationLifetimeExtender;)V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationLifetimeExtenders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    new-instance v0, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationEntryManager$VJJV4hUuOC0I144269MvaCxq9F4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationEntryManager$VJJV4hUuOC0I144269MvaCxq9F4;-><init>(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;)V

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/NotificationLifetimeExtender;->setCallback(Lcom/android/systemui/statusbar/NotificationLifetimeExtender$NotificationSafeToRemoveCallback;)V

    return-void
.end method

.method public addNotificationLifetimeExtenders(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/NotificationLifetimeExtender;",
            ">;)V"
        }
    .end annotation

    .line 204
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationLifetimeExtender;

    .line 205
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->addNotificationLifetimeExtender(Lcom/android/systemui/statusbar/NotificationLifetimeExtender;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string p1, "NotificationEntryManager state:"

    .line 141
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  mPendingNotifications="

    .line 142
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 143
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mPendingNotifications:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "null"

    .line 144
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 146
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mPendingNotifications:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 147
    iget-object p3, p3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    :goto_1
    const-string p1, "  Lifetime-extended notifications:"

    .line 150
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 151
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mRetainedNotifications:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p0, "    None"

    .line 152
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 155
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mRetainedNotifications:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 156
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " retained by "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/NotificationLifetimeExtender;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 156
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method

.method public getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;
    .locals 0

    .line 216
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    return-object p0
.end method

.method public getPendingNotificationsIterator()Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation

    .line 596
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mPendingNotifications:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public handleInflationException(Landroid/service/notification/StatusBarNotification;Ljava/lang/Exception;)V
    .locals 7

    .line 267
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x4

    move-object v0, p0

    .line 266
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->removeNotificationInternal(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;Lcom/android/internal/statusbar/NotificationVisibility;ZZI)V

    .line 269
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationEntryListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;

    .line 270
    invoke-interface {v0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;->onInflationError(Landroid/service/notification/StatusBarNotification;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic lambda$addNotificationInternal$3$NotificationEntryManager(Landroid/service/notification/StatusBarNotification;)V
    .locals 1

    const/4 v0, 0x2

    .line 449
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->performRemoveNotification(Landroid/service/notification/StatusBarNotification;I)V

    return-void
.end method

.method public synthetic lambda$addNotificationLifetimeExtender$1$NotificationEntryManager(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 212
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;I)V

    return-void
.end method

.method public synthetic lambda$onAsyncInflationFinished$2$NotificationEntryManager(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Ljava/lang/String;)V
    .locals 1

    .line 287
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mLockNotifications:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mAppLockManager:Landroid/app/AppLockManager;

    .line 288
    invoke-virtual {p0, p2}, Landroid/app/AppLockManager;->isAppOpen(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 287
    :goto_1
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->onAppStateChanged(Z)V

    return-void
.end method

.method public synthetic lambda$updateAppNotifications$0$NotificationEntryManager(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Z)V
    .locals 0

    .line 133
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mLockNotifications:Z

    if-eqz p0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->onAppStateChanged(Z)V

    return-void
.end method

.method public synthetic lambda$updateNotificationInternal$4$NotificationEntryManager(Landroid/service/notification/StatusBarNotification;)V
    .locals 1

    const/4 v0, 0x2

    .line 506
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->performRemoveNotification(Landroid/service/notification/StatusBarNotification;I)V

    return-void
.end method

.method public onAsyncInflationFinished(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V
    .locals 4

    .line 277
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mPendingNotifications:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowRemoved()Z

    move-result v0

    if-nez v0, :cond_5

    .line 281
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 282
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mAppLockManager:Landroid/app/AppLockManager;

    invoke-virtual {v1, v0}, Landroid/app/AppLockManager;->isAppLocked(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->rowExists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 284
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v2

    .line 285
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setAppLocked(Z)V

    .line 286
    sget-object v1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationEntryManager$hTRH5wdS3F7dD5pWNt31gBgLTWU;

    invoke-direct {v3, p0, v2, v0}, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationEntryManager$hTRH5wdS3F7dD5pWNt31gBgLTWU;-><init>(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 293
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationEntryListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;

    .line 294
    invoke-interface {v1, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;->onEntryInflated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    goto :goto_1

    .line 296
    :cond_2
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->add(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 297
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationEntryListeners:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;

    .line 298
    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;->onBeforeNotificationAdded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    goto :goto_2

    .line 300
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateNotifications()V

    .line 301
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationEntryListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;

    .line 302
    invoke-interface {p2, p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;->onNotificationAdded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    goto :goto_3

    .line 305
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationEntryListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;

    .line 306
    invoke-interface {p2, p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;->onEntryReinflated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    goto :goto_4

    :cond_5
    return-void
.end method

.method public onReorderingAllowed()V
    .locals 0

    .line 221
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateNotifications()V

    return-void
.end method

.method public performRemoveNotification(Landroid/service/notification/StatusBarNotification;I)V
    .locals 8

    .line 232
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->obtainVisibility(Ljava/lang/String;)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v4

    .line 234
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move v7, p2

    .line 233
    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->removeNotificationInternal(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;Lcom/android/internal/statusbar/NotificationVisibility;ZZI)V

    return-void
.end method

.method public removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;I)V
    .locals 7

    .line 315
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->obtainVisibility(Ljava/lang/String;)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->removeNotificationInternal(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;Lcom/android/internal/statusbar/NotificationVisibility;ZZI)V

    return-void
.end method

.method public setNotificationRemoveInterceptor(Lcom/android/systemui/statusbar/NotificationRemoveInterceptor;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mRemoveInterceptor:Lcom/android/systemui/statusbar/NotificationRemoveInterceptor;

    return-void
.end method

.method public setRowBinder(Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinder;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationRowBinder:Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinder;

    return-void
.end method

.method public setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    .line 656
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-void
.end method

.method public setUpWithPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    .line 199
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    return-void
.end method

.method public updateNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0

    .line 529
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateNotificationInternal(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    :try_end_0
    .catch Lcom/android/systemui/statusbar/notification/InflationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 531
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->handleInflationException(Landroid/service/notification/StatusBarNotification;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public updateNotificationRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 8

    .line 544
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 545
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 546
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mPendingNotifications:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 549
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 550
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 551
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 553
    invoke-static {v4}, Lcom/android/systemui/statusbar/NotificationUiAdjustment;->extractFromNotificationEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/NotificationUiAdjustment;

    move-result-object v5

    .line 554
    iget-object v6, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {v1, v6, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    iget-object v5, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    iget v4, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->importance:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 559
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 560
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateRankingOfPendingNotifications(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 563
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 564
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->requireBinder()Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinder;

    move-result-object v4

    iget-object v5, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    .line 566
    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    iget-object v6, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    .line 567
    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/NotificationUiAdjustment;

    .line 568
    invoke-static {v3}, Lcom/android/systemui/statusbar/NotificationUiAdjustment;->extractFromNotificationEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/NotificationUiAdjustment;

    move-result-object v7

    .line 564
    invoke-interface {v4, v3, v5, v6, v7}, Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinder;->onNotificationRankingUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/Integer;Lcom/android/systemui/statusbar/NotificationUiAdjustment;Lcom/android/systemui/statusbar/NotificationUiAdjustment;)V

    goto :goto_1

    .line 571
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateNotifications()V

    .line 573
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationEntryListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;

    .line 574
    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;->onNotificationRankingUpdated(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    goto :goto_2

    :cond_2
    return-void
.end method

.method public updateNotifications()V
    .locals 1

    .line 536
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->filterAndSort()V

    .line 537
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    if-eqz p0, :cond_0

    .line 538
    invoke-interface {p0}, Lcom/android/systemui/statusbar/NotificationPresenter;->updateNotificationViews()V

    :cond_0
    return-void
.end method
