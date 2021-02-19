.class public Llineageos/hardware/HSIC;
.super Ljava/lang/Object;
.source "HSIC.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Llineageos/hardware/HSIC;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContrast:F

.field private final mHue:F

.field private final mIntensity:F

.field private final mSaturation:F

.field private final mSaturationThreshold:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 115
    new-instance v0, Llineageos/hardware/HSIC$1;

    invoke-direct {v0}, Llineageos/hardware/HSIC$1;-><init>()V

    sput-object v0, Llineageos/hardware/HSIC;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(FFFFF)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Llineageos/hardware/HSIC;->mHue:F

    .line 36
    iput p2, p0, Llineageos/hardware/HSIC;->mSaturation:F

    .line 37
    iput p3, p0, Llineageos/hardware/HSIC;->mIntensity:F

    .line 38
    iput p4, p0, Llineageos/hardware/HSIC;->mContrast:F

    .line 39
    iput p5, p0, Llineageos/hardware/HSIC;->mSaturationThreshold:F

    return-void
.end method

.method public static fromFloatArray([F)Llineageos/hardware/HSIC;
    .locals 13

    .line 87
    array-length v0, p0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x5

    if-ne v0, v6, :cond_0

    .line 88
    new-instance v0, Llineageos/hardware/HSIC;

    aget v8, p0, v4

    aget v9, p0, v3

    aget v10, p0, v2

    aget v11, p0, v1

    aget v12, p0, v5

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Llineageos/hardware/HSIC;-><init>(FFFFF)V

    return-object v0

    .line 89
    :cond_0
    array-length v0, p0

    if-ne v0, v5, :cond_1

    .line 90
    new-instance v0, Llineageos/hardware/HSIC;

    aget v7, p0, v4

    aget v8, p0, v3

    aget v9, p0, v2

    aget v10, p0, v1

    const/4 v11, 0x0

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Llineageos/hardware/HSIC;-><init>(FFFFF)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public toFloatArray()[F
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [F

    .line 83
    iget v1, p0, Llineageos/hardware/HSIC;->mHue:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Llineageos/hardware/HSIC;->mSaturation:F

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Llineageos/hardware/HSIC;->mIntensity:F

    const/4 v2, 0x2

    aput v1, v0, v2

    iget v1, p0, Llineageos/hardware/HSIC;->mContrast:F

    const/4 v2, 0x3

    aput v1, v0, v2

    iget p0, p0, Llineageos/hardware/HSIC;->mSaturationThreshold:F

    const/4 v1, 0x4

    aput p0, v0, v1

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 97
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Llineageos/hardware/HSIC;->mHue:F

    .line 99
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Llineageos/hardware/HSIC;->mSaturation:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Llineageos/hardware/HSIC;->mIntensity:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget v2, p0, Llineageos/hardware/HSIC;->mContrast:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget p0, p0, Llineageos/hardware/HSIC;->mSaturationThreshold:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const/4 v2, 0x4

    aput-object p0, v1, v2

    const-string p0, "HSIC={ hue=%f saturation=%f intensity=%f contrast=%f saturationThreshold=%f }"

    .line 97
    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 109
    invoke-virtual {p0}, Llineageos/hardware/HSIC;->toFloatArray()[F

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeFloatArray([F)V

    return-void
.end method
