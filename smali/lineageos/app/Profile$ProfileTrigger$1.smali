.class Llineageos/app/Profile$ProfileTrigger$1;
.super Ljava/lang/Object;
.source "Profile.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llineageos/app/Profile$ProfileTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Llineageos/app/Profile$ProfileTrigger;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 341
    invoke-virtual {p0, p1}, Llineageos/app/Profile$ProfileTrigger$1;->createFromParcel(Landroid/os/Parcel;)Llineageos/app/Profile$ProfileTrigger;

    move-result-object p0

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Llineageos/app/Profile$ProfileTrigger;
    .locals 1

    .line 343
    new-instance p0, Llineageos/app/Profile$ProfileTrigger;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Llineageos/app/Profile$ProfileTrigger;-><init>(Landroid/os/Parcel;Llineageos/app/Profile$1;)V

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 341
    invoke-virtual {p0, p1}, Llineageos/app/Profile$ProfileTrigger$1;->newArray(I)[Llineageos/app/Profile$ProfileTrigger;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Llineageos/app/Profile$ProfileTrigger;
    .locals 0

    .line 348
    new-array p0, p1, [Llineageos/app/Profile$ProfileTrigger;

    return-object p0
.end method
