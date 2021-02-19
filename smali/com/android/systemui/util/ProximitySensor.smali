.class public Lcom/android/systemui/util/ProximitySensor;
.super Ljava/lang/Object;
.source "ProximitySensor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/util/ProximitySensor$ProximityEvent;,
        Lcom/android/systemui/util/ProximitySensor$ProximitySensorListener;
    }
.end annotation


# instance fields
.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/util/ProximitySensor$ProximitySensorListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNear:Z

.field private final mSensor:Landroid/hardware/Sensor;

.field private mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private final mSensorManager:Lcom/android/systemui/util/AsyncSensorManager;

.field private mTag:Ljava/lang/String;

.field private final mThreshold:F

.field private final mUsingBrightnessSensor:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/AsyncSensorManager;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/android/systemui/util/ProximitySensor$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/ProximitySensor$1;-><init>(Lcom/android/systemui/util/ProximitySensor;)V

    iput-object v0, p0, Lcom/android/systemui/util/ProximitySensor;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/util/ProximitySensor;->mListeners:Ljava/util/List;

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/android/systemui/util/ProximitySensor;->mTag:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lcom/android/systemui/util/ProximitySensor;->mSensorManager:Lcom/android/systemui/util/AsyncSensorManager;

    .line 63
    invoke-static {p1, p2}, Lcom/android/systemui/util/ProximitySensor;->findCustomProxSensor(Landroid/content/Context;Landroid/hardware/SensorManager;)Landroid/hardware/Sensor;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/android/systemui/util/ProximitySensor;->mUsingBrightnessSensor:Z

    const/16 v0, 0x8

    .line 67
    invoke-virtual {p2, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 69
    iput-boolean p2, p0, Lcom/android/systemui/util/ProximitySensor;->mUsingBrightnessSensor:Z

    .line 71
    :goto_0
    iput-object v0, p0, Lcom/android/systemui/util/ProximitySensor;->mSensor:Landroid/hardware/Sensor;

    .line 72
    iget-object p2, p0, Lcom/android/systemui/util/ProximitySensor;->mSensor:Landroid/hardware/Sensor;

    if-eqz p2, :cond_2

    .line 73
    iget-boolean v0, p0, Lcom/android/systemui/util/ProximitySensor;->mUsingBrightnessSensor:Z

    if-eqz v0, :cond_1

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/util/ProximitySensor;->getBrightnessSensorThreshold(Landroid/content/res/Resources;)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/util/ProximitySensor;->mThreshold:F

    goto :goto_1

    .line 76
    :cond_1
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/util/ProximitySensor;->mThreshold:F

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 79
    iput p1, p0, Lcom/android/systemui/util/ProximitySensor;->mThreshold:F

    :goto_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/util/ProximitySensor;Landroid/hardware/SensorEvent;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ProximitySensor;->onSensorEvent(Landroid/hardware/SensorEvent;)V

    return-void
.end method

.method public static findCustomProxSensor(Landroid/content/Context;Landroid/hardware/SensorManager;)Landroid/hardware/Sensor;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 94
    sget v0, Lcom/android/systemui/R$string;->proximity_sensor_type:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 95
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, -0x1

    .line 99
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object p1

    .line 101
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    .line 102
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public static getBrightnessSensorThreshold(Landroid/content/res/Resources;)F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 118
    sget v0, Lcom/android/systemui/R$dimen;->proximity_sensor_threshold:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    return p0
.end method

.method private logDebug(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private onSensorEvent(Landroid/hardware/SensorEvent;)V
    .locals 4

    .line 169
    iget-boolean v0, p0, Lcom/android/systemui/util/ProximitySensor;->mUsingBrightnessSensor:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    iget v3, p0, Lcom/android/systemui/util/ProximitySensor;->mThreshold:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/util/ProximitySensor;->mNear:Z

    goto :goto_2

    .line 172
    :cond_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    iget v3, p0, Lcom/android/systemui/util/ProximitySensor;->mThreshold:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/util/ProximitySensor;->mNear:Z

    .line 174
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/util/ProximitySensor;->mListeners:Ljava/util/List;

    new-instance v1, Lcom/android/systemui/util/-$$Lambda$ProximitySensor$u0k_WP8tod8dCJ2LgCU12LZcmjA;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/util/-$$Lambda$ProximitySensor$u0k_WP8tod8dCJ2LgCU12LZcmjA;-><init>(Lcom/android/systemui/util/ProximitySensor;Landroid/hardware/SensorEvent;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public getSensorAvailable()Z
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/android/systemui/util/ProximitySensor;->mSensor:Landroid/hardware/Sensor;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$onSensorEvent$0$ProximitySensor(Landroid/hardware/SensorEvent;Lcom/android/systemui/util/ProximitySensor$ProximitySensorListener;)V
    .locals 3

    .line 175
    new-instance v0, Lcom/android/systemui/util/ProximitySensor$ProximityEvent;

    iget-boolean p0, p0, Lcom/android/systemui/util/ProximitySensor;->mNear:Z

    iget-wide v1, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/util/ProximitySensor$ProximityEvent;-><init>(ZJ)V

    invoke-interface {p2, v0}, Lcom/android/systemui/util/ProximitySensor$ProximitySensorListener;->onProximitySensorEvent(Lcom/android/systemui/util/ProximitySensor$ProximityEvent;)V

    return-void
.end method

.method public register(Lcom/android/systemui/util/ProximitySensor$ProximitySensorListener;)Z
    .locals 2

    .line 135
    invoke-virtual {p0}, Lcom/android/systemui/util/ProximitySensor;->getSensorAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 139
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "using brightness sensor? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/util/ProximitySensor;->mUsingBrightnessSensor:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/util/ProximitySensor;->logDebug(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/android/systemui/util/ProximitySensor;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    iget-object p1, p0, Lcom/android/systemui/util/ProximitySensor;->mListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string p1, "registering sensor listener"

    .line 142
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ProximitySensor;->logDebug(Ljava/lang/String;)V

    .line 143
    iget-object p1, p0, Lcom/android/systemui/util/ProximitySensor;->mSensorManager:Lcom/android/systemui/util/AsyncSensorManager;

    iget-object v1, p0, Lcom/android/systemui/util/ProximitySensor;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object p0, p0, Lcom/android/systemui/util/ProximitySensor;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {p1, v1, p0, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_1
    return v0
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/android/systemui/util/ProximitySensor;->mTag:Ljava/lang/String;

    return-void
.end method

.method public unregister(Lcom/android/systemui/util/ProximitySensor$ProximitySensorListener;)V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/android/systemui/util/ProximitySensor;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 158
    iget-object p1, p0, Lcom/android/systemui/util/ProximitySensor;->mListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "unregistering sensor listener"

    .line 159
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ProximitySensor;->logDebug(Ljava/lang/String;)V

    .line 160
    iget-object p1, p0, Lcom/android/systemui/util/ProximitySensor;->mSensorManager:Lcom/android/systemui/util/AsyncSensorManager;

    iget-object p0, p0, Lcom/android/systemui/util/ProximitySensor;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {p1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    return-void
.end method
