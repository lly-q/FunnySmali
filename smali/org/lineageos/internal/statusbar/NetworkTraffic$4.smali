.class Lorg/lineageos/internal/statusbar/NetworkTraffic$4;
.super Landroid/content/BroadcastReceiver;
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

    .line 349
    iput-object p1, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic$4;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 352
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 353
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 354
    iget-object p0, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic$4;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    invoke-static {p0}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->access$500(Lorg/lineageos/internal/statusbar/NetworkTraffic;)V

    :cond_0
    return-void
.end method
