.class public abstract Llineageos/hardware/ILiveDisplayService$Stub;
.super Landroid/os/Binder;
.source "ILiveDisplayService.java"

# interfaces
.implements Llineageos/hardware/ILiveDisplayService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llineageos/hardware/ILiveDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llineageos/hardware/ILiveDisplayService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Llineageos/hardware/ILiveDisplayService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "lineageos.hardware.ILiveDisplayService"

    .line 122
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 123
    instance-of v1, v0, Llineageos/hardware/ILiveDisplayService;

    if-eqz v1, :cond_1

    .line 124
    check-cast v0, Llineageos/hardware/ILiveDisplayService;

    return-object v0

    .line 126
    :cond_1
    new-instance v0, Llineageos/hardware/ILiveDisplayService$Stub$Proxy;

    invoke-direct {v0, p0}, Llineageos/hardware/ILiveDisplayService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Llineageos/hardware/ILiveDisplayService;
    .locals 1

    .line 882
    sget-object v0, Llineageos/hardware/ILiveDisplayService$Stub$Proxy;->sDefaultImpl:Llineageos/hardware/ILiveDisplayService;

    return-object v0
.end method
