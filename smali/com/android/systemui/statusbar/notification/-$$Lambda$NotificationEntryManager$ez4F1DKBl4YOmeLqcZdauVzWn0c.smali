.class public final synthetic Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationEntryManager$ez4F1DKBl4YOmeLqcZdauVzWn0c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private final synthetic f$1:Landroid/service/notification/StatusBarNotification;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationEntryManager$ez4F1DKBl4YOmeLqcZdauVzWn0c;->f$0:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationEntryManager$ez4F1DKBl4YOmeLqcZdauVzWn0c;->f$1:Landroid/service/notification/StatusBarNotification;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationEntryManager$ez4F1DKBl4YOmeLqcZdauVzWn0c;->f$0:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationEntryManager$ez4F1DKBl4YOmeLqcZdauVzWn0c;->f$1:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->lambda$addNotificationInternal$3$NotificationEntryManager(Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method
