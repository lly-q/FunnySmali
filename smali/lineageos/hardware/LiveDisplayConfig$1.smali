.class Llineageos/hardware/LiveDisplayConfig$1;
.super Ljava/lang/Object;
.source "LiveDisplayConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llineageos/hardware/LiveDisplayConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Llineageos/hardware/LiveDisplayConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 380
    invoke-virtual {p0, p1}, Llineageos/hardware/LiveDisplayConfig$1;->createFromParcel(Landroid/os/Parcel;)Llineageos/hardware/LiveDisplayConfig;

    move-result-object p0

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Llineageos/hardware/LiveDisplayConfig;
    .locals 1

    .line 382
    new-instance p0, Llineageos/hardware/LiveDisplayConfig;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Llineageos/hardware/LiveDisplayConfig;-><init>(Landroid/os/Parcel;Llineageos/hardware/LiveDisplayConfig$1;)V

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 380
    invoke-virtual {p0, p1}, Llineageos/hardware/LiveDisplayConfig$1;->newArray(I)[Llineageos/hardware/LiveDisplayConfig;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Llineageos/hardware/LiveDisplayConfig;
    .locals 0

    .line 387
    new-array p0, p1, [Llineageos/hardware/LiveDisplayConfig;

    return-object p0
.end method
