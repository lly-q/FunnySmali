.class abstract Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;
.super Ljava/lang/Object;
.source "DozeTriggers.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/DozeTriggers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ProximityCheck"
.end annotation


# instance fields
.field private mFinished:Z

.field private mMaxRange:F

.field private mRegistered:Z

.field private mSensorThreshold:F

.field private mUsingBrightnessSensor:Z

.field final synthetic this$0:Lcom/android/systemui/doze/DozeTriggers;


# direct methods
.method private constructor <init>(Lcom/android/systemui/doze/DozeTriggers;)V
    .locals 0

    .line 422
    iput-object p1, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/doze/DozeTriggers;Lcom/android/systemui/doze/DozeTriggers$1;)V
    .locals 0

    .line 422
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;-><init>(Lcom/android/systemui/doze/DozeTriggers;)V

    return-void
.end method

.method private finishWithResult(I)V
    .locals 3

    .line 494
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->mFinished:Z

    if-eqz v0, :cond_0

    return-void

    .line 495
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->mRegistered:Z

    if-eqz v0, :cond_1

    .line 497
    iget-object v1, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-static {v1}, Lcom/android/systemui/doze/DozeTriggers;->access$600(Lcom/android/systemui/doze/DozeTriggers;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 498
    iget-object v1, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-static {v1}, Lcom/android/systemui/doze/DozeTriggers;->access$400(Lcom/android/systemui/doze/DozeTriggers;)Landroid/hardware/SensorManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 499
    iget-object v1, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-static {v1}, Lcom/android/systemui/doze/DozeTriggers;->access$500(Lcom/android/systemui/doze/DozeTriggers;)Lcom/android/systemui/doze/DozeSensors;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/doze/DozeSensors;->setDisableSensorsInterferingWithProximity(Z)V

    .line 500
    iput-boolean v2, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->mRegistered:Z

    .line 502
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->onProximityResult(I)V

    if-eqz v0, :cond_2

    .line 504
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-static {p1}, Lcom/android/systemui/doze/DozeTriggers;->access$700(Lcom/android/systemui/doze/DozeTriggers;)Lcom/android/systemui/util/wakelock/WakeLock;

    move-result-object p1

    const-string v0, "DozeTriggers"

    invoke-interface {p1, v0}, Lcom/android/systemui/util/wakelock/WakeLock;->release(Ljava/lang/String;)V

    :cond_2
    const/4 p1, 0x1

    .line 506
    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->mFinished:Z

    return-void
.end method


# virtual methods
.method public check()V
    .locals 9

    .line 439
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->mFinished:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->mRegistered:Z

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 440
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeTriggers;->access$300(Lcom/android/systemui/doze/DozeTriggers;)Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-static {v3}, Lcom/android/systemui/doze/DozeTriggers;->access$400(Lcom/android/systemui/doze/DozeTriggers;)Landroid/hardware/SensorManager;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/systemui/util/ProximitySensor;->findCustomProxSensor(Landroid/content/Context;Landroid/hardware/SensorManager;)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    .line 441
    :goto_1
    iput-boolean v3, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->mUsingBrightnessSensor:Z

    .line 442
    iget-boolean v3, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->mUsingBrightnessSensor:Z

    if-eqz v3, :cond_2

    .line 443
    iget-object v3, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    .line 444
    invoke-static {v3}, Lcom/android/systemui/doze/DozeTriggers;->access$300(Lcom/android/systemui/doze/DozeTriggers;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 443
    invoke-static {v3}, Lcom/android/systemui/util/ProximitySensor;->getBrightnessSensorThreshold(Landroid/content/res/Resources;)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->mSensorThreshold:F

    goto :goto_2

    .line 446
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeTriggers;->access$400(Lcom/android/systemui/doze/DozeTriggers;)Landroid/hardware/SensorManager;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    :goto_2
    move-object v5, v0

    const-string v0, "DozeTriggers"

    if-nez v5, :cond_4

    .line 449
    sget-boolean v2, Lcom/android/systemui/doze/DozeMachine;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "ProxCheck: No sensor found"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->finishWithResult(I)V

    return-void

    .line 453
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-static {v1}, Lcom/android/systemui/doze/DozeTriggers;->access$500(Lcom/android/systemui/doze/DozeTriggers;)Lcom/android/systemui/doze/DozeSensors;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/systemui/doze/DozeSensors;->setDisableSensorsInterferingWithProximity(Z)V

    .line 455
    invoke-virtual {v5}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->mMaxRange:F

    .line 456
    iget-object v1, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-static {v1}, Lcom/android/systemui/doze/DozeTriggers;->access$400(Lcom/android/systemui/doze/DozeTriggers;)Landroid/hardware/SensorManager;

    move-result-object v3

    const/4 v6, 0x3

    const/4 v7, 0x0

    iget-object v1, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    .line 457
    invoke-static {v1}, Lcom/android/systemui/doze/DozeTriggers;->access$600(Lcom/android/systemui/doze/DozeTriggers;)Landroid/os/Handler;

    move-result-object v8

    move-object v4, p0

    .line 456
    invoke-virtual/range {v3 .. v8}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z

    .line 458
    iget-object v1, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-static {v1}, Lcom/android/systemui/doze/DozeTriggers;->access$600(Lcom/android/systemui/doze/DozeTriggers;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 459
    iget-object v1, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-static {v1}, Lcom/android/systemui/doze/DozeTriggers;->access$700(Lcom/android/systemui/doze/DozeTriggers;)Lcom/android/systemui/util/wakelock/WakeLock;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/systemui/util/wakelock/WakeLock;->acquire(Ljava/lang/String;)V

    .line 460
    iput-boolean v2, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->mRegistered:Z

    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method protected abstract onProximityResult(I)V
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    .line 468
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v0, v0

    const-string v1, "DozeTriggers"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 469
    sget-boolean p1, Lcom/android/systemui/doze/DozeMachine;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "ProxCheck: Event has no values!"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->finishWithResult(I)V

    goto :goto_3

    .line 472
    :cond_1
    sget-boolean v0, Lcom/android/systemui/doze/DozeMachine;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ProxCheck: Event: value="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " max="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->mMaxRange:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->mUsingBrightnessSensor:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 479
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v2

    iget v0, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->mSensorThreshold:F

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_4

    :goto_0
    move v2, v1

    goto :goto_1

    .line 481
    :cond_3
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v2

    iget v0, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->mMaxRange:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    const/4 v1, 0x2

    .line 483
    :goto_2
    invoke-direct {p0, v1}, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->finishWithResult(I)V

    :goto_3
    return-void
.end method

.method public run()V
    .locals 2

    .line 489
    sget-boolean v0, Lcom/android/systemui/doze/DozeMachine;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DozeTriggers"

    const-string v1, "ProxCheck: No event received before timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 490
    invoke-direct {p0, v0}, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->finishWithResult(I)V

    return-void
.end method
