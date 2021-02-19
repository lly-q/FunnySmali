.class Lcom/android/systemui/statusbar/phone/StatusBar$15;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


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

    .line 4282
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onFinishedGoingToSleep$0$StatusBar$15()V
    .locals 1

    .line 4301
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$2400(Lcom/android/systemui/statusbar/phone/StatusBar;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onCameraLaunchGestureDetected(I)V

    return-void
.end method

.method public onFinishedGoingToSleep()V
    .locals 3

    .line 4285
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onAffordanceLaunchEnded()V

    .line 4286
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1600(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 4287
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1702(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z

    .line 4288
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    .line 4289
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1802(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z

    .line 4290
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1902(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 4291
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->setScreenOn(Z)V

    .line 4292
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateVisibleToUser()V

    .line 4294
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$2000(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 4295
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->cancelCurrentTouch()V

    .line 4296
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$2100(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4297
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$2102(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z

    .line 4301
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$15$w8yIAB2Rks52AvrEN75aAhRjaK8;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$15$w8yIAB2Rks52AvrEN75aAhRjaK8;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar$15;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4303
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$2200(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    return-void
.end method

.method public onFinishedWakingUp()V
    .locals 3

    .line 4336
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setFullyAwake(Z)V

    .line 4337
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBypassHeadsUpNotifier:Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;->setFullyAwake(Z)V

    .line 4338
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setWakingUp(Z)V

    .line 4339
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1700(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4340
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$2400(Lcom/android/systemui/statusbar/phone/StatusBar;)I

    move-result v0

    invoke-virtual {v2, v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->launchCamera(ZI)V

    .line 4341
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1702(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z

    .line 4343
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateScrimController()V

    return-void
.end method

.method public onStartedGoingToSleep()V
    .locals 2

    .line 4308
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$2000(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 4309
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->notifyHeadsUpGoingToSleep()V

    .line 4310
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$2300(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 4311
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setFullyAwake(Z)V

    .line 4312
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBypassHeadsUpNotifier:Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;->setFullyAwake(Z)V

    .line 4313
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->onStartedGoingToSleep()V

    return-void
.end method

.method public onStartedWakingUp()V
    .locals 2

    .line 4318
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    .line 4319
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setWakingUp(Z)V

    .line 4320
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4321
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->releaseAllImmediately()V

    .line 4323
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->setScreenOn(Z)V

    .line 4324
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateVisibleToUser()V

    .line 4325
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$2200(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    .line 4326
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->stopDozing()V

    .line 4330
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$2000(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 4331
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->onStartedWakingUp()V

    return-void
.end method
