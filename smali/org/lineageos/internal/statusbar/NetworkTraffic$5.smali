.class Lorg/lineageos/internal/statusbar/NetworkTraffic$5;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetworkTraffic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lineageos/internal/statusbar/NetworkTraffic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;


# direct methods
.method constructor <init>(Lorg/lineageos/internal/statusbar/NetworkTraffic;)V
    .locals 0

    .line 506
    iput-object p1, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic$5;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 3

    .line 509
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x2

    .line 510
    iput v1, v0, Landroid/os/Message;->what:I

    .line 511
    new-instance v1, Lorg/lineageos/internal/statusbar/NetworkTraffic$LinkPropertiesHolder;

    iget-object v2, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic$5;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    invoke-direct {v1, v2, p1, p2}, Lorg/lineageos/internal/statusbar/NetworkTraffic$LinkPropertiesHolder;-><init>(Lorg/lineageos/internal/statusbar/NetworkTraffic;Landroid/net/Network;Landroid/net/LinkProperties;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 512
    iget-object p0, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic$5;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    invoke-static {p0}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->access$2000(Lorg/lineageos/internal/statusbar/NetworkTraffic;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2

    .line 517
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x3

    .line 518
    iput v1, v0, Landroid/os/Message;->what:I

    .line 519
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 520
    iget-object p0, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic$5;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    invoke-static {p0}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->access$2000(Lorg/lineageos/internal/statusbar/NetworkTraffic;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
