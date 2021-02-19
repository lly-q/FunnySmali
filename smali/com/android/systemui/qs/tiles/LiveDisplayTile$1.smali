.class Lcom/android/systemui/qs/tiles/LiveDisplayTile$1;
.super Landroid/content/BroadcastReceiver;
.source "LiveDisplayTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/LiveDisplayTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/LiveDisplayTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/LiveDisplayTile;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/LiveDisplayTile$1;->this$0:Lcom/android/systemui/qs/tiles/LiveDisplayTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 264
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/LiveDisplayTile$1;->this$0:Lcom/android/systemui/qs/tiles/LiveDisplayTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/LiveDisplayTile;->access$700(Lcom/android/systemui/qs/tiles/LiveDisplayTile;)Z

    .line 265
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/LiveDisplayTile$1;->this$0:Lcom/android/systemui/qs/tiles/LiveDisplayTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/LiveDisplayTile;->access$800(Lcom/android/systemui/qs/tiles/LiveDisplayTile;)V

    return-void
.end method
