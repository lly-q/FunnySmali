.class Lcom/android/keyguard/KeyguardSecurityContainer$1;
.super Ljava/lang/Object;
.source "KeyguardSecurityContainer.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecurityContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecurityContainer;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSecurityContainer;)V
    .locals 0

    .line 597
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$reportUnlockAttempt$0()V
    .locals 2

    const-wide/16 v0, 0x1388

    .line 627
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 629
    :catch_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    return-void
.end method


# virtual methods
.method public dismiss(ZI)V
    .locals 0

    .line 610
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->access$000(Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;->dismiss(ZI)Z

    return-void
.end method

.method public onCancelClicked()V
    .locals 0

    .line 645
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->access$000(Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;->onCancelClicked()V

    return-void
.end method

.method public onUserInput()V
    .locals 0

    .line 606
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->access$100(Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->cancelFaceAuth()V

    return-void
.end method

.method public reportUnlockAttempt(IZI)V
    .locals 2

    const/16 v0, 0x40

    if-eqz p2, :cond_0

    const/4 p3, 0x2

    .line 619
    invoke-static {v0, p3}, Landroid/util/StatsLog;->write(II)I

    .line 621
    iget-object p3, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-static {p3}, Lcom/android/keyguard/KeyguardSecurityContainer;->access$300(Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/android/internal/widget/LockPatternUtils;->reportSuccessfulPasswordAttempt(I)V

    .line 625
    sget-object p1, Lcom/android/keyguard/-$$Lambda$KeyguardSecurityContainer$1$ZmZG61mJJm4DEtN57wo5kJoWZGk;->INSTANCE:Lcom/android/keyguard/-$$Lambda$KeyguardSecurityContainer$1$ZmZG61mJJm4DEtN57wo5kJoWZGk;

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 632
    invoke-static {v0, v1}, Landroid/util/StatsLog;->write(II)I

    .line 634
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-static {v0, p1, p3}, Lcom/android/keyguard/KeyguardSecurityContainer;->access$400(Lcom/android/keyguard/KeyguardSecurityContainer;II)V

    .line 636
    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->access$500(Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/internal/logging/MetricsLogger;

    move-result-object p0

    new-instance p1, Landroid/metrics/LogMaker;

    const/16 p3, 0xc5

    invoke-direct {p1, p3}, Landroid/metrics/LogMaker;-><init>(I)V

    if-eqz p2, :cond_1

    const/16 p2, 0xa

    goto :goto_1

    :cond_1
    const/16 p2, 0xb

    .line 637
    :goto_1
    invoke-virtual {p1, p2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 636
    invoke-virtual {p0, p1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    return-void
.end method

.method public reset()V
    .locals 0

    .line 641
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->access$000(Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;->reset()V

    return-void
.end method

.method public userActivity()V
    .locals 1

    .line 599
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->access$000(Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 600
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->access$000(Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;->userActivity()V

    :cond_0
    return-void
.end method
