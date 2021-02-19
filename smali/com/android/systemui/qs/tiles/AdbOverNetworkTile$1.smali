.class Lcom/android/systemui/qs/tiles/AdbOverNetworkTile$1;
.super Landroid/database/ContentObserver;
.source "AdbOverNetworkTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;Landroid/os/Handler;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AdbOverNetworkTile$1;->this$0:Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 149
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/AdbOverNetworkTile$1;->this$0:Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    return-void
.end method
