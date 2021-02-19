.class Lcom/android/systemui/screenshot/GlobalScreenshot$4;
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


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Ljava/util/function/Consumer;)V
    .locals 0

    .line 902
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$4;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    iput-object p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$4;->val$finisher:Ljava/util/function/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onClick$0$GlobalScreenshot$4(Ljava/util/function/Consumer;)V
    .locals 1

    const/4 v0, 0x0

    .line 906
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 907
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$4;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->hideScreenshotSelector()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 905
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$4;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$200(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$4;->val$finisher:Ljava/util/function/Consumer;

    new-instance v1, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$4$UxSlBgcp02BDXits6pjgZYoRBEU;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$4$UxSlBgcp02BDXits6pjgZYoRBEU;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot$4;Ljava/util/function/Consumer;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
