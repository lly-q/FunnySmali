.class Llineageos/hardware/TouchscreenGesture$1;
.super Ljava/lang/Object;
.source "TouchscreenGesture.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llineageos/hardware/TouchscreenGesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Llineageos/hardware/TouchscreenGesture;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 67
    invoke-virtual {p0, p1}, Llineageos/hardware/TouchscreenGesture$1;->createFromParcel(Landroid/os/Parcel;)Llineageos/hardware/TouchscreenGesture;

    move-result-object p0

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Llineageos/hardware/TouchscreenGesture;
    .locals 2

    .line 70
    new-instance p0, Llineageos/hardware/TouchscreenGesture;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Llineageos/hardware/TouchscreenGesture;-><init>(ILjava/lang/String;I)V

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 67
    invoke-virtual {p0, p1}, Llineageos/hardware/TouchscreenGesture$1;->newArray(I)[Llineageos/hardware/TouchscreenGesture;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Llineageos/hardware/TouchscreenGesture;
    .locals 0

    .line 75
    new-array p0, p1, [Llineageos/hardware/TouchscreenGesture;

    return-object p0
.end method
