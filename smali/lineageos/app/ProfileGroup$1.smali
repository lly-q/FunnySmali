.class Llineageos/app/ProfileGroup$1;
.super Ljava/lang/Object;
.source "ProfileGroup.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llineageos/app/ProfileGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Llineageos/app/ProfileGroup;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Llineageos/app/ProfileGroup$1;->createFromParcel(Landroid/os/Parcel;)Llineageos/app/ProfileGroup;

    move-result-object p0

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Llineageos/app/ProfileGroup;
    .locals 1

    .line 70
    new-instance p0, Llineageos/app/ProfileGroup;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Llineageos/app/ProfileGroup;-><init>(Landroid/os/Parcel;Llineageos/app/ProfileGroup$1;)V

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Llineageos/app/ProfileGroup$1;->newArray(I)[Llineageos/app/ProfileGroup;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Llineageos/app/ProfileGroup;
    .locals 0

    .line 75
    new-array p0, p1, [Llineageos/app/ProfileGroup;

    return-object p0
.end method
