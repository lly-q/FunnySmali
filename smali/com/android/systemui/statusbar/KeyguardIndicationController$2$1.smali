.class Lcom/android/systemui/statusbar/KeyguardIndicationController$2$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardIndicationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/KeyguardIndicationController$2;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/KeyguardIndicationController$2;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KeyguardIndicationController$2;)V
    .locals 0

    .line 509
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$2$1;->this$1:Lcom/android/systemui/statusbar/KeyguardIndicationController$2;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 512
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$2$1;->this$1:Lcom/android/systemui/statusbar/KeyguardIndicationController$2;

    iget-object p1, p1, Lcom/android/systemui/statusbar/KeyguardIndicationController$2;->val$textView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 513
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$2$1;->this$1:Lcom/android/systemui/statusbar/KeyguardIndicationController$2;

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$2;->val$textView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$2;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 514
    invoke-static {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$100(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/internal/widget/ViewClippingUtil$ClippingParameters;

    move-result-object p0

    const/4 v0, 0x0

    .line 513
    invoke-static {p1, v0, p0}, Lcom/android/internal/widget/ViewClippingUtil;->setClippingDeactivated(Landroid/view/View;ZLcom/android/internal/widget/ViewClippingUtil$ClippingParameters;)V

    return-void
.end method
