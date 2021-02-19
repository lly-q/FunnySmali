.class Lcom/android/systemui/statusbar/notification/NotificationEntryManager$1;
.super Landroid/app/AppLockManager$AppLockCallback;
.source "NotificationEntryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/NotificationEntryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager$1;->this$0:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-direct {p0}, Landroid/app/AppLockManager$AppLockCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppStateChanged(Ljava/lang/String;Z)V
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager$1;->this$0:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-static {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->access$000(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Ljava/lang/String;Z)V

    return-void
.end method
