.class Llineageos/weather/WeatherInfo$DayForecast$1;
.super Ljava/lang/Object;
.source "WeatherInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llineageos/weather/WeatherInfo$DayForecast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Llineageos/weather/WeatherInfo$DayForecast;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 545
    invoke-virtual {p0, p1}, Llineageos/weather/WeatherInfo$DayForecast$1;->createFromParcel(Landroid/os/Parcel;)Llineageos/weather/WeatherInfo$DayForecast;

    move-result-object p0

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Llineageos/weather/WeatherInfo$DayForecast;
    .locals 1

    .line 548
    new-instance p0, Llineageos/weather/WeatherInfo$DayForecast;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Llineageos/weather/WeatherInfo$DayForecast;-><init>(Landroid/os/Parcel;Llineageos/weather/WeatherInfo$1;)V

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 545
    invoke-virtual {p0, p1}, Llineageos/weather/WeatherInfo$DayForecast$1;->newArray(I)[Llineageos/weather/WeatherInfo$DayForecast;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Llineageos/weather/WeatherInfo$DayForecast;
    .locals 0

    .line 553
    new-array p0, p1, [Llineageos/weather/WeatherInfo$DayForecast;

    return-object p0
.end method
