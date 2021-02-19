.class public final Llineageos/os/Concierge;
.super Ljava/lang/Object;
.source "Concierge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llineageos/os/Concierge$ParcelInfo;
    }
.end annotation


# direct methods
.method public static prepareParcel(Landroid/os/Parcel;)Llineageos/os/Concierge$ParcelInfo;
    .locals 2

    .line 90
    new-instance v0, Llineageos/os/Concierge$ParcelInfo;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1}, Llineageos/os/Concierge$ParcelInfo;-><init>(Landroid/os/Parcel;I)V

    return-object v0
.end method

.method public static receiveParcel(Landroid/os/Parcel;)Llineageos/os/Concierge$ParcelInfo;
    .locals 1

    .line 78
    new-instance v0, Llineageos/os/Concierge$ParcelInfo;

    invoke-direct {v0, p0}, Llineageos/os/Concierge$ParcelInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method
