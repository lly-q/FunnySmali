.class Lcom/android/systemui/qs/tiles/UsbTetherTile$1;
.super Landroid/content/BroadcastReceiver;
.source "UsbTetherTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/UsbTetherTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/UsbTetherTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/UsbTetherTile;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/UsbTetherTile$1;->this$0:Lcom/android/systemui/qs/tiles/UsbTetherTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 96
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/UsbTetherTile$1;->this$0:Lcom/android/systemui/qs/tiles/UsbTetherTile;

    const/4 v0, 0x0

    const-string v1, "connected"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {p1, v1}, Lcom/android/systemui/qs/tiles/UsbTetherTile;->access$002(Lcom/android/systemui/qs/tiles/UsbTetherTile;Z)Z

    .line 97
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/UsbTetherTile$1;->this$0:Lcom/android/systemui/qs/tiles/UsbTetherTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/UsbTetherTile;->access$000(Lcom/android/systemui/qs/tiles/UsbTetherTile;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/UsbTetherTile$1;->this$0:Lcom/android/systemui/qs/tiles/UsbTetherTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/UsbTetherTile;->access$100(Lcom/android/systemui/qs/tiles/UsbTetherTile;)Landroid/net/ConnectivityManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 98
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/UsbTetherTile$1;->this$0:Lcom/android/systemui/qs/tiles/UsbTetherTile;

    const-string v1, "rndis"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/android/systemui/qs/tiles/UsbTetherTile;->access$202(Lcom/android/systemui/qs/tiles/UsbTetherTile;Z)Z

    goto :goto_0

    .line 100
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/UsbTetherTile$1;->this$0:Lcom/android/systemui/qs/tiles/UsbTetherTile;

    invoke-static {p1, v0}, Lcom/android/systemui/qs/tiles/UsbTetherTile;->access$202(Lcom/android/systemui/qs/tiles/UsbTetherTile;Z)Z

    .line 102
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/UsbTetherTile$1;->this$0:Lcom/android/systemui/qs/tiles/UsbTetherTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    return-void
.end method
