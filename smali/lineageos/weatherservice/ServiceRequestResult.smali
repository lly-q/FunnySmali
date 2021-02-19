.class public final Llineageos/weatherservice/ServiceRequestResult;
.super Ljava/lang/Object;
.source "ServiceRequestResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Llineageos/weatherservice/ServiceRequestResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mKey:Ljava/lang/String;

.field private mLocationLookupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Llineageos/weather/WeatherLocation;",
            ">;"
        }
    .end annotation
.end field

.field private mWeatherInfo:Llineageos/weather/WeatherInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    new-instance v0, Llineageos/weatherservice/ServiceRequestResult$1;

    invoke-direct {v0}, Llineageos/weatherservice/ServiceRequestResult$1;-><init>()V

    sput-object v0, Llineageos/weatherservice/ServiceRequestResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {p1}, Llineageos/os/Concierge;->receiveParcel(Landroid/os/Parcel;)Llineageos/os/Concierge$ParcelInfo;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Llineageos/os/Concierge$ParcelInfo;->getParcelVersion()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_1

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Llineageos/weatherservice/ServiceRequestResult;->mKey:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 54
    sget-object v1, Llineageos/weather/WeatherInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llineageos/weather/WeatherInfo;

    iput-object v1, p0, Llineageos/weatherservice/ServiceRequestResult;->mWeatherInfo:Llineageos/weather/WeatherInfo;

    .line 56
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Llineageos/weatherservice/ServiceRequestResult;->mLocationLookupList:Ljava/util/List;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    :goto_0
    if-lez v1, :cond_1

    .line 61
    iget-object v2, p0, Llineageos/weatherservice/ServiceRequestResult;->mLocationLookupList:Ljava/util/List;

    sget-object v3, Llineageos/weather/WeatherLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Llineageos/weather/WeatherLocation;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {v0}, Llineageos/os/Concierge$ParcelInfo;->complete()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Llineageos/weatherservice/ServiceRequestResult$1;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Llineageos/weatherservice/ServiceRequestResult;-><init>(Landroid/os/Parcel;)V

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

    .line 189
    :cond_0
    const-class v1, Llineageos/weatherservice/ServiceRequestResult;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 190
    check-cast p1, Llineageos/weatherservice/ServiceRequestResult;

    .line 191
    iget-object p0, p0, Llineageos/weatherservice/ServiceRequestResult;->mKey:Ljava/lang/String;

    iget-object p1, p1, Llineageos/weatherservice/ServiceRequestResult;->mKey:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 181
    iget-object p0, p0, Llineageos/weatherservice/ServiceRequestResult;->mKey:Ljava/lang/String;

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

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 92
    invoke-static {p1}, Llineageos/os/Concierge;->prepareParcel(Landroid/os/Parcel;)Llineageos/os/Concierge$ParcelInfo;

    move-result-object p2

    .line 95
    iget-object v0, p0, Llineageos/weatherservice/ServiceRequestResult;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Llineageos/weatherservice/ServiceRequestResult;->mWeatherInfo:Llineageos/weather/WeatherInfo;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget-object v0, p0, Llineageos/weatherservice/ServiceRequestResult;->mWeatherInfo:Llineageos/weather/WeatherInfo;

    invoke-virtual {v0, p1, v2}, Llineageos/weather/WeatherInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    :goto_0
    iget-object v0, p0, Llineageos/weatherservice/ServiceRequestResult;->mLocationLookupList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 103
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget-object v0, p0, Llineageos/weatherservice/ServiceRequestResult;->mLocationLookupList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget-object p0, p0, Llineageos/weatherservice/ServiceRequestResult;->mLocationLookupList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llineageos/weather/WeatherLocation;

    .line 106
    invoke-virtual {v0, p1, v2}, Llineageos/weather/WeatherLocation;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 109
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    :cond_2
    invoke-virtual {p2}, Llineageos/os/Concierge$ParcelInfo;->complete()V

    return-void
.end method
