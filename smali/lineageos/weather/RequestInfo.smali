.class public final Llineageos/weather/RequestInfo;
.super Ljava/lang/Object;
.source "RequestInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Llineageos/weather/RequestInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCityName:Ljava/lang/String;

.field private mIsQueryOnly:Z

.field private mKey:Ljava/lang/String;

.field private mListener:Llineageos/weather/IRequestInfoListener;

.field private mLocation:Landroid/location/Location;

.field private mRequestType:I

.field private mTempUnit:I

.field private mWeatherLocation:Llineageos/weather/WeatherLocation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 285
    new-instance v0, Llineageos/weather/RequestInfo$1;

    invoke-direct {v0}, Llineageos/weather/RequestInfo$1;-><init>()V

    sput-object v0, Llineageos/weather/RequestInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    invoke-static {p1}, Llineageos/os/Concierge;->receiveParcel(Landroid/os/Parcel;)Llineageos/os/Concierge$ParcelInfo;

    move-result-object v0

    .line 193
    invoke-virtual {v0}, Llineageos/os/Concierge$ParcelInfo;->getParcelVersion()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_4

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Llineageos/weather/RequestInfo;->mKey:Ljava/lang/String;

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Llineageos/weather/RequestInfo;->mRequestType:I

    .line 198
    iget v1, p0, Llineageos/weather/RequestInfo;->mRequestType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    goto :goto_0

    .line 208
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Llineageos/weather/RequestInfo;->mCityName:Ljava/lang/String;

    goto :goto_0

    .line 204
    :cond_1
    sget-object v1, Llineageos/weather/WeatherLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llineageos/weather/WeatherLocation;

    iput-object v1, p0, Llineageos/weather/RequestInfo;->mWeatherLocation:Llineageos/weather/WeatherLocation;

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Llineageos/weather/RequestInfo;->mTempUnit:I

    goto :goto_0

    .line 200
    :cond_2
    sget-object v1, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    iput-object v1, p0, Llineageos/weather/RequestInfo;->mLocation:Landroid/location/Location;

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Llineageos/weather/RequestInfo;->mTempUnit:I

    .line 211
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Llineageos/weather/RequestInfo;->mIsQueryOnly:Z

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Llineageos/weather/IRequestInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Llineageos/weather/IRequestInfoListener;

    move-result-object p1

    iput-object p1, p0, Llineageos/weather/RequestInfo;->mListener:Llineageos/weather/IRequestInfoListener;

    .line 216
    :cond_4
    invoke-virtual {v0}, Llineageos/os/Concierge$ParcelInfo;->complete()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Llineageos/weather/RequestInfo$1;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Llineageos/weather/RequestInfo;-><init>(Landroid/os/Parcel;)V

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

    .line 372
    :cond_0
    const-class v1, Llineageos/weather/RequestInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 373
    check-cast p1, Llineageos/weather/RequestInfo;

    .line 374
    iget-object p0, p0, Llineageos/weather/RequestInfo;->mKey:Ljava/lang/String;

    iget-object p1, p1, Llineageos/weather/RequestInfo;->mKey:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 364
    iget-object p0, p0, Llineageos/weather/RequestInfo;->mKey:Ljava/lang/String;

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
    .locals 7

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ Request for "

    .line 333
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    iget v1, p0, Llineageos/weather/RequestInfo;->mRequestType:I

    const/4 v2, 0x1

    const-string v3, "Fahrenheit"

    const-string v4, " Celsius"

    const-string v5, " Temp Unit: "

    const/4 v6, 0x2

    if-eq v1, v2, :cond_3

    if-eq v1, v6, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "Lookup City: "

    .line 354
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Llineageos/weather/RequestInfo;->mCityName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "WeatherLocation: "

    .line 345
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Llineageos/weather/RequestInfo;->mWeatherLocation:Llineageos/weather/WeatherLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 346
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    iget p0, p0, Llineageos/weather/RequestInfo;->mTempUnit:I

    if-ne p0, v6, :cond_2

    .line 348
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 350
    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const-string v1, "Location: "

    .line 336
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Llineageos/weather/RequestInfo;->mLocation:Landroid/location/Location;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 337
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    iget p0, p0, Llineageos/weather/RequestInfo;->mTempUnit:I

    if-ne p0, v6, :cond_4

    .line 339
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 341
    :cond_4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string p0, " }"

    .line 357
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 305
    invoke-static {p1}, Llineageos/os/Concierge;->prepareParcel(Landroid/os/Parcel;)Llineageos/os/Concierge$ParcelInfo;

    move-result-object p2

    .line 308
    iget-object v0, p0, Llineageos/weather/RequestInfo;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 309
    iget v0, p0, Llineageos/weather/RequestInfo;->mRequestType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    iget v0, p0, Llineageos/weather/RequestInfo;->mRequestType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 320
    :cond_0
    iget-object v0, p0, Llineageos/weather/RequestInfo;->mCityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 316
    :cond_1
    iget-object v0, p0, Llineageos/weather/RequestInfo;->mWeatherLocation:Llineageos/weather/WeatherLocation;

    invoke-virtual {v0, p1, v1}, Llineageos/weather/WeatherLocation;->writeToParcel(Landroid/os/Parcel;I)V

    .line 317
    iget v0, p0, Llineageos/weather/RequestInfo;->mTempUnit:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 312
    :cond_2
    iget-object v0, p0, Llineageos/weather/RequestInfo;->mLocation:Landroid/location/Location;

    invoke-virtual {v0, p1, v1}, Landroid/location/Location;->writeToParcel(Landroid/os/Parcel;I)V

    .line 313
    iget v0, p0, Llineageos/weather/RequestInfo;->mTempUnit:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 323
    :goto_0
    iget-boolean v0, p0, Llineageos/weather/RequestInfo;->mIsQueryOnly:Z

    if-ne v0, v2, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    iget-object p0, p0, Llineageos/weather/RequestInfo;->mListener:Llineageos/weather/IRequestInfoListener;

    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 327
    invoke-virtual {p2}, Llineageos/os/Concierge$ParcelInfo;->complete()V

    return-void
.end method
