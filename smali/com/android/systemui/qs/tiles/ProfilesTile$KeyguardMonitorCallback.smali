.class Lcom/android/systemui/qs/tiles/ProfilesTile$KeyguardMonitorCallback;
.super Ljava/lang/Object;
.source "ProfilesTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/ProfilesTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyguardMonitorCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/ProfilesTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/ProfilesTile;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ProfilesTile$KeyguardMonitorCallback;->this$0:Lcom/android/systemui/qs/tiles/ProfilesTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/ProfilesTile;Lcom/android/systemui/qs/tiles/ProfilesTile$1;)V
    .locals 0

    .line 201
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/ProfilesTile$KeyguardMonitorCallback;-><init>(Lcom/android/systemui/qs/tiles/ProfilesTile;)V

    return-void
.end method


# virtual methods
.method public onKeyguardShowingChanged()V
    .locals 0

    .line 204
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/ProfilesTile$KeyguardMonitorCallback;->this$0:Lcom/android/systemui/qs/tiles/ProfilesTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    return-void
.end method
