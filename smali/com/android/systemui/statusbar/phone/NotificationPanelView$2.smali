.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$2;
.super Ljava/lang/Object;
.source "NotificationPanelView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardFadingAwayChanged()V
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isKeyguardFadingAway()Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$002(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)Z

    .line 215
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$102(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)Z

    :cond_0
    return-void
.end method
