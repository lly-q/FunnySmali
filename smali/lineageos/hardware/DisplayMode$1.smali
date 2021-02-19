.class Llineageos/hardware/DisplayMode$1;
.super Ljava/lang/Object;
.source "DisplayMode.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llineageos/hardware/DisplayMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Llineageos/hardware/DisplayMode;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 98
    invoke-virtual {p0, p1}, Llineageos/hardware/DisplayMode$1;->createFromParcel(Landroid/os/Parcel;)Llineageos/hardware/DisplayMode;

    move-result-object p0

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Llineageos/hardware/DisplayMode;
    .locals 1

    .line 100
    new-instance p0, Llineageos/hardware/DisplayMode;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Llineageos/hardware/DisplayMode;-><init>(Landroid/os/Parcel;Llineageos/hardware/DisplayMode$1;)V

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 98
    invoke-virtual {p0, p1}, Llineageos/hardware/DisplayMode$1;->newArray(I)[Llineageos/hardware/DisplayMode;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Llineageos/hardware/DisplayMode;
    .locals 0

    .line 105
    new-array p0, p1, [Llineageos/hardware/DisplayMode;

    return-object p0
.end method
