.class public abstract Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;
.super Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;
.source "ActivatableNotificationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$OnActivatedListener;
    }
.end annotation


# static fields
.field private static final ACTIVATE_INVERSE_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final ACTIVATE_INVERSE_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActivated:Z

.field private mAnimationTranslationY:F

.field private mAppearAnimationFraction:F

.field private mAppearAnimationRect:Landroid/graphics/RectF;

.field private mAppearAnimationTranslation:F

.field private mAppearAnimator:Landroid/animation/ValueAnimator;

.field private mBackgroundAnimator:Landroid/animation/ObjectAnimator;

.field private mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

.field private mBackgroundDimmed:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

.field protected mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

.field private mBackgroundVisibilityUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mBgAlpha:F

.field protected mBgTint:I

.field private mBlockNextTouch:Z

.field private mCurrentAlphaInterpolator:Landroid/view/animation/Interpolator;

.field private mCurrentAppearInterpolator:Landroid/view/animation/Interpolator;

.field private mCurrentBackgroundTint:I

.field private mDimmed:Z

.field private mDimmedAlpha:I

.field private mDimmedBackgroundFadeInAmount:F

.field private final mDoubleTapHelper:Lcom/android/systemui/statusbar/phone/DoubleTapHelper;

.field private mDrawingAppearAnimation:Z

.field private mFakeShadow:Lcom/android/systemui/statusbar/notification/FakeShadowView;

.field private final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field private mFirstInSection:Z

.field private mHeadsUpAddStartLocation:I

.field private mHeadsUpLocation:F

.field private mIsAppearing:Z

.field private mIsBelowSpeedBump:Z

.field private mIsHeadsUpAnimation:Z

.field private mLastInSection:Z

.field private mNeedsDimming:Z

.field private mNormalBackgroundVisibilityAmount:F

.field private mNormalColor:I

.field protected mNormalRippleColor:I

.field private mOnActivatedListener:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$OnActivatedListener;

.field private mOverrideAmount:F

.field private mOverrideTint:I

.field private mShadowHidden:Z

.field private final mSlowOutFastInInterpolator:Landroid/view/animation/Interpolator;

.field private final mSlowOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field private mStartTint:I

.field private final mTapTimeoutRunnable:Ljava/lang/Runnable;

.field private mTargetTint:I

.field private mTintedRippleColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 92
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    const v4, 0x3f19999a    # 0.6f

    invoke-direct {v0, v4, v3, v2, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->ACTIVATE_INVERSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 94
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v3, v3, v2, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->ACTIVATE_INVERSE_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 164
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 103
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBgTint:I

    const/high16 p2, 0x3f800000    # 1.0f

    .line 104
    iput p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBgAlpha:F

    .line 122
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimationRect:Landroid/graphics/RectF;

    const/high16 v0, -0x40800000    # -1.0f

    .line 127
    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimationFraction:F

    .line 136
    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDimmedBackgroundFadeInAmount:F

    .line 137
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$1;-><init>(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundVisibilityUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 233
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$2;-><init>(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 165
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const v2, 0x3f4ccccd    # 0.8f

    const v3, 0x3f19999a    # 0.6f

    invoke-direct {v0, v2, v1, v3, p2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mSlowOutFastInInterpolator:Landroid/view/animation/Interpolator;

    .line 166
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v1, p2, p2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mSlowOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 167
    const-class p2, Lcom/android/systemui/plugins/FalsingManager;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/plugins/FalsingManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 168
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 169
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 170
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateColors()V

    .line 171
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 173
    new-instance p1, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;

    new-instance v2, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$ActivatableNotificationView$raBogtwUDgGzree3QaRWS5kgw_g;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$ActivatableNotificationView$raBogtwUDgGzree3QaRWS5kgw_g;-><init>(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    new-instance v3, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$ActivatableNotificationView$fZ3qu4yQQcyUWjUQZMAyhFN3cZI;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$ActivatableNotificationView$fZ3qu4yQQcyUWjUQZMAyhFN3cZI;-><init>(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    new-instance v4, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$ELE-e-9GisA3PeCbD7mpobFwmaM;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$ELE-e-9GisA3PeCbD7mpobFwmaM;-><init>(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$PkPBcaaRR8KHImTlnKW995Xmvx8;

    invoke-direct {v5, p2}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$PkPBcaaRR8KHImTlnKW995Xmvx8;-><init>(Lcom/android/systemui/plugins/FalsingManager;)V

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;-><init>(Landroid/view/View;Lcom/android/systemui/statusbar/phone/DoubleTapHelper$ActivationListener;Lcom/android/systemui/statusbar/phone/DoubleTapHelper$DoubleTapListener;Lcom/android/systemui/statusbar/phone/DoubleTapHelper$SlideBackListener;Lcom/android/systemui/statusbar/phone/DoubleTapHelper$DoubleTapLogListener;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDoubleTapHelper:Lcom/android/systemui/statusbar/phone/DoubleTapHelper;

    .line 180
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->initDimens()V

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;F)F
    .locals 0

    .line 51
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDimmedBackgroundFadeInAmount:F

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)I
    .locals 0

    .line 51
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mStartTint:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)I
    .locals 0

    .line 51
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mTargetTint:I

    return p0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;F)F
    .locals 0

    .line 51
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimationFraction:F

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateAppearAnimationAlpha()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateAppearRect()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Z)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->enableAppearDrawing(Z)V

    return-void
.end method

.method private calculateBgColor(ZZ)I
    .locals 0

    if-eqz p2, :cond_0

    .line 949
    iget p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mOverrideTint:I

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 950
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->calculateBgColor(ZZ)I

    move-result p1

    .line 951
    iget p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mOverrideTint:I

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mOverrideAmount:F

    invoke-static {p1, p2, p0}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolateColors(IIF)I

    move-result p0

    return p0

    :cond_0
    if-eqz p1, :cond_1

    .line 953
    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBgTint:I

    if-eqz p1, :cond_1

    return p1

    .line 956
    :cond_1
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mNormalColor:I

    return p0
.end method

.method private cancelAppearAnimation()V
    .locals 1

    .line 829
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 830
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 831
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method private cancelFadeAnimations()V
    .locals 1

    .line 686
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 687
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 689
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 690
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    return-void
.end method

.method private enableAppearDrawing(Z)V
    .locals 1

    .line 976
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    if-eq p1, v0, :cond_1

    .line 977
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    if-nez p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 979
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setContentAlpha(F)V

    const/high16 p1, -0x40800000    # -1.0f

    .line 980
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimationFraction:F

    const/4 p1, 0x0

    .line 981
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setOutlineRect(Landroid/graphics/RectF;)V

    .line 983
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_1
    return-void
.end method

.method private fadeDimmedBackground()V
    .locals 7

    .line 595
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 596
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 597
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mActivated:Z

    if-eqz v0, :cond_0

    .line 598
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateBackground()V

    return-void

    .line 601
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->shouldHideBackground()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 602
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDimmed:Z

    if-eqz v0, :cond_1

    .line 603
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 605
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 608
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDimmed:Z

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v3

    .line 609
    :goto_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDimmed:Z

    if-eqz v4, :cond_4

    move v2, v3

    :cond_4
    const/16 v3, 0xdc

    .line 612
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v4, :cond_5

    .line 613
    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 614
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v3

    long-to-int v3, v3

    .line 615
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 616
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->cancel()V

    if-gtz v3, :cond_5

    .line 618
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateBackground()V

    return-void

    .line 622
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v4, v0}, Landroid/view/View;->setAlpha(F)V

    .line 623
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v6, 0x2

    new-array v6, v6, [F

    aput v0, v6, v1

    const/4 v0, 0x1

    aput v2, v6, v0

    .line 624
    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    .line 625
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 626
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    int-to-long v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 627
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$7;-><init>(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 635
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundVisibilityUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 636
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private handleTouchEventDimmed(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 315
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mNeedsDimming:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDimmed:Z

    if-nez v0, :cond_0

    .line 317
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDoubleTapHelper:Lcom/android/systemui/statusbar/phone/DoubleTapHelper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result p0

    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->onTouchEvent(Landroid/view/MotionEvent;I)Z

    move-result p0

    return p0
.end method

.method private initDimens()V
    .locals 2

    .line 194
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mHeadsUpAddStartLocation:I

    return-void
.end method

.method private isTouchExplorationEnabled()Z
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p0

    return p0
.end method

.method private makeActive()V
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/FalsingManager;->onNotificationActive()V

    const/4 v0, 0x0

    .line 332
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->startActivateAnimation(Z)V

    const/4 v0, 0x1

    .line 333
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mActivated:Z

    .line 334
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mOnActivatedListener:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$OnActivatedListener;

    if-eqz v0, :cond_0

    .line 335
    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$OnActivatedListener;->onActivated(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    :cond_0
    return-void
.end method

.method private setContentAlpha(F)V
    .locals 2

    .line 899
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getContentView()Landroid/view/View;

    move-result-object p0

    .line 900
    invoke-virtual {p0}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 903
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v1

    if-eq v1, v0, :cond_2

    const/4 v1, 0x0

    .line 905
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 908
    :cond_2
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private startActivateAnimation(Z)V
    .locals 8

    .line 340
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 343
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isDimmable()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 347
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->getActualHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    int-to-double v2, v2

    .line 348
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    .line 351
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-static {v4, v0, v1, v2, v3}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    goto :goto_0

    .line 354
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-static {v4, v0, v1, v3, v2}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    .line 357
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_3

    .line 361
    sget-object v1, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    move-object v2, v1

    goto :goto_1

    .line 364
    :cond_3
    sget-object v1, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->ACTIVATE_INVERSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 365
    sget-object v2, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->ACTIVATE_INVERSE_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 367
    :goto_1
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0xdc

    .line 368
    invoke-virtual {v0, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_4

    .line 370
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v6, v1}, Landroid/view/View;->setAlpha(F)V

    .line 371
    new-instance v6, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$3;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$3;-><init>(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    invoke-virtual {v0, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 377
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_2

    .line 379
    :cond_4
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    const v7, 0x3ecccccd    # 0.4f

    invoke-virtual {v6, v7}, Landroid/view/View;->setAlpha(F)V

    .line 380
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 382
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_5

    move v1, v3

    .line 383
    :cond_5
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 384
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$4;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$4;-><init>(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Z)V

    .line 385
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 395
    invoke-virtual {p0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private startAppearAnimation(ZFJJLjava/lang/Runnable;Landroid/animation/AnimatorListenerAdapter;)V
    .locals 3

    .line 751
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->cancelAppearAnimation()V

    .line 752
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p2, v0

    iput p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAnimationTranslationY:F

    .line 753
    iget p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimationFraction:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float p2, p2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    .line 756
    iput v1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimationFraction:F

    .line 757
    iget p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAnimationTranslationY:F

    iput p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimationTranslation:F

    goto :goto_0

    .line 759
    :cond_0
    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimationFraction:F

    .line 760
    iput v1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimationTranslation:F

    .line 763
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mIsAppearing:Z

    if-eqz p1, :cond_2

    .line 767
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mSlowOutFastInInterpolator:Landroid/view/animation/Interpolator;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mCurrentAppearInterpolator:Landroid/view/animation/Interpolator;

    .line 768
    sget-object p2, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mCurrentAlphaInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_1

    .line 771
    :cond_2
    sget-object p2, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mCurrentAppearInterpolator:Landroid/view/animation/Interpolator;

    .line 772
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mSlowOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mCurrentAlphaInterpolator:Landroid/view/animation/Interpolator;

    move v0, v1

    :goto_1
    const/4 p2, 0x2

    new-array p2, p2, [F

    const/4 v1, 0x0

    .line 775
    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimationFraction:F

    aput v2, p2, v1

    const/4 v1, 0x1

    aput v0, p2, v1

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    .line 777
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 778
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    long-to-float p5, p5

    iget p6, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimationFraction:F

    sub-float/2addr p6, v0

    .line 779
    invoke-static {p6}, Ljava/lang/Math;->abs(F)F

    move-result p6

    mul-float/2addr p5, p6

    float-to-long p5, p5

    .line 778
    invoke-virtual {p2, p5, p6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 780
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    new-instance p5, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$8;

    invoke-direct {p5, p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$8;-><init>(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    invoke-virtual {p2, p5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-eqz p8, :cond_3

    .line 790
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2, p8}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_3
    const-wide/16 p5, 0x0

    cmp-long p2, p3, p5

    if-lez p2, :cond_4

    .line 794
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateAppearAnimationAlpha()V

    .line 795
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateAppearRect()V

    .line 796
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2, p3, p4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 798
    :cond_4
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$9;

    invoke-direct {p3, p0, p7, p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$9;-><init>(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Ljava/lang/Runnable;Z)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 822
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private updateAppearAnimationAlpha()V
    .locals 2

    .line 891
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimationFraction:F

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v0, v1

    .line 893
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 894
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mCurrentAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 895
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setContentAlpha(F)V

    return-void
.end method

.method private updateAppearRect()V
    .locals 9

    .line 841
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimationFraction:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    .line 842
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mCurrentAppearInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 843
    iget v3, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAnimationTranslationY:F

    mul-float/2addr v2, v3

    .line 844
    iput v2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimationTranslation:F

    const/4 v3, 0x0

    sub-float/2addr v0, v3

    const v4, 0x3f4ccccd    # 0.8f

    div-float v4, v0, v4

    .line 849
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 850
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mCurrentAppearInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v5, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    .line 852
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mIsHeadsUpAnimation:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mIsAppearing:Z

    if-nez v5, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    const v5, 0x3d4ccccd    # 0.05f

    :goto_0
    sub-float v4, v1, v4

    .line 855
    invoke-static {v5, v1, v4}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v5

    .line 856
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    .line 859
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mIsHeadsUpAnimation:Z

    if-eqz v6, :cond_1

    .line 860
    iget v6, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mHeadsUpLocation:F

    invoke-static {v6, v3, v4}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v4

    add-float/2addr v5, v4

    goto :goto_1

    .line 863
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v4, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    .line 864
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v4

    :goto_1
    div-float/2addr v0, v1

    .line 870
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 871
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mCurrentAppearInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v6, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 875
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v6

    .line 876
    iget v7, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAnimationTranslationY:F

    cmpl-float v3, v7, v3

    const v8, 0x3dcccccd    # 0.1f

    if-lez v3, :cond_2

    int-to-float v1, v6

    mul-float/2addr v7, v0

    mul-float/2addr v7, v8

    sub-float/2addr v1, v7

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    goto :goto_2

    :cond_2
    int-to-float v3, v6

    add-float/2addr v7, v3

    mul-float/2addr v7, v0

    mul-float/2addr v7, v8

    sub-float v2, v7, v2

    sub-float/2addr v1, v0

    mul-float/2addr v3, v1

    mul-float/2addr v0, v2

    add-float v1, v3, v0

    move v0, v2

    .line 885
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimationRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v4, v0, v5, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 886
    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimationTranslation:F

    add-float/2addr v0, v2

    add-float/2addr v1, v2

    invoke-virtual {p0, v4, v0, v5, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setOutlineRect(FFFF)V

    return-void
.end method

.method private updateBackgroundTint(Z)V
    .locals 2

    .line 546
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 547
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 549
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getRippleColor()I

    move-result v0

    .line 550
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setRippleColor(I)V

    .line 551
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setRippleColor(I)V

    .line 552
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->calculateBgColor()I

    move-result v0

    if-nez p1, :cond_1

    .line 554
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setBackgroundTintColor(I)V

    goto :goto_0

    .line 555
    :cond_1
    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mCurrentBackgroundTint:I

    if-eq v0, p1, :cond_2

    .line 556
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mStartTint:I

    .line 557
    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mTargetTint:I

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 558
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    .line 559
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$5;-><init>(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 567
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x168

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 568
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 569
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$6;-><init>(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 575
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateColors()V
    .locals 2

    .line 184
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$color;->notification_material_background_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mNormalColor:I

    .line 185
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$color;->notification_ripple_tinted_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mTintedRippleColor:I

    .line 187
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$color;->notification_ripple_untinted_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mNormalRippleColor:I

    .line 189
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$color;->notification_material_background_dimmed_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDimmedAlpha:I

    return-void
.end method

.method private updateOutlineAlpha()V
    .locals 2

    .line 438
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mNormalBackgroundVisibilityAmount:F

    const v1, 0x3e99999a    # 0.3f

    mul-float/2addr v1, v0

    const v0, 0x3f333333    # 0.7f

    add-float/2addr v1, v0

    .line 439
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setOutlineAlpha(F)V

    return-void
.end method


# virtual methods
.method protected applyBackgroundRoundness(FF)V
    .locals 1

    .line 919
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setRoundness(FF)V

    .line 920
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setRoundness(FF)V

    return-void
.end method

.method protected applyRoundness()V
    .locals 2

    .line 913
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->applyRoundness()V

    .line 914
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getCurrentBackgroundRadiusTop()F

    move-result v0

    .line 915
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getCurrentBackgroundRadiusBottom()F

    move-result v1

    .line 914
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->applyBackgroundRoundness(FF)V

    return-void
.end method

.method public calculateBgColor()I
    .locals 1

    const/4 v0, 0x1

    .line 932
    invoke-direct {p0, v0, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->calculateBgColor(ZZ)I

    move-result p0

    return p0
.end method

.method public cancelAppearDrawing()V
    .locals 1

    .line 836
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->cancelAppearAnimation()V

    const/4 v0, 0x0

    .line 837
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->enableAppearDrawing(Z)V

    return-void
.end method

.method protected childNeedsClipping(Landroid/view/View;)Z
    .locals 1

    .line 937
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->isClippingNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 940
    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->childNeedsClipping(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method protected disallowSingleClick(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 993
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    if-eqz v0, :cond_0

    .line 994
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v0, 0x0

    .line 995
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimationTranslation:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 997
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 998
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    if-eqz p0, :cond_1

    .line 999
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1

    .line 295
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDimmed:Z

    if-nez v0, :cond_0

    .line 296
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->drawableHotspotChanged(FF)V

    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 1

    .line 302
    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    .line 303
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDimmed:Z

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setState([I)V

    goto :goto_0

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setState([I)V

    :goto_0
    return-void
.end method

.method public getBackgroundColorWithoutTint()I
    .locals 1

    const/4 v0, 0x0

    .line 1024
    invoke-direct {p0, v0, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->calculateBgColor(ZZ)I

    move-result p0

    return p0
.end method

.method protected abstract getContentView()Landroid/view/View;
.end method

.method public getCurrentBackgroundTint()I
    .locals 0

    .line 1028
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mCurrentBackgroundTint:I

    return p0
.end method

.method public getHeadsUpHeightWithoutHeader()I
    .locals 0

    .line 1044
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    return p0
.end method

.method protected getRippleColor()I
    .locals 1

    .line 961
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBgTint:I

    if-eqz v0, :cond_0

    .line 962
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mTintedRippleColor:I

    return p0

    .line 964
    :cond_0
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mNormalRippleColor:I

    return p0
.end method

.method protected handleSlideBack()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected initBackground()V
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    sget v1, Lcom/android/systemui/R$drawable;->notification_material_bg:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setCustomBackground(I)V

    .line 230
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    sget v0, Lcom/android/systemui/R$drawable;->notification_material_bg_dim:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setCustomBackground(I)V

    return-void
.end method

.method public isBelowSpeedBump()Z
    .locals 0

    .line 464
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mIsBelowSpeedBump:Z

    return p0
.end method

.method public isDimmable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isDrawingAppearAnimation()Z
    .locals 0

    .line 988
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    return p0
.end method

.method public isFirstInSection()Z
    .locals 0

    .line 496
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mFirstInSection:Z

    return p0
.end method

.method public isHeadsUpAnimatingAway()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isInteractive()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isLastInSection()Z
    .locals 0

    .line 492
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mLastInSection:Z

    return p0
.end method

.method public isPinned()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$new$0$ActivatableNotificationView(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 175
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->makeActive()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 177
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->makeInactive(Z)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$new$1$ActivatableNotificationView()Z
    .locals 0

    .line 179
    invoke-super {p0}, Landroid/widget/FrameLayout;->performClick()Z

    move-result p0

    return p0
.end method

.method public makeInactive(Z)V
    .locals 1

    .line 402
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mActivated:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 403
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mActivated:Z

    .line 404
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDimmed:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 406
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->startActivateAnimation(Z)V

    goto :goto_0

    .line 408
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateBackground()V

    .line 412
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mOnActivatedListener:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$OnActivatedListener;

    if-eqz p1, :cond_2

    .line 413
    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$OnActivatedListener;->onActivationReset(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    .line 415
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onAppearAnimationFinished(Z)V
    .locals 0

    return-void
.end method

.method protected onBelowSpeedBumpChanged()V
    .locals 0

    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 0

    .line 200
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->onDensityOrFontScaleChanged()V

    .line 201
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->initDimens()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 212
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 213
    sget v0, Lcom/android/systemui/R$id;->backgroundNormal:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    .line 214
    sget v0, Lcom/android/systemui/R$id;->fake_shadow:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/FakeShadowView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mFakeShadow:Lcom/android/systemui/statusbar/notification/FakeShadowView;

    .line 215
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mFakeShadow:Lcom/android/systemui/statusbar/notification/FakeShadowView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mShadowHidden:Z

    .line 216
    sget v0, Lcom/android/systemui/R$id;->backgroundDimmed:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    .line 217
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->initBackground()V

    .line 218
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateBackground()V

    .line 219
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateBackgroundTint()V

    .line 220
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateOutlineAlpha()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 242
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mNeedsDimming:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_1

    .line 243
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->disallowSingleClick(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 244
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mActivated:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDoubleTapHelper:Lcom/android/systemui/statusbar/phone/DoubleTapHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->isWithinDoubleTapSlop(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 247
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBlockNextTouch:Z

    .line 248
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->makeInactive(Z)V

    return v1

    .line 252
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 695
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->onLayout(ZIIII)V

    .line 696
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setPivotX(F)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 270
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBlockNextTouch:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 271
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBlockNextTouch:Z

    return p1

    .line 274
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mNeedsDimming:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mActivated:Z

    .line 276
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->handleTouchEventDimmed(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 277
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 278
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 281
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :cond_2
    :goto_0
    return v1
.end method

.method public performAddAnimation(JJZ)V
    .locals 10

    const/4 v0, 0x1

    .line 739
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->enableAppearDrawing(Z)V

    .line 740
    iput-boolean p5, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mIsHeadsUpAnimation:Z

    .line 741
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mHeadsUpAddStartLocation:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mHeadsUpLocation:F

    .line 742
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-eqz p5, :cond_0

    const/4 p5, 0x0

    goto :goto_0

    :cond_0
    const/high16 p5, -0x40800000    # -1.0f

    :goto_0
    move v3, p5

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    .line 743
    invoke-direct/range {v1 .. v9}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->startAppearAnimation(ZFJJLjava/lang/Runnable;Landroid/animation/AnimatorListenerAdapter;)V

    :cond_1
    return-void
.end method

.method public performClick()Z
    .locals 1

    .line 324
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mNeedsDimming:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 325
    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->performClick()Z

    move-result p0

    return p0
.end method

.method public performRemoveAnimation(JJFZFLjava/lang/Runnable;Landroid/animation/AnimatorListenerAdapter;)J
    .locals 9

    move-object v0, p0

    const/4 v1, 0x1

    .line 725
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->enableAppearDrawing(Z)V

    move v1, p6

    .line 726
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mIsHeadsUpAnimation:Z

    move/from16 v1, p7

    .line 727
    iput v1, v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mHeadsUpLocation:F

    .line 728
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p5

    move-wide v3, p3

    move-wide v5, p1

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    .line 729
    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->startAppearAnimation(ZFJJLjava/lang/Runnable;Landroid/animation/AnimatorListenerAdapter;)V

    goto :goto_0

    :cond_0
    if-eqz p8, :cond_1

    .line 732
    invoke-interface/range {p8 .. p8}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected resetBackgroundAlpha()V
    .locals 1

    const/4 v0, 0x0

    .line 648
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateBackgroundAlpha(F)V

    return-void
.end method

.method public setActualHeight(IZ)V
    .locals 0

    .line 701
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setActualHeight(IZ)V

    .line 702
    div-int/lit8 p2, p1, 0x2

    int-to-float p2, p2

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setPivotY(F)V

    .line 703
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setActualHeight(I)V

    .line 704
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setActualHeight(I)V

    return-void
.end method

.method protected setBackgroundTintColor(I)V
    .locals 1

    .line 580
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mCurrentBackgroundTint:I

    if-eq p1, v0, :cond_1

    .line 581
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mCurrentBackgroundTint:I

    .line 582
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mNormalColor:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 586
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setTint(I)V

    .line 587
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setTint(I)V

    :cond_1
    return-void
.end method

.method protected setBackgroundTop(I)V
    .locals 1

    .line 925
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setBackgroundTop(I)V

    .line 926
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setBackgroundTop(I)V

    return-void
.end method

.method public setBelowSpeedBump(Z)V
    .locals 1

    .line 449
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setBelowSpeedBump(Z)V

    .line 450
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mIsBelowSpeedBump:Z

    if-eq p1, v0, :cond_0

    .line 451
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mIsBelowSpeedBump:Z

    .line 452
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateBackgroundTint()V

    .line 453
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->onBelowSpeedBumpChanged()V

    :cond_0
    return-void
.end method

.method public setClipBottomAmount(I)V
    .locals 1

    .line 716
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setClipBottomAmount(I)V

    .line 717
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setClipBottomAmount(I)V

    .line 718
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setClipBottomAmount(I)V

    return-void
.end method

.method public setClipTopAmount(I)V
    .locals 1

    .line 709
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setClipTopAmount(I)V

    .line 710
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setClipTopAmount(I)V

    .line 711
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setClipTopAmount(I)V

    return-void
.end method

.method public setDimmed(ZZ)V
    .locals 1

    .line 419
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mNeedsDimming:Z

    .line 420
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isDimmable()Z

    move-result v0

    and-int/2addr p1, v0

    .line 421
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDimmed:Z

    if-eq v0, p1, :cond_1

    .line 422
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDimmed:Z

    .line 423
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->resetBackgroundAlpha()V

    if-eqz p2, :cond_0

    .line 425
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->fadeDimmedBackground()V

    goto :goto_0

    .line 427
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateBackground()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setDistanceToTopRoundness(F)V
    .locals 1

    .line 486
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setDistanceToTopRoundness(F)V

    .line 487
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setDistanceToTopRoundness(F)V

    .line 488
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setDistanceToTopRoundness(F)V

    return-void
.end method

.method public setFakeShadowIntensity(FFII)V
    .locals 2

    .line 1014
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mShadowHidden:Z

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1015
    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mShadowHidden:Z

    .line 1016
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mShadowHidden:Z

    if-eqz v1, :cond_1

    if-nez v0, :cond_2

    .line 1017
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mFakeShadow:Lcom/android/systemui/statusbar/notification/FakeShadowView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationZ()F

    move-result p0

    const v1, 0x3dcccccd    # 0.1f

    add-float/2addr p0, v1

    mul-float/2addr p1, p0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/FakeShadowView;->setFakeShadowTranslationZ(FFII)V

    :cond_2
    return-void
.end method

.method public setFirstInSection(Z)V
    .locals 1

    .line 510
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mFirstInSection:Z

    if-eq p1, v0, :cond_0

    .line 511
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mFirstInSection:Z

    .line 512
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setFirstInSection(Z)V

    .line 513
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setFirstInSection(Z)V

    :cond_0
    return-void
.end method

.method public setLastInSection(Z)V
    .locals 1

    .line 501
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mLastInSection:Z

    if-eq p1, v0, :cond_0

    .line 502
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mLastInSection:Z

    .line 503
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setLastInSection(Z)V

    .line 504
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setLastInSection(Z)V

    :cond_0
    return-void
.end method

.method public setNormalBackgroundVisibilityAmount(F)V
    .locals 0

    .line 443
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mNormalBackgroundVisibilityAmount:F

    .line 444
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateOutlineAlpha()V

    return-void
.end method

.method public setOnActivatedListener(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$OnActivatedListener;)V
    .locals 0

    .line 1004
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mOnActivatedListener:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$OnActivatedListener;

    return-void
.end method

.method public setOverrideTintColor(IF)V
    .locals 1

    .line 528
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mOverrideTint:I

    .line 529
    iput p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mOverrideAmount:F

    .line 530
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->calculateBgColor()I

    move-result p1

    .line 531
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setBackgroundTintColor(I)V

    .line 532
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isDimmable()Z

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mNeedsDimming:Z

    if-eqz p1, :cond_0

    .line 533
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    const/high16 v0, 0x437f0000    # 255.0f

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDimmedAlpha:I

    int-to-float p0, p0

    invoke-static {v0, p0, p2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setDrawableAlpha(I)V

    goto :goto_0

    .line 537
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    const/16 p1, 0xff

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setDrawableAlpha(I)V

    :goto_0
    return-void
.end method

.method public setRippleAllowed(Z)V
    .locals 0

    .line 311
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setPressedAllowed(Z)V

    return-void
.end method

.method public setTintColor(I)V
    .locals 1

    const/4 v0, 0x0

    .line 471
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setTintColor(IZ)V

    return-void
.end method

.method public setTintColor(IZ)V
    .locals 1

    .line 478
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBgTint:I

    if-eq p1, v0, :cond_0

    .line 479
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBgTint:I

    .line 480
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateBackgroundTint(Z)V

    :cond_0
    return-void
.end method

.method protected shouldHideBackground()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected updateBackground()V
    .locals 6

    .line 652
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->cancelFadeAnimations()V

    .line 653
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->shouldHideBackground()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 654
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 655
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mActivated:Z

    if-eqz v4, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 656
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDimmed:Z

    if-eqz v0, :cond_6

    .line 659
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isGroupExpansionChanging()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isChildInGroup()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v3

    .line 660
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    if-eqz v0, :cond_3

    move v5, v2

    goto :goto_1

    :cond_3
    move v5, v3

    :goto_1
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 661
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mActivated:Z

    if-nez v5, :cond_4

    if-eqz v0, :cond_5

    :cond_4
    move v2, v3

    :cond_5
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 665
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 666
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 667
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 668
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 670
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->makeInactive(Z)V

    .line 673
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    .line 672
    :goto_3
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setNormalBackgroundVisibilityAmount(F)V

    return-void
.end method

.method protected updateBackgroundAlpha(F)V
    .locals 1

    .line 640
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isChildInGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDimmed:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBgAlpha:F

    .line 641
    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDimmedBackgroundFadeInAmount:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    .line 642
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBgAlpha:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBgAlpha:F

    .line 644
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBgAlpha:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method protected updateBackgroundClipping()V
    .locals 4

    .line 677
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isChildInGroup()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setBottomAmountClips(Z)V

    .line 678
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isChildInGroup()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setBottomAmountClips(Z)V

    return-void
.end method

.method protected updateBackgroundColors()V
    .locals 0

    .line 205
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateColors()V

    .line 206
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->initBackground()V

    .line 207
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateBackgroundTint()V

    return-void
.end method

.method protected updateBackgroundTint()V
    .locals 1

    const/4 v0, 0x0

    .line 542
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateBackgroundTint(Z)V

    return-void
.end method
