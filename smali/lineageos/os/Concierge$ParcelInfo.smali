.class public final Llineageos/os/Concierge$ParcelInfo;
.super Ljava/lang/Object;
.source "Concierge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llineageos/os/Concierge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ParcelInfo"
.end annotation


# instance fields
.field private mCreation:Z

.field private mParcel:Landroid/os/Parcel;

.field private mParcelableSize:I

.field private mParcelableVersion:I

.field private mSizePosition:I

.field private mStartPosition:I


# direct methods
.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 104
    iput-boolean v0, p0, Llineageos/os/Concierge$ParcelInfo;->mCreation:Z

    .line 107
    iput-boolean v0, p0, Llineageos/os/Concierge$ParcelInfo;->mCreation:Z

    .line 108
    iput-object p1, p0, Llineageos/os/Concierge$ParcelInfo;->mParcel:Landroid/os/Parcel;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Llineageos/os/Concierge$ParcelInfo;->mParcelableVersion:I

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Llineageos/os/Concierge$ParcelInfo;->mParcelableSize:I

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p1

    iput p1, p0, Llineageos/os/Concierge$ParcelInfo;->mStartPosition:I

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;I)V
    .locals 2

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 104
    iput-boolean v0, p0, Llineageos/os/Concierge$ParcelInfo;->mCreation:Z

    const/4 v1, 0x1

    .line 115
    iput-boolean v1, p0, Llineageos/os/Concierge$ParcelInfo;->mCreation:Z

    .line 116
    iput-object p1, p0, Llineageos/os/Concierge$ParcelInfo;->mParcel:Landroid/os/Parcel;

    .line 117
    iput p2, p0, Llineageos/os/Concierge$ParcelInfo;->mParcelableVersion:I

    .line 121
    iget-object p2, p0, Llineageos/os/Concierge$ParcelInfo;->mParcel:Landroid/os/Parcel;

    iget v1, p0, Llineageos/os/Concierge$ParcelInfo;->mParcelableVersion:I

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    iput p2, p0, Llineageos/os/Concierge$ParcelInfo;->mSizePosition:I

    .line 126
    iget-object p2, p0, Llineageos/os/Concierge$ParcelInfo;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p1

    iput p1, p0, Llineageos/os/Concierge$ParcelInfo;->mStartPosition:I

    return-void
.end method


# virtual methods
.method public complete()V
    .locals 2

    .line 142
    iget-boolean v0, p0, Llineageos/os/Concierge$ParcelInfo;->mCreation:Z

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Llineageos/os/Concierge$ParcelInfo;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    iget v1, p0, Llineageos/os/Concierge$ParcelInfo;->mStartPosition:I

    sub-int/2addr v0, v1

    iput v0, p0, Llineageos/os/Concierge$ParcelInfo;->mParcelableSize:I

    .line 145
    iget-object v0, p0, Llineageos/os/Concierge$ParcelInfo;->mParcel:Landroid/os/Parcel;

    iget v1, p0, Llineageos/os/Concierge$ParcelInfo;->mSizePosition:I

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 146
    iget-object v0, p0, Llineageos/os/Concierge$ParcelInfo;->mParcel:Landroid/os/Parcel;

    iget v1, p0, Llineageos/os/Concierge$ParcelInfo;->mParcelableSize:I

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    iget-object v0, p0, Llineageos/os/Concierge$ParcelInfo;->mParcel:Landroid/os/Parcel;

    iget v1, p0, Llineageos/os/Concierge$ParcelInfo;->mStartPosition:I

    iget p0, p0, Llineageos/os/Concierge$ParcelInfo;->mParcelableSize:I

    add-int/2addr v1, p0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_0

    .line 149
    :cond_0
    iget-object v0, p0, Llineageos/os/Concierge$ParcelInfo;->mParcel:Landroid/os/Parcel;

    iget v1, p0, Llineageos/os/Concierge$ParcelInfo;->mStartPosition:I

    iget p0, p0, Llineageos/os/Concierge$ParcelInfo;->mParcelableSize:I

    add-int/2addr v1, p0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    :goto_0
    return-void
.end method

.method public getParcelVersion()I
    .locals 0

    .line 135
    iget p0, p0, Llineageos/os/Concierge$ParcelInfo;->mParcelableVersion:I

    return p0
.end method
