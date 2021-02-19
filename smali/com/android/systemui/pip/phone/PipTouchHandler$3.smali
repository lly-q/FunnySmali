.class Lcom/android/systemui/pip/phone/PipTouchHandler$3;
.super Lcom/android/systemui/pip/phone/PipTouchGesture;
.source "PipTouchHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/phone/PipTouchHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mDelta:Landroid/graphics/PointF;

.field private final mStartPosition:Landroid/graphics/Point;

.field private mStartedOnLeft:Z

.field final synthetic this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/phone/PipTouchHandler;)V
    .locals 0

    .line 584
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchGesture;-><init>()V

    .line 587
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->mStartPosition:Landroid/graphics/Point;

    .line 588
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->mDelta:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public onDown(Lcom/android/systemui/pip/phone/PipTouchState;)V
    .locals 4

    .line 592
    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipTouchState;->isUserInteracting()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 596
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$600(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 597
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->mDelta:Landroid/graphics/PointF;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 598
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->mStartPosition:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 599
    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$800(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->mStartedOnLeft:Z

    .line 600
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0, v3}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1302(Lcom/android/systemui/pip/phone/PipTouchHandler;Z)Z

    .line 601
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipTouchState;->getDownTouchPosition()Landroid/graphics/PointF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$800(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_2

    move v2, v3

    :cond_2
    invoke-static {v0, v2}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1402(Lcom/android/systemui/pip/phone/PipTouchHandler;Z)Z

    .line 605
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1500(Lcom/android/systemui/pip/phone/PipTouchHandler;)I

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$500(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 606
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1200(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMenuActivityController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->pokeMenu()V

    .line 609
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$100(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 610
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$200(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipDismissViewController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipDismissViewController;->createDismissTarget()V

    .line 611
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1700(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1600(Lcom/android/systemui/pip/phone/PipTouchHandler;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v0, 0xe1

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void
.end method

.method onMove(Lcom/android/systemui/pip/phone/PipTouchState;)Z
    .locals 7

    .line 617
    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipTouchState;->isUserInteracting()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 621
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipTouchState;->startedDragging()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 622
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v0, v2}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1802(Lcom/android/systemui/pip/phone/PipTouchHandler;F)F

    .line 624
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$100(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 625
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1700(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v2}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1600(Lcom/android/systemui/pip/phone/PipTouchHandler;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 626
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$200(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipDismissViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipDismissViewController;->showDismissTarget()V

    .line 630
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipTouchState;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 632
    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipTouchState;->getLastTouchDelta()Landroid/graphics/PointF;

    move-result-object v0

    .line 633
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->mStartPosition:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->mDelta:Landroid/graphics/PointF;

    iget v5, v4, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, v5

    .line 634
    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iget v4, v4, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v4

    .line 635
    iget v4, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v4, v3

    .line 636
    iget v0, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v2

    .line 637
    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipTouchState;->allowDraggingOffscreen()Z

    .line 638
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v5}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$800(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v6}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$800(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 640
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v5}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$100(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 642
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v5}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$800(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_0

    .line 644
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v5}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$800(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v6}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$800(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 648
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->mDelta:Landroid/graphics/PointF;

    iget v6, v5, Landroid/graphics/PointF;->x:F

    sub-float v3, v4, v3

    add-float/2addr v6, v3

    iput v6, v5, Landroid/graphics/PointF;->x:F

    .line 649
    iget v3, v5, Landroid/graphics/PointF;->y:F

    sub-float v2, v0, v2

    add-float/2addr v3, v2

    iput v3, v5, Landroid/graphics/PointF;->y:F

    .line 651
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v2}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1900(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v3}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$600(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 652
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v2}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1900(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v2

    float-to-int v3, v4

    float-to-int v0, v0

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 653
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$600(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v2}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1900(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/pip/phone/PipMotionHelper;->movePip(Landroid/graphics/Rect;)V

    .line 655
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$100(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 656
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$300(Lcom/android/systemui/pip/phone/PipTouchHandler;)V

    .line 659
    :cond_3
    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipTouchState;->getLastTouchPosition()Landroid/graphics/PointF;

    move-result-object p1

    .line 660
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1300(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    .line 662
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    iget-boolean v3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->mStartedOnLeft:Z

    if-eqz v3, :cond_4

    .line 663
    iget v3, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$800(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v5}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1900(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_5

    goto :goto_1

    .line 664
    :cond_4
    iget v3, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$800(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_5

    :goto_1
    move v3, v2

    goto :goto_2

    :cond_5
    move v3, v1

    .line 662
    :goto_2
    invoke-static {v0, v3}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1302(Lcom/android/systemui/pip/phone/PipTouchHandler;Z)Z

    .line 666
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1400(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 668
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$800(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_7

    move v1, v2

    :cond_7
    invoke-static {p0, v1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1402(Lcom/android/systemui/pip/phone/PipTouchHandler;Z)Z

    :cond_8
    return v2

    :cond_9
    return v1
.end method

.method public onUp(Lcom/android/systemui/pip/phone/PipTouchState;)Z
    .locals 14

    .line 677
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$100(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$2000(Lcom/android/systemui/pip/phone/PipTouchHandler;)V

    .line 683
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipTouchState;->isUserInteracting()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 687
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipTouchState;->getVelocity()Landroid/graphics/PointF;

    move-result-object v0

    .line 688
    iget v2, v0, Landroid/graphics/PointF;->x:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, v0, Landroid/graphics/PointF;->y:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    const/4 v3, 0x1

    if-lez v2, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v1

    .line 689
    :goto_0
    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget v5, v0, Landroid/graphics/PointF;->y:F

    invoke-static {v4, v5}, Landroid/graphics/PointF;->length(FF)F

    move-result v7

    .line 690
    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v4}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$2100(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/statusbar/FlingAnimationUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->getMinVelocityPxPerSecond()F

    move-result v4

    cmpl-float v4, v7, v4

    if-lez v4, :cond_3

    move v4, v3

    goto :goto_1

    :cond_3
    move v4, v1

    :goto_1
    const/4 v5, 0x0

    if-eqz v4, :cond_5

    .line 695
    iget v6, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v6, v6, v5

    if-lez v6, :cond_5

    if-nez v2, :cond_5

    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    .line 696
    invoke-static {v6}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1400(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_2

    :cond_4
    move v6, v3

    goto :goto_3

    :cond_5
    :goto_2
    move v6, v1

    .line 697
    :goto_3
    iget-object v8, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v8}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$100(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 699
    iget-object v8, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v8}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$600(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/pip/phone/PipMotionHelper;->shouldDismissPip()Z

    move-result v8

    if-nez v8, :cond_6

    if-eqz v6, :cond_7

    .line 700
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$900(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    .line 701
    invoke-static {v1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$900(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v2}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1000(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/app/IActivityManager;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/pip/phone/PipUtils;->getTopPinnedActivity(Landroid/content/Context;Landroid/app/IActivityManager;)Landroid/util/Pair;

    move-result-object v1

    .line 700
    invoke-static {p1, v1}, Lcom/android/internal/os/logging/MetricsLoggerWrapper;->logPictureInPictureDismissByDrag(Landroid/content/Context;Landroid/util/Pair;)V

    .line 702
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$600(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$600(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    .line 703
    invoke-static {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$2200(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object p0

    .line 702
    invoke-virtual {p1, v1, v2, v0, p0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->animateDismiss(Landroid/graphics/Rect;FFLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/graphics/Rect;

    return v3

    .line 708
    :cond_7
    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipTouchState;->isDragging()Z

    move-result p1

    const/4 v6, 0x0

    if-eqz p1, :cond_d

    if-eqz v4, :cond_9

    if-eqz v2, :cond_9

    .line 709
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1300(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-boolean p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->mStartedOnLeft:Z

    if-eqz p1, :cond_8

    iget p1, v0, Landroid/graphics/PointF;->x:F

    cmpg-float p1, p1, v5

    goto :goto_4

    :cond_8
    iget p1, v0, Landroid/graphics/PointF;->x:F

    cmpl-float p1, p1, v5

    .line 726
    :cond_9
    :goto_4
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$500(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 729
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p1, v1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$700(Lcom/android/systemui/pip/phone/PipTouchHandler;Z)V

    .line 733
    :cond_a
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1500(Lcom/android/systemui/pip/phone/PipTouchHandler;)I

    move-result p1

    if-eqz p1, :cond_b

    .line 736
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1200(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMenuActivityController;

    move-result-object v8

    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1500(Lcom/android/systemui/pip/phone/PipTouchHandler;)I

    move-result v9

    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$600(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    .line 737
    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$800(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v11

    const/4 v12, 0x1

    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1100(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z

    move-result v13

    .line 736
    invoke-virtual/range {v8 .. v13}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->showMenu(ILandroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    move-object v12, v6

    goto :goto_5

    .line 741
    :cond_b
    new-instance p1, Lcom/android/systemui/pip/phone/PipTouchHandler$3$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/pip/phone/PipTouchHandler$3$1;-><init>(Lcom/android/systemui/pip/phone/PipTouchHandler$3;)V

    move-object v12, p1

    :goto_5
    if-eqz v4, :cond_c

    .line 750
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$600(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object v6

    iget v8, v0, Landroid/graphics/PointF;->x:F

    iget v9, v0, Landroid/graphics/PointF;->y:F

    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$800(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v10

    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    .line 751
    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$2200(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v11

    iget-object v13, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->mStartPosition:Landroid/graphics/Point;

    .line 750
    invoke-virtual/range {v6 .. v13}, Lcom/android/systemui/pip/phone/PipMotionHelper;->flingToSnapTarget(FFFLandroid/graphics/Rect;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;Landroid/graphics/Point;)Landroid/graphics/Rect;

    goto/16 :goto_6

    .line 754
    :cond_c
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$600(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$800(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$2200(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object p0

    invoke-virtual {p1, v0, p0, v12}, Lcom/android/systemui/pip/phone/PipMotionHelper;->animateToClosestSnapTarget(Landroid/graphics/Rect;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)Landroid/graphics/Rect;

    goto/16 :goto_6

    .line 757
    :cond_d
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$500(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 759
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$600(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$800(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0, v6, v6}, Lcom/android/systemui/pip/phone/PipMotionHelper;->animateToClosestSnapTarget(Landroid/graphics/Rect;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)Landroid/graphics/Rect;

    .line 761
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p0, v1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$700(Lcom/android/systemui/pip/phone/PipTouchHandler;Z)V

    goto :goto_6

    .line 762
    :cond_e
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$2300(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipTouchState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipTouchState;->isDoubleTap()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 764
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$600(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->expandPip()V

    goto :goto_6

    .line 765
    :cond_f
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1500(Lcom/android/systemui/pip/phone/PipTouchHandler;)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_11

    .line 766
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$2300(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipTouchState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipTouchState;->isWaitingForDoubleTap()Z

    move-result p1

    if-nez p1, :cond_10

    .line 769
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1200(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMenuActivityController;

    move-result-object v4

    const/4 v5, 0x2

    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$600(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    .line 770
    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$800(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v7

    const/4 v8, 0x1

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1100(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z

    move-result v9

    .line 769
    invoke-virtual/range {v4 .. v9}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->showMenu(ILandroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    goto :goto_6

    .line 775
    :cond_10
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$2300(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipTouchState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipTouchState;->scheduleDoubleTapTimeoutCallback()V

    :cond_11
    :goto_6
    return v3
.end method
