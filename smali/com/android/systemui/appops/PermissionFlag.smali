.class final Lcom/android/systemui/appops/PermissionFlag;
.super Ljava/lang/Object;
.source "PermissionFlagsCache.kt"


# instance fields
.field private final flag:I

.field private final timestamp:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/appops/PermissionFlag;->flag:I

    iput-wide p2, p0, Lcom/android/systemui/appops/PermissionFlag;->timestamp:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-eq p0, p1, :cond_3

    instance-of v1, p1, Lcom/android/systemui/appops/PermissionFlag;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lcom/android/systemui/appops/PermissionFlag;

    iget v1, p0, Lcom/android/systemui/appops/PermissionFlag;->flag:I

    iget v3, p1, Lcom/android/systemui/appops/PermissionFlag;->flag:I

    if-ne v1, v3, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_2

    iget-wide v3, p0, Lcom/android/systemui/appops/PermissionFlag;->timestamp:J

    iget-wide p0, p1, Lcom/android/systemui/appops/PermissionFlag;->timestamp:J

    cmp-long p0, v3, p0

    if-nez p0, :cond_1

    move p0, v0

    goto :goto_1

    :cond_1
    move p0, v2

    :goto_1
    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    return v2

    :cond_3
    :goto_2
    return v0
.end method

.method public final getFlag()I
    .locals 0

    .line 25
    iget p0, p0, Lcom/android/systemui/appops/PermissionFlag;->flag:I

    return p0
.end method

.method public final getTimestamp()J
    .locals 2

    .line 25
    iget-wide v0, p0, Lcom/android/systemui/appops/PermissionFlag;->timestamp:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/android/systemui/appops/PermissionFlag;->flag:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/android/systemui/appops/PermissionFlag;->timestamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PermissionFlag(flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/appops/PermissionFlag;->flag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/systemui/appops/PermissionFlag;->timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
