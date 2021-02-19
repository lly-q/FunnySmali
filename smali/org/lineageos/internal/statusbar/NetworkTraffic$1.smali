.class Lorg/lineageos/internal/statusbar/NetworkTraffic$1;
.super Ljava/lang/Object;
.source "NetworkTraffic.java"

# interfaces
.implements Lorg/lineageos/internal/statusbar/LineageStatusBarItem$DarkReceiver;


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

    .line 143
    iput-object p1, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic$1;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 0

    .line 145
    iget-object p1, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic$1;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    invoke-static {p1, p3}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->access$002(Lorg/lineageos/internal/statusbar/NetworkTraffic;I)I

    .line 146
    iget-object p1, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic$1;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    invoke-static {p1}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->access$000(Lorg/lineageos/internal/statusbar/NetworkTraffic;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 147
    iget-object p0, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic$1;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    invoke-static {p0}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->access$100(Lorg/lineageos/internal/statusbar/NetworkTraffic;)V

    return-void
.end method

.method public setFillColors(II)V
    .locals 1

    .line 150
    iget-object v0, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic$1;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    invoke-static {v0, p1}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->access$202(Lorg/lineageos/internal/statusbar/NetworkTraffic;I)I

    .line 151
    iget-object p0, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic$1;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    invoke-static {p0, p2}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->access$302(Lorg/lineageos/internal/statusbar/NetworkTraffic;I)I

    return-void
.end method
