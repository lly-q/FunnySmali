.class public abstract Lorg/codeaurora/internal/INetworkCallback$Stub;
.super Landroid/os/Binder;
.source "INetworkCallback.java"

# interfaces
.implements Lorg/codeaurora/internal/INetworkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/internal/INetworkCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/internal/INetworkCallback$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lorg/codeaurora/internal/INetworkCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "org.codeaurora.internal.INetworkCallback"

    .line 73
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 74
    instance-of v1, v0, Lorg/codeaurora/internal/INetworkCallback;

    if-eqz v1, :cond_1

    .line 75
    check-cast v0, Lorg/codeaurora/internal/INetworkCallback;

    return-object v0

    .line 77
    :cond_1
    new-instance v0, Lorg/codeaurora/internal/INetworkCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lorg/codeaurora/internal/INetworkCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
