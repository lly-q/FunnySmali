.class Llineageos/weather/IRequestInfoListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IRequestInfoListener.java"

# interfaces
.implements Llineageos/weather/IRequestInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llineageos/weather/IRequestInfoListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Llineageos/weather/IRequestInfoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 114
    iget-object p0, p0, Llineageos/weather/IRequestInfoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method
