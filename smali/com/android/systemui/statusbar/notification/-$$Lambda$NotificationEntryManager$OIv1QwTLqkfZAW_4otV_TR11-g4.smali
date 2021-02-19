.class public final synthetic Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationEntryManager$OIv1QwTLqkfZAW_4otV_TR11-g4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private final synthetic f$1:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field private final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationEntryManager$OIv1QwTLqkfZAW_4otV_TR11-g4;->f$0:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationEntryManager$OIv1QwTLqkfZAW_4otV_TR11-g4;->f$1:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationEntryManager$OIv1QwTLqkfZAW_4otV_TR11-g4;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationEntryManager$OIv1QwTLqkfZAW_4otV_TR11-g4;->f$0:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationEntryManager$OIv1QwTLqkfZAW_4otV_TR11-g4;->f$1:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationEntryManager$OIv1QwTLqkfZAW_4otV_TR11-g4;->f$2:Z

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->lambda$updateAppNotifications$0$NotificationEntryManager(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Z)V

    return-void
.end method
