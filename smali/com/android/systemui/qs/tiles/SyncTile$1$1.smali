.class Lcom/android/systemui/qs/tiles/SyncTile$1$1;
.super Ljava/lang/Object;
.source "SyncTile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/SyncTile$1;->onStatusChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/tiles/SyncTile$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/SyncTile$1;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SyncTile$1$1;->this$1:Lcom/android/systemui/qs/tiles/SyncTile$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SyncTile$1$1;->this$1:Lcom/android/systemui/qs/tiles/SyncTile$1;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SyncTile$1;->this$0:Lcom/android/systemui/qs/tiles/SyncTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    return-void
.end method
