.class Lorg/lineageos/internal/statusbar/NetworkTraffic$LinkPropertiesHolder;
.super Ljava/lang/Object;
.source "NetworkTraffic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lineageos/internal/statusbar/NetworkTraffic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LinkPropertiesHolder"
.end annotation


# instance fields
.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mNetwork:Landroid/net/Network;

.field final synthetic this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;


# direct methods
.method public constructor <init>(Lorg/lineageos/internal/statusbar/NetworkTraffic;Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 0

    .line 528
    iput-object p1, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic$LinkPropertiesHolder;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 529
    iput-object p2, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic$LinkPropertiesHolder;->mNetwork:Landroid/net/Network;

    .line 530
    iput-object p3, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic$LinkPropertiesHolder;->mLinkProperties:Landroid/net/LinkProperties;

    return-void
.end method


# virtual methods
.method public getLinkProperties()Landroid/net/LinkProperties;
    .locals 0

    .line 542
    iget-object p0, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic$LinkPropertiesHolder;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p0
.end method

.method public getNetwork()Landroid/net/Network;
    .locals 0

    .line 538
    iget-object p0, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic$LinkPropertiesHolder;->mNetwork:Landroid/net/Network;

    return-object p0
.end method
