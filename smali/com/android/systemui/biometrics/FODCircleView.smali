.class public Lcom/android/systemui/biometrics/FODCircleView;
.super Landroid/widget/ImageView;
.source "FODCircleView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/biometrics/FODCircleView$BurnInProtectionTask;
    }
.end annotation


# instance fields
.field private mBurnInProtectionTimer:Ljava/util/Timer;

.field private mColor:I

.field private mColorBackground:I

.field private final mDreamingMaxOffset:I

.field private mDreamingOffsetX:I

.field private mDreamingOffsetY:I

.field private mFingerprintInscreenCallback:Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreenCallback;

.field private mFingerprintInscreenDaemon:Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;

.field private mHandler:Landroid/os/Handler;

.field private mIsBouncer:Z

.field private mIsCircleShowing:Z

.field private mIsDreaming:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mNavigationBarSize:I

.field private final mPaintFingerprint:Landroid/graphics/Paint;

.field private final mPaintFingerprintBackground:Landroid/graphics/Paint;

.field private final mParams:Landroid/view/WindowManager$LayoutParams;

.field private final mPositionX:I

.field private final mPositionY:I

.field private final mPressedParams:Landroid/view/WindowManager$LayoutParams;

.field private final mPressedView:Landroid/widget/ImageView;

.field private final mShouldBoostBrightness:Z

.field private final mSize:I

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 143
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mPaintFingerprintBackground:Landroid/graphics/Paint;

    .line 61
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mPaintFingerprint:Landroid/graphics/Paint;

    .line 62
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 63
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mPressedParams:Landroid/view/WindowManager$LayoutParams;

    .line 86
    new-instance v0, Lcom/android/systemui/biometrics/FODCircleView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/FODCircleView$1;-><init>(Lcom/android/systemui/biometrics/FODCircleView;)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mFingerprintInscreenCallback:Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreenCallback;

    .line 101
    new-instance v0, Lcom/android/systemui/biometrics/FODCircleView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/FODCircleView$2;-><init>(Lcom/android/systemui/biometrics/FODCircleView;)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 145
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 147
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/FODCircleView;->getFingerprintInScreenDaemon()Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    :try_start_0
    invoke-interface {v0}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;->shouldBoostBrightness()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mShouldBoostBrightness:Z

    .line 154
    invoke-interface {v0}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;->getPositionX()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mPositionX:I

    .line 155
    invoke-interface {v0}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;->getPositionY()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mPositionY:I

    .line 156
    invoke-interface {v0}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;->getSize()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mSize:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 163
    sget v1, Lcom/android/systemui/R$color;->config_fodColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mColor:I

    .line 164
    iget-object v1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mPaintFingerprint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/systemui/biometrics/FODCircleView;->mColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 165
    iget-object v1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mPaintFingerprint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 167
    sget v1, Lcom/android/systemui/R$color;->config_fodColorBackground:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mColorBackground:I

    .line 168
    iget-object v1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mPaintFingerprintBackground:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/systemui/biometrics/FODCircleView;->mColorBackground:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 169
    iget-object v1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mPaintFingerprintBackground:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 171
    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mWindowManager:Landroid/view/WindowManager;

    .line 173
    sget v1, Lcom/android/systemui/R$dimen;->navigation_bar_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mNavigationBarSize:I

    .line 175
    iget v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mSize:I

    int-to-float v0, v0

    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mDreamingMaxOffset:I

    .line 177
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mHandler:Landroid/os/Handler;

    .line 179
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mSize:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 180
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x3

    .line 181
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const-string v1, "android"

    .line 183
    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    const/16 v1, 0x7ea

    .line 184
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x108

    .line 185
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v1, 0x33

    .line 187
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 189
    iget-object v1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mPressedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 190
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mPressedParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 192
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mParams:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "Fingerprint on display"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mPressedParams:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "Fingerprint on display.touched"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 195
    new-instance v0, Lcom/android/systemui/biometrics/FODCircleView$3;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/biometrics/FODCircleView$3;-><init>(Lcom/android/systemui/biometrics/FODCircleView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mPressedView:Landroid/widget/ImageView;

    .line 204
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mPressedView:Landroid/widget/ImageView;

    sget v1, Lcom/android/systemui/R$drawable;->fod_icon_pressed:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 206
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    invoke-direct {p0}, Lcom/android/systemui/biometrics/FODCircleView;->updatePosition()V

    .line 209
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/FODCircleView;->hide()V

    .line 211
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 213
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 214
    iget-object p1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void

    .line 158
    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Failed to retrieve FOD circle position or size"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 149
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unable to get IFingerprintInscreen"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic access$000(Lcom/android/systemui/biometrics/FODCircleView;)Landroid/os/Handler;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/biometrics/FODCircleView;)Landroid/graphics/Paint;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mPaintFingerprint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/systemui/biometrics/FODCircleView;Z)Z
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mIsDreaming:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/biometrics/FODCircleView;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mDreamingOffsetX:I

    return p0
.end method

.method static synthetic access$1102(Lcom/android/systemui/biometrics/FODCircleView;I)I
    .locals 0

    .line 53
    iput p1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mDreamingOffsetX:I

    return p1
.end method

.method static synthetic access$1120(Lcom/android/systemui/biometrics/FODCircleView;I)I
    .locals 1

    .line 53
    iget v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mDreamingOffsetX:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mDreamingOffsetX:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/biometrics/FODCircleView;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mDreamingMaxOffset:I

    return p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/biometrics/FODCircleView;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mDreamingOffsetY:I

    return p0
.end method

.method static synthetic access$1302(Lcom/android/systemui/biometrics/FODCircleView;I)I
    .locals 0

    .line 53
    iput p1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mDreamingOffsetY:I

    return p1
.end method

.method static synthetic access$1320(Lcom/android/systemui/biometrics/FODCircleView;I)I
    .locals 1

    .line 53
    iget v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mDreamingOffsetY:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mDreamingOffsetY:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/biometrics/FODCircleView;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/android/systemui/biometrics/FODCircleView;->updatePosition()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/biometrics/FODCircleView;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/android/systemui/biometrics/FODCircleView;->updateAlpha()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/biometrics/FODCircleView;)Ljava/util/Timer;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mBurnInProtectionTimer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/systemui/biometrics/FODCircleView;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mBurnInProtectionTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$502(Lcom/android/systemui/biometrics/FODCircleView;Z)Z
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mIsBouncer:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/biometrics/FODCircleView;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/biometrics/FODCircleView;I)Z
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/FODCircleView;->isPinOrPattern(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/android/systemui/biometrics/FODCircleView;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mIsCircleShowing:Z

    return p0
.end method

.method static synthetic access$900(Lcom/android/systemui/biometrics/FODCircleView;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mSize:I

    return p0
.end method

.method private isPinOrPattern(I)Z
    .locals 0

    .line 431
    iget-object p0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result p0

    const/high16 p1, 0x10000

    if-eq p0, p1, :cond_0

    const/high16 p1, 0x20000

    if-eq p0, p1, :cond_0

    const/high16 p1, 0x30000

    if-eq p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private setDim(Z)V
    .locals 2

    if-eqz p1, :cond_2

    .line 400
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/16 v0, 0x64

    const-string v1, "screen_brightness"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x0

    .line 404
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/FODCircleView;->getFingerprintInScreenDaemon()Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;

    move-result-object v1

    .line 406
    :try_start_0
    invoke-interface {v1, p1}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;->getDimAmount(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    :catch_0
    iget-boolean p1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mShouldBoostBrightness:Z

    if-eqz p1, :cond_0

    .line 412
    iget-object p1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mPressedParams:Landroid/view/WindowManager$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 415
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mPressedParams:Landroid/view/WindowManager$LayoutParams;

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 416
    iget-object p1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mPressedView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_1

    .line 417
    iget-object p1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mPressedView:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mPressedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, p0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 419
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mPressedView:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mPressedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 422
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mPressedParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v0, 0x0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 423
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 424
    iget-object p1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mPressedView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 425
    iget-object p1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mPressedView:Landroid/widget/ImageView;

    invoke-interface {p1, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private updateAlpha()V
    .locals 1

    .line 351
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mIsDreaming:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method private updatePosition()V
    .locals 4

    .line 355
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 357
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 358
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 360
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 376
    iget v0, v1, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mPositionY:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mSize:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mNavigationBarSize:I

    sub-int/2addr v0, v1

    .line 377
    iget v1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mPositionX:I

    goto :goto_0

    .line 380
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown rotation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 372
    :cond_1
    iget v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mPositionX:I

    .line 373
    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/android/systemui/biometrics/FODCircleView;->mPositionY:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/biometrics/FODCircleView;->mSize:I

    sub-int/2addr v1, v2

    goto :goto_0

    .line 368
    :cond_2
    iget v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mPositionY:I

    .line 369
    iget v1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mPositionX:I

    goto :goto_0

    .line 364
    :cond_3
    iget v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mPositionX:I

    .line 365
    iget v1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mPositionY:I

    .line 383
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/biometrics/FODCircleView;->mPressedParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Lcom/android/systemui/biometrics/FODCircleView;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 384
    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 386
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mIsDreaming:Z

    if-eqz v0, :cond_4

    .line 387
    iget v0, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mDreamingOffsetX:I

    add-int/2addr v0, v1

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 388
    iget v0, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mDreamingOffsetY:I

    add-int/2addr v0, v1

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 391
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 393
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mPressedView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 394
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mPressedView:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mPressedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public dispatchHide()V
    .locals 0

    .line 295
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/FODCircleView;->getFingerprintInScreenDaemon()Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;

    move-result-object p0

    .line 297
    :try_start_0
    invoke-interface {p0}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;->onHideFODView()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public dispatchPress()V
    .locals 0

    .line 268
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/FODCircleView;->getFingerprintInScreenDaemon()Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;

    move-result-object p0

    .line 270
    :try_start_0
    invoke-interface {p0}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;->onPress()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public dispatchRelease()V
    .locals 0

    .line 277
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/FODCircleView;->getFingerprintInScreenDaemon()Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;

    move-result-object p0

    .line 279
    :try_start_0
    invoke-interface {p0}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;->onRelease()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public dispatchShow()V
    .locals 0

    .line 286
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/FODCircleView;->getFingerprintInScreenDaemon()Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;

    move-result-object p0

    .line 288
    :try_start_0
    invoke-interface {p0}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;->onShowFODView()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public getFingerprintInScreenDaemon()Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;
    .locals 4

    .line 251
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mFingerprintInscreenDaemon:Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;

    if-nez v0, :cond_0

    .line 253
    :try_start_0
    invoke-static {}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;->getService()Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mFingerprintInscreenDaemon:Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;

    .line 254
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mFingerprintInscreenDaemon:Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mFingerprintInscreenDaemon:Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;

    iget-object v1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mFingerprintInscreenCallback:Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreenCallback;

    invoke-interface {v0, v1}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;->setCallback(Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreenCallback;)V

    .line 256
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mFingerprintInscreenDaemon:Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;

    invoke-interface {v0}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/biometrics/-$$Lambda$FODCircleView$RpUQn7Dt9g9NRJdRYu6xTqOpJCs;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/-$$Lambda$FODCircleView$RpUQn7Dt9g9NRJdRYu6xTqOpJCs;-><init>(Lcom/android/systemui/biometrics/FODCircleView;)V

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :catch_0
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mFingerprintInscreenDaemon:Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;

    return-object p0
.end method

.method public hide()V
    .locals 1

    const/16 v0, 0x8

    .line 345
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 346
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/FODCircleView;->hideCircle()V

    .line 347
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/FODCircleView;->dispatchHide()V

    return-void
.end method

.method public hideCircle()V
    .locals 2

    const/4 v0, 0x0

    .line 316
    iput-boolean v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mIsCircleShowing:Z

    .line 318
    sget v1, Lcom/android/systemui/R$drawable;->fod_icon_default:I

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 319
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 321
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/FODCircleView;->dispatchRelease()V

    .line 322
    invoke-direct {p0, v0}, Lcom/android/systemui/biometrics/FODCircleView;->setDim(Z)V

    .line 324
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setKeepScreenOn(Z)V

    return-void
.end method

.method public synthetic lambda$getFingerprintInScreenDaemon$0$FODCircleView(J)V
    .locals 0

    const/4 p1, 0x0

    .line 257
    iput-object p1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mFingerprintInscreenDaemon:Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 247
    invoke-direct {p0}, Lcom/android/systemui/biometrics/FODCircleView;->updatePosition()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 219
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mIsCircleShowing:Z

    if-nez v0, :cond_0

    .line 220
    iget v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mSize:I

    div-int/lit8 v1, v0, 0x2

    int-to-float v1, v1

    div-int/lit8 v2, v0, 0x2

    int-to-float v2, v2

    int-to-float v0, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    iget-object v3, p0, Lcom/android/systemui/biometrics/FODCircleView;->mPaintFingerprintBackground:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 222
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v0, 0x0

    .line 227
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    const/4 v2, 0x1

    .line 228
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v5, v1, v4

    if-lez v5, :cond_0

    .line 230
    iget v5, p0, Lcom/android/systemui/biometrics/FODCircleView;->mSize:I

    int-to-float v6, v5

    cmpg-float v1, v1, v6

    if-gez v1, :cond_0

    cmpl-float v1, v3, v4

    if-lez v1, :cond_0

    int-to-float v1, v5

    cmpg-float v1, v3, v1

    if-gez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    .line 232
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    if-eqz v1, :cond_1

    .line 233
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/FODCircleView;->showCircle()V

    return v2

    .line 235
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 236
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/FODCircleView;->hideCircle()V

    return v2

    .line 238
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public show()V
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 333
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mIsBouncer:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/biometrics/FODCircleView;->isPinOrPattern(I)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 338
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/biometrics/FODCircleView;->updatePosition()V

    .line 340
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/FODCircleView;->dispatchShow()V

    const/4 v0, 0x0

    .line 341
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public showCircle()V
    .locals 1

    const/4 v0, 0x1

    .line 304
    iput-boolean v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mIsCircleShowing:Z

    .line 306
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setKeepScreenOn(Z)V

    .line 308
    invoke-direct {p0, v0}, Lcom/android/systemui/biometrics/FODCircleView;->setDim(Z)V

    .line 309
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/FODCircleView;->dispatchPress()V

    const/4 v0, 0x0

    .line 311
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 312
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method
