.class Lcom/android/systemui/statusbar/VisualizerView$1;
.super Ljava/lang/Object;
.source "VisualizerView.java"

# interfaces
.implements Landroid/media/audiofx/Visualizer$OnDataCaptureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/VisualizerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field dbValue:I

.field ifk:B

.field magnitude:F

.field rfk:B

.field final synthetic this$0:Lcom/android/systemui/statusbar/VisualizerView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/VisualizerView;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/android/systemui/statusbar/VisualizerView$1;->this$0:Lcom/android/systemui/statusbar/VisualizerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFftDataCapture(Landroid/media/audiofx/Visualizer;[BI)V
    .locals 6

    const/4 p1, 0x0

    move p3, p1

    :goto_0
    const/16 v0, 0x20

    if-ge p3, v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/android/systemui/statusbar/VisualizerView$1;->this$0:Lcom/android/systemui/statusbar/VisualizerView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/VisualizerView;->access$000(Lcom/android/systemui/statusbar/VisualizerView;)[Landroid/animation/ValueAnimator;

    move-result-object v0

    aget-object v0, v0, p3

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    mul-int/lit8 v0, p3, 0x2

    add-int/lit8 v1, v0, 0x2

    .line 80
    aget-byte v1, p2, v1

    iput-byte v1, p0, Lcom/android/systemui/statusbar/VisualizerView$1;->rfk:B

    const/4 v1, 0x3

    add-int/2addr v0, v1

    .line 81
    aget-byte v0, p2, v0

    iput-byte v0, p0, Lcom/android/systemui/statusbar/VisualizerView$1;->ifk:B

    .line 82
    iget-byte v0, p0, Lcom/android/systemui/statusbar/VisualizerView$1;->rfk:B

    mul-int/2addr v0, v0

    iget-byte v2, p0, Lcom/android/systemui/statusbar/VisualizerView$1;->ifk:B

    mul-int/2addr v2, v2

    add-int/2addr v0, v2

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/VisualizerView$1;->magnitude:F

    .line 83
    iget v0, p0, Lcom/android/systemui/statusbar/VisualizerView$1;->magnitude:F

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->log10(D)D

    move-result-wide v4

    mul-double/2addr v4, v2

    double-to-int v0, v4

    goto :goto_1

    :cond_0
    move v0, p1

    :goto_1
    iput v0, p0, Lcom/android/systemui/statusbar/VisualizerView$1;->dbValue:I

    .line 85
    iget-object v0, p0, Lcom/android/systemui/statusbar/VisualizerView$1;->this$0:Lcom/android/systemui/statusbar/VisualizerView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/VisualizerView;->access$000(Lcom/android/systemui/statusbar/VisualizerView;)[Landroid/animation/ValueAnimator;

    move-result-object v0

    aget-object v0, v0, p3

    const/4 v2, 0x2

    new-array v2, v2, [F

    iget-object v3, p0, Lcom/android/systemui/statusbar/VisualizerView$1;->this$0:Lcom/android/systemui/statusbar/VisualizerView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/VisualizerView;->access$100(Lcom/android/systemui/statusbar/VisualizerView;)[F

    move-result-object v3

    mul-int/lit8 v4, p3, 0x4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    aget v3, v3, v4

    aput v3, v2, p1

    iget-object v3, p0, Lcom/android/systemui/statusbar/VisualizerView$1;->this$0:Lcom/android/systemui/statusbar/VisualizerView;

    .line 86
    invoke-static {v3}, Lcom/android/systemui/statusbar/VisualizerView;->access$100(Lcom/android/systemui/statusbar/VisualizerView;)[F

    move-result-object v3

    aget v1, v3, v1

    iget v3, p0, Lcom/android/systemui/statusbar/VisualizerView$1;->dbValue:I

    int-to-float v3, v3

    const/high16 v4, 0x41800000    # 16.0f

    mul-float/2addr v3, v4

    sub-float/2addr v1, v3

    aput v1, v2, v5

    .line 85
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/VisualizerView$1;->this$0:Lcom/android/systemui/statusbar/VisualizerView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/VisualizerView;->access$000(Lcom/android/systemui/statusbar/VisualizerView;)[Landroid/animation/ValueAnimator;

    move-result-object v0

    aget-object v0, v0, p3

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onWaveFormDataCapture(Landroid/media/audiofx/Visualizer;[BI)V
    .locals 0

    return-void
.end method
