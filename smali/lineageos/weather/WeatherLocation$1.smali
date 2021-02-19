.class Llineageos/weather/WeatherLocation$1;
.super Ljava/lang/Object;
.source "WeatherLocation.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llineageos/weather/WeatherLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Llineageos/weather/WeatherLocation;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 209
    invoke-virtual {p0, p1}, Llineageos/weather/WeatherLocation$1;->createFromParcel(Landroid/os/Parcel;)Llineageos/weather/WeatherLocation;

    move-result-object p0

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Llineageos/weather/WeatherLocation;
    .locals 1

    .line 212
    new-instance p0, Llineageos/weather/WeatherLocation;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Llineageos/weather/WeatherLocation;-><init>(Landroid/os/Parcel;Llineageos/weather/WeatherLocation$1;)V

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 209
    invoke-virtual {p0, p1}, Llineageos/weather/WeatherLocation$1;->newArray(I)[Llineageos/weather/WeatherLocation;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Llineageos/weather/WeatherLocation;
    .locals 0

    .line 217
    new-array p0, p1, [Llineageos/weather/WeatherLocation;

    return-object p0
.end method
