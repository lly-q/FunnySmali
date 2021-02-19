.class Lcom/android/systemui/statusbar/phone/StatusBar$16;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    .line 4360
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenTurnedOff()V
    .locals 2

    .line 4375
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/FalsingManager;->onScreenOff()V

    .line 4376
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->onScreenTurnedOff()V

    .line 4377
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$2500(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/VisualizerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/VisualizerView;->setVisible(Z)V

    .line 4378
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$2200(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 1

    .line 4369
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->onScreenTurnedOn()V

    .line 4370
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$2500(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/VisualizerView;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/VisualizerView;->setVisible(Z)V

    return-void
.end method

.method public onScreenTurningOn()V
    .locals 1

    .line 4363
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/FalsingManager;->onScreenTurningOn()V

    .line 4364
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onScreenTurningOn()V

    return-void
.end method
