.class Lcom/android/systemui/statusbar/VisualizerView$4;
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

    .line 125
    iput-object p1, p0, Lcom/android/systemui/statusbar/VisualizerView$4;->this$0:Lcom/android/systemui/statusbar/VisualizerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/android/systemui/statusbar/VisualizerView$4;->this$0:Lcom/android/systemui/statusbar/VisualizerView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/VisualizerView;->access$200(Lcom/android/systemui/statusbar/VisualizerView;)Landroid/media/audiofx/Visualizer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/systemui/statusbar/VisualizerView$4;->this$0:Lcom/android/systemui/statusbar/VisualizerView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/VisualizerView;->access$200(Lcom/android/systemui/statusbar/VisualizerView;)Landroid/media/audiofx/Visualizer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    .line 133
    iget-object v0, p0, Lcom/android/systemui/statusbar/VisualizerView$4;->this$0:Lcom/android/systemui/statusbar/VisualizerView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/VisualizerView;->access$200(Lcom/android/systemui/statusbar/VisualizerView;)Landroid/media/audiofx/Visualizer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/audiofx/Visualizer;->release()V

    .line 134
    iget-object p0, p0, Lcom/android/systemui/statusbar/VisualizerView$4;->this$0:Lcom/android/systemui/statusbar/VisualizerView;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/VisualizerView;->access$202(Lcom/android/systemui/statusbar/VisualizerView;Landroid/media/audiofx/Visualizer;)Landroid/media/audiofx/Visualizer;

    :cond_0
    return-void
.end method
