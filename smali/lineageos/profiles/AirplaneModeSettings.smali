.class public final Llineageos/profiles/AirplaneModeSettings;
.super Ljava/lang/Object;
.source "AirplaneModeSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Llineageos/profiles/AirplaneModeSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDirty:Z

.field private mOverride:Z

.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Llineageos/profiles/AirplaneModeSettings$1;

    invoke-direct {v0}, Llineageos/profiles/AirplaneModeSettings$1;-><init>()V

    sput-object v0, Llineageos/profiles/AirplaneModeSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, v0, v0}, Llineageos/profiles/AirplaneModeSettings;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput p1, p0, Llineageos/profiles/AirplaneModeSettings;->mValue:I

    .line 98
    iput-boolean p2, p0, Llineageos/profiles/AirplaneModeSettings;->mOverride:Z

    const/4 p1, 0x0

    .line 99
    iput-boolean p1, p0, Llineageos/profiles/AirplaneModeSettings;->mDirty:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-virtual {p0, p1}, Llineageos/profiles/AirplaneModeSettings;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4

    .line 210
    invoke-static {p1}, Llineageos/os/Concierge;->receiveParcel(Landroid/os/Parcel;)Llineageos/os/Concierge$ParcelInfo;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Llineageos/os/Concierge$ParcelInfo;->getParcelVersion()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    .line 217
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
    iput-boolean v1, p0, Llineageos/profiles/AirplaneModeSettings;->mOverride:Z

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Llineageos/profiles/AirplaneModeSettings;->mValue:I

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    iput-boolean v2, p0, Llineageos/profiles/AirplaneModeSettings;->mDirty:Z

    .line 223
    :cond_2
    invoke-virtual {v0}, Llineageos/os/Concierge$ParcelInfo;->complete()V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 196
    invoke-static {p1}, Llineageos/os/Concierge;->prepareParcel(Landroid/os/Parcel;)Llineageos/os/Concierge$ParcelInfo;

    move-result-object p2

    .line 199
    iget-boolean v0, p0, Llineageos/profiles/AirplaneModeSettings;->mOverride:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    iget v0, p0, Llineageos/profiles/AirplaneModeSettings;->mValue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    iget-boolean p0, p0, Llineageos/profiles/AirplaneModeSettings;->mDirty:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    invoke-virtual {p2}, Llineageos/os/Concierge$ParcelInfo;->complete()V

    return-void
.end method
