.class public abstract Lcom/android/systemui/biometrics/BiometricDialogView;
.super Landroid/widget/LinearLayout;
.source "BiometricDialogView.java"


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAnimatingAway:Z

.field private final mAnimationTranslationOffset:F

.field protected final mAppIcon:Landroid/widget/ImageView;

.field protected mAppLockDialog:Z

.field protected final mBiometricIcon:Landroid/widget/ImageView;

.field private mBundle:Landroid/os/Bundle;

.field protected final mCallback:Lcom/android/systemui/biometrics/DialogViewCallback;

.field private mCompletedAnimatingIn:Z

.field protected final mDescriptionText:Landroid/widget/TextView;

.field private final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field protected final mDialog:Landroid/widget/LinearLayout;

.field private final mDialogWidth:F

.field private final mErrorColor:I

.field protected final mErrorText:Landroid/widget/TextView;

.field protected mHandler:Landroid/os/Handler;

.field private final mHasFod:Z

.field private mIsFace:Z

.field private mIsFingerprint:Z

.field protected final mLayout:Landroid/view/ViewGroup;

.field private final mLinearOutSlowIn:Landroid/view/animation/Interpolator;

.field protected final mNegativeButton:Landroid/widget/Button;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mPendingDismissDialog:Z

.field protected final mPositiveButton:Landroid/widget/Button;

.field protected mRequireConfirmation:Z

.field private mRestoredState:Landroid/os/Bundle;

.field private final mShowAnimationRunnable:Ljava/lang/Runnable;

.field private mSkipIntro:Z

.field private mState:I

.field protected final mSubtitleText:Landroid/widget/TextView;

.field protected final mTextColor:I

.field protected final mTitleText:Landroid/widget/TextView;

.field protected final mTryAgainButton:Landroid/widget/Button;

.field private mUserId:I

.field private final mUserManager:Landroid/os/UserManager;

.field private mWasForceRemoved:Z

.field private final mWindowManager:Landroid/view/WindowManager;

.field private final mWindowToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/biometrics/DialogViewCallback;)V
    .locals 5

    .line 172
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 89
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mWindowToken:Landroid/os/IBinder;

    const/4 v0, 0x0

    .line 117
    iput v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mState:I

    .line 139
    new-instance v1, Lcom/android/systemui/biometrics/BiometricDialogView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/BiometricDialogView$1;-><init>(Lcom/android/systemui/biometrics/BiometricDialogView;)V

    iput-object v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mShowAnimationRunnable:Ljava/lang/Runnable;

    .line 157
    new-instance v1, Lcom/android/systemui/biometrics/BiometricDialogView$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/BiometricDialogView$2;-><init>(Lcom/android/systemui/biometrics/BiometricDialogView;)V

    iput-object v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mHandler:Landroid/os/Handler;

    .line 173
    iput-object p2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mCallback:Lcom/android/systemui/biometrics/DialogViewCallback;

    .line 174
    sget-object p2, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    iput-object p2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLinearOutSlowIn:Landroid/view/animation/Interpolator;

    .line 175
    iget-object p2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/accessibility/AccessibilityManager;

    iput-object p2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 176
    iget-object p2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    iput-object p2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mWindowManager:Landroid/view/WindowManager;

    .line 177
    iget-object p2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserManager;

    iput-object p2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mUserManager:Landroid/os/UserManager;

    .line 178
    iget-object p2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/admin/DevicePolicyManager;

    iput-object p2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 179
    iget-object p2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 180
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/android/systemui/R$dimen;->biometric_dialog_animation_translation_offset:I

    .line 181
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mAnimationTranslationOffset:F

    .line 182
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/android/systemui/R$color;->biometric_dialog_error:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorColor:I

    .line 183
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/android/systemui/R$color;->biometric_dialog_gray:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mTextColor:I

    .line 184
    iget-object p2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "vendor.lineage.biometrics.fingerprint.inscreen"

    invoke-virtual {p2, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mHasFod:Z

    .line 186
    new-instance p2, Landroid/util/DisplayMetrics;

    invoke-direct {p2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 187
    iget-object v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 188
    iget v1, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDialogWidth:F

    .line 191
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 192
    sget v1, Lcom/android/systemui/R$layout;->biometric_dialog:I

    invoke-virtual {p2, v1, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    .line 193
    iget-object p2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 195
    iget-object p2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/systemui/biometrics/BiometricDialogView$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/BiometricDialogView$3;-><init>(Lcom/android/systemui/biometrics/BiometricDialogView;)V

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 214
    iget-object p2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/R$id;->space:I

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 215
    iget-object v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    sget v2, Lcom/android/systemui/R$id;->left_space:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 216
    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    sget v3, Lcom/android/systemui/R$id;->right_space:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 218
    iget-object v3, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    sget v4, Lcom/android/systemui/R$id;->dialog:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDialog:Landroid/widget/LinearLayout;

    .line 219
    iget-object v3, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    sget v4, Lcom/android/systemui/R$id;->title:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mTitleText:Landroid/widget/TextView;

    .line 220
    iget-object v3, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    sget v4, Lcom/android/systemui/R$id;->subtitle:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mSubtitleText:Landroid/widget/TextView;

    .line 221
    iget-object v3, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    sget v4, Lcom/android/systemui/R$id;->description:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDescriptionText:Landroid/widget/TextView;

    .line 222
    iget-object v3, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    sget v4, Lcom/android/systemui/R$id;->biometric_icon:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mBiometricIcon:Landroid/widget/ImageView;

    .line 223
    iget-object v3, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    sget v4, Lcom/android/systemui/R$id;->error:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    .line 224
    iget-object v3, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    sget v4, Lcom/android/systemui/R$id;->button2:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mNegativeButton:Landroid/widget/Button;

    .line 225
    iget-object v3, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    sget v4, Lcom/android/systemui/R$id;->button1:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mPositiveButton:Landroid/widget/Button;

    .line 226
    iget-object v3, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    sget v4, Lcom/android/systemui/R$id;->button_try_again:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mTryAgainButton:Landroid/widget/Button;

    .line 228
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mAppIcon:Landroid/widget/ImageView;

    .line 229
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v3, Lcom/android/systemui/R$dimen;->applock_icon_dimension:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 231
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, p1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x11

    .line 232
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    neg-int p1, p1

    .line 233
    div-int/lit8 p1, p1, 0x2

    iput p1, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 234
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mAppIcon:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 236
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDialog:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 237
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 238
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 239
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 241
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mBiometricIcon:Landroid/widget/ImageView;

    .line 242
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricDialogView;->getIconDescriptionResourceId()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 241
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 244
    invoke-direct {p0, p2}, Lcom/android/systemui/biometrics/BiometricDialogView;->setDismissesDialog(Landroid/view/View;)V

    .line 245
    invoke-direct {p0, v1}, Lcom/android/systemui/biometrics/BiometricDialogView;->setDismissesDialog(Landroid/view/View;)V

    .line 246
    invoke-direct {p0, v2}, Lcom/android/systemui/biometrics/BiometricDialogView;->setDismissesDialog(Landroid/view/View;)V

    .line 248
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mNegativeButton:Landroid/widget/Button;

    new-instance p2, Lcom/android/systemui/biometrics/-$$Lambda$BiometricDialogView$RYcTkb_tfg9qgMigefa-LgT2rmQ;

    invoke-direct {p2, p0}, Lcom/android/systemui/biometrics/-$$Lambda$BiometricDialogView$RYcTkb_tfg9qgMigefa-LgT2rmQ;-><init>(Lcom/android/systemui/biometrics/BiometricDialogView;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mPositiveButton:Landroid/widget/Button;

    new-instance p2, Lcom/android/systemui/biometrics/-$$Lambda$BiometricDialogView$2B_4hvtZC5hBNK8tMhbM4pc0Qyc;

    invoke-direct {p2, p0}, Lcom/android/systemui/biometrics/-$$Lambda$BiometricDialogView$2B_4hvtZC5hBNK8tMhbM4pc0Qyc;-><init>(Lcom/android/systemui/biometrics/BiometricDialogView;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mTryAgainButton:Landroid/widget/Button;

    new-instance p2, Lcom/android/systemui/biometrics/-$$Lambda$BiometricDialogView$0WbgvKDg-E592VyX7dMGcDXbGTQ;

    invoke-direct {p2, p0}, Lcom/android/systemui/biometrics/-$$Lambda$BiometricDialogView$0WbgvKDg-E592VyX7dMGcDXbGTQ;-><init>(Lcom/android/systemui/biometrics/BiometricDialogView;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 276
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestFocus()Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/biometrics/BiometricDialogView;)Landroid/view/animation/Interpolator;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLinearOutSlowIn:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/biometrics/BiometricDialogView;)Landroid/view/WindowManager;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mWindowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/systemui/biometrics/BiometricDialogView;Z)Z
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mAnimatingAway:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/biometrics/BiometricDialogView;)F
    .locals 0

    .line 63
    iget p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mAnimationTranslationOffset:F

    return p0
.end method

.method private getDescriptionTextId()I
    .locals 1

    .line 401
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mIsFingerprint:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mIsFace:Z

    if-eqz v0, :cond_0

    .line 402
    sget p0, Lcom/android/systemui/R$string;->applock_fingerprint_face:I

    return p0

    .line 403
    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mIsFace:Z

    if-eqz p0, :cond_1

    .line 404
    sget p0, Lcom/android/systemui/R$string;->applock_face:I

    return p0

    .line 406
    :cond_1
    sget p0, Lcom/android/systemui/R$string;->applock_fingerprint:I

    return p0
.end method

.method private setDismissesDialog(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 448
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 449
    new-instance v0, Lcom/android/systemui/biometrics/-$$Lambda$BiometricDialogView$agcwyvTgMSypTMy6oXZQaR3oBGY;

    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/-$$Lambda$BiometricDialogView$agcwyvTgMSypTMy6oXZQaR3oBGY;-><init>(Lcom/android/systemui/biometrics/BiometricDialogView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected announceAccessibilityEvent()V
    .locals 3

    .line 665
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 668
    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    const/16 v1, 0x800

    .line 669
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    const/4 v1, 0x1

    .line 670
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 671
    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 672
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p0, p0, v1}, Landroid/widget/LinearLayout;->notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V

    return-void
.end method

.method public forceRemove()V
    .locals 1

    .line 503
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 504
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 505
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 506
    iput-boolean v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mAnimatingAway:Z

    const/4 v0, 0x1

    .line 507
    iput-boolean v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mWasForceRemoved:Z

    return-void
.end method

.method protected getAnimatingAwayDuration()I
    .locals 1

    .line 411
    iget-boolean p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mAppLockDialog:Z

    if-eqz p0, :cond_0

    const p0, 0x3fa66666    # 1.3f

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    const/high16 v0, 0x43af0000    # 350.0f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method protected abstract getAuthenticatedAccessibilityResourceId()I
.end method

.method protected abstract getDelayAfterAuthenticatedDurationMs()I
.end method

.method protected abstract getHintStringResourceId()I
.end method

.method protected abstract getIconDescriptionResourceId()I
.end method

.method public bridge synthetic getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 63
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricDialogView;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 7

    .line 649
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x7de

    const/high16 v4, 0x1000000

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 655
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v1, 0x80010

    or-int/2addr v0, v1

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const-string v0, "BiometricDialogView"

    .line 657
    invoke-virtual {v6, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 658
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mWindowToken:Landroid/os/IBinder;

    iput-object p0, v6, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    return-object v6
.end method

.method protected abstract handleResetMessage()V
.end method

.method public synthetic lambda$new$0$BiometricDialogView(Landroid/view/View;)V
    .locals 1

    .line 249
    iget p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mState:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 252
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mCallback:Lcom/android/systemui/biometrics/DialogViewCallback;

    invoke-interface {p0}, Lcom/android/systemui/biometrics/DialogViewCallback;->onNegativePressed()V

    goto :goto_1

    .line 250
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mCallback:Lcom/android/systemui/biometrics/DialogViewCallback;

    invoke-interface {p0}, Lcom/android/systemui/biometrics/DialogViewCallback;->onUserCanceled()V

    :goto_1
    return-void
.end method

.method public synthetic lambda$new$1$BiometricDialogView()V
    .locals 0

    .line 259
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mCallback:Lcom/android/systemui/biometrics/DialogViewCallback;

    invoke-interface {p0}, Lcom/android/systemui/biometrics/DialogViewCallback;->onPositivePressed()V

    return-void
.end method

.method public synthetic lambda$new$2$BiometricDialogView(Landroid/view/View;)V
    .locals 3

    const/4 p1, 0x4

    .line 257
    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/BiometricDialogView;->updateState(I)V

    .line 258
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/biometrics/-$$Lambda$BiometricDialogView$Qw9PC-sGZ_LOQrNNiplnrZAouws;

    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/-$$Lambda$BiometricDialogView$Qw9PC-sGZ_LOQrNNiplnrZAouws;-><init>(Lcom/android/systemui/biometrics/BiometricDialogView;)V

    .line 260
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricDialogView;->getDelayAfterAuthenticatedDurationMs()I

    move-result p0

    int-to-long v1, p0

    .line 258
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public synthetic lambda$new$3$BiometricDialogView(Landroid/view/View;)V
    .locals 1

    .line 264
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricDialogView;->handleResetMessage()V

    const/4 p1, 0x1

    .line 265
    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/BiometricDialogView;->updateState(I)V

    const/4 p1, 0x0

    .line 266
    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/BiometricDialogView;->showTryAgainButton(Z)V

    .line 268
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 271
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mCallback:Lcom/android/systemui/biometrics/DialogViewCallback;

    invoke-interface {p0}, Lcom/android/systemui/biometrics/DialogViewCallback;->onTryAgainPressed()V

    return-void
.end method

.method public synthetic lambda$setDismissesDialog$4$BiometricDialogView(Landroid/view/View;)V
    .locals 1

    .line 450
    iget p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mState:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricDialogView;->shouldGrayAreaDismissDialog()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 451
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mCallback:Lcom/android/systemui/biometrics/DialogViewCallback;

    invoke-interface {p0}, Lcom/android/systemui/biometrics/DialogViewCallback;->onUserCanceled()V

    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 8

    .line 292
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 294
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/R$id;->background:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 296
    iget-object v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mUserManager:Landroid/os/UserManager;

    iget v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 297
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/systemui/R$drawable;->work_challenge_background:I

    iget-object v4, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 298
    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 297
    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 299
    iget-object v3, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget v4, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mUserId:I

    invoke-virtual {v3, v4}, Landroid/app/admin/DevicePolicyManager;->getOrganizationColorForUser(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 301
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 302
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 304
    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 305
    sget v1, Lcom/android/systemui/R$color;->biometric_dialog_dim_color:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 308
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mNegativeButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 310
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/leak/RotationUtils;->getRotation(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v3, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDialogWidth:F

    float-to-int v3, v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mRestoredState:Landroid/os/Bundle;

    const-string v3, "negative_text"

    const/4 v4, 0x1

    if-nez v0, :cond_3

    .line 315
    invoke-virtual {p0, v4}, Lcom/android/systemui/biometrics/BiometricDialogView;->updateState(I)V

    .line 316
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mNegativeButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v5, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 317
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricDialogView;->getHintStringResourceId()I

    move-result v0

    if-eqz v0, :cond_2

    .line 319
    iget-object v5, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(I)V

    .line 320
    iget-object v5, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    iget-object v6, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 321
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 323
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 325
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricDialogView;->announceAccessibilityEvent()V

    goto :goto_2

    .line 327
    :cond_3
    iget v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mState:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/BiometricDialogView;->updateState(I)V

    .line 330
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mBundle:Landroid/os/Bundle;

    const-string v5, "applock_package_name"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 331
    iget-object v5, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mBundle:Landroid/os/Bundle;

    const-string v6, "title"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 332
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/16 v7, 0x8

    if-eqz v6, :cond_4

    .line 333
    iput-boolean v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mAppLockDialog:Z

    .line 334
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    .line 337
    :cond_4
    iput-boolean v4, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mAppLockDialog:Z

    .line 340
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget v6, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mUserId:I

    invoke-virtual {v4, v0, v1, v6}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-object v0, v2

    :goto_3
    if-nez v0, :cond_5

    goto :goto_4

    .line 343
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_4
    if-nez v2, :cond_6

    .line 345
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 347
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 348
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 350
    :goto_5
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mTitleText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/android/systemui/R$string;->accessibility_unlock_button:I

    .line 351
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 350
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    :goto_6
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mBundle:Landroid/os/Bundle;

    const-string v2, "subtitle"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 355
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 356
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mSubtitleText:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 357
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricDialogView;->announceAccessibilityEvent()V

    goto :goto_7

    .line 359
    :cond_7
    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mSubtitleText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 360
    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mSubtitleText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    :goto_7
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mBundle:Landroid/os/Bundle;

    const-string v2, "description"

    .line 364
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 365
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-boolean v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mAppLockDialog:Z

    if-nez v2, :cond_8

    .line 366
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDescriptionText:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 367
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricDialogView;->announceAccessibilityEvent()V

    goto :goto_8

    .line 369
    :cond_8
    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDescriptionText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 370
    iget-boolean v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mAppLockDialog:Z

    if-eqz v2, :cond_9

    .line 371
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 372
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/biometrics/BiometricDialogView;->getDescriptionTextId()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 374
    :cond_9
    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDescriptionText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    :goto_8
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricDialogView;->requiresConfirmation()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mRestoredState:Landroid/os/Bundle;

    if-nez v0, :cond_a

    .line 378
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 379
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 382
    :cond_a
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mWasForceRemoved:Z

    const/4 v2, 0x0

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mSkipIntro:Z

    if-eqz v0, :cond_b

    goto :goto_9

    .line 392
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDialog:Landroid/widget/LinearLayout;

    iget v3, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mAnimationTranslationOffset:F

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 393
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 394
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mShowAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_a

    .line 384
    :cond_c
    :goto_9
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 385
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 386
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDialog:Landroid/widget/LinearLayout;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 387
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 388
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 389
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricDialogView;->onDialogAnimatedIn()V

    .line 396
    :goto_a
    iput-boolean v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mWasForceRemoved:Z

    .line 397
    iput-boolean v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mSkipIntro:Z

    return-void
.end method

.method public onAuthenticationFailed(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    .line 563
    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/BiometricDialogView;->updateState(I)V

    .line 564
    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/BiometricDialogView;->showTemporaryMessage(Ljava/lang/String;)V

    return-void
.end method

.method public onDialogAnimatedIn()V
    .locals 2

    const/4 v0, 0x1

    .line 611
    iput-boolean v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mCompletedAnimatingIn:Z

    .line 613
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mPendingDismissDialog:Z

    if-eqz v0, :cond_0

    const-string v0, "BiometricDialogView"

    const-string v1, "onDialogAnimatedIn(): mPendingDismissDialog=true, dismissing now"

    .line 614
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricDialogView;->startDismiss()V

    const/4 v0, 0x0

    .line 616
    iput-boolean v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mPendingDismissDialog:Z

    :cond_0
    return-void
.end method

.method public onErrorReceived(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    .line 572
    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/BiometricDialogView;->updateState(I)V

    .line 573
    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/BiometricDialogView;->showTemporaryMessage(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 574
    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/BiometricDialogView;->showTryAgainButton(Z)V

    .line 575
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mCallback:Lcom/android/systemui/biometrics/DialogViewCallback;

    invoke-interface {p0}, Lcom/android/systemui/biometrics/DialogViewCallback;->onErrorShown()V

    return-void
.end method

.method public onHelpReceived(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    .line 558
    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/BiometricDialogView;->updateState(I)V

    .line 559
    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/BiometricDialogView;->showTemporaryMessage(Ljava/lang/String;)V

    return-void
.end method

.method public onSaveState(Landroid/os/Bundle;)V
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mTryAgainButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    const-string v1, "key_try_again_visibility"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 281
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    const-string v1, "key_confirm_visibility"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 282
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    const-string v1, "key_confirm_enabled"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 283
    iget v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mState:I

    const-string v1, "key_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 284
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const-string v1, "key_error_text_visibility"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 285
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "key_error_text_string"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 286
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    const-string v1, "key_error_text_is_temporary"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 287
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p0

    const-string v0, "key_error_text_color"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public requiresConfirmation()Z
    .locals 0

    .line 530
    iget-boolean p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mRequireConfirmation:Z

    return p0
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 5

    .line 621
    iput-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mRestoredState:Landroid/os/Bundle;

    const-string v0, "key_try_again_visibility"

    .line 622
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 623
    iget-object v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mTryAgainButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    const-string v1, "key_confirm_visibility"

    .line 624
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 625
    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    const-string v2, "key_confirm_enabled"

    .line 626
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 627
    iget-object v3, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setEnabled(Z)V

    const-string v2, "key_state"

    .line 628
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mState:I

    .line 629
    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    const-string v3, "key_error_text_string"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 630
    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    const-string v2, "key_error_text_visibility"

    .line 631
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 632
    iget-object v3, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    if-eq v0, v3, :cond_0

    if-ne v1, v3, :cond_1

    .line 635
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricDialogView;->announceAccessibilityEvent()V

    .line 637
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    const-string v1, "key_error_text_color"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v0, "key_error_text_is_temporary"

    .line 638
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 639
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    return-void
.end method

.method public setBundle(Landroid/os/Bundle;)V
    .locals 0

    .line 522
    iput-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mBundle:Landroid/os/Bundle;

    return-void
.end method

.method public setFaceAndFingerprint(ZZ)V
    .locals 3

    .line 415
    iput-boolean p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mIsFace:Z

    .line 416
    iput-boolean p2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mIsFingerprint:Z

    .line 417
    iget-boolean p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mIsFingerprint:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_5

    .line 418
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mBiometricIcon:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mHasFod:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 419
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    move p1, v0

    goto :goto_1

    :cond_1
    move p1, p2

    .line 421
    :goto_1
    iget-boolean v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mHasFod:Z

    if-eqz v1, :cond_6

    if-eqz p1, :cond_6

    .line 422
    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 423
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v1, -0x2

    const-string v2, "navigation_mode"

    .line 422
    invoke-static {p1, v2, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    goto :goto_2

    :cond_2
    move v0, p2

    .line 426
    :goto_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x105018d

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 428
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->biometric_dialog_fod_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 431
    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mBiometricIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_3

    move p1, v1

    goto :goto_3

    :cond_3
    if-le v1, p1, :cond_4

    sub-int p1, v1, p1

    goto :goto_3

    :cond_4
    move p1, p2

    .line 433
    :goto_3
    iput p1, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 436
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDialog:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 437
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDialog:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mBiometricIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 438
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDescriptionText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 439
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 440
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p0, p2, p2, p2, p2}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_4

    .line 442
    :cond_5
    iget-boolean p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mIsFace:Z

    if-eqz p1, :cond_6

    .line 443
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mBiometricIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    :goto_4
    return-void
.end method

.method public setRequireConfirmation(Z)V
    .locals 0

    .line 526
    iput-boolean p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mRequireConfirmation:Z

    return-void
.end method

.method public setSkipIntro(Z)V
    .locals 0

    .line 514
    iput-boolean p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mSkipIntro:Z

    return-void
.end method

.method public setUserId(I)V
    .locals 0

    .line 534
    iput p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mUserId:I

    return-void
.end method

.method protected abstract shouldGrayAreaDismissDialog()Z
.end method

.method protected showTemporaryMessage(Ljava/lang/String;)V
    .locals 3

    .line 543
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 544
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 545
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorColor:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 546
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 547
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 548
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public showTryAgainButton(Z)V
    .locals 0

    return-void
.end method

.method public startDismiss()V
    .locals 3

    .line 457
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mCompletedAnimatingIn:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, "BiometricDialogView"

    const-string v2, "startDismiss(): waiting for onDialogAnimatedIn"

    .line 458
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iput-boolean v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mPendingDismissDialog:Z

    return-void

    .line 463
    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mAnimatingAway:Z

    .line 466
    new-instance v0, Lcom/android/systemui/biometrics/BiometricDialogView$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/BiometricDialogView$4;-><init>(Lcom/android/systemui/biometrics/BiometricDialogView;)V

    .line 478
    new-instance v1, Lcom/android/systemui/biometrics/BiometricDialogView$5;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/biometrics/BiometricDialogView$5;-><init>(Lcom/android/systemui/biometrics/BiometricDialogView;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected abstract updateIcon(II)V
.end method

.method public updateState(I)V
    .locals 6

    const/4 v0, 0x3

    const/4 v1, 0x4

    if-ne p1, v0, :cond_0

    .line 580
    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 581
    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mTextColor:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 582
    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    sget v4, Lcom/android/systemui/R$string;->biometric_dialog_tap_confirm:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 583
    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    .line 584
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$string;->biometric_dialog_tap_confirm:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 583
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 585
    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 586
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricDialogView;->announceAccessibilityEvent()V

    .line 587
    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 588
    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    .line 590
    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mPositiveButton:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 591
    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 592
    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 593
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricDialogView;->announceAccessibilityEvent()V

    :cond_1
    :goto_0
    if-eq p1, v0, :cond_3

    if-ne p1, v1, :cond_2

    goto :goto_1

    .line 600
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mNegativeButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mBundle:Landroid/os/Bundle;

    const-string v2, "negative_text"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 597
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mNegativeButton:Landroid/widget/Button;

    sget v1, Lcom/android/systemui/R$string;->cancel:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 598
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->cancel:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 603
    :goto_2
    iget v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mState:I

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/biometrics/BiometricDialogView;->updateIcon(II)V

    .line 604
    iput p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mState:I

    return-void
.end method
