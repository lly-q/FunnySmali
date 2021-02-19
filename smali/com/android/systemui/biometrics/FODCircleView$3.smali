.class Lcom/android/systemui/biometrics/FODCircleView$3;
.super Landroid/widget/ImageView;
.source "FODCircleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/biometrics/FODCircleView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/biometrics/FODCircleView;


# direct methods
.method constructor <init>(Lcom/android/systemui/biometrics/FODCircleView;Landroid/content/Context;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/android/systemui/biometrics/FODCircleView$3;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 198
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView$3;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {v0}, Lcom/android/systemui/biometrics/FODCircleView;->access$800(Lcom/android/systemui/biometrics/FODCircleView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView$3;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {v0}, Lcom/android/systemui/biometrics/FODCircleView;->access$900(Lcom/android/systemui/biometrics/FODCircleView;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui/biometrics/FODCircleView$3;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {v1}, Lcom/android/systemui/biometrics/FODCircleView;->access$900(Lcom/android/systemui/biometrics/FODCircleView;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/systemui/biometrics/FODCircleView$3;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {v2}, Lcom/android/systemui/biometrics/FODCircleView;->access$900(Lcom/android/systemui/biometrics/FODCircleView;)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/biometrics/FODCircleView$3;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {v3}, Lcom/android/systemui/biometrics/FODCircleView;->access$1000(Lcom/android/systemui/biometrics/FODCircleView;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 201
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
