.class public final Llineageos/profiles/ConnectionSettings;
.super Ljava/lang/Object;
.source "ConnectionSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Llineageos/profiles/ConnectionSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mConnectionId:I

.field private mDirty:Z

.field private mOverride:Z

.field private mSubId:I

.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 163
    new-instance v0, Llineageos/profiles/ConnectionSettings$1;

    invoke-direct {v0}, Llineageos/profiles/ConnectionSettings$1;-><init>()V

    sput-object v0, Llineageos/profiles/ConnectionSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 72
    iput v0, p0, Llineageos/profiles/ConnectionSettings;->mSubId:I

    .line 180
    invoke-virtual {p0, p1}, Llineageos/profiles/ConnectionSettings;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getConnectionId()I
    .locals 0

    .line 210
    iget p0, p0, Llineageos/profiles/ConnectionSettings;->mConnectionId:I

    return p0
.end method

.method public getSubId()I
    .locals 0

    .line 257
    iget p0, p0, Llineageos/profiles/ConnectionSettings;->mSubId:I

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 5

    .line 468
    invoke-static {p1}, Llineageos/os/Concierge;->receiveParcel(Landroid/os/Parcel;)Llineageos/os/Concierge$ParcelInfo;

    move-result-object v0

    .line 469
    invoke-virtual {v0}, Llineageos/os/Concierge$ParcelInfo;->getParcelVersion()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    .line 475
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Llineageos/profiles/ConnectionSettings;->mConnectionId:I

    .line 476
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    iput-boolean v2, p0, Llineageos/profiles/ConnectionSettings;->mOverride:Z

    .line 477
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Llineageos/profiles/ConnectionSettings;->mValue:I

    .line 478
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    iput-boolean v3, p0, Llineageos/profiles/ConnectionSettings;->mDirty:Z

    :cond_2
    const/4 v2, 0x5

    if-lt v1, v2, :cond_3

    .line 482
    iget v1, p0, Llineageos/profiles/ConnectionSettings;->mConnectionId:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_3

    .line 483
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Llineageos/profiles/ConnectionSettings;->mSubId:I

    .line 488
    :cond_3
    invoke-virtual {v0}, Llineageos/os/Concierge$ParcelInfo;->complete()V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 448
    invoke-static {p1}, Llineageos/os/Concierge;->prepareParcel(Landroid/os/Parcel;)Llineageos/os/Concierge$ParcelInfo;

    move-result-object p2

    .line 451
    iget v0, p0, Llineageos/profiles/ConnectionSettings;->mConnectionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 452
    iget-boolean v0, p0, Llineageos/profiles/ConnectionSettings;->mOverride:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 453
    iget v0, p0, Llineageos/profiles/ConnectionSettings;->mValue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 454
    iget-boolean v0, p0, Llineageos/profiles/ConnectionSettings;->mDirty:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 457
    iget v0, p0, Llineageos/profiles/ConnectionSettings;->mConnectionId:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 458
    iget p0, p0, Llineageos/profiles/ConnectionSettings;->mSubId:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 462
    :cond_0
    invoke-virtual {p2}, Llineageos/os/Concierge$ParcelInfo;->complete()V

    return-void
.end method
