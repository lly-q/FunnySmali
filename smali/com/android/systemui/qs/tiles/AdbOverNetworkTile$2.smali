.class Lcom/android/systemui/qs/tiles/AdbOverNetworkTile$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
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
.method constructor <init>(Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AdbOverNetworkTile$2;->this$0:Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 3

    .line 188
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    move-object v0, p2

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkAddress;

    .line 189
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 190
    instance-of v2, v1, Ljava/net/Inet4Address;

    if-eqz v2, :cond_1

    .line 191
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_1
    if-nez v0, :cond_0

    .line 193
    instance-of v2, v1, Ljava/net/Inet6Address;

    if-eqz v2, :cond_0

    .line 194
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 197
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/AdbOverNetworkTile$2;->this$0:Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    move-object p2, v0

    :goto_2
    invoke-static {p1, p2}, Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;->access$102(Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;Ljava/lang/String;)Ljava/lang/String;

    .line 198
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/AdbOverNetworkTile$2;->this$0:Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    .line 203
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/AdbOverNetworkTile$2;->this$0:Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;->access$102(Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;Ljava/lang/String;)Ljava/lang/String;

    .line 204
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/AdbOverNetworkTile$2;->this$0:Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    return-void
.end method
