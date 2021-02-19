.class public Lcom/android/systemui/util/LyricTextView;
.super Landroid/widget/TextView;
.source "LyricTextView.java"


# instance fields
.field private invalidateRunnable:Ljava/lang/Runnable;

.field private isStop:Z

.field private mPaint:Landroid/graphics/Paint;

.field mStartScrollRunnable:Ljava/lang/Runnable;

.field private speed:F

.field private text:Ljava/lang/String;

.field private textLength:F

.field private viewWidth:F

.field private x:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/util/LyricTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010084

    .line 53
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/util/LyricTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/util/LyricTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x1

    .line 29
    iput-boolean p1, p0, Lcom/android/systemui/util/LyricTextView;->isStop:Z

    const/4 p1, 0x0

    .line 30
    iput p1, p0, Lcom/android/systemui/util/LyricTextView;->textLength:F

    .line 31
    iput p1, p0, Lcom/android/systemui/util/LyricTextView;->viewWidth:F

    const/high16 p2, 0x40800000    # 4.0f

    .line 32
    iput p2, p0, Lcom/android/systemui/util/LyricTextView;->speed:F

    .line 33
    iput p1, p0, Lcom/android/systemui/util/LyricTextView;->x:F

    .line 41
    new-instance p1, Lcom/android/systemui/util/LyricTextView$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/util/LyricTextView$1;-><init>(Lcom/android/systemui/util/LyricTextView;)V

    iput-object p1, p0, Lcom/android/systemui/util/LyricTextView;->mStartScrollRunnable:Ljava/lang/Runnable;

    .line 116
    new-instance p1, Lcom/android/systemui/util/LyricTextView$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/util/LyricTextView$2;-><init>(Lcom/android/systemui/util/LyricTextView;)V

    iput-object p1, p0, Lcom/android/systemui/util/LyricTextView;->invalidateRunnable:Ljava/lang/Runnable;

    .line 63
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/util/LyricTextView;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method private getTextLength()F
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/android/systemui/util/LyricTextView;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/LyricTextView;->text:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p0

    :goto_0
    return p0
.end method

.method private init()V
    .locals 1

    const/4 v0, 0x0

    .line 67
    iput v0, p0, Lcom/android/systemui/util/LyricTextView;->x:F

    .line 68
    invoke-direct {p0}, Lcom/android/systemui/util/LyricTextView;->getTextLength()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/util/LyricTextView;->textLength:F

    .line 69
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/util/LyricTextView;->viewWidth:F

    return-void
.end method

.method private invalidateAfter(J)V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/android/systemui/util/LyricTextView;->invalidateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 113
    iget-object v0, p0, Lcom/android/systemui/util/LyricTextView;->invalidateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, p1, p2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/android/systemui/util/LyricTextView;->mStartScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 75
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/systemui/util/LyricTextView;->text:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui/util/LyricTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/util/LyricTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 98
    iget-object v1, p0, Lcom/android/systemui/util/LyricTextView;->text:Ljava/lang/String;

    iget v2, p0, Lcom/android/systemui/util/LyricTextView;->x:F

    iget-object v3, p0, Lcom/android/systemui/util/LyricTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 100
    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/util/LyricTextView;->isStop:Z

    if-nez p1, :cond_3

    .line 101
    iget p1, p0, Lcom/android/systemui/util/LyricTextView;->viewWidth:F

    iget v0, p0, Lcom/android/systemui/util/LyricTextView;->x:F

    sub-float v1, p1, v0

    iget v2, p0, Lcom/android/systemui/util/LyricTextView;->speed:F

    add-float/2addr v1, v2

    iget v3, p0, Lcom/android/systemui/util/LyricTextView;->textLength:F

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_2

    cmpl-float v0, p1, v3

    if-lez v0, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    sub-float/2addr p1, v3

    .line 102
    :goto_0
    iput p1, p0, Lcom/android/systemui/util/LyricTextView;->x:F

    .line 103
    invoke-virtual {p0}, Lcom/android/systemui/util/LyricTextView;->stopScroll()V

    goto :goto_1

    :cond_2
    sub-float/2addr v0, v2

    .line 105
    iput v0, p0, Lcom/android/systemui/util/LyricTextView;->x:F

    :goto_1
    const-wide/16 v0, 0xa

    .line 107
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/util/LyricTextView;->invalidateAfter(J)V

    :cond_3
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 80
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 81
    invoke-virtual {p0}, Lcom/android/systemui/util/LyricTextView;->stopScroll()V

    .line 82
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/util/LyricTextView;->text:Ljava/lang/String;

    .line 83
    invoke-direct {p0}, Lcom/android/systemui/util/LyricTextView;->init()V

    .line 84
    invoke-virtual {p0}, Landroid/widget/TextView;->postInvalidate()V

    .line 85
    iget-object p1, p0, Lcom/android/systemui/util/LyricTextView;->mStartScrollRunnable:Ljava/lang/Runnable;

    const-wide/16 p2, 0x1f4

    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/android/systemui/util/LyricTextView;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->postInvalidate()V

    return-void
.end method

.method public startScroll()V
    .locals 1

    .line 124
    invoke-direct {p0}, Lcom/android/systemui/util/LyricTextView;->init()V

    const/4 v0, 0x0

    .line 125
    iput-boolean v0, p0, Lcom/android/systemui/util/LyricTextView;->isStop:Z

    .line 126
    invoke-virtual {p0}, Landroid/widget/TextView;->postInvalidate()V

    return-void
.end method

.method public stopScroll()V
    .locals 1

    const/4 v0, 0x1

    .line 130
    iput-boolean v0, p0, Lcom/android/systemui/util/LyricTextView;->isStop:Z

    .line 131
    iget-object v0, p0, Lcom/android/systemui/util/LyricTextView;->mStartScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 132
    invoke-virtual {p0}, Landroid/widget/TextView;->postInvalidate()V

    return-void
.end method
