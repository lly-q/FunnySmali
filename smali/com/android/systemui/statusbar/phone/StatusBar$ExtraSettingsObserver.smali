.class Lcom/android/systemui/statusbar/phone/StatusBar$ExtraSettingsObserver;
.super Landroid/database/ContentObserver;
.source "StatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExtraSettingsObserver"
.end annotation


# instance fields
.field private mUriForDisableNotificationAlert:Landroid/net/Uri;

.field private mUriForGamingModeActive:Landroid/net/Uri;

.field private resolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/os/Handler;)V
    .locals 0

    .line 5283
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$ExtraSettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 5284
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "gaming_mode_active"

    .line 5278
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$ExtraSettingsObserver;->mUriForGamingModeActive:Landroid/net/Uri;

    const-string p1, "gaming_mode_disable_notification_alert"

    .line 5279
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$ExtraSettingsObserver;->mUriForDisableNotificationAlert:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public init()V
    .locals 4

    .line 5288
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$ExtraSettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$ExtraSettingsObserver;->resolver:Landroid/content/ContentResolver;

    .line 5289
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$ExtraSettingsObserver;->resolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$ExtraSettingsObserver;->mUriForGamingModeActive:Landroid/net/Uri;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5290
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$ExtraSettingsObserver;->resolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$ExtraSettingsObserver;->mUriForDisableNotificationAlert:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    .line 5295
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 5296
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$ExtraSettingsObserver;->mUriForGamingModeActive:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$ExtraSettingsObserver;->mUriForDisableNotificationAlert:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5297
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$ExtraSettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationInterruptionStateProvider:Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

    if-eqz p1, :cond_2

    .line 5298
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$ExtraSettingsObserver;->resolver:Landroid/content/ContentResolver;

    const/4 v0, 0x0

    const-string v1, "gaming_mode_active"

    .line 5299
    invoke-static {p2, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$ExtraSettingsObserver;->resolver:Landroid/content/ContentResolver;

    const-string v1, "gaming_mode_disable_notification_alert"

    .line 5300
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    and-int/2addr p0, p2

    const/4 p2, 0x1

    if-ne p0, p2, :cond_1

    goto :goto_0

    :cond_1
    move p2, v0

    .line 5298
    :goto_0
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->setGamingModeNoAlert(Z)V

    :cond_2
    return-void
.end method
