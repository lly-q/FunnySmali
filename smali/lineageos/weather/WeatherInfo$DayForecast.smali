.class public Llineageos/weather/WeatherInfo$DayForecast;
.super Ljava/lang/Object;
.source "WeatherInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llineageos/weather/WeatherInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DayForecast"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Llineageos/weather/WeatherInfo$DayForecast;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mConditionCode:I

.field mHigh:D

.field mKey:Ljava/lang/String;

.field mLow:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 544
    new-instance v0, Llineageos/weather/WeatherInfo$DayForecast$1;

    invoke-direct {v0}, Llineageos/weather/WeatherInfo$DayForecast$1;-><init>()V

    sput-object v0, Llineageos/weather/WeatherInfo$DayForecast;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 557
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 559
    invoke-static {p1}, Llineageos/os/Concierge;->receiveParcel(Landroid/os/Parcel;)Llineageos/os/Concierge$ParcelInfo;

    move-result-object v0

    .line 560
    invoke-virtual {v0}, Llineageos/os/Concierge$ParcelInfo;->getParcelVersion()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    .line 563
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Llineageos/weather/WeatherInfo$DayForecast;->mKey:Ljava/lang/String;

    .line 564
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Llineageos/weather/WeatherInfo$DayForecast;->mLow:D

    .line 565
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Llineageos/weather/WeatherInfo$DayForecast;->mHigh:D

    .line 566
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Llineageos/weather/WeatherInfo$DayForecast;->mConditionCode:I

    .line 570
    :cond_0
    invoke-virtual {v0}, Llineageos/os/Concierge$ParcelInfo;->complete()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Llineageos/weather/WeatherInfo$1;)V
    .locals 0

    .line 432
    invoke-direct {p0, p1}, Llineageos/weather/WeatherInfo$DayForecast;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 594
    :cond_0
    const-class v1, Llineageos/weather/WeatherInfo$DayForecast;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 595
    check-cast p1, Llineageos/weather/WeatherInfo$DayForecast;

    .line 596
    iget-object p0, p0, Llineageos/weather/WeatherInfo$DayForecast;->mKey:Ljava/lang/String;

    iget-object p1, p1, Llineageos/weather/WeatherInfo$DayForecast;->mKey:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 586
    iget-object p0, p0, Llineageos/weather/WeatherInfo$DayForecast;->mKey:Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/16 v0, 0x1f

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{Low temp: "

    .line 576
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Llineageos/weather/WeatherInfo$DayForecast;->mLow:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " High temp: "

    .line 577
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Llineageos/weather/WeatherInfo$DayForecast;->mHigh:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " Condition code: "

    .line 578
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Llineageos/weather/WeatherInfo$DayForecast;->mConditionCode:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 579
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 532
    invoke-static {p1}, Llineageos/os/Concierge;->prepareParcel(Landroid/os/Parcel;)Llineageos/os/Concierge$ParcelInfo;

    move-result-object p2

    .line 535
    iget-object v0, p0, Llineageos/weather/WeatherInfo$DayForecast;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 536
    iget-wide v0, p0, Llineageos/weather/WeatherInfo$DayForecast;->mLow:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 537
    iget-wide v0, p0, Llineageos/weather/WeatherInfo$DayForecast;->mHigh:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 538
    iget p0, p0, Llineageos/weather/WeatherInfo$DayForecast;->mConditionCode:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 541
    invoke-virtual {p2}, Llineageos/os/Concierge$ParcelInfo;->complete()V

    return-void
.end method
