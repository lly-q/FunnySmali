.class Lorg/codeaurora/internal/Token$1;
.super Ljava/lang/Object;
.source "Token.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/internal/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 71
    invoke-virtual {p0, p1}, Lorg/codeaurora/internal/Token$1;->createFromParcel(Landroid/os/Parcel;)Lorg/codeaurora/internal/Token;

    move-result-object p0

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/codeaurora/internal/Token;
    .locals 0

    .line 73
    new-instance p0, Lorg/codeaurora/internal/Token;

    invoke-direct {p0, p1}, Lorg/codeaurora/internal/Token;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 71
    invoke-virtual {p0, p1}, Lorg/codeaurora/internal/Token$1;->newArray(I)[Lorg/codeaurora/internal/Token;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lorg/codeaurora/internal/Token;
    .locals 0

    .line 77
    new-array p0, p1, [Lorg/codeaurora/internal/Token;

    return-object p0
.end method
