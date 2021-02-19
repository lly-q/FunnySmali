.class public Lcom/android/systemui/screenshot/ScreenshotSelectorView;
.super Landroid/widget/FrameLayout;
.source "ScreenshotSelectorView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/screenshot/ScreenshotSelectorView$OnSelectionListener;,
        Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;
    }
.end annotation


# instance fields
.field private final mBorderWidth:I

.field private final mCornerWidth:I

.field private mDrawingRect:Landroid/graphics/Rect;

.field private mIsFirstSelection:Z

.field private mIsMoving:Z

.field private mListener:Lcom/android/systemui/screenshot/ScreenshotSelectorView$OnSelectionListener;

.field private mMovingOffsetX:I

.field private mMovingOffsetY:I

.field private final mPaintBackground:Landroid/graphics/Paint;

.field private final mPaintSelection:Landroid/graphics/Paint;

.field private final mPaintSelectionBorder:Landroid/graphics/Paint;

.field private final mPaintSelectionCorner:Landroid/graphics/Paint;

.field private mResizingHandle:Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;

.field private mResizingOffsetX:I

.field private mResizingOffsetY:I

.field private mSelectionRect:Landroid/graphics/Rect;

.field private final mTouchWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/screenshot/ScreenshotSelectorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 96
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    sget-object p2, Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;->INVALID:Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;

    iput-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mResizingHandle:Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$dimen;->global_screenshot_selector_border_width:I

    .line 99
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mBorderWidth:I

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$dimen;->global_screenshot_selector_corner_width:I

    .line 101
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mCornerWidth:I

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->global_screenshot_selector_touch_width:I

    .line 103
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mTouchWidth:I

    .line 105
    new-instance p1, Landroid/graphics/Paint;

    const/high16 p2, -0x1000000

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mPaintBackground:Landroid/graphics/Paint;

    .line 106
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mPaintBackground:Landroid/graphics/Paint;

    const/16 p2, 0xa0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 107
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mPaintSelection:Landroid/graphics/Paint;

    .line 108
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mPaintSelection:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 109
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mPaintSelectionBorder:Landroid/graphics/Paint;

    .line 110
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mPaintSelectionBorder:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 111
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mPaintSelectionBorder:Landroid/graphics/Paint;

    iget v0, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mBorderWidth:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 112
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mPaintSelectionBorder:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 113
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mPaintSelectionBorder:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 114
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mPaintSelectionCorner:Landroid/graphics/Paint;

    .line 115
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mPaintSelectionCorner:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 116
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mPaintSelectionCorner:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mCornerWidth:I

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 117
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mPaintSelectionCorner:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 118
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mPaintSelectionCorner:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 119
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mDrawingRect:Landroid/graphics/Rect;

    .line 121
    invoke-virtual {p0, p0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 122
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method private delegateSelection()V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mListener:Lcom/android/systemui/screenshot/ScreenshotSelectorView$OnSelectionListener;

    if-eqz v0, :cond_0

    .line 147
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mSelectionRect:Landroid/graphics/Rect;

    iget-boolean p0, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mIsFirstSelection:Z

    invoke-interface {v0, v1, p0}, Lcom/android/systemui/screenshot/ScreenshotSelectorView$OnSelectionListener;->onSelectionChanged(Landroid/graphics/Rect;Z)V

    :cond_0
    return-void
.end method

.method private getTouchedResizingHandle(II)Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;
    .locals 5

    .line 201
    invoke-static {}, Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;->values()[Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 202
    invoke-direct {p0, v3, p1, p2}, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->isTouching(Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;II)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 207
    :cond_1
    sget-object p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;->INVALID:Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;

    return-object p0
.end method

.method private isTouching(Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;II)Z
    .locals 7

    .line 174
    sget-object v0, Lcom/android/systemui/screenshot/ScreenshotSelectorView$1;->$SwitchMap$com$android$systemui$screenshot$ScreenshotSelectorView$ResizingHandle:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    .line 194
    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mSelectionRect:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->isTouchingCenteredSquare(IIII)Z

    move-result p0

    return p0

    .line 191
    :pswitch_1
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mSelectionRect:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    const/4 v6, 0x0

    move-object v0, p0

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->isTouchingBorder(IIIIIZ)Z

    move-result p0

    return p0

    .line 189
    :pswitch_2
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mSelectionRect:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->isTouchingCenteredSquare(IIII)Z

    move-result p0

    return p0

    .line 186
    :pswitch_3
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mSelectionRect:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    const/4 v6, 0x1

    move-object v0, p0

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->isTouchingBorder(IIIIIZ)Z

    move-result p0

    return p0

    .line 184
    :pswitch_4
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mSelectionRect:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->isTouchingCenteredSquare(IIII)Z

    move-result p0

    return p0

    .line 181
    :pswitch_5
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mSelectionRect:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    const/4 v6, 0x0

    move-object v0, p0

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->isTouchingBorder(IIIIIZ)Z

    move-result p0

    return p0

    .line 179
    :pswitch_6
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mSelectionRect:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->isTouchingCenteredSquare(IIII)Z

    move-result p0

    return p0

    .line 176
    :pswitch_7
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mSelectionRect:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    const/4 v6, 0x1

    move-object v0, p0

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->isTouchingBorder(IIIIIZ)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isTouchingBorder(IIIIIZ)Z
    .locals 1

    if-eqz p6, :cond_0

    goto :goto_0

    :cond_0
    move v0, p5

    move p5, p4

    move p4, v0

    .line 169
    :goto_0
    iget p0, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mTouchWidth:I

    sub-int p6, p3, p0

    if-lt p4, p6, :cond_1

    add-int/2addr p3, p0

    if-gt p4, p3, :cond_1

    if-lt p5, p1, :cond_1

    if-gt p5, p2, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private isTouchingCenteredSquare(IIII)Z
    .locals 1

    .line 156
    iget p0, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mTouchWidth:I

    sub-int v0, p1, p0

    if-lt p3, v0, :cond_0

    add-int/2addr p1, p0

    if-gt p3, p1, :cond_0

    sub-int p1, p2, p0

    if-lt p4, p1, :cond_0

    add-int/2addr p2, p0

    if-gt p4, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private moveSelection(II)V
    .locals 4

    .line 261
    iget v0, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mMovingOffsetX:I

    sub-int/2addr p1, v0

    .line 262
    iget v0, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mMovingOffsetY:I

    sub-int/2addr p2, v0

    .line 263
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mSelectionRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int/2addr v0, p1

    .line 264
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mSelectionRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v1, p2

    const/4 v2, 0x0

    if-gez p1, :cond_0

    neg-int p1, p1

    add-int/2addr v0, p1

    move p1, v2

    :cond_0
    if-gez p2, :cond_1

    neg-int p2, p2

    add-int/2addr v1, p2

    move p2, v2

    .line 276
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    sub-int v3, v0, v2

    if-lez v3, :cond_2

    sub-int/2addr p1, v3

    move v0, v2

    .line 283
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    sub-int v3, v1, v2

    if-lez v3, :cond_3

    sub-int/2addr p2, v3

    move v1, v2

    .line 290
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mSelectionRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, p2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 292
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private resizeSelection(II)V
    .locals 3

    .line 215
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mResizingHandle:Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;

    invoke-virtual {v0}, Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;->isLeft()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mSelectionRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mResizingOffsetX:I

    sub-int v2, p1, v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mResizingHandle:Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;

    invoke-virtual {v0}, Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;->isTop()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mSelectionRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mResizingOffsetY:I

    sub-int v2, p2, v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mResizingHandle:Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;

    invoke-virtual {v0}, Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;->isRight()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 224
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mSelectionRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mResizingOffsetX:I

    sub-int/2addr p1, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 227
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mResizingHandle:Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;

    invoke-virtual {p1}, Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;->isBottom()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 228
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mSelectionRect:Landroid/graphics/Rect;

    iget v0, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mResizingOffsetY:I

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 231
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private setMovingOffset(II)V
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mSelectionRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mMovingOffsetX:I

    .line 236
    iget p1, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mMovingOffsetY:I

    return-void
.end method

.method private setResizingOffset(II)V
    .locals 1

    const/4 v0, 0x0

    .line 240
    iput v0, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mResizingOffsetX:I

    .line 241
    iput v0, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mResizingOffsetY:I

    .line 243
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mResizingHandle:Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;

    invoke-virtual {v0}, Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;->isLeft()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mSelectionRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int v0, p1, v0

    iput v0, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mResizingOffsetX:I

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mResizingHandle:Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;

    invoke-virtual {v0}, Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;->isTop()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mSelectionRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int v0, p2, v0

    iput v0, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mResizingOffsetY:I

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mResizingHandle:Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;

    invoke-virtual {v0}, Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;->isRight()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 252
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mSelectionRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mResizingOffsetX:I

    .line 255
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mResizingHandle:Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;

    invoke-virtual {p1}, Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;->isBottom()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 256
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mSelectionRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mResizingOffsetY:I

    :cond_3
    return-void
.end method

.method private sortSelectionRect()V
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mSelectionRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->sort()V

    return-void
.end method

.method private startSelection(II)V
    .locals 1

    .line 126
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mSelectionRect:Landroid/graphics/Rect;

    .line 127
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method


# virtual methods
.method public getSelectionRect()Landroid/graphics/Rect;
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mSelectionRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public isInsideSelection(II)Z
    .locals 0

    .line 211
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mSelectionRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 297
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 299
    iget v0, p0, Landroid/widget/FrameLayout;->mLeft:I

    int-to-float v2, v0

    iget v0, p0, Landroid/widget/FrameLayout;->mTop:I

    int-to-float v3, v0

    iget v0, p0, Landroid/widget/FrameLayout;->mRight:I

    int-to-float v4, v0

    iget v0, p0, Landroid/widget/FrameLayout;->mBottom:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mPaintBackground:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 300
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mSelectionRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 305
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mDrawingRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 306
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mDrawingRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->sort()V

    .line 309
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mDrawingRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mPaintSelectionBorder:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 312
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mDrawingRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v2

    iget v2, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mTouchWidth:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 314
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v5, v0

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mDrawingRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mTouchWidth:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 315
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mPaintSelectionCorner:Landroid/graphics/Paint;

    move-object v2, p1

    .line 312
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 319
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mDrawingRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mTouchWidth:I

    sub-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v2, v0

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mDrawingRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v1

    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mTouchWidth:I

    add-int/2addr v1, v5

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 322
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mPaintSelectionCorner:Landroid/graphics/Paint;

    move-object v1, p1

    .line 319
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 326
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mDrawingRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mTouchWidth:I

    sub-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v2, v0

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mDrawingRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mTouchWidth:I

    sub-int/2addr v1, v3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 327
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v3, v0

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mDrawingRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mPaintSelectionCorner:Landroid/graphics/Paint;

    move-object v1, p1

    .line 326
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 333
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mDrawingRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v1

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mTouchWidth:I

    sub-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 334
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mDrawingRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mTouchWidth:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 335
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v5, v0

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mDrawingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mPaintSelectionCorner:Landroid/graphics/Paint;

    move-object v2, p1

    .line 333
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 341
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mDrawingRect:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mPaintSelection:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 347
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    .line 348
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 350
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_3

    if-eq p2, v1, :cond_2

    const/4 v2, 0x2

    if-eq p2, v2, :cond_0

    goto :goto_0

    .line 367
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mResizingHandle:Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;

    invoke-virtual {p2}, Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;->isValid()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 368
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->resizeSelection(II)V

    goto :goto_0

    .line 369
    :cond_1
    iget-boolean p2, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mIsMoving:Z

    if-eqz p2, :cond_6

    .line 370
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->moveSelection(II)V

    goto :goto_0

    .line 374
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->sortSelectionRect()V

    .line 375
    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->delegateSelection()V

    .line 376
    sget-object p1, Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;->INVALID:Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mResizingHandle:Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;

    const/4 p1, 0x0

    .line 377
    iput-boolean p1, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mIsFirstSelection:Z

    .line 378
    iput-boolean p1, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mIsMoving:Z

    goto :goto_0

    .line 352
    :cond_3
    iget-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mSelectionRect:Landroid/graphics/Rect;

    if-nez p2, :cond_4

    .line 353
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->startSelection(II)V

    .line 354
    iput-boolean v1, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mIsFirstSelection:Z

    .line 355
    sget-object p1, Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;->BOTTOM_RIGHT:Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mResizingHandle:Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;

    goto :goto_0

    .line 357
    :cond_4
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->getTouchedResizingHandle(II)Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mResizingHandle:Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;

    .line 358
    iget-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mResizingHandle:Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;

    invoke-virtual {p2}, Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;->isValid()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 359
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->setResizingOffset(II)V

    goto :goto_0

    .line 360
    :cond_5
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->isInsideSelection(II)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 361
    iput-boolean v1, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mIsMoving:Z

    .line 362
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->setMovingOffset(II)V

    :cond_6
    :goto_0
    return v1
.end method

.method public setSelectionListener(Lcom/android/systemui/screenshot/ScreenshotSelectorView$OnSelectionListener;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mListener:Lcom/android/systemui/screenshot/ScreenshotSelectorView$OnSelectionListener;

    return-void
.end method

.method public stopSelection()V
    .locals 1

    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mSelectionRect:Landroid/graphics/Rect;

    .line 142
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
