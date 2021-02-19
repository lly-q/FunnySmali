.class Lorg/codeaurora/internal/NrIconType$1;
.super Ljava/lang/Object;
.source "NrIconType.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/internal/NrIconType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 67
    invoke-virtual {p0, p1}, Lorg/codeaurora/internal/NrIconType$1;->createFromParcel(Landroid/os/Parcel;)Lorg/codeaurora/internal/NrIconType;

    move-result-object p0

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/codeaurora/internal/NrIconType;
    .locals 0

    .line 69
    new-instance p0, Lorg/codeaurora/internal/NrIconType;

    invoke-direct {p0, p1}, Lorg/codeaurora/internal/NrIconType;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 67
    invoke-virtual {p0, p1}, Lorg/codeaurora/internal/NrIconType$1;->newArray(I)[Lorg/codeaurora/internal/NrIconType;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lorg/codeaurora/internal/NrIconType;
    .locals 0

    .line 73
    new-array p0, p1, [Lorg/codeaurora/internal/NrIconType;

    return-object p0
.end method
