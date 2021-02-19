.class Lcom/android/systemui/qs/tiles/AdbOverNetworkTile$KeyguardMonitorCallback;
.super Ljava/lang/Object;
.source "AdbOverNetworkTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyguardMonitorCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AdbOverNetworkTile$KeyguardMonitorCallback;->this$0:Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;Lcom/android/systemui/qs/tiles/AdbOverNetworkTile$1;)V
    .locals 0

    .line 174
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/AdbOverNetworkTile$KeyguardMonitorCallback;-><init>(Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;)V

    return-void
.end method


# virtual methods
.method public onKeyguardShowingChanged()V
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/AdbOverNetworkTile$KeyguardMonitorCallback;->this$0:Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    return-void
.end method
