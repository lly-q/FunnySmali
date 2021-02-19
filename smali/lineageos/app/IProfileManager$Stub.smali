.class public abstract Llineageos/app/IProfileManager$Stub;
.super Landroid/os/Binder;
.source "IProfileManager.java"

# interfaces
.implements Llineageos/app/IProfileManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llineageos/app/IProfileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llineageos/app/IProfileManager$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Llineageos/app/IProfileManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "lineageos.app.IProfileManager"

    .line 109
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 110
    instance-of v1, v0, Llineageos/app/IProfileManager;

    if-eqz v1, :cond_1

    .line 111
    check-cast v0, Llineageos/app/IProfileManager;

    return-object v0

    .line 113
    :cond_1
    new-instance v0, Llineageos/app/IProfileManager$Stub$Proxy;

    invoke-direct {v0, p0}, Llineageos/app/IProfileManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Llineageos/app/IProfileManager;
    .locals 1

    .line 935
    sget-object v0, Llineageos/app/IProfileManager$Stub$Proxy;->sDefaultImpl:Llineageos/app/IProfileManager;

    return-object v0
.end method
