.class Llineageos/hardware/HSIC$1;
.super Ljava/lang/Object;
.source "HSIC.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llineageos/hardware/HSIC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Llineageos/hardware/HSIC;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 116
    invoke-virtual {p0, p1}, Llineageos/hardware/HSIC$1;->createFromParcel(Landroid/os/Parcel;)Llineageos/hardware/HSIC;

    move-result-object p0

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Llineageos/hardware/HSIC;
    .locals 0

    const/4 p0, 0x5

    new-array p0, p0, [F

    .line 119
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->readFloatArray([F)V

    .line 120
    invoke-static {p0}, Llineageos/hardware/HSIC;->fromFloatArray([F)Llineageos/hardware/HSIC;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 116
    invoke-virtual {p0, p1}, Llineageos/hardware/HSIC$1;->newArray(I)[Llineageos/hardware/HSIC;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Llineageos/hardware/HSIC;
    .locals 0

    .line 125
    new-array p0, p1, [Llineageos/hardware/HSIC;

    return-object p0
.end method
