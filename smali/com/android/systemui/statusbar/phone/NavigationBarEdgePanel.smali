.class public Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;
.super Landroid/view/View;
.source "NavigationBarEdgePanel.java"


# static fields
.field private static final CURRENT_ANGLE:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;",
            ">;"
        }
    .end annotation
.end field

.field private static final CURRENT_TRANSLATION:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;",
            ">;"
        }
    .end annotation
.end field

.field private static final CURRENT_VERTICAL_TRANSLATION:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;",
            ">;"
        }
    .end annotation
.end field

.field private static final RUBBER_BAND_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final RUBBER_BAND_INTERPOLATOR_APPEAR:Landroid/view/animation/Interpolator;


# instance fields
.field private final mAngleAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private final mAngleAppearForce:Landroidx/dynamicanimation/animation/SpringForce;

.field private final mAngleDisappearForce:Landroidx/dynamicanimation/animation/SpringForce;

.field private mAngleOffset:F

.field private mArrowColor:I

.field private final mArrowColorAnimator:Landroid/animation/ValueAnimator;

.field private mArrowColorDark:I

.field private mArrowColorLight:I

.field private final mArrowDisappearAnimation:Landroid/animation/ValueAnimator;

.field private final mArrowLength:F

.field private mArrowPaddingEnd:I

.field private final mArrowPath:Landroid/graphics/Path;

.field private mArrowStartColor:I

.field private final mArrowThickness:F

.field private mArrowsPointLeft:Z

.field private final mBaseTranslation:F

.field private mCurrentAngle:F

.field private mCurrentArrowColor:I

.field private mCurrentTranslation:F

.field private final mDensity:F

.field private mDesiredAngle:F

.field private mDesiredTranslation:F

.field private mDesiredVerticalTranslation:F

.field private mDisappearAmount:F

.field private mDragSlopPassed:Z

.field private mIsDark:Z

.field private mIsLeftPanel:Z

.field private mIsLongSwipeEnabled:Z

.field private mLongSwipeThreshold:F

.field private mMaxTranslation:F

.field private final mMinDeltaForSwitch:F

.field private final mPaint:Landroid/graphics/Paint;

.field private mPreviousTouchTranslation:F

.field private mProtectionColor:I

.field private mProtectionColorDark:I

.field private mProtectionColorLight:I

.field private final mProtectionPaint:Landroid/graphics/Paint;

.field private final mRegularTranslationSpring:Landroidx/dynamicanimation/animation/SpringForce;

.field private mScreenSize:I

.field private mSetGoneEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

.field private mShowProtection:Z

.field private mStartX:F

.field private mStartY:F

.field private final mSwipeThreshold:F

.field private mTotalTouchDelta:F

.field private final mTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mTriggerBack:Z

.field private final mTriggerBackSpring:Landroidx/dynamicanimation/animation/SpringForce;

.field private mTriggerLongSwipe:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVerticalTranslation:F

.field private final mVerticalTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mVibrationTime:J

.field private final mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 103
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v2, v1, v1, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->RUBBER_BAND_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 114
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v2, 0x3e800000    # 0.25f

    invoke-direct {v0, v2, v1, v1, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->RUBBER_BAND_INTERPOLATOR_APPEAR:Landroid/view/animation/Interpolator;

    .line 210
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel$2;

    const-string v1, "currentAngle"

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->CURRENT_ANGLE:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    .line 223
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel$3;

    const-string v1, "currentTranslation"

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->CURRENT_TRANSLATION:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    .line 236
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel$4;

    const-string v1, "verticalTranslation"

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->CURRENT_VERTICAL_TRANSLATION:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 251
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 122
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mPaint:Landroid/graphics/Paint;

    .line 139
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowPath:Landroid/graphics/Path;

    const/4 v0, 0x0

    .line 152
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mIsDark:Z

    .line 153
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mShowProtection:Z

    .line 199
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel$1;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mSetGoneEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    .line 253
    const-class v0, Lcom/android/systemui/statusbar/VibratorHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/VibratorHelper;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    .line 255
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mDensity:F

    const/high16 v0, 0x42000000    # 32.0f

    .line 257
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->dp(F)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mBaseTranslation:F

    const/high16 v1, 0x41900000    # 18.0f

    .line 258
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->dp(F)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowLength:F

    const/high16 v1, 0x40200000    # 2.5f

    .line 259
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->dp(F)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowThickness:F

    .line 260
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->dp(F)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mMinDeltaForSwitch:F

    .line 262
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowThickness:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 264
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 265
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 266
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 268
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowColorAnimator:Landroid/animation/ValueAnimator;

    .line 269
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowColorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x78

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 270
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowColorAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel$5;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v0, [F

    .line 279
    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowDisappearAnimation:Landroid/animation/ValueAnimator;

    .line 280
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowDisappearAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 281
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowDisappearAnimation:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 282
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowDisappearAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarEdgePanel$bOecFcR5bBF6RggHYoy3PBO7S7o;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarEdgePanel$bOecFcR5bBF6RggHYoy3PBO7S7o;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 287
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v1, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->CURRENT_ANGLE:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-direct {v0, p0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mAngleAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 289
    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const/high16 v1, 0x43fa0000    # 500.0f

    .line 290
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 v1, 0x3f000000    # 0.5f

    .line 291
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mAngleAppearForce:Landroidx/dynamicanimation/animation/SpringForce;

    .line 292
    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const v2, 0x44bb8000    # 1500.0f

    .line 293
    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 294
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 v1, 0x42b40000    # 90.0f

    .line 295
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mAngleDisappearForce:Landroidx/dynamicanimation/animation/SpringForce;

    .line 296
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mAngleAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mAngleAppearForce:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v0, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMaxValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 298
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v1, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->CURRENT_TRANSLATION:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-direct {v0, p0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 300
    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    .line 301
    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 v1, 0x3f400000    # 0.75f

    .line 302
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mRegularTranslationSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 303
    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const/high16 v3, 0x43e10000    # 450.0f

    .line 304
    invoke-virtual {v0, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 305
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTriggerBackSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 306
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mRegularTranslationSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v0, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 307
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v3, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->CURRENT_VERTICAL_TRANSLATION:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-direct {v0, p0, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mVerticalTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 309
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mVerticalTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v3, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v3}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    .line 311
    invoke-virtual {v3, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 312
    invoke-virtual {v3, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 309
    invoke-virtual {v0, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 314
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mProtectionPaint:Landroid/graphics/Paint;

    .line 315
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mProtectionPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowThickness:F

    const/high16 v2, 0x40000000    # 2.0f

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 316
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->loadDimens()V

    .line 318
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->loadColors(Landroid/content/Context;)V

    .line 319
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->updateArrowDirection()V

    .line 321
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$dimen;->navigation_edge_action_drag_threshold:I

    .line 322
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mSwipeThreshold:F

    const/16 p1, 0x8

    .line 323
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;F)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->setCurrentAngle(F)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;)F
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->getCurrentAngle()F

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;F)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->setCurrentTranslation(F)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;)F
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->getCurrentTranslation()F

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;F)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->setVerticalTranslation(F)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;)F
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->getVerticalTranslation()F

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowStartColor:I

    return p0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowColor:I

    return p0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->setCurrentArrowColor(I)V

    return-void
.end method

.method private calculatePath(FF)Landroid/graphics/Path;
    .locals 3

    .line 531
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowsPointLeft:Z

    if-nez v0, :cond_0

    neg-float p1, p1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f400000    # 0.75f

    .line 534
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mDisappearAmount:F

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    mul-float/2addr p1, v0

    mul-float/2addr p2, v0

    .line 537
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 538
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 539
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowPath:Landroid/graphics/Path;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 540
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowPath:Landroid/graphics/Path;

    neg-float p2, p2

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 541
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowPath:Landroid/graphics/Path;

    return-object p0
.end method

.method private dp(F)F
    .locals 0

    .line 791
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mDensity:F

    mul-float/2addr p0, p1

    return p0
.end method

.method private getCurrentAngle()F
    .locals 0

    .line 545
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mCurrentAngle:F

    return p0
.end method

.method private getCurrentTranslation()F
    .locals 0

    .line 549
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mCurrentTranslation:F

    return p0
.end method

.method private getStaticArrowWidth()F
    .locals 1

    const/high16 v0, 0x42600000    # 56.0f

    .line 519
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->polarToCartX(F)F

    move-result v0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowLength:F

    mul-float/2addr v0, p0

    return v0
.end method

.method private getVerticalTranslation()F
    .locals 0

    .line 730
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mVerticalTranslation:F

    return p0
.end method

.method private handleMoveEvent(Landroid/view/MotionEvent;)V
    .locals 12

    .line 619
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 620
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 621
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mStartX:F

    sub-float v1, v0, v1

    invoke-static {v1}, Landroid/util/MathUtils;->abs(F)F

    move-result v1

    .line 622
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mStartY:F

    sub-float/2addr p1, v2

    .line 623
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mPreviousTouchTranslation:F

    sub-float v2, v1, v2

    .line 624
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 625
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v3

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTotalTouchDelta:F

    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v5

    cmpl-float v3, v3, v5

    if-nez v3, :cond_0

    .line 626
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTotalTouchDelta:F

    add-float/2addr v3, v2

    iput v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTotalTouchDelta:F

    goto :goto_0

    .line 628
    :cond_0
    iput v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTotalTouchDelta:F

    .line 631
    :cond_1
    :goto_0
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mPreviousTouchTranslation:F

    .line 632
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mLongSwipeThreshold:F

    cmpl-float v2, v1, v2

    const/4 v3, 0x0

    const/4 v5, 0x1

    if-lez v2, :cond_2

    move v2, v5

    goto :goto_1

    :cond_2
    move v2, v3

    .line 635
    :goto_1
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mDragSlopPassed:Z

    const/high16 v7, 0x3f800000    # 1.0f

    if-nez v6, :cond_3

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mSwipeThreshold:F

    cmpl-float v6, v1, v6

    if-lez v6, :cond_3

    .line 636
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mDragSlopPassed:Z

    .line 637
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    const/4 v8, 0x2

    invoke-virtual {v6, v8}, Lcom/android/systemui/statusbar/VibratorHelper;->vibrate(I)V

    .line 638
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mVibrationTime:J

    .line 641
    iput v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mDisappearAmount:F

    .line 642
    invoke-virtual {p0, v7}, Landroid/view/View;->setAlpha(F)V

    .line 644
    invoke-direct {p0, v5, v5}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->setTriggerBack(ZZ)V

    .line 648
    :cond_3
    iget v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mBaseTranslation:F

    cmpl-float v8, v1, v6

    const/high16 v9, 0x40800000    # 4.0f

    if-lez v8, :cond_4

    sub-float/2addr v1, v6

    .line 650
    iget v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mScreenSize:I

    int-to-float v8, v8

    sub-float/2addr v8, v6

    div-float/2addr v1, v8

    invoke-static {v1}, Landroid/util/MathUtils;->saturate(F)F

    move-result v1

    .line 651
    sget-object v6, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->RUBBER_BAND_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-interface {v6, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mMaxTranslation:F

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mBaseTranslation:F

    sub-float/2addr v6, v8

    mul-float/2addr v1, v6

    add-float/2addr v8, v1

    move v6, v8

    goto :goto_2

    :cond_4
    sub-float v1, v6, v1

    div-float/2addr v1, v6

    .line 656
    invoke-static {v1}, Landroid/util/MathUtils;->saturate(F)F

    move-result v1

    .line 657
    sget-object v6, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->RUBBER_BAND_INTERPOLATOR_APPEAR:Landroid/view/animation/Interpolator;

    invoke-interface {v6, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mBaseTranslation:F

    div-float v8, v6, v9

    mul-float/2addr v1, v8

    sub-float/2addr v6, v1

    .line 662
    :goto_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTriggerBack:Z

    .line 665
    iget v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTotalTouchDelta:F

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v10, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mMinDeltaForSwitch:F

    cmpl-float v8, v8, v10

    if-lez v8, :cond_6

    .line 666
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTotalTouchDelta:F

    cmpl-float v1, v1, v4

    if-lez v1, :cond_5

    move v1, v5

    goto :goto_3

    :cond_5
    move v1, v3

    .line 670
    :cond_6
    :goto_3
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v10, 0x3e8

    invoke-virtual {v8, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 671
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v8

    .line 672
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v10

    .line 673
    invoke-static {v8, v10}, Landroid/util/MathUtils;->mag(FF)F

    move-result v10

    const/high16 v11, 0x447a0000    # 1000.0f

    div-float/2addr v10, v11

    mul-float/2addr v10, v9

    .line 674
    invoke-static {v10, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 675
    invoke-static {v8}, Ljava/lang/Math;->signum(F)F

    move-result v8

    mul-float/2addr v9, v8

    iput v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mAngleOffset:F

    .line 676
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mIsLeftPanel:Z

    if-eqz v8, :cond_7

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowsPointLeft:Z

    if-nez v8, :cond_8

    :cond_7
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mIsLeftPanel:Z

    if-nez v8, :cond_9

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowsPointLeft:Z

    if-nez v8, :cond_9

    .line 677
    :cond_8
    iget v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mAngleOffset:F

    const/high16 v9, -0x40800000    # -1.0f

    mul-float/2addr v8, v9

    iput v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mAngleOffset:F

    .line 681
    :cond_9
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mStartX:F

    sub-float/2addr v0, v9

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v0, v9

    cmpl-float v0, v8, v0

    if-lez v0, :cond_a

    move v1, v3

    .line 685
    :cond_a
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mIsLongSwipeEnabled:Z

    if-eqz v0, :cond_c

    if-eqz v1, :cond_b

    if-eqz v2, :cond_b

    move v3, v5

    .line 687
    :cond_b
    invoke-direct {p0, v3, v5}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->setTriggerLongSwipe(ZZ)V

    .line 690
    :cond_c
    invoke-direct {p0, v1, v5}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->setTriggerBack(ZZ)V

    .line 692
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTriggerBack:Z

    if-nez v0, :cond_d

    move v0, v4

    goto :goto_4

    .line 694
    :cond_d
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mIsLeftPanel:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowsPointLeft:Z

    if-nez v0, :cond_f

    :cond_e
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mIsLeftPanel:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowsPointLeft:Z

    if-nez v0, :cond_10

    .line 698
    :cond_f
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->getStaticArrowWidth()F

    move-result v0

    sub-float v0, v6, v0

    goto :goto_4

    :cond_10
    move v0, v6

    .line 700
    :goto_4
    invoke-direct {p0, v0, v5}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->setDesiredTranslation(FZ)V

    .line 701
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->updateAngle(Z)V

    .line 703
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v9

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowLength:F

    sub-float/2addr v0, v1

    .line 705
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x41700000    # 15.0f

    mul-float/2addr v2, v0

    div-float/2addr v1, v2

    .line 704
    invoke-static {v1, v4, v7}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v1

    .line 707
    sget-object v2, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->RUBBER_BAND_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    mul-float/2addr v1, v0

    .line 708
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    mul-float/2addr v1, p1

    .line 709
    invoke-direct {p0, v1, v5}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->setDesiredVerticalTransition(FZ)V

    return-void
.end method

.method private loadColors(Landroid/content/Context;)V
    .locals 3

    .line 487
    sget v0, Lcom/android/systemui/R$attr;->darkIconTheme:I

    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v0

    .line 488
    sget v1, Lcom/android/systemui/R$attr;->lightIconTheme:I

    invoke-static {p1, v1}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v1

    .line 489
    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-direct {v2, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 490
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-direct {v1, p1, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 491
    sget p1, Lcom/android/systemui/R$attr;->singleToneColor:I

    invoke-static {v2, p1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowColorLight:I

    .line 492
    sget p1, Lcom/android/systemui/R$attr;->singleToneColor:I

    invoke-static {v1, p1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowColorDark:I

    .line 493
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowColorLight:I

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mProtectionColorDark:I

    .line 494
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowColorDark:I

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mProtectionColorLight:I

    const/4 p1, 0x0

    .line 495
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->updateIsDark(Z)V

    return-void
.end method

.method private loadDimens()V
    .locals 2

    .line 474
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->navigation_edge_panel_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowPaddingEnd:I

    .line 476
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 477
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mScreenSize:I

    return-void
.end method

.method private polarToCartX(F)F
    .locals 0

    float-to-double p0, p1

    .line 523
    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method private polarToCartY(F)F
    .locals 0

    float-to-double p0, p1

    .line 527
    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method private resetOnDown()V
    .locals 4

    .line 599
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 600
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mAngleAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 601
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 602
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mVerticalTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 603
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowDisappearAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 604
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mAngleOffset:F

    .line 605
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mRegularTranslationSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 v1, 0x0

    .line 607
    invoke-direct {p0, v1, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->setTriggerBack(ZZ)V

    .line 608
    invoke-direct {p0, v1, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->setTriggerLongSwipe(ZZ)V

    .line 609
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->setDesiredTranslation(FZ)V

    .line 610
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->setCurrentTranslation(F)V

    .line 611
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->updateAngle(Z)V

    .line 612
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mPreviousTouchTranslation:F

    .line 613
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTotalTouchDelta:F

    const-wide/16 v2, 0x0

    .line 614
    iput-wide v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mVibrationTime:J

    .line 615
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->setDesiredVerticalTransition(FZ)V

    return-void
.end method

.method private setCurrentAngle(F)V
    .locals 0

    .line 786
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mCurrentAngle:F

    .line 787
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private setCurrentArrowColor(I)V
    .locals 1

    .line 513
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mCurrentArrowColor:I

    .line 514
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 515
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private setCurrentTranslation(F)V
    .locals 0

    .line 745
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mCurrentTranslation:F

    .line 746
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private setDesiredTranslation(FZ)V
    .locals 1

    .line 734
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mDesiredTranslation:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 735
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mDesiredTranslation:F

    if-nez p2, :cond_0

    .line 737
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->setCurrentTranslation(F)V

    goto :goto_0

    .line 739
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setDesiredVerticalTransition(FZ)V
    .locals 1

    .line 713
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mDesiredVerticalTranslation:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 714
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mDesiredVerticalTranslation:F

    if-nez p2, :cond_0

    .line 716
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->setVerticalTranslation(F)V

    goto :goto_0

    .line 718
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mVerticalTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p2, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 720
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method private setTriggerBack(ZZ)V
    .locals 1

    .line 750
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTriggerBack:Z

    if-eq v0, p1, :cond_0

    .line 751
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTriggerBack:Z

    .line 752
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mAngleAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 753
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->updateAngle(Z)V

    .line 756
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    :cond_0
    return-void
.end method

.method private setTriggerLongSwipe(ZZ)V
    .locals 1

    .line 761
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTriggerLongSwipe:Z

    if-eq v0, p1, :cond_0

    .line 762
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTriggerLongSwipe:Z

    .line 763
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/VibratorHelper;->vibrate(I)V

    .line 764
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mAngleAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 765
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->updateAngle(Z)V

    .line 768
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    :cond_0
    return-void
.end method

.method private setVerticalTranslation(F)V
    .locals 0

    .line 725
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mVerticalTranslation:F

    .line 726
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private triggerBack()V
    .locals 7

    .line 553
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 555
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x43fa0000    # 500.0f

    cmpg-float v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    .line 557
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mVibrationTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x190

    cmp-long v0, v3, v5

    if-ltz v0, :cond_2

    .line 558
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/VibratorHelper;->vibrate(I)V

    .line 562
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mAngleOffset:F

    const/high16 v2, -0x3f800000    # -4.0f

    cmpl-float v2, v0, v2

    if-lez v2, :cond_3

    const/high16 v2, -0x3f000000    # -8.0f

    const/high16 v3, 0x41000000    # 8.0f

    sub-float/2addr v0, v3

    .line 563
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mAngleOffset:F

    .line 564
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->updateAngle(Z)V

    .line 568
    :cond_3
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarEdgePanel$qL_Cvd7_6Xne4NYpi_Ofi326YV0;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarEdgePanel$qL_Cvd7_6Xne4NYpi_Ofi326YV0;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;)V

    .line 580
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 581
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v2, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel$6;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel$6;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    goto :goto_1

    .line 593
    :cond_4
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_1
    return-void
.end method

.method private updateAngle(Z)V
    .locals 2

    .line 773
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTriggerBack:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x42600000    # 56.0f

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mAngleOffset:F

    add-float/2addr v1, v0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x42b40000    # 90.0f

    .line 774
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mDesiredAngle:F

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_1

    .line 776
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->setCurrentAngle(F)V

    goto :goto_2

    .line 778
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mAngleAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTriggerBack:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mAngleAppearForce:Landroidx/dynamicanimation/animation/SpringForce;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mAngleDisappearForce:Landroidx/dynamicanimation/animation/SpringForce;

    :goto_1
    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 779
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mAngleAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 781
    :goto_2
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mDesiredAngle:F

    :cond_3
    return-void
.end method

.method private updateArrowDirection()V
    .locals 1

    .line 482
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowsPointLeft:Z

    .line 483
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private updateIsDark(Z)V
    .locals 2

    .line 500
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mIsDark:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mProtectionColorDark:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mProtectionColorLight:I

    :goto_0
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mProtectionColor:I

    .line 501
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mProtectionPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mProtectionColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 502
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mIsDark:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowColorDark:I

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowColorLight:I

    :goto_1
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowColor:I

    .line 503
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    if-nez p1, :cond_2

    .line 505
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowColor:I

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->setCurrentArrowColor(I)V

    goto :goto_2

    .line 507
    :cond_2
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mCurrentArrowColor:I

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowStartColor:I

    .line 508
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :goto_2
    return-void
.end method


# virtual methods
.method public adjustRectToBoundingBox(Landroid/graphics/Rect;)V
    .locals 6

    .line 365
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mDesiredTranslation:F

    .line 366
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTriggerBack:Z

    if-nez v1, :cond_2

    .line 369
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mBaseTranslation:F

    .line 370
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mIsLeftPanel:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowsPointLeft:Z

    if-nez v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mIsLeftPanel:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowsPointLeft:Z

    if-nez v1, :cond_2

    .line 374
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->getStaticArrowWidth()F

    move-result v1

    sub-float/2addr v0, v1

    .line 377
    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowThickness:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 378
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mIsLeftPanel:Z

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    sub-float v0, v1, v0

    .line 381
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->getStaticArrowWidth()F

    move-result v1

    const/high16 v3, 0x42600000    # 56.0f

    .line 382
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->polarToCartY(F)F

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowLength:F

    mul-float/2addr v3, v4

    mul-float/2addr v3, v2

    .line 383
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowsPointLeft:Z

    if-nez v4, :cond_4

    sub-float/2addr v0, v1

    .line 387
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mDesiredVerticalTranslation:F

    add-float/2addr v4, p0

    div-float p0, v3, v2

    sub-float/2addr v4, p0

    float-to-int p0, v0

    float-to-int v0, v4

    .line 388
    invoke-virtual {p1, p0, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 389
    iget p0, p1, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, p0

    add-float/2addr v2, v1

    float-to-int v1, v2

    int-to-float v2, v0

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p1, p0, v0, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public handleTouch(Landroid/view/MotionEvent;)V
    .locals 2

    .line 398
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 399
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 402
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    goto :goto_1

    .line 412
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->handleMoveEvent(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 418
    :cond_2
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTriggerBack:Z

    if-eqz p1, :cond_3

    .line 419
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->triggerBack()V

    goto :goto_0

    .line 421
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 422
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mSetGoneEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    goto :goto_0

    :cond_4
    const/16 p1, 0x8

    .line 424
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 427
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 428
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    .line 404
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mDragSlopPassed:Z

    .line 405
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->resetOnDown()V

    .line 406
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mStartX:F

    .line 407
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mStartY:F

    .line 408
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$new$0$NavigationBarEdgePanel(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 283
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mDisappearAmount:F

    .line 284
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public synthetic lambda$triggerBack$1$NavigationBarEdgePanel()V
    .locals 1

    const/16 v0, 0x8

    .line 577
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public synthetic lambda$triggerBack$2$NavigationBarEdgePanel()V
    .locals 4

    .line 570
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mAngleOffset:F

    const/high16 v1, 0x41000000    # 8.0f

    add-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mAngleOffset:F

    const/4 v0, 0x1

    .line 571
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->updateAngle(Z)V

    .line 573
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTriggerBackSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v2, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 575
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mDesiredTranslation:F

    const/high16 v3, 0x42000000    # 32.0f

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->dp(F)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->setDesiredTranslation(FZ)V

    .line 576
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x50

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarEdgePanel$nHEgOL8ws5zs7-Uj7JMc5oUqL9Y;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarEdgePanel$nHEgOL8ws5zs7-Uj7JMc5oUqL9Y;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;)V

    .line 577
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 578
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowDisappearAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 436
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 437
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->updateArrowDirection()V

    .line 438
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->loadDimens()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 443
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mCurrentTranslation:F

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowThickness:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 444
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 446
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mIsLeftPanel:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float v0, v1, v0

    .line 447
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v1, v3

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mVerticalTranslation:F

    add-float/2addr v1, v3

    .line 445
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 450
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mCurrentAngle:F

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->polarToCartX(F)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowLength:F

    mul-float/2addr v0, v1

    .line 451
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mCurrentAngle:F

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->polarToCartY(F)F

    move-result v1

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowLength:F

    mul-float/2addr v1, v3

    .line 452
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->calculatePath(FF)Landroid/graphics/Path;

    move-result-object v3

    .line 453
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTriggerLongSwipe:Z

    if-eqz v4, :cond_2

    .line 454
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->calculatePath(FF)Landroid/graphics/Path;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowThickness:F

    mul-float/2addr v1, v2

    .line 455
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mIsLeftPanel:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, -0x1

    :goto_1
    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    .line 454
    invoke-virtual {v3, v0, v1, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;FF)V

    .line 458
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mShowProtection:Z

    if-eqz v0, :cond_3

    .line 459
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mProtectionPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 462
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 463
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 468
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 470
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    iget p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowPaddingEnd:I

    sub-int/2addr p1, p2

    int-to-float p1, p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mMaxTranslation:F

    return-void
.end method

.method public setIsDark(ZZ)V
    .locals 0

    .line 340
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mIsDark:Z

    .line 341
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->updateIsDark(Z)V

    return-void
.end method

.method public setIsLeftPanel(Z)V
    .locals 0

    .line 350
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mIsLeftPanel:Z

    return-void
.end method

.method public setLongSwipeThreshold(F)V
    .locals 2

    .line 354
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mLongSwipeThreshold:F

    .line 355
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mLongSwipeThreshold:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mIsLongSwipeEnabled:Z

    .line 356
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mIsLongSwipeEnabled:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTriggerLongSwipe:Z

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->setTriggerLongSwipe(ZZ)V

    return-void
.end method

.method public shouldTriggerBack()Z
    .locals 0

    .line 332
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTriggerBack:Z

    return p0
.end method

.method public shouldTriggerLongSwipe()Z
    .locals 0

    .line 336
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTriggerLongSwipe:Z

    return p0
.end method
