.class Lcom/android/systemui/screenshot/GlobalScreenshot$5;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/GlobalScreenshot;->takeScreenshotPartial(Ljava/util/function/Consumer;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

.field final synthetic val$finisher:Ljava/util/function/Consumer;

.field final synthetic val$navBarVisible:Z

.field final synthetic val$statusBarVisible:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Ljava/util/function/Consumer;ZZ)V
    .locals 0

    .line 911
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$5;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    iput-object p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$5;->val$finisher:Ljava/util/function/Consumer;

    iput-boolean p3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$5;->val$statusBarVisible:Z

    iput-boolean p4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$5;->val$navBarVisible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onClick$0$GlobalScreenshot$5()V
    .locals 0

    .line 930
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$5;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->hideScreenshotSelector()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 914
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$5;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$400(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/ScreenshotSelectorView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->getSelectionRect()Landroid/graphics/Rect;

    move-result-object p1

    .line 915
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$5;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-virtual {v0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->getRotationAdjustedRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 916
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$5;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$500(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 917
    new-instance v1, Lcom/android/systemui/screenshot/GlobalScreenshot$5$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot$5$1;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot$5;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 930
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$5;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$200(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$5$01o_ID-jdgeaV-wXk1c6Gz3pIik;

    invoke-direct {v0, p0}, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$5$01o_ID-jdgeaV-wXk1c6Gz3pIik;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot$5;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
