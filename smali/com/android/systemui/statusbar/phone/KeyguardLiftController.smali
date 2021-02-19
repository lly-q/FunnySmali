.class public final Lcom/android/systemui/statusbar/phone/KeyguardLiftController;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardLiftController.kt"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# instance fields
.field private final asyncSensorManager:Lcom/android/systemui/util/AsyncSensorManager;

.field private bouncerVisible:Z

.field private isListening:Z

.field private final keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final listener:Landroid/hardware/TriggerEventListener;

.field private final pickupSensor:Landroid/hardware/Sensor;

.field private final statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/util/AsyncSensorManager;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statusBarStateController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncSensorManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->asyncSensorManager:Lcom/android/systemui/util/AsyncSensorManager;

    .line 35
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 36
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->asyncSensorManager:Lcom/android/systemui/util/AsyncSensorManager;

    const/16 p2, 0x19

    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->pickupSensor:Landroid/hardware/Sensor;

    .line 41
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 42
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 43
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->updateListeningState()V

    .line 46
    new-instance p1, Lcom/android/systemui/statusbar/phone/KeyguardLiftController$listener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardLiftController$listener$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardLiftController;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->listener:Landroid/hardware/TriggerEventListener;

    return-void
.end method

.method public static final synthetic access$getKeyguardUpdateMonitor$p(Lcom/android/systemui/statusbar/phone/KeyguardLiftController;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method public static final synthetic access$setListening$p(Lcom/android/systemui/statusbar/phone/KeyguardLiftController;Z)V
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->isListening:Z

    return-void
.end method

.method public static final synthetic access$updateListeningState(Lcom/android/systemui/statusbar/phone/KeyguardLiftController;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->updateListeningState()V

    return-void
.end method

.method private final updateListeningState()V
    .locals 5

    .line 70
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->pickupSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v1, "keyguardUpdateMonitor"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 76
    :goto_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    .line 77
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceAuthEnabledForUser(I)Z

    move-result v3

    if-nez v0, :cond_2

    .line 78
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->bouncerVisible:Z

    if-eqz v0, :cond_3

    :cond_2
    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    .line 79
    :goto_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->isListening:Z

    if-eq v1, v0, :cond_5

    .line 80
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->isListening:Z

    if-eqz v1, :cond_4

    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->asyncSensorManager:Lcom/android/systemui/util/AsyncSensorManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->listener:Landroid/hardware/TriggerEventListener;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->pickupSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, p0}, Landroid/hardware/SensorManager;->requestTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    goto :goto_2

    .line 85
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->asyncSensorManager:Lcom/android/systemui/util/AsyncSensorManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->listener:Landroid/hardware/TriggerEventListener;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->pickupSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, p0}, Landroid/hardware/SensorManager;->cancelTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public onDozingChanged(Z)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->updateListeningState()V

    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->bouncerVisible:Z

    .line 62
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->updateListeningState()V

    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->updateListeningState()V

    return-void
.end method
