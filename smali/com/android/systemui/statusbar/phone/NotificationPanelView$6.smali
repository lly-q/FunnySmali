.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$6;
.super Ljava/lang/Object;
.source "NotificationPanelView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$WakeUpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onFinishInflate()V
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

    .line 544
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$6;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFullyHiddenChanged(Z)V
    .locals 0

    .line 547
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$6;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$700(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    return-void
.end method

.method public onPulseExpansionChanged(Z)V
    .locals 1

    .line 552
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$6;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 554
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$6;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestScrollerTopPaddingUpdate(Z)V

    .line 555
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$6;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$800(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    :cond_0
    return-void
.end method
