.class public abstract Lcom/android/systemui/statusbar/notification/row/ExpandableView;
.super Landroid/widget/FrameLayout;
.source "ExpandableView.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;
    }
.end annotation


# static fields
.field private static mClipRect:Landroid/graphics/Rect;


# instance fields
.field private mActualHeight:I

.field private mChangingPosition:Z

.field protected mClipBottomAmount:I

.field private mClipToActualHeight:Z

.field protected mClipTopAmount:I

.field protected mExtraWidthForClipping:F

.field private mInShelf:Z

.field private mMatchParentViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMinClipTopAmount:I

.field protected mMinimumHeightForClipping:I

.field protected mOnHeightChangedListener:Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;

.field private mTransformingInShelf:Z

.field private mTransientContainer:Landroid/view/ViewGroup;

.field private final mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

.field private mWillBeGone:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 50
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mMinimumHeightForClipping:I

    const/4 p2, 0x0

    .line 51
    iput p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mExtraWidthForClipping:F

    .line 52
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mMatchParentViews:Ljava/util/ArrayList;

    .line 55
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mMinClipTopAmount:I

    const/4 p2, 0x1

    .line 56
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipToActualHeight:Z

    .line 57
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mChangingPosition:Z

    .line 65
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->createExpandableViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    return-void
.end method


# virtual methods
.method public applyViewState()V
    .locals 2

    .line 562
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->gone:Z

    if-nez v1, :cond_0

    .line 563
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->applyToView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public areChildrenExpanded()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected createExpandableViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;
    .locals 0

    .line 525
    new-instance p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;-><init>()V

    return-object p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getActualHeight()I
    .locals 0

    .line 163
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mActualHeight:I

    return p0
.end method

.method public getBoundsOnScreen(Landroid/graphics/Rect;Z)V
    .locals 2

    .line 370
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->getBoundsOnScreen(Landroid/graphics/Rect;Z)V

    .line 371
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    add-float/2addr p2, v0

    const/4 v0, 0x0

    cmpg-float p2, p2, v0

    if-gez p2, :cond_0

    .line 373
    iget p2, p1, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v1

    add-float/2addr v0, v1

    add-float/2addr p2, v0

    float-to-int p2, p2

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 375
    :cond_0
    iget p2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 376
    iget p2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipTopAmount()I

    move-result p0

    add-int/2addr p2, p0

    iput p2, p1, Landroid/graphics/Rect;->top:I

    return-void
.end method

.method public getClipBottomAmount()I
    .locals 0

    .line 270
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipBottomAmount:I

    return p0
.end method

.method public getClipTopAmount()I
    .locals 0

    .line 266
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipTopAmount:I

    return p0
.end method

.method public getCollapsedHeight()I
    .locals 0

    .line 202
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    return p0
.end method

.method public getDrawingRect(Landroid/graphics/Rect;)V
    .locals 2

    .line 361
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 362
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 363
    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 364
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 365
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipTopAmount()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr v1, p0

    add-float/2addr v0, v1

    float-to-int p0, v0

    iput p0, p1, Landroid/graphics/Rect;->top:I

    return-void
.end method

.method public getExtraBottomPadding()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getHeaderVisibleAmount()F
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public getIncreasedPaddingAmount()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getIntrinsicHeight()I
    .locals 0

    .line 239
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    return p0
.end method

.method public getMaxContentHeight()I
    .locals 0

    .line 174
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    return p0
.end method

.method public getMinHeight()I
    .locals 1

    const/4 v0, 0x0

    .line 182
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getMinHeight(Z)I

    move-result p0

    return p0
.end method

.method public getMinHeight(Z)I
    .locals 0

    .line 193
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    return p0
.end method

.method public getOutlineAlpha()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getOutlineTranslation()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getPinnedHeadsUpHeight()I
    .locals 0

    .line 326
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result p0

    return p0
.end method

.method public getTransientContainer()Landroid/view/ViewGroup;
    .locals 0

    .line 490
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mTransientContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getTranslation()F
    .locals 0

    .line 341
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result p0

    return p0
.end method

.method public getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;
    .locals 0

    .line 557
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    return-object p0
.end method

.method public hasExpandingChild()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public hasNoContentHeight()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 449
    invoke-super {p0}, Landroid/widget/FrameLayout;->hasOverlappingRendering()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    if-gt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAboveShelf()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isChangingPosition()Z
    .locals 0

    .line 482
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mChangingPosition:Z

    return p0
.end method

.method public isChildInGroup()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isContentExpandable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isExpandAnimationRunning()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isGroupExpanded()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isGroupExpansionChanging()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isInShelf()Z
    .locals 0

    .line 584
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mInShelf:Z

    return p0
.end method

.method public isRemoved()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSummaryWithChildren()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isTransformingIntoShelf()Z
    .locals 0

    .line 596
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mTransformingInShelf:Z

    return p0
.end method

.method public isTransparent()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public mustStayOnScreen()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public notifyHeightChanged(Z)V
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;

    if-eqz v0, :cond_0

    .line 286
    invoke-interface {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;->onHeightChanged(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V

    :cond_0
    return-void
.end method

.method public onHeightReset()V
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;

    if-eqz v0, :cond_0

    .line 346
    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;->onReset(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 118
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 119
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->updateClipping()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 12

    .line 70
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 71
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingEnd()I

    move-result v2

    add-int/2addr v1, v2

    .line 73
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    const v2, 0x7fffffff

    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    .line 75
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_0
    const/high16 v3, -0x80000000

    .line 77
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 79
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    const/high16 v7, 0x40000000    # 2.0f

    if-ge v5, v4, :cond_5

    .line 81
    invoke-virtual {p0, v5}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 82
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_1

    goto :goto_2

    .line 86
    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 87
    iget v10, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_4

    if-ltz v10, :cond_3

    if-le v10, v2, :cond_2

    .line 91
    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    goto :goto_1

    .line 92
    :cond_2
    invoke-static {v10, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    goto :goto_1

    :cond_3
    move v7, v3

    .line 94
    :goto_1
    iget v9, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p1, v1, v9}, Landroid/widget/FrameLayout;->getChildMeasureSpec(III)I

    move-result v9

    invoke-virtual {v8, v9, v7}, Landroid/view/View;->measure(II)V

    .line 97
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 98
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_2

    .line 100
    :cond_4
    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mMatchParentViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    if-ne p2, v7, :cond_6

    goto :goto_3

    .line 104
    :cond_6
    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 105
    :goto_3
    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 106
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mMatchParentViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 108
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 107
    invoke-static {p1, v1, v4}, Landroid/widget/FrameLayout;->getChildMeasureSpec(III)I

    move-result v4

    invoke-virtual {v3, v4, p2}, Landroid/view/View;->measure(II)V

    goto :goto_4

    .line 111
    :cond_7
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mMatchParentViews:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 112
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 113
    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public abstract performAddAnimation(JJZ)V
.end method

.method public abstract performRemoveAnimation(JJFZFLjava/lang/Runnable;Landroid/animation/AnimatorListenerAdapter;)J
.end method

.method public pointInView(FFF)Z
    .locals 3

    .line 124
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipTopAmount:I

    int-to-float v0, v0

    .line 125
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mActualHeight:I

    int-to-float v1, v1

    neg-float v2, p3

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_0

    sub-float/2addr v0, p3

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    .line 126
    iget v0, p0, Landroid/widget/FrameLayout;->mRight:I

    iget p0, p0, Landroid/widget/FrameLayout;->mLeft:I

    sub-int/2addr v0, p0

    int-to-float p0, v0

    add-float/2addr p0, p3

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    add-float/2addr v1, p3

    cmpg-float p0, p2, v1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public resetViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;
    .locals 4

    .line 531
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 532
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->gone:Z

    .line 533
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    const/4 v1, -0x1

    .line 534
    iput v1, v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->notGoneIndex:I

    .line 535
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->xTranslation:F

    .line 536
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 537
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->scaleX:F

    .line 538
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScaleY()F

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->scaleY:F

    .line 539
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->inShelf:Z

    .line 540
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->headsUpIsVisible:Z

    .line 543
    instance-of v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_1

    .line 544
    move-object v0, p0

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 545
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v1

    .line 546
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 547
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 548
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->resetViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    goto :goto_1

    .line 553
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    return-object p0
.end method

.method public setActualHeight(I)V
    .locals 1

    const/4 v0, 0x1

    .line 154
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setActualHeight(IZ)V

    return-void
.end method

.method public setActualHeight(IZ)V
    .locals 0

    .line 138
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mActualHeight:I

    .line 139
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->updateClipping()V

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 141
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->notifyHeightChanged(Z)V

    :cond_0
    return-void
.end method

.method public setActualHeightAnimating(Z)V
    .locals 0

    return-void
.end method

.method public setBelowSpeedBump(Z)V
    .locals 0

    return-void
.end method

.method public setChangingPosition(Z)V
    .locals 0

    .line 478
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mChangingPosition:Z

    return-void
.end method

.method public setClipBottomAmount(I)V
    .locals 0

    .line 261
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipBottomAmount:I

    .line 262
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->updateClipping()V

    return-void
.end method

.method public setClipToActualHeight(Z)V
    .locals 0

    .line 419
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipToActualHeight:Z

    .line 420
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->updateClipping()V

    return-void
.end method

.method public setClipTopAmount(I)V
    .locals 0

    .line 249
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipTopAmount:I

    .line 250
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->updateClipping()V

    return-void
.end method

.method public setDimmed(ZZ)V
    .locals 0

    return-void
.end method

.method public setDistanceToTopRoundness(F)V
    .locals 0

    return-void
.end method

.method public setExtraWidthForClipping(F)V
    .locals 0

    .line 406
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mExtraWidthForClipping:F

    .line 407
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->updateClipping()V

    return-void
.end method

.method public setFakeShadowIntensity(FFII)V
    .locals 0

    return-void
.end method

.method public setHeadsUpIsVisible()V
    .locals 0

    return-void
.end method

.method public setHideSensitive(ZZJJ)V
    .locals 0

    return-void
.end method

.method public setHideSensitiveForIntrinsicHeight(Z)V
    .locals 0

    return-void
.end method

.method public setInShelf(Z)V
    .locals 0

    .line 580
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mInShelf:Z

    return-void
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .locals 1

    .line 441
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->hasOverlappingRendering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public setMinClipTopAmount(I)V
    .locals 0

    .line 436
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mMinClipTopAmount:I

    return-void
.end method

.method public setMinimumHeightForClipping(I)V
    .locals 0

    .line 401
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mMinimumHeightForClipping:I

    .line 402
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->updateClipping()V

    return-void
.end method

.method public setOnHeightChangedListener(Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;

    return-void
.end method

.method public setTransformingInShelf(Z)V
    .locals 0

    .line 592
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mTransformingInShelf:Z

    return-void
.end method

.method public setTransientContainer(Landroid/view/ViewGroup;)V
    .locals 0

    .line 486
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mTransientContainer:Landroid/view/ViewGroup;

    return-void
.end method

.method public setWillBeGone(Z)V
    .locals 0

    .line 428
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mWillBeGone:Z

    return-void
.end method

.method protected shouldClipToActualHeight()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public showingPulsing()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected updateClipping()V
    .locals 6

    .line 388
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipToActualHeight:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->shouldClipToActualHeight()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipTopAmount()I

    move-result v0

    .line 390
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getExtraBottomPadding()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipBottomAmount:I

    sub-int/2addr v1, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mMinimumHeightForClipping:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 392
    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mExtraWidthForClipping:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 393
    sget-object v3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipRect:Landroid/graphics/Rect;

    neg-int v4, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v3, v4, v0, v5, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 394
    sget-object v0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipBounds(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 396
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipBounds(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method public willBeGone()Z
    .locals 0

    .line 424
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mWillBeGone:Z

    return p0
.end method
