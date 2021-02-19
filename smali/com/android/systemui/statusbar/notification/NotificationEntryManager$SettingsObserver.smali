.class Lcom/android/systemui/statusbar/notification/NotificationEntryManager$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "NotificationEntryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/NotificationEntryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field private mCr:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Landroid/content/Context;)V
    .locals 0

    .line 627
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 628
    sget-object p1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 629
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager$SettingsObserver;->mCr:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method observe()V
    .locals 5

    .line 633
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager$SettingsObserver;->mCr:Landroid/content/ContentResolver;

    const-string v1, "app_lock_hide_notifications"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v0, v2, v3, p0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 636
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager$SettingsObserver;->mCr:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    const/4 v4, -0x2

    invoke-static {p0, v1, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->access$102(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Z)Z

    return-void
.end method

.method public onChange(Z)V
    .locals 3

    .line 643
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager$SettingsObserver;->mCr:Landroid/content/ContentResolver;

    const/4 v0, 0x1

    const-string v1, "app_lock_hide_notifications"

    const/4 v2, -0x2

    invoke-static {p1, v1, v0, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 646
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->access$100(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;)Z

    move-result p1

    if-eq p1, v0, :cond_1

    .line 647
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->access$102(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Z)Z

    .line 648
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->access$200(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;)Landroid/app/AppLockManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AppLockManager;->getLockedPackages()Ljava/util/List;

    move-result-object p1

    .line 649
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 650
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->access$200(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;)Landroid/app/AppLockManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AppLockManager;->isAppOpen(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->access$000(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_1
    return-void
.end method
