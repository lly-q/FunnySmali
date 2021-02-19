.class Llineageos/media/AudioSessionInfo$1;
.super Ljava/lang/Object;
.source "AudioSessionInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llineageos/media/AudioSessionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Llineageos/media/AudioSessionInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 162
    invoke-virtual {p0, p1}, Llineageos/media/AudioSessionInfo$1;->createFromParcel(Landroid/os/Parcel;)Llineageos/media/AudioSessionInfo;

    move-result-object p0

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Llineageos/media/AudioSessionInfo;
    .locals 1

    .line 166
    new-instance p0, Llineageos/media/AudioSessionInfo;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Llineageos/media/AudioSessionInfo;-><init>(Landroid/os/Parcel;Llineageos/media/AudioSessionInfo$1;)V

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 162
    invoke-virtual {p0, p1}, Llineageos/media/AudioSessionInfo$1;->newArray(I)[Llineageos/media/AudioSessionInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Llineageos/media/AudioSessionInfo;
    .locals 0

    .line 171
    new-array p0, p1, [Llineageos/media/AudioSessionInfo;

    return-object p0
.end method
