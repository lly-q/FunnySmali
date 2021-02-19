.class public final Llineageos/weather/WeatherLocation;
.super Ljava/lang/Object;
.source "WeatherLocation.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Llineageos/weather/WeatherLocation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCity:Ljava/lang/String;

.field private mCityId:Ljava/lang/String;

.field private mCountry:Ljava/lang/String;

.field private mCountryId:Ljava/lang/String;

.field private mKey:Ljava/lang/String;

.field private mPostal:Ljava/lang/String;

.field private mState:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 209
    new-instance v0, Llineageos/weather/WeatherLocation$1;

    invoke-direct {v0}, Llineageos/weather/WeatherLocation$1;-><init>()V

    sput-object v0, Llineageos/weather/WeatherLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    invoke-static {p1}, Llineageos/os/Concierge;->receiveParcel(Landroid/os/Parcel;)Llineageos/os/Concierge$ParcelInfo;

    move-result-object v0

    .line 193
    invoke-virtual {v0}, Llineageos/os/Concierge$ParcelInfo;->getParcelVersion()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Llineageos/weather/WeatherLocation;->mKey:Ljava/lang/String;

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Llineageos/weather/WeatherLocation;->mCityId:Ljava/lang/String;

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Llineageos/weather/WeatherLocation;->mCity:Ljava/lang/String;

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Llineageos/weather/WeatherLocation;->mState:Ljava/lang/String;

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Llineageos/weather/WeatherLocation;->mPostal:Ljava/lang/String;

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Llineageos/weather/WeatherLocation;->mCountryId:Ljava/lang/String;

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Llineageos/weather/WeatherLocation;->mCountry:Ljava/lang/String;

    .line 206
    :cond_0
    invoke-virtual {v0}, Llineageos/os/Concierge$ParcelInfo;->complete()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Llineageos/weather/WeatherLocation$1;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Llineageos/weather/WeatherLocation;-><init>(Landroid/os/Parcel;)V

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

    .line 268
    :cond_0
    const-class v1, Llineageos/weather/WeatherLocation;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 269
    check-cast p1, Llineageos/weather/WeatherLocation;

    .line 270
    iget-object p0, p0, Llineageos/weather/WeatherLocation;->mKey:Ljava/lang/String;

    iget-object p1, p1, Llineageos/weather/WeatherLocation;->mKey:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 260
    iget-object p0, p0, Llineageos/weather/WeatherLocation;->mKey:Ljava/lang/String;

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
    .locals 2

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ City ID: "

    .line 247
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Llineageos/weather/WeatherLocation;->mCityId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " City: "

    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Llineageos/weather/WeatherLocation;->mCity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " State: "

    .line 249
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Llineageos/weather/WeatherLocation;->mState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Postal/ZIP Code: "

    .line 250
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Llineageos/weather/WeatherLocation;->mPostal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Country Id: "

    .line 251
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Llineageos/weather/WeatherLocation;->mCountryId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Country: "

    .line 252
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Llineageos/weather/WeatherLocation;->mCountry:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 229
    invoke-static {p1}, Llineageos/os/Concierge;->prepareParcel(Landroid/os/Parcel;)Llineageos/os/Concierge$ParcelInfo;

    move-result-object p2

    .line 232
    iget-object v0, p0, Llineageos/weather/WeatherLocation;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Llineageos/weather/WeatherLocation;->mCityId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Llineageos/weather/WeatherLocation;->mCity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Llineageos/weather/WeatherLocation;->mState:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Llineageos/weather/WeatherLocation;->mPostal:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Llineageos/weather/WeatherLocation;->mCountryId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 238
    iget-object p0, p0, Llineageos/weather/WeatherLocation;->mCountry:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p2}, Llineageos/os/Concierge$ParcelInfo;->complete()V

    return-void
.end method
