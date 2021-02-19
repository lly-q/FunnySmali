.class Lorg/lineageos/internal/statusbar/NetworkTraffic$TetheringStats;
.super Ljava/lang/Object;
.source "NetworkTraffic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lineageos/internal/statusbar/NetworkTraffic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TetheringStats"
.end annotation


# instance fields
.field rxBytes:J

.field final synthetic this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

.field txBytes:J


# direct methods
.method private constructor <init>(Lorg/lineageos/internal/statusbar/NetworkTraffic;)V
    .locals 0

    .line 396
    iput-object p1, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic$TetheringStats;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/lineageos/internal/statusbar/NetworkTraffic;Lorg/lineageos/internal/statusbar/NetworkTraffic$1;)V
    .locals 0

    .line 396
    invoke-direct {p0, p1}, Lorg/lineageos/internal/statusbar/NetworkTraffic$TetheringStats;-><init>(Lorg/lineageos/internal/statusbar/NetworkTraffic;)V

    return-void
.end method
