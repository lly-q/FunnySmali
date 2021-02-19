.class Llineageos/profiles/RingModeSettings$1;
.super Ljava/lang/Object;
.source "RingModeSettings.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llineageos/profiles/RingModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Llineageos/profiles/RingModeSettings;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, Llineageos/profiles/RingModeSettings$1;->createFromParcel(Landroid/os/Parcel;)Llineageos/profiles/RingModeSettings;

    move-result-object p0

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Llineageos/profiles/RingModeSettings;
    .locals 0

    .line 56
    new-instance p0, Llineageos/profiles/RingModeSettings;

    invoke-direct {p0, p1}, Llineageos/profiles/RingModeSettings;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, Llineageos/profiles/RingModeSettings$1;->newArray(I)[Llineageos/profiles/RingModeSettings;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Llineageos/profiles/RingModeSettings;
    .locals 0

    .line 61
    new-array p0, p1, [Llineageos/profiles/RingModeSettings;

    return-object p0
.end method
