.class Llineageos/weather/RequestInfo$1;
.super Ljava/lang/Object;
.source "RequestInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llineageos/weather/RequestInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Llineageos/weather/RequestInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 285
    invoke-virtual {p0, p1}, Llineageos/weather/RequestInfo$1;->createFromParcel(Landroid/os/Parcel;)Llineageos/weather/RequestInfo;

    move-result-object p0

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Llineageos/weather/RequestInfo;
    .locals 1

    .line 288
    new-instance p0, Llineageos/weather/RequestInfo;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Llineageos/weather/RequestInfo;-><init>(Landroid/os/Parcel;Llineageos/weather/RequestInfo$1;)V

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 285
    invoke-virtual {p0, p1}, Llineageos/weather/RequestInfo$1;->newArray(I)[Llineageos/weather/RequestInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Llineageos/weather/RequestInfo;
    .locals 0

    .line 293
    new-array p0, p1, [Llineageos/weather/RequestInfo;

    return-object p0
.end method
