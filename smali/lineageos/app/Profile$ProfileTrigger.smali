.class public Llineageos/app/Profile$ProfileTrigger;
.super Ljava/lang/Object;
.source "Profile.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llineageos/app/Profile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProfileTrigger"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Llineageos/app/Profile$ProfileTrigger;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mId:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mState:I

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 340
    new-instance v0, Llineageos/app/Profile$ProfileTrigger$1;

    invoke-direct {v0}, Llineageos/app/Profile$ProfileTrigger$1;-><init>()V

    sput-object v0, Llineageos/app/Profile$ProfileTrigger;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    invoke-static {p1}, Llineageos/os/Concierge;->receiveParcel(Landroid/os/Parcel;)Llineageos/os/Concierge$ParcelInfo;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Llineageos/os/Concierge$ParcelInfo;->getParcelVersion()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Llineageos/app/Profile$ProfileTrigger;->mType:I

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Llineageos/app/Profile$ProfileTrigger;->mId:Ljava/lang/String;

    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Llineageos/app/Profile$ProfileTrigger;->mState:I

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Llineageos/app/Profile$ProfileTrigger;->mName:Ljava/lang/String;

    .line 233
    :cond_0
    invoke-virtual {v0}, Llineageos/os/Concierge$ParcelInfo;->complete()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Llineageos/app/Profile$1;)V
    .locals 0

    .line 183
    invoke-direct {p0, p1}, Llineageos/app/Profile$ProfileTrigger;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic access$300(Llineageos/app/Profile$ProfileTrigger;)Ljava/lang/String;
    .locals 0

    .line 183
    iget-object p0, p0, Llineageos/app/Profile$ProfileTrigger;->mId:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 239
    invoke-static {p1}, Llineageos/os/Concierge;->prepareParcel(Landroid/os/Parcel;)Llineageos/os/Concierge$ParcelInfo;

    move-result-object p2

    .line 241
    iget v0, p0, Llineageos/app/Profile$ProfileTrigger;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    iget-object v0, p0, Llineageos/app/Profile$ProfileTrigger;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 243
    iget v0, p0, Llineageos/app/Profile$ProfileTrigger;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 244
    iget-object p0, p0, Llineageos/app/Profile$ProfileTrigger;->mName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p2}, Llineageos/os/Concierge$ParcelInfo;->complete()V

    return-void
.end method
