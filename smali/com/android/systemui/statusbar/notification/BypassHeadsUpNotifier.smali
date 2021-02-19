.class public final Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;
.super Ljava/lang/Object;
.source "BypassHeadsUpNotifier.kt"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
.implements Lcom/android/systemui/statusbar/NotificationMediaManager$MediaListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBypassHeadsUpNotifier.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BypassHeadsUpNotifier.kt\ncom/android/systemui/statusbar/notification/BypassHeadsUpNotifier\n*L\n1#1,144:1\n*E\n"
.end annotation


# instance fields
.field private final bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private final context:Landroid/content/Context;

.field private currentMediaEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field private enabled:Z

.field private entryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private fullyAwake:Z

.field private final headsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

.field private final mediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

.field private final notificationLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field private final statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/NotificationMediaManager;Lcom/android/systemui/tuner/TunerService;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bypassController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statusBarStateController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headsUpManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationLockscreenUserManager"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaManager"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tunerService"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;->headsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;->notificationLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;->mediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    const/4 p1, 0x1

    .line 51
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;->enabled:Z

    .line 62
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 64
    new-instance p1, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier$1;-><init>(Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;)V

    const-string p0, "show_media_when_bypassing"

    .line 70
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    .line 63
    invoke-virtual {p7, p1, p0}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;)Landroid/content/Context;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$setEnabled$p(Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;Z)V
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;->enabled:Z

    return-void
.end method

.method private final canAutoHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 2

    .line 103
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;->isAutoHeadsUpAllowed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 106
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isSensitive()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;->notificationLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->shouldShowOnKeyguard(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 114
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;->entryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object p0

    const-string v0, "entryManager.notificationData"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    const-string p0, "entryManager"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final isAutoHeadsUpAllowed()Z
    .locals 3

    .line 129
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;->enabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    return v1

    .line 138
    :cond_2
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;->fullyAwake:Z

    if-nez p0, :cond_3

    return v1

    :cond_3
    return v2
.end method

.method private final updateAutoHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 91
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;->currentMediaEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;->canAutoHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 92
    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setAutoHeadsUp(Z)V

    if-eqz v0, :cond_1

    .line 94
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;->headsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->showNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onMetadataOrStateChanged(Landroid/media/MediaMetadata;I)V
    .locals 3

    .line 79
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;->currentMediaEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 80
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;->entryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;->mediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationMediaManager;->getMediaNotificationKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    .line 81
    invoke-static {p2}, Lcom/android/systemui/statusbar/NotificationMediaManager;->isPlayingState(I)Z

    move-result p2

    if-nez p2, :cond_0

    move-object v0, v1

    .line 84
    :cond_0
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;->currentMediaEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 85
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;->updateAutoHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 86
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;->currentMediaEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;->updateAutoHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void

    :cond_1
    const-string p0, "entryManager"

    .line 80
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public onStatePostChange()V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;->currentMediaEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;->updateAutoHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public final setFullyAwake(Z)V
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;->fullyAwake:Z

    if-eqz p1, :cond_0

    .line 57
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;->currentMediaEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;->updateAutoHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_0
    return-void
.end method
