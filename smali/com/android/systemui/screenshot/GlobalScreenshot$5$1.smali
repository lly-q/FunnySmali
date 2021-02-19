.class Lcom/android/systemui/screenshot/GlobalScreenshot$5$1;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Landroid/animation/LayoutTransition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/GlobalScreenshot$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/screenshot/GlobalScreenshot$5;

.field final synthetic val$adjustedRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshot$5;Landroid/graphics/Rect;)V
    .locals 0

    .line 917
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$5$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshot$5;

    iput-object p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$5$1;->val$adjustedRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public endTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 2

    .line 926
    iget-object p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$5$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshot$5;

    iget-object p3, p2, Lcom/android/systemui/screenshot/GlobalScreenshot$5;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    iget-object p4, p2, Lcom/android/systemui/screenshot/GlobalScreenshot$5;->val$finisher:Ljava/util/function/Consumer;

    iget-boolean v0, p2, Lcom/android/systemui/screenshot/GlobalScreenshot$5;->val$statusBarVisible:Z

    iget-boolean p2, p2, Lcom/android/systemui/screenshot/GlobalScreenshot$5;->val$navBarVisible:Z

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$5$1;->val$adjustedRect:Landroid/graphics/Rect;

    invoke-static {p3, p4, v0, p2, v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$600(Lcom/android/systemui/screenshot/GlobalScreenshot;Ljava/util/function/Consumer;ZZLandroid/graphics/Rect;)V

    .line 927
    invoke-virtual {p1, p0}, Landroid/animation/LayoutTransition;->removeTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    return-void
.end method

.method public startTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 0

    return-void
.end method
