.class public Lcom/android/systemui/statusbar/VisualizerView;
.super Landroid/view/View;
.source "VisualizerView.java"

# interfaces
.implements Lcom/android/internal/graphics/palette/Palette$PaletteAsyncListener;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# static fields
.field private static final TAG:Ljava/lang/String; = "VisualizerView"


# instance fields
.field private final mAsyncUnlinkVisualizer:Ljava/lang/Runnable;

.field private mColor:I

.field private mCurrentBitmap:Landroid/graphics/Bitmap;

.field private mDisplaying:Z

.field private mDozing:Z

.field private mFFTPoints:[F

.field private final mLinkVisualizer:Ljava/lang/Runnable;

.field private mOccluded:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mPlaying:Z

.field private mStatusBarState:I

.field private final mUnlinkVisualizer:Ljava/lang/Runnable;

.field private mValueAnimators:[Landroid/animation/ValueAnimator;

.field private mVisible:Z

.field private mVisualizer:Landroid/media/audiofx/Visualizer;

.field private mVisualizerColorAnimator:Landroid/animation/ObjectAnimator;

.field private mVisualizerEnabled:Z

.field private mVisualizerListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 143
    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/VisualizerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 147
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/VisualizerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 151
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    new-instance p1, Lcom/android/systemui/statusbar/VisualizerView$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/VisualizerView$1;-><init>(Lcom/android/systemui/statusbar/VisualizerView;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/VisualizerView;->mVisualizerListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

    .line 92
    new-instance p1, Lcom/android/systemui/statusbar/VisualizerView$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/VisualizerView$2;-><init>(Lcom/android/systemui/statusbar/VisualizerView;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/VisualizerView;->mLinkVisualizer:Ljava/lang/Runnable;

    .line 118
    new-instance p1, Lcom/android/systemui/statusbar/VisualizerView$3;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/VisualizerView$3;-><init>(Lcom/android/systemui/statusbar/VisualizerView;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/VisualizerView;->mAsyncUnlinkVisualizer:Ljava/lang/Runnable;

    .line 125
    new-instance p1, Lcom/android/systemui/statusbar/VisualizerView$4;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/VisualizerView$4;-><init>(Lcom/android/systemui/statusbar/VisualizerView;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/VisualizerView;->mUnlinkVisualizer:Ljava/lang/Runnable;

    const/4 p1, 0x0

    .line 153
    iput p1, p0, Lcom/android/systemui/statusbar/VisualizerView;->mColor:I

    .line 155
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/VisualizerView;->mPaint:Landroid/graphics/Paint;

    .line 156
    iget-object p2, p0, Lcom/android/systemui/statusbar/VisualizerView;->mPaint:Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 157
    iget-object p2, p0, Lcom/android/systemui/statusbar/VisualizerView;->mPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/android/systemui/statusbar/VisualizerView;->mColor:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/16 p2, 0x80

    new-array p2, p2, [F

    .line 159
    iput-object p2, p0, Lcom/android/systemui/statusbar/VisualizerView;->mFFTPoints:[F

    const/16 p2, 0x20

    new-array v0, p2, [Landroid/animation/ValueAnimator;

    .line 160
    iput-object v0, p0, Lcom/android/systemui/statusbar/VisualizerView;->mValueAnimators:[Landroid/animation/ValueAnimator;

    :goto_0
    if-ge p1, p2, :cond_0

    mul-int/lit8 v0, p1, 0x4

    add-int/2addr v0, p3

    .line 163
    iget-object v1, p0, Lcom/android/systemui/statusbar/VisualizerView;->mValueAnimators:[Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/animation/ValueAnimator;

    invoke-direct {v2}, Landroid/animation/ValueAnimator;-><init>()V

    aput-object v2, v1, p1

    .line 164
    iget-object v1, p0, Lcom/android/systemui/statusbar/VisualizerView;->mValueAnimators:[Landroid/animation/ValueAnimator;

    aget-object v1, v1, p1

    const-wide/16 v2, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 165
    iget-object v1, p0, Lcom/android/systemui/statusbar/VisualizerView;->mValueAnimators:[Landroid/animation/ValueAnimator;

    aget-object v1, v1, p1

    new-instance v2, Lcom/android/systemui/statusbar/VisualizerView$5;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/VisualizerView$5;-><init>(Lcom/android/systemui/statusbar/VisualizerView;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/VisualizerView;)[Landroid/animation/ValueAnimator;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/systemui/statusbar/VisualizerView;->mValueAnimators:[Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/VisualizerView;)[F
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/systemui/statusbar/VisualizerView;->mFFTPoints:[F

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/VisualizerView;)Landroid/media/audiofx/Visualizer;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/systemui/statusbar/VisualizerView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/VisualizerView;Landroid/media/audiofx/Visualizer;)Landroid/media/audiofx/Visualizer;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/android/systemui/statusbar/VisualizerView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    return-object p1
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 39
    sget-object v0, Lcom/android/systemui/statusbar/VisualizerView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/VisualizerView;)Landroid/media/audiofx/Visualizer$OnDataCaptureListener;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/systemui/statusbar/VisualizerView;->mVisualizerListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/VisualizerView;)Ljava/lang/Runnable;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/systemui/statusbar/VisualizerView;->mUnlinkVisualizer:Ljava/lang/Runnable;

    return-object p0
.end method

.method private checkStateChanged()V
    .locals 3

    .line 338
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/VisualizerView;->mVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/VisualizerView;->mVisualizerEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/VisualizerView;->mPlaying:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/VisualizerView;->mDozing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/VisualizerView;->mOccluded:Z

    if-nez v0, :cond_0

    .line 340
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/VisualizerView;->mDisplaying:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 341
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/VisualizerView;->mDisplaying:Z

    .line 342
    iget-object v0, p0, Lcom/android/systemui/statusbar/VisualizerView;->mLinkVisualizer:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 343
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 344
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 v0, 0x0

    .line 345
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x320

    .line 346
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 349
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/VisualizerView;->mDisplaying:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 350
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/VisualizerView;->mDisplaying:Z

    .line 351
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 352
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/VisualizerView;->mAsyncUnlinkVisualizer:Ljava/lang/Runnable;

    .line 353
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 354
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/VisualizerView;->mVisible:Z

    if-eqz p0, :cond_1

    const-wide/16 v1, 0x258

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_2
    :goto_1
    return-void
.end method

.method private setColor(I)V
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, -0x1

    :cond_0
    const/16 v0, 0x8c

    .line 316
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static {v0, v1, v2, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    .line 318
    iget v0, p0, Lcom/android/systemui/statusbar/VisualizerView;->mColor:I

    if-eq v0, p1, :cond_3

    .line 319
    iput p1, p0, Lcom/android/systemui/statusbar/VisualizerView;->mColor:I

    .line 321
    iget-object p1, p0, Lcom/android/systemui/statusbar/VisualizerView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    if-eqz p1, :cond_2

    .line 322
    iget-object p1, p0, Lcom/android/systemui/statusbar/VisualizerView;->mVisualizerColorAnimator:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_1

    .line 323
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 326
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/VisualizerView;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 327
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/systemui/statusbar/VisualizerView;->mColor:I

    aput v2, v0, v1

    const-string v1, "color"

    .line 326
    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/VisualizerView;->mVisualizerColorAnimator:Landroid/animation/ObjectAnimator;

    .line 328
    iget-object p1, p0, Lcom/android/systemui/statusbar/VisualizerView;->mVisualizerColorAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x258

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 329
    iget-object p1, p0, Lcom/android/systemui/statusbar/VisualizerView;->mVisualizerColorAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x4b0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 330
    iget-object p0, p0, Lcom/android/systemui/statusbar/VisualizerView;->mVisualizerColorAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 332
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/VisualizerView;->mPaint:Landroid/graphics/Paint;

    iget p0, p0, Lcom/android/systemui/statusbar/VisualizerView;->mColor:I

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private updateViewVisibility()V
    .locals 2

    .line 176
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 177
    iget v1, p0, Lcom/android/systemui/statusbar/VisualizerView;->mStatusBarState:I

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/VisualizerView;->mVisualizerEnabled:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    if-eq v0, v1, :cond_1

    .line 180
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 181
    invoke-direct {p0}, Lcom/android/systemui/statusbar/VisualizerView;->checkStateChanged()V

    :cond_1
    return-void
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 187
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 188
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string v1, "lineagesecure:lockscreen_visualizer"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 193
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 194
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    const/4 v0, 0x0

    .line 195
    iput-object v0, p0, Lcom/android/systemui/statusbar/VisualizerView;->mCurrentBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 230
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 232
    iget-object v0, p0, Lcom/android/systemui/statusbar/VisualizerView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/systemui/statusbar/VisualizerView;->mFFTPoints:[F

    iget-object p0, p0, Lcom/android/systemui/statusbar/VisualizerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public onGenerated(Lcom/android/internal/graphics/palette/Palette;)V
    .locals 1

    const/4 v0, 0x0

    .line 241
    invoke-virtual {p1, v0}, Lcom/android/internal/graphics/palette/Palette;->getVibrantColor(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 243
    invoke-virtual {p1, v0}, Lcom/android/internal/graphics/palette/Palette;->getLightVibrantColor(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 245
    invoke-virtual {p1, v0}, Lcom/android/internal/graphics/palette/Palette;->getDarkVibrantColor(I)I

    move-result v0

    .line 249
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/VisualizerView;->setColor(I)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 5

    .line 209
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    int-to-float p1, p1

    const/high16 p3, 0x42000000    # 32.0f

    div-float/2addr p1, p3

    const/high16 p4, 0x41000000    # 8.0f

    mul-float/2addr p4, p1

    const/high16 v0, 0x41100000    # 9.0f

    div-float/2addr p4, v0

    sub-float/2addr p1, p4

    mul-float/2addr p1, p3

    const/high16 p3, 0x41f80000    # 31.0f

    div-float/2addr p1, p3

    add-float/2addr p1, p4

    .line 214
    iget-object p3, p0, Lcom/android/systemui/statusbar/VisualizerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 p3, 0x0

    :goto_0
    const/16 v0, 0x20

    if-ge p3, v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/systemui/statusbar/VisualizerView;->mFFTPoints:[F

    mul-int/lit8 v1, p3, 0x4

    add-int/lit8 v2, v1, 0x2

    int-to-float v3, p3

    mul-float/2addr v3, p1

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p4, v4

    add-float/2addr v3, v4

    aput v3, v0, v2

    aput v3, v0, v1

    add-int/lit8 v2, v1, 0x1

    int-to-float v3, p2

    .line 218
    aput v3, v0, v2

    add-int/lit8 v1, v1, 0x3

    .line 219
    aput v3, v0, v1

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "lineagesecure:lockscreen_visualizer"

    .line 200
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 201
    invoke-static {p2, p1}, Lcom/android/systemui/tuner/TunerService;->parseIntegerSwitch(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/VisualizerView;->mVisualizerEnabled:Z

    .line 202
    invoke-direct {p0}, Lcom/android/systemui/statusbar/VisualizerView;->checkStateChanged()V

    .line 203
    invoke-direct {p0}, Lcom/android/systemui/statusbar/VisualizerView;->updateViewVisibility()V

    :cond_0
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/android/systemui/statusbar/VisualizerView;->mCurrentBitmap:Landroid/graphics/Bitmap;

    if-ne v0, p1, :cond_0

    return-void

    .line 303
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/VisualizerView;->mCurrentBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    .line 305
    invoke-static {p1, p0}, Lcom/android/internal/graphics/palette/Palette;->generateAsync(Landroid/graphics/Bitmap;Lcom/android/internal/graphics/palette/Palette$PaletteAsyncListener;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 307
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/VisualizerView;->setColor(I)V

    :goto_0
    return-void
.end method

.method public setDozing(Z)V
    .locals 1

    .line 253
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/VisualizerView;->mDozing:Z

    if-eq v0, p1, :cond_0

    .line 257
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/VisualizerView;->mDozing:Z

    .line 258
    invoke-direct {p0}, Lcom/android/systemui/statusbar/VisualizerView;->checkStateChanged()V

    :cond_0
    return-void
.end method

.method public setOccluded(Z)V
    .locals 1

    .line 263
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/VisualizerView;->mOccluded:Z

    if-eq v0, p1, :cond_0

    .line 267
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/VisualizerView;->mOccluded:Z

    .line 268
    invoke-direct {p0}, Lcom/android/systemui/statusbar/VisualizerView;->checkStateChanged()V

    :cond_0
    return-void
.end method

.method public setPlaying(Z)V
    .locals 1

    .line 273
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/VisualizerView;->mPlaying:Z

    if-eq v0, p1, :cond_0

    .line 277
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/VisualizerView;->mPlaying:Z

    .line 278
    invoke-direct {p0}, Lcom/android/systemui/statusbar/VisualizerView;->checkStateChanged()V

    :cond_0
    return-void
.end method

.method public setStatusBarState(I)V
    .locals 1

    .line 293
    iget v0, p0, Lcom/android/systemui/statusbar/VisualizerView;->mStatusBarState:I

    if-eq v0, p1, :cond_0

    .line 294
    iput p1, p0, Lcom/android/systemui/statusbar/VisualizerView;->mStatusBarState:I

    .line 295
    invoke-direct {p0}, Lcom/android/systemui/statusbar/VisualizerView;->updateViewVisibility()V

    :cond_0
    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    .line 283
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/VisualizerView;->mVisible:Z

    if-eq v0, p1, :cond_0

    .line 287
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/VisualizerView;->mVisible:Z

    .line 288
    invoke-direct {p0}, Lcom/android/systemui/statusbar/VisualizerView;->checkStateChanged()V

    :cond_0
    return-void
.end method
