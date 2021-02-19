.class Lcom/android/systemui/glwallpaper/ImageRevealHelper;
.super Ljava/lang/Object;
.source "ImageRevealHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/glwallpaper/ImageRevealHelper$RevealStateListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageRevealHelper"


# instance fields
.field private final mAnimator:Landroid/animation/ValueAnimator;

.field private mAwake:Z

.field private mReveal:F

.field private final mRevealListener:Lcom/android/systemui/glwallpaper/ImageRevealHelper$RevealStateListener;


# direct methods
.method constructor <init>(Lcom/android/systemui/glwallpaper/ImageRevealHelper$RevealStateListener;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/android/systemui/glwallpaper/ImageRevealHelper;->mReveal:F

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/android/systemui/glwallpaper/ImageRevealHelper;->mAwake:Z

    .line 42
    iput-object p1, p0, Lcom/android/systemui/glwallpaper/ImageRevealHelper;->mRevealListener:Lcom/android/systemui/glwallpaper/ImageRevealHelper$RevealStateListener;

    new-array p1, v0, [F

    .line 43
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/glwallpaper/ImageRevealHelper;->mAnimator:Landroid/animation/ValueAnimator;

    .line 44
    iget-object p1, p0, Lcom/android/systemui/glwallpaper/ImageRevealHelper;->mAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 45
    iget-object p1, p0, Lcom/android/systemui/glwallpaper/ImageRevealHelper;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/systemui/glwallpaper/-$$Lambda$ImageRevealHelper$F24215Snv58_ZInLQsaNs5JLH9M;

    invoke-direct {v0, p0}, Lcom/android/systemui/glwallpaper/-$$Lambda$ImageRevealHelper$F24215Snv58_ZInLQsaNs5JLH9M;-><init>(Lcom/android/systemui/glwallpaper/ImageRevealHelper;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 51
    iget-object p1, p0, Lcom/android/systemui/glwallpaper/ImageRevealHelper;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/systemui/glwallpaper/ImageRevealHelper$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/glwallpaper/ImageRevealHelper$1;-><init>(Lcom/android/systemui/glwallpaper/ImageRevealHelper;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/glwallpaper/ImageRevealHelper;)Lcom/android/systemui/glwallpaper/ImageRevealHelper$RevealStateListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageRevealHelper;->mRevealListener:Lcom/android/systemui/glwallpaper/ImageRevealHelper$RevealStateListener;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lcom/android/systemui/glwallpaper/ImageRevealHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/glwallpaper/ImageRevealHelper;)F
    .locals 0

    .line 30
    iget p0, p0, Lcom/android/systemui/glwallpaper/ImageRevealHelper;->mReveal:F

    return p0
.end method


# virtual methods
.method public getReveal()F
    .locals 0

    .line 85
    iget p0, p0, Lcom/android/systemui/glwallpaper/ImageRevealHelper;->mReveal:F

    return p0
.end method

.method public synthetic lambda$new$0$ImageRevealHelper(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 46
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/glwallpaper/ImageRevealHelper;->mReveal:F

    .line 47
    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageRevealHelper;->mRevealListener:Lcom/android/systemui/glwallpaper/ImageRevealHelper$RevealStateListener;

    if-eqz p0, :cond_0

    .line 48
    invoke-interface {p0}, Lcom/android/systemui/glwallpaper/ImageRevealHelper$RevealStateListener;->onRevealStateChanged()V

    :cond_0
    return-void
.end method

.method updateAwake(ZJ)V
    .locals 3

    .line 90
    sget-object v0, Lcom/android/systemui/glwallpaper/ImageRevealHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAwake: awake="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", duration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageRevealHelper;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 93
    iput-boolean p1, p0, Lcom/android/systemui/glwallpaper/ImageRevealHelper;->mAwake:Z

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-nez p1, :cond_1

    .line 97
    iget-boolean p1, p0, Lcom/android/systemui/glwallpaper/ImageRevealHelper;->mAwake:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p0, Lcom/android/systemui/glwallpaper/ImageRevealHelper;->mReveal:F

    .line 98
    iget-object p1, p0, Lcom/android/systemui/glwallpaper/ImageRevealHelper;->mRevealListener:Lcom/android/systemui/glwallpaper/ImageRevealHelper$RevealStateListener;

    invoke-interface {p1, v2}, Lcom/android/systemui/glwallpaper/ImageRevealHelper$RevealStateListener;->onRevealStart(Z)V

    .line 99
    iget-object p1, p0, Lcom/android/systemui/glwallpaper/ImageRevealHelper;->mRevealListener:Lcom/android/systemui/glwallpaper/ImageRevealHelper$RevealStateListener;

    invoke-interface {p1}, Lcom/android/systemui/glwallpaper/ImageRevealHelper$RevealStateListener;->onRevealStateChanged()V

    .line 100
    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageRevealHelper;->mRevealListener:Lcom/android/systemui/glwallpaper/ImageRevealHelper$RevealStateListener;

    invoke-interface {p0}, Lcom/android/systemui/glwallpaper/ImageRevealHelper$RevealStateListener;->onRevealEnd()V

    goto :goto_2

    .line 102
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/glwallpaper/ImageRevealHelper;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 103
    iget-object p1, p0, Lcom/android/systemui/glwallpaper/ImageRevealHelper;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 p2, 0x2

    new-array p2, p2, [F

    iget p3, p0, Lcom/android/systemui/glwallpaper/ImageRevealHelper;->mReveal:F

    aput p3, p2, v2

    const/4 p3, 0x1

    iget-boolean v2, p0, Lcom/android/systemui/glwallpaper/ImageRevealHelper;->mAwake:Z

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    aput v0, p2, p3

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 104
    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageRevealHelper;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :goto_2
    return-void
.end method
