.class final Lcom/android/systemui/qs/tiles/VpnTile$Callback;
.super Ljava/lang/Object;
.source "VpnTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;
.implements Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/VpnTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Callback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/VpnTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/VpnTile;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/VpnTile$Callback;->this$0:Lcom/android/systemui/qs/tiles/VpnTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/VpnTile;Lcom/android/systemui/qs/tiles/VpnTile$1;)V
    .locals 0

    .line 266
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/VpnTile$Callback;-><init>(Lcom/android/systemui/qs/tiles/VpnTile;)V

    return-void
.end method


# virtual methods
.method public onKeyguardShowingChanged()V
    .locals 0

    .line 274
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/VpnTile$Callback;->this$0:Lcom/android/systemui/qs/tiles/VpnTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    return-void
.end method

.method public onStateChanged()V
    .locals 0

    .line 269
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/VpnTile$Callback;->this$0:Lcom/android/systemui/qs/tiles/VpnTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    return-void
.end method
