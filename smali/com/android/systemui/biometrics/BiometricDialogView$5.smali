.class Lcom/android/systemui/biometrics/BiometricDialogView$5;
.super Ljava/lang/Object;
.source "BiometricDialogView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/biometrics/BiometricDialogView;->startDismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/biometrics/BiometricDialogView;

.field final synthetic val$endActionRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/biometrics/BiometricDialogView;Ljava/lang/Runnable;)V
    .locals 0

    .line 478
    iput-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView$5;->this$0:Lcom/android/systemui/biometrics/BiometricDialogView;

    iput-object p2, p0, Lcom/android/systemui/biometrics/BiometricDialogView$5;->val$endActionRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 481
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView$5;->this$0:Lcom/android/systemui/biometrics/BiometricDialogView;

    iget-object v0, v0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 482
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView$5;->this$0:Lcom/android/systemui/biometrics/BiometricDialogView;

    .line 483
    invoke-virtual {v1}, Lcom/android/systemui/biometrics/BiometricDialogView;->getAnimatingAwayDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView$5;->this$0:Lcom/android/systemui/biometrics/BiometricDialogView;

    .line 484
    invoke-static {v1}, Lcom/android/systemui/biometrics/BiometricDialogView;->access$000(Lcom/android/systemui/biometrics/BiometricDialogView;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 485
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 486
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 487
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView$5;->this$0:Lcom/android/systemui/biometrics/BiometricDialogView;

    iget-object v0, v0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView$5;->this$0:Lcom/android/systemui/biometrics/BiometricDialogView;

    .line 488
    invoke-static {v1}, Lcom/android/systemui/biometrics/BiometricDialogView;->access$300(Lcom/android/systemui/biometrics/BiometricDialogView;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView$5;->this$0:Lcom/android/systemui/biometrics/BiometricDialogView;

    .line 489
    invoke-virtual {v1}, Lcom/android/systemui/biometrics/BiometricDialogView;->getAnimatingAwayDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView$5;->this$0:Lcom/android/systemui/biometrics/BiometricDialogView;

    .line 490
    invoke-static {v1}, Lcom/android/systemui/biometrics/BiometricDialogView;->access$000(Lcom/android/systemui/biometrics/BiometricDialogView;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView$5;->val$endActionRunnable:Ljava/lang/Runnable;

    .line 491
    invoke-virtual {v0, p0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 492
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
