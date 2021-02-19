.class Lcom/android/systemui/biometrics/FODCircleView$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "FODCircleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/biometrics/FODCircleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/biometrics/FODCircleView;


# direct methods
.method constructor <init>(Lcom/android/systemui/biometrics/FODCircleView;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/android/systemui/biometrics/FODCircleView$2;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDreamingStateChanged(Z)V
    .locals 6

    .line 104
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView$2;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {v0, p1}, Lcom/android/systemui/biometrics/FODCircleView;->access$102(Lcom/android/systemui/biometrics/FODCircleView;Z)Z

    .line 105
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView$2;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {v0}, Lcom/android/systemui/biometrics/FODCircleView;->access$200(Lcom/android/systemui/biometrics/FODCircleView;)V

    if-eqz p1, :cond_0

    .line 108
    iget-object p1, p0, Lcom/android/systemui/biometrics/FODCircleView$2;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    invoke-static {p1, v0}, Lcom/android/systemui/biometrics/FODCircleView;->access$302(Lcom/android/systemui/biometrics/FODCircleView;Ljava/util/Timer;)Ljava/util/Timer;

    .line 109
    iget-object p1, p0, Lcom/android/systemui/biometrics/FODCircleView$2;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {p1}, Lcom/android/systemui/biometrics/FODCircleView;->access$300(Lcom/android/systemui/biometrics/FODCircleView;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/biometrics/FODCircleView$BurnInProtectionTask;

    iget-object p0, p0, Lcom/android/systemui/biometrics/FODCircleView$2;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    const/4 p1, 0x0

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/biometrics/FODCircleView$BurnInProtectionTask;-><init>(Lcom/android/systemui/biometrics/FODCircleView;Lcom/android/systemui/biometrics/FODCircleView$1;)V

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0xea60

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0

    .line 110
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/biometrics/FODCircleView$2;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {p1}, Lcom/android/systemui/biometrics/FODCircleView;->access$300(Lcom/android/systemui/biometrics/FODCircleView;)Ljava/util/Timer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 111
    iget-object p0, p0, Lcom/android/systemui/biometrics/FODCircleView$2;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {p0}, Lcom/android/systemui/biometrics/FODCircleView;->access$300(Lcom/android/systemui/biometrics/FODCircleView;)Ljava/util/Timer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Timer;->cancel()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView$2;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {v0, p1}, Lcom/android/systemui/biometrics/FODCircleView;->access$502(Lcom/android/systemui/biometrics/FODCircleView;Z)Z

    .line 118
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView$2;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {v0}, Lcom/android/systemui/biometrics/FODCircleView;->access$600(Lcom/android/systemui/biometrics/FODCircleView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView$2;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {v0}, Lcom/android/systemui/biometrics/FODCircleView;->access$600(Lcom/android/systemui/biometrics/FODCircleView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/biometrics/FODCircleView;->access$700(Lcom/android/systemui/biometrics/FODCircleView;I)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/biometrics/FODCircleView$2;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/FODCircleView;->hide()V

    goto :goto_1

    .line 120
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/biometrics/FODCircleView$2;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/FODCircleView;->show()V

    goto :goto_1

    .line 125
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/biometrics/FODCircleView$2;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/FODCircleView;->hide()V

    :goto_1
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/android/systemui/biometrics/FODCircleView$2;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/FODCircleView;->hide()V

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView$2;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {v0}, Lcom/android/systemui/biometrics/FODCircleView;->access$600(Lcom/android/systemui/biometrics/FODCircleView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object p0, p0, Lcom/android/systemui/biometrics/FODCircleView$2;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/FODCircleView;->show()V

    :cond_0
    return-void
.end method
