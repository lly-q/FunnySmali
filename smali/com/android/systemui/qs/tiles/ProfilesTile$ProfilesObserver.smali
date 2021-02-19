.class Lcom/android/systemui/qs/tiles/ProfilesTile$ProfilesObserver;
.super Landroid/database/ContentObserver;
.source "ProfilesTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/ProfilesTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProfilesObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/ProfilesTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/ProfilesTile;Landroid/os/Handler;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ProfilesTile$ProfilesObserver;->this$0:Lcom/android/systemui/qs/tiles/ProfilesTile;

    .line 309
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public endObserving()V
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ProfilesTile$ProfilesObserver;->this$0:Lcom/android/systemui/qs/tiles/ProfilesTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/ProfilesTile;->access$1000(Lcom/android/systemui/qs/tiles/ProfilesTile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onChange(Z)V
    .locals 0

    .line 314
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/ProfilesTile$ProfilesObserver;->this$0:Lcom/android/systemui/qs/tiles/ProfilesTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    return-void
.end method

.method public startObserving()V
    .locals 3

    .line 318
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ProfilesTile$ProfilesObserver;->this$0:Lcom/android/systemui/qs/tiles/ProfilesTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/ProfilesTile;->access$900(Lcom/android/systemui/qs/tiles/ProfilesTile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "system_profiles_enabled"

    .line 319
    invoke-static {v1}, Llineageos/providers/LineageSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    .line 318
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method
