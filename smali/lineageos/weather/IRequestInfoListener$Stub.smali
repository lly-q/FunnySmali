.class public abstract Llineageos/weather/IRequestInfoListener$Stub;
.super Landroid/os/Binder;
.source "IRequestInfoListener.java"

# interfaces
.implements Llineageos/weather/IRequestInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llineageos/weather/IRequestInfoListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llineageos/weather/IRequestInfoListener$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Llineageos/weather/IRequestInfoListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "lineageos.weather.IRequestInfoListener"

    .line 40
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 41
    instance-of v1, v0, Llineageos/weather/IRequestInfoListener;

    if-eqz v1, :cond_1

    .line 42
    check-cast v0, Llineageos/weather/IRequestInfoListener;

    return-object v0

    .line 44
    :cond_1
    new-instance v0, Llineageos/weather/IRequestInfoListener$Stub$Proxy;

    invoke-direct {v0, p0}, Llineageos/weather/IRequestInfoListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
