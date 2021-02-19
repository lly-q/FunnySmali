.class public final Llineageos/media/AudioSessionInfo;
.super Ljava/lang/Object;
.source "AudioSessionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Llineageos/media/AudioSessionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mChannelMask:I

.field private final mFlags:I

.field private final mSessionId:I

.field private final mStream:I

.field private final mUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 162
    new-instance v0, Llineageos/media/AudioSessionInfo$1;

    invoke-direct {v0}, Llineageos/media/AudioSessionInfo$1;-><init>()V

    sput-object v0, Llineageos/media/AudioSessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-static {p1}, Llineageos/os/Concierge;->receiveParcel(Landroid/os/Parcel;)Llineageos/os/Concierge$ParcelInfo;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Llineageos/os/Concierge$ParcelInfo;->getParcelVersion()I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Llineageos/media/AudioSessionInfo;->mSessionId:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Llineageos/media/AudioSessionInfo;->mStream:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Llineageos/media/AudioSessionInfo;->mFlags:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Llineageos/media/AudioSessionInfo;->mChannelMask:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Llineageos/media/AudioSessionInfo;->mUid:I

    .line 89
    invoke-virtual {v0}, Llineageos/os/Concierge$ParcelInfo;->complete()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Llineageos/media/AudioSessionInfo$1;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Llineageos/media/AudioSessionInfo;-><init>(Landroid/os/Parcel;)V

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

    if-eqz p1, :cond_2

    .line 126
    instance-of v1, p1, Llineageos/media/AudioSessionInfo;

    if-nez v1, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    check-cast p1, Llineageos/media/AudioSessionInfo;

    if-eq p0, p1, :cond_1

    .line 131
    iget v1, p0, Llineageos/media/AudioSessionInfo;->mSessionId:I

    iget v2, p1, Llineageos/media/AudioSessionInfo;->mSessionId:I

    if-ne v1, v2, :cond_2

    iget v1, p0, Llineageos/media/AudioSessionInfo;->mStream:I

    iget v2, p1, Llineageos/media/AudioSessionInfo;->mStream:I

    if-ne v1, v2, :cond_2

    iget v1, p0, Llineageos/media/AudioSessionInfo;->mFlags:I

    iget v2, p1, Llineageos/media/AudioSessionInfo;->mFlags:I

    if-ne v1, v2, :cond_2

    iget v1, p0, Llineageos/media/AudioSessionInfo;->mChannelMask:I

    iget v2, p1, Llineageos/media/AudioSessionInfo;->mChannelMask:I

    if-ne v1, v2, :cond_2

    iget p0, p0, Llineageos/media/AudioSessionInfo;->mUid:I

    iget p1, p1, Llineageos/media/AudioSessionInfo;->mUid:I

    if-ne p0, p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 121
    iget v1, p0, Llineageos/media/AudioSessionInfo;->mSessionId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Llineageos/media/AudioSessionInfo;->mStream:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Llineageos/media/AudioSessionInfo;->mFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Llineageos/media/AudioSessionInfo;->mChannelMask:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget p0, p0, Llineageos/media/AudioSessionInfo;->mUid:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x4

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 114
    iget v1, p0, Llineageos/media/AudioSessionInfo;->mSessionId:I

    .line 116
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Llineageos/media/AudioSessionInfo;->mStream:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Llineageos/media/AudioSessionInfo;->mFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Llineageos/media/AudioSessionInfo;->mChannelMask:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget p0, p0, Llineageos/media/AudioSessionInfo;->mUid:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x4

    aput-object p0, v0, v1

    const-string p0, "audioSessionInfo[sessionId=%d, stream=%d, flags=%d, channelMask=%d, uid=%d"

    .line 114
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 149
    invoke-static {p1}, Llineageos/os/Concierge;->prepareParcel(Landroid/os/Parcel;)Llineageos/os/Concierge$ParcelInfo;

    move-result-object p2

    .line 152
    iget v0, p0, Llineageos/media/AudioSessionInfo;->mSessionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget v0, p0, Llineageos/media/AudioSessionInfo;->mStream:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget v0, p0, Llineageos/media/AudioSessionInfo;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    iget v0, p0, Llineageos/media/AudioSessionInfo;->mChannelMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    iget p0, p0, Llineageos/media/AudioSessionInfo;->mUid:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    invoke-virtual {p2}, Llineageos/os/Concierge$ParcelInfo;->complete()V

    return-void
.end method
