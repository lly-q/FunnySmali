.class Lorg/lineageos/internal/statusbar/NetworkTraffic$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "NetworkTraffic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lineageos/internal/statusbar/NetworkTraffic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;


# direct methods
.method constructor <init>(Lorg/lineageos/internal/statusbar/NetworkTraffic;Landroid/os/Handler;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic$SettingsObserver;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    .line 361
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .line 365
    iget-object v0, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic$SettingsObserver;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    invoke-static {v0}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->access$2700(Lorg/lineageos/internal/statusbar/NetworkTraffic;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network_traffic_mode"

    .line 366
    invoke-static {v1}, Llineageos/providers/LineageSettings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "network_traffic_autohide"

    .line 369
    invoke-static {v1}, Llineageos/providers/LineageSettings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "network_traffic_units"

    .line 372
    invoke-static {v1}, Llineageos/providers/LineageSettings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "network_traffic_show_units"

    .line 375
    invoke-static {v1}, Llineageos/providers/LineageSettings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public onChange(Z)V
    .locals 0

    .line 386
    iget-object p0, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic$SettingsObserver;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    invoke-static {p0}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->access$2900(Lorg/lineageos/internal/statusbar/NetworkTraffic;)V

    return-void
.end method

.method unobserve()V
    .locals 1

    .line 381
    iget-object v0, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic$SettingsObserver;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    invoke-static {v0}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->access$2800(Lorg/lineageos/internal/statusbar/NetworkTraffic;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
