.class Llineageos/profiles/ConnectionSettings$1;
.super Ljava/lang/Object;
.source "ConnectionSettings.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llineageos/profiles/ConnectionSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Llineageos/profiles/ConnectionSettings;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 164
    invoke-virtual {p0, p1}, Llineageos/profiles/ConnectionSettings$1;->createFromParcel(Landroid/os/Parcel;)Llineageos/profiles/ConnectionSettings;

    move-result-object p0

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Llineageos/profiles/ConnectionSettings;
    .locals 0

    .line 166
    new-instance p0, Llineageos/profiles/ConnectionSettings;

    invoke-direct {p0, p1}, Llineageos/profiles/ConnectionSettings;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 164
    invoke-virtual {p0, p1}, Llineageos/profiles/ConnectionSettings$1;->newArray(I)[Llineageos/profiles/ConnectionSettings;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Llineageos/profiles/ConnectionSettings;
    .locals 0

    .line 171
    new-array p0, p1, [Llineageos/profiles/ConnectionSettings;

    return-object p0
.end method
