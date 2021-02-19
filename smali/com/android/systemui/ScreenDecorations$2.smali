.class Lcom/android/systemui/ScreenDecorations$2;
.super Ljava/lang/Object;
.source "ScreenDecorations.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/ScreenDecorations;->startOnScreenDecorationsThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/ScreenDecorations;


# direct methods
.method constructor <init>(Lcom/android/systemui/ScreenDecorations;)V
    .locals 0

    .line 362
    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations$2;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 5

    .line 375
    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations$2;->this$0:Lcom/android/systemui/ScreenDecorations;

    iget-object p1, p1, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/util/leak/RotationUtils;->getExactRotation(Landroid/content/Context;)I

    move-result p1

    .line 376
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$2;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {v0}, Lcom/android/systemui/ScreenDecorations;->access$200(Lcom/android/systemui/ScreenDecorations;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$2;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {v0}, Lcom/android/systemui/ScreenDecorations;->access$300(Lcom/android/systemui/ScreenDecorations;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$2;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {v0}, Lcom/android/systemui/ScreenDecorations;->access$400(Lcom/android/systemui/ScreenDecorations;)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 384
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$2;->this$0:Lcom/android/systemui/ScreenDecorations;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/ScreenDecorations;->access$502(Lcom/android/systemui/ScreenDecorations;Z)Z

    .line 390
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$2;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {v0}, Lcom/android/systemui/ScreenDecorations;->access$200(Lcom/android/systemui/ScreenDecorations;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/ScreenDecorations$RestartingPreDrawListener;

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations$2;->this$0:Lcom/android/systemui/ScreenDecorations;

    .line 391
    invoke-static {v2}, Lcom/android/systemui/ScreenDecorations;->access$200(Lcom/android/systemui/ScreenDecorations;)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, p1, v4}, Lcom/android/systemui/ScreenDecorations$RestartingPreDrawListener;-><init>(Lcom/android/systemui/ScreenDecorations;Landroid/view/View;ILcom/android/systemui/ScreenDecorations$1;)V

    .line 390
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 392
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$2;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {v0}, Lcom/android/systemui/ScreenDecorations;->access$300(Lcom/android/systemui/ScreenDecorations;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/ScreenDecorations$RestartingPreDrawListener;

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations$2;->this$0:Lcom/android/systemui/ScreenDecorations;

    .line 393
    invoke-static {v2}, Lcom/android/systemui/ScreenDecorations;->access$300(Lcom/android/systemui/ScreenDecorations;)Landroid/view/View;

    move-result-object v3

    invoke-direct {v1, v2, v3, p1, v4}, Lcom/android/systemui/ScreenDecorations$RestartingPreDrawListener;-><init>(Lcom/android/systemui/ScreenDecorations;Landroid/view/View;ILcom/android/systemui/ScreenDecorations$1;)V

    .line 392
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 395
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations$2;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {p0}, Lcom/android/systemui/ScreenDecorations;->access$700(Lcom/android/systemui/ScreenDecorations;)V

    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
