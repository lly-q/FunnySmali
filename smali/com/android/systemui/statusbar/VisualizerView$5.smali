.class Lcom/android/systemui/statusbar/VisualizerView$5;
.super Ljava/lang/Object;
.source "VisualizerView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/VisualizerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/VisualizerView;

.field final synthetic val$j:I


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/VisualizerView;I)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/android/systemui/statusbar/VisualizerView$5;->this$0:Lcom/android/systemui/statusbar/VisualizerView;

    iput p2, p0, Lcom/android/systemui/statusbar/VisualizerView$5;->val$j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/android/systemui/statusbar/VisualizerView$5;->this$0:Lcom/android/systemui/statusbar/VisualizerView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/VisualizerView;->access$100(Lcom/android/systemui/statusbar/VisualizerView;)[F

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/VisualizerView$5;->val$j:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    aput p1, v0, v1

    .line 169
    iget-object p0, p0, Lcom/android/systemui/statusbar/VisualizerView$5;->this$0:Lcom/android/systemui/statusbar/VisualizerView;

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method
