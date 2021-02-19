.class Llineageos/profiles/AirplaneModeSettings$1;
.super Ljava/lang/Object;
.source "AirplaneModeSettings.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llineageos/profiles/AirplaneModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Llineageos/profiles/AirplaneModeSettings;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Llineageos/profiles/AirplaneModeSettings$1;->createFromParcel(Landroid/os/Parcel;)Llineageos/profiles/AirplaneModeSettings;

    move-result-object p0

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Llineageos/profiles/AirplaneModeSettings;
    .locals 0

    .line 55
    new-instance p0, Llineageos/profiles/AirplaneModeSettings;

    invoke-direct {p0, p1}, Llineageos/profiles/AirplaneModeSettings;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Llineageos/profiles/AirplaneModeSettings$1;->newArray(I)[Llineageos/profiles/AirplaneModeSettings;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Llineageos/profiles/AirplaneModeSettings;
    .locals 0

    .line 60
    new-array p0, p1, [Llineageos/profiles/AirplaneModeSettings;

    return-object p0
.end method
