.class public Llineageos/hardware/TouchscreenGesture;
.super Ljava/lang/Object;
.source "TouchscreenGesture.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Llineageos/hardware/TouchscreenGesture;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final id:I

.field public final keycode:I

.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    new-instance v0, Llineageos/hardware/TouchscreenGesture$1;

    invoke-direct {v0}, Llineageos/hardware/TouchscreenGesture$1;-><init>()V

    sput-object v0, Llineageos/hardware/TouchscreenGesture;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Llineageos/hardware/TouchscreenGesture;->id:I

    .line 49
    iput-object p2, p0, Llineageos/hardware/TouchscreenGesture;->name:Ljava/lang/String;

    .line 50
    iput p3, p0, Llineageos/hardware/TouchscreenGesture;->keycode:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 60
    iget p2, p0, Llineageos/hardware/TouchscreenGesture;->id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget-object p2, p0, Llineageos/hardware/TouchscreenGesture;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget p0, p0, Llineageos/hardware/TouchscreenGesture;->keycode:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
