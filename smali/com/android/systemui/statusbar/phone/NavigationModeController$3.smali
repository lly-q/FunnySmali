.class Lcom/android/systemui/statusbar/phone/NavigationModeController$3;
.super Landroid/content/BroadcastReceiver;
.source "NavigationModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NavigationModeController;->deferGesturalNavOverlayIfNecessary()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavigationModeController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationModeController;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController$3;->this$0:Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 345
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController$3;->this$0:Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->access$200(Lcom/android/systemui/statusbar/phone/NavigationModeController;Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    return-void
.end method
