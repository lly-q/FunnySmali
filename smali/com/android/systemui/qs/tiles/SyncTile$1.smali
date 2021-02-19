.class Lcom/android/systemui/qs/tiles/SyncTile$1;
.super Ljava/lang/Object;
.source "SyncTile.java"

# interfaces
.implements Landroid/content/SyncStatusObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/SyncTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/SyncTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/SyncTile;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SyncTile$1;->this$0:Lcom/android/systemui/qs/tiles/SyncTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(I)V
    .locals 1

    .line 116
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SyncTile$1;->this$0:Lcom/android/systemui/qs/tiles/SyncTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/SyncTile;->access$000(Lcom/android/systemui/qs/tiles/SyncTile;)Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/qs/tiles/SyncTile$1$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/SyncTile$1$1;-><init>(Lcom/android/systemui/qs/tiles/SyncTile$1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
