.class Lcom/android/systemui/qs/tiles/LiveDisplayTile$LiveDisplayObserver;
.super Landroid/database/ContentObserver;
.source "LiveDisplayTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/LiveDisplayTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LiveDisplayObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/LiveDisplayTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/LiveDisplayTile;Landroid/os/Handler;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/LiveDisplayTile$LiveDisplayObserver;->this$0:Lcom/android/systemui/qs/tiles/LiveDisplayTile;

    .line 238
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public endObserving()V
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LiveDisplayTile$LiveDisplayObserver;->this$0:Lcom/android/systemui/qs/tiles/LiveDisplayTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/LiveDisplayTile;->access$600(Lcom/android/systemui/qs/tiles/LiveDisplayTile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onChange(Z)V
    .locals 1

    .line 243
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/LiveDisplayTile$LiveDisplayObserver;->this$0:Lcom/android/systemui/qs/tiles/LiveDisplayTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/LiveDisplayTile;->access$100(Lcom/android/systemui/qs/tiles/LiveDisplayTile;)Llineageos/hardware/LiveDisplayManager;

    move-result-object v0

    invoke-virtual {v0}, Llineageos/hardware/LiveDisplayManager;->getDayColorTemperature()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/systemui/qs/tiles/LiveDisplayTile;->access$002(Lcom/android/systemui/qs/tiles/LiveDisplayTile;I)I

    .line 244
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/LiveDisplayTile$LiveDisplayObserver;->this$0:Lcom/android/systemui/qs/tiles/LiveDisplayTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/LiveDisplayTile;->access$200(Lcom/android/systemui/qs/tiles/LiveDisplayTile;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/systemui/qs/tiles/LiveDisplayTile;->access$300(Lcom/android/systemui/qs/tiles/LiveDisplayTile;Ljava/lang/Object;)V

    return-void
.end method

.method public startObserving()V
    .locals 4

    .line 248
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LiveDisplayTile$LiveDisplayObserver;->this$0:Lcom/android/systemui/qs/tiles/LiveDisplayTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/LiveDisplayTile;->access$400(Lcom/android/systemui/qs/tiles/LiveDisplayTile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_temperature_mode"

    .line 249
    invoke-static {v1}, Llineageos/providers/LineageSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 248
    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 251
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LiveDisplayTile$LiveDisplayObserver;->this$0:Lcom/android/systemui/qs/tiles/LiveDisplayTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/LiveDisplayTile;->access$500(Lcom/android/systemui/qs/tiles/LiveDisplayTile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_temperature_day"

    .line 252
    invoke-static {v1}, Llineageos/providers/LineageSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 251
    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method
