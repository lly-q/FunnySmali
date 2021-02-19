.class public interface abstract Llineageos/app/IProfileManager;
.super Ljava/lang/Object;
.source "IProfileManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llineageos/app/IProfileManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract getActiveProfile()Llineageos/app/Profile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getProfiles()[Llineageos/app/Profile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setActiveProfile(Landroid/os/ParcelUuid;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
