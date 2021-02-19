.class Lorg/codeaurora/internal/DcParam$1;
.super Ljava/lang/Object;
.source "DcParam.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/internal/DcParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 85
    invoke-virtual {p0, p1}, Lorg/codeaurora/internal/DcParam$1;->createFromParcel(Landroid/os/Parcel;)Lorg/codeaurora/internal/DcParam;

    move-result-object p0

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/codeaurora/internal/DcParam;
    .locals 0

    .line 87
    new-instance p0, Lorg/codeaurora/internal/DcParam;

    invoke-direct {p0, p1}, Lorg/codeaurora/internal/DcParam;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 85
    invoke-virtual {p0, p1}, Lorg/codeaurora/internal/DcParam$1;->newArray(I)[Lorg/codeaurora/internal/DcParam;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lorg/codeaurora/internal/DcParam;
    .locals 0

    .line 91
    new-array p0, p1, [Lorg/codeaurora/internal/DcParam;

    return-object p0
.end method
