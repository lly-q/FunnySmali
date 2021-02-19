.class Lorg/codeaurora/internal/Status$1;
.super Ljava/lang/Object;
.source "Status.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/internal/Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 73
    invoke-virtual {p0, p1}, Lorg/codeaurora/internal/Status$1;->createFromParcel(Landroid/os/Parcel;)Lorg/codeaurora/internal/Status;

    move-result-object p0

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/codeaurora/internal/Status;
    .locals 0

    .line 75
    new-instance p0, Lorg/codeaurora/internal/Status;

    invoke-direct {p0, p1}, Lorg/codeaurora/internal/Status;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 73
    invoke-virtual {p0, p1}, Lorg/codeaurora/internal/Status$1;->newArray(I)[Lorg/codeaurora/internal/Status;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lorg/codeaurora/internal/Status;
    .locals 0

    .line 79
    new-array p0, p1, [Lorg/codeaurora/internal/Status;

    return-object p0
.end method
