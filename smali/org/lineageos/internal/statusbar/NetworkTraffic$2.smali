.class Lorg/lineageos/internal/statusbar/NetworkTraffic$2;
.super Ljava/lang/Object;
.source "NetworkTraffic.java"

# interfaces
.implements Lorg/lineageos/internal/statusbar/LineageStatusBarItem$VisibilityReceiver;


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

    .line 156
    iput-object p1, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic$2;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisibilityChanged(Z)V
    .locals 1

    .line 158
    iget-object v0, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic$2;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    invoke-static {v0}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->access$400(Lorg/lineageos/internal/statusbar/NetworkTraffic;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 159
    iget-object v0, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic$2;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    invoke-static {v0, p1}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->access$402(Lorg/lineageos/internal/statusbar/NetworkTraffic;Z)Z

    .line 160
    iget-object p0, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic$2;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    invoke-static {p0}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->access$500(Lorg/lineageos/internal/statusbar/NetworkTraffic;)V

    :cond_0
    return-void
.end method
