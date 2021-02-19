.class Lcom/android/systemui/qs/tiles/ProfilesTile$1;
.super Landroid/content/BroadcastReceiver;
.source "ProfilesTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/ProfilesTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/ProfilesTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/ProfilesTile;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ProfilesTile$1;->this$0:Lcom/android/systemui/qs/tiles/ProfilesTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 230
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "lineageos.platform.intent.action.PROFILE_SELECTED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 231
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "lineageos.platform.intent.action.PROFILE_UPDATED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 232
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/ProfilesTile$1;->this$0:Lcom/android/systemui/qs/tiles/ProfilesTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    :cond_1
    return-void
.end method
