.class Lcom/android/systemui/statusbar/VisualizerView$2;
.super Ljava/lang/Object;
.source "VisualizerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/VisualizerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/VisualizerView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/VisualizerView;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/android/systemui/statusbar/VisualizerView$2;->this$0:Lcom/android/systemui/statusbar/VisualizerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/VisualizerView$2;->this$0:Lcom/android/systemui/statusbar/VisualizerView;

    new-instance v1, Landroid/media/audiofx/Visualizer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/media/audiofx/Visualizer;-><init>(I)V

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/VisualizerView;->access$202(Lcom/android/systemui/statusbar/VisualizerView;Landroid/media/audiofx/Visualizer;)Landroid/media/audiofx/Visualizer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    iget-object v0, p0, Lcom/android/systemui/statusbar/VisualizerView$2;->this$0:Lcom/android/systemui/statusbar/VisualizerView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/VisualizerView;->access$200(Lcom/android/systemui/statusbar/VisualizerView;)Landroid/media/audiofx/Visualizer;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/VisualizerView$2;->this$0:Lcom/android/systemui/statusbar/VisualizerView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/VisualizerView;->access$200(Lcom/android/systemui/statusbar/VisualizerView;)Landroid/media/audiofx/Visualizer;

    move-result-object v0

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Landroid/media/audiofx/Visualizer;->setCaptureSize(I)I

    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/VisualizerView$2;->this$0:Lcom/android/systemui/statusbar/VisualizerView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/VisualizerView;->access$200(Lcom/android/systemui/statusbar/VisualizerView;)Landroid/media/audiofx/Visualizer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/VisualizerView$2;->this$0:Lcom/android/systemui/statusbar/VisualizerView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/VisualizerView;->access$400(Lcom/android/systemui/statusbar/VisualizerView;)Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

    move-result-object v1

    invoke-static {}, Landroid/media/audiofx/Visualizer;->getMaxCaptureRate()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/media/audiofx/Visualizer;->setDataCaptureListener(Landroid/media/audiofx/Visualizer$OnDataCaptureListener;IZZ)I

    .line 110
    iget-object p0, p0, Lcom/android/systemui/statusbar/VisualizerView$2;->this$0:Lcom/android/systemui/statusbar/VisualizerView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/VisualizerView;->access$200(Lcom/android/systemui/statusbar/VisualizerView;)Landroid/media/audiofx/Visualizer;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    return-void

    :catch_0
    move-exception p0

    .line 102
    invoke-static {}, Lcom/android/systemui/statusbar/VisualizerView;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "error initializing visualizer"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
