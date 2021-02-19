.class Lcom/android/systemui/ScreenDecorations$1;
.super Ljava/lang/Object;
.source "ScreenDecorations.java"

# interfaces
.implements Lcom/android/systemui/CameraAvailabilityListener$CameraTransitionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/ScreenDecorations;
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

    .line 143
    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations$1;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyCameraProtection(Landroid/graphics/Path;Landroid/graphics/Rect;)V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$1;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {v0}, Lcom/android/systemui/ScreenDecorations;->access$000(Lcom/android/systemui/ScreenDecorations;)Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->setProtection(Landroid/graphics/Path;Landroid/graphics/Rect;)V

    .line 148
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$1;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {v0}, Lcom/android/systemui/ScreenDecorations;->access$000(Lcom/android/systemui/ScreenDecorations;)Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->setShowProtection(Z)V

    .line 149
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$1;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {v0}, Lcom/android/systemui/ScreenDecorations;->access$100(Lcom/android/systemui/ScreenDecorations;)Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->setProtection(Landroid/graphics/Path;Landroid/graphics/Rect;)V

    .line 150
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations$1;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {p0}, Lcom/android/systemui/ScreenDecorations;->access$100(Lcom/android/systemui/ScreenDecorations;)Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->setShowProtection(Z)V

    return-void
.end method

.method public onHideCameraProtection()V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$1;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {v0}, Lcom/android/systemui/ScreenDecorations;->access$000(Lcom/android/systemui/ScreenDecorations;)Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->setShowProtection(Z)V

    .line 157
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations$1;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {p0}, Lcom/android/systemui/ScreenDecorations;->access$100(Lcom/android/systemui/ScreenDecorations;)Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->setShowProtection(Z)V

    return-void
.end method
