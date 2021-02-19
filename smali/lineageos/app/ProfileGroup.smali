.class public final Llineageos/app/ProfileGroup;
.super Ljava/lang/Object;
.source "ProfileGroup.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llineageos/app/ProfileGroup$Mode;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Llineageos/app/ProfileGroup;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDefaultGroup:Z

.field private mDirty:Z

.field private mLightsMode:Llineageos/app/ProfileGroup$Mode;

.field private mName:Ljava/lang/String;

.field private mRingerMode:Llineageos/app/ProfileGroup$Mode;

.field private mRingerOverride:Landroid/net/Uri;

.field private mSoundMode:Llineageos/app/ProfileGroup$Mode;

.field private mSoundOverride:Landroid/net/Uri;

.field private mUuid:Ljava/util/UUID;

.field private mVibrateMode:Llineageos/app/ProfileGroup$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    new-instance v0, Llineageos/app/ProfileGroup$1;

    invoke-direct {v0}, Llineageos/app/ProfileGroup$1;-><init>()V

    sput-object v0, Llineageos/app/ProfileGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 55
    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Llineageos/app/ProfileGroup;->mSoundOverride:Landroid/net/Uri;

    const/4 v0, 0x1

    .line 56
    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Llineageos/app/ProfileGroup;->mRingerOverride:Landroid/net/Uri;

    .line 58
    sget-object v0, Llineageos/app/ProfileGroup$Mode;->DEFAULT:Llineageos/app/ProfileGroup$Mode;

    iput-object v0, p0, Llineageos/app/ProfileGroup;->mSoundMode:Llineageos/app/ProfileGroup$Mode;

    .line 59
    iput-object v0, p0, Llineageos/app/ProfileGroup;->mRingerMode:Llineageos/app/ProfileGroup$Mode;

    .line 60
    iput-object v0, p0, Llineageos/app/ProfileGroup;->mVibrateMode:Llineageos/app/ProfileGroup$Mode;

    .line 61
    iput-object v0, p0, Llineageos/app/ProfileGroup;->mLightsMode:Llineageos/app/ProfileGroup$Mode;

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Llineageos/app/ProfileGroup;->mDefaultGroup:Z

    .line 93
    invoke-virtual {p0, p1}, Llineageos/app/ProfileGroup;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Llineageos/app/ProfileGroup$1;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Llineageos/app/ProfileGroup;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 0

    .line 125
    iget-object p0, p0, Llineageos/app/ProfileGroup;->mUuid:Ljava/util/UUID;

    return-object p0
.end method

.method public isDefaultGroup()Z
    .locals 0

    .line 129
    iget-boolean p0, p0, Llineageos/app/ProfileGroup;->mDefaultGroup:Z

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4

    .line 294
    invoke-static {p1}, Llineageos/os/Concierge;->receiveParcel(Landroid/os/Parcel;)Llineageos/os/Concierge$ParcelInfo;

    move-result-object v0

    .line 295
    invoke-virtual {v0}, Llineageos/os/Concierge$ParcelInfo;->getParcelVersion()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    .line 301
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Llineageos/app/ProfileGroup;->mName:Ljava/lang/String;

    .line 302
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    invoke-virtual {v1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    iput-object v1, p0, Llineageos/app/ProfileGroup;->mUuid:Ljava/util/UUID;

    .line 303
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Llineageos/app/ProfileGroup;->mDefaultGroup:Z

    .line 304
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    iput-boolean v2, p0, Llineageos/app/ProfileGroup;->mDirty:Z

    const/4 v1, 0x0

    .line 305
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, p0, Llineageos/app/ProfileGroup;->mSoundOverride:Landroid/net/Uri;

    .line 306
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Llineageos/app/ProfileGroup;->mRingerOverride:Landroid/net/Uri;

    .line 308
    const-class v1, Llineageos/app/ProfileGroup$Mode;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Llineageos/app/ProfileGroup$Mode;

    iput-object v1, p0, Llineageos/app/ProfileGroup;->mSoundMode:Llineageos/app/ProfileGroup$Mode;

    .line 309
    const-class v1, Llineageos/app/ProfileGroup$Mode;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Llineageos/app/ProfileGroup$Mode;

    iput-object v1, p0, Llineageos/app/ProfileGroup;->mRingerMode:Llineageos/app/ProfileGroup$Mode;

    .line 310
    const-class v1, Llineageos/app/ProfileGroup$Mode;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Llineageos/app/ProfileGroup$Mode;

    iput-object v1, p0, Llineageos/app/ProfileGroup;->mVibrateMode:Llineageos/app/ProfileGroup$Mode;

    .line 311
    const-class v1, Llineageos/app/ProfileGroup$Mode;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p1

    check-cast p1, Llineageos/app/ProfileGroup$Mode;

    iput-object p1, p0, Llineageos/app/ProfileGroup;->mLightsMode:Llineageos/app/ProfileGroup$Mode;

    .line 315
    :cond_2
    invoke-virtual {v0}, Llineageos/os/Concierge$ParcelInfo;->complete()V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 273
    invoke-static {p1}, Llineageos/os/Concierge;->prepareParcel(Landroid/os/Parcel;)Llineageos/os/Concierge$ParcelInfo;

    move-result-object v0

    .line 276
    iget-object v1, p0, Llineageos/app/ProfileGroup;->mName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 277
    new-instance v1, Landroid/os/ParcelUuid;

    iget-object v2, p0, Llineageos/app/ProfileGroup;->mUuid:Ljava/util/UUID;

    invoke-direct {v1, v2}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 278
    iget-boolean v1, p0, Llineageos/app/ProfileGroup;->mDefaultGroup:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    iget-boolean v1, p0, Llineageos/app/ProfileGroup;->mDirty:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 280
    iget-object v1, p0, Llineageos/app/ProfileGroup;->mSoundOverride:Landroid/net/Uri;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 281
    iget-object v1, p0, Llineageos/app/ProfileGroup;->mRingerOverride:Landroid/net/Uri;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 282
    iget-object p2, p0, Llineageos/app/ProfileGroup;->mSoundMode:Llineageos/app/ProfileGroup$Mode;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 283
    iget-object p2, p0, Llineageos/app/ProfileGroup;->mRingerMode:Llineageos/app/ProfileGroup$Mode;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 284
    iget-object p2, p0, Llineageos/app/ProfileGroup;->mVibrateMode:Llineageos/app/ProfileGroup$Mode;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 285
    iget-object p0, p0, Llineageos/app/ProfileGroup;->mLightsMode:Llineageos/app/ProfileGroup$Mode;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v0}, Llineageos/os/Concierge$ParcelInfo;->complete()V

    return-void
.end method
