.class Lcom/android/systemui/statusbar/VisualizerView$3;
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

    .line 118
    iput-object p1, p0, Lcom/android/systemui/statusbar/VisualizerView$3;->this$0:Lcom/android/systemui/statusbar/VisualizerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/android/systemui/statusbar/VisualizerView$3;->this$0:Lcom/android/systemui/statusbar/VisualizerView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/VisualizerView;->access$500(Lcom/android/systemui/statusbar/VisualizerView;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-static {p0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
