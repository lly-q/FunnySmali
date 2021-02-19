.class public Lcom/android/systemui/util/ProximitySensor$ProximityEvent;
.super Ljava/lang/Object;
.source "ProximitySensor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/ProximitySensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProximityEvent"
.end annotation


# instance fields
.field private final mNear:Z

.field private final mTimestampNs:J


# direct methods
.method public constructor <init>(ZJ)V
    .locals 0

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput-boolean p1, p0, Lcom/android/systemui/util/ProximitySensor$ProximityEvent;->mNear:Z

    .line 194
    iput-wide p2, p0, Lcom/android/systemui/util/ProximitySensor$ProximityEvent;->mTimestampNs:J

    return-void
.end method


# virtual methods
.method public getNear()Z
    .locals 0

    .line 198
    iget-boolean p0, p0, Lcom/android/systemui/util/ProximitySensor$ProximityEvent;->mNear:Z

    return p0
.end method

.method public getTimestampNs()J
    .locals 2

    .line 202
    iget-wide v0, p0, Lcom/android/systemui/util/ProximitySensor$ProximityEvent;->mTimestampNs:J

    return-wide v0
.end method
