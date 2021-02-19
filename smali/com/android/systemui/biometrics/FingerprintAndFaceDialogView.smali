.class public Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView;
.super Lcom/android/systemui/biometrics/BiometricDialogView;
.source "FingerprintAndFaceDialogView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView$IconController;
    }
.end annotation


# instance fields
.field private mDialogAnimatedIn:Z

.field private final mErrorToIdleAnimationRunnable:Ljava/lang/Runnable;

.field private mFaceIcon:Landroid/widget/ImageView;

.field private mIconController:Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView$IconController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/biometrics/DialogViewCallback;)V
    .locals 1

    .line 123
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/biometrics/BiometricDialogView;-><init>(Landroid/content/Context;Lcom/android/systemui/biometrics/DialogViewCallback;)V

    .line 116
    new-instance p2, Lcom/android/systemui/biometrics/-$$Lambda$FingerprintAndFaceDialogView$Tvpmusu48H8N3sTpfC3RBgR36qc;

    invoke-direct {p2, p0}, Lcom/android/systemui/biometrics/-$$Lambda$FingerprintAndFaceDialogView$Tvpmusu48H8N3sTpfC3RBgR36qc;-><init>(Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView;)V

    iput-object p2, p0, Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView;->mErrorToIdleAnimationRunnable:Ljava/lang/Runnable;

    .line 125
    new-instance p2, Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView$IconController;

    invoke-direct {p2, p0}, Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView$IconController;-><init>(Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView;)V

    iput-object p2, p0, Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView;->mIconController:Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView$IconController;

    .line 126
    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView;->mFaceIcon:Landroid/widget/ImageView;

    .line 127
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->biometric_dialog_biometric_icon_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 129
    iget-object p2, p0, Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView;->mFaceIcon:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 130
    iget-object p2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView;->mFaceIcon:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 131
    iget-object p0, p0, Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView;->mFaceIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 p2, 0x31

    .line 132
    iput p2, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 133
    iput p1, p0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 134
    iput p1, p0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 135
    iput p1, p0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView;)Landroid/content/Context;
    .locals 0

    .line 45
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView;)Landroid/widget/ImageView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView;->mFaceIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView;)Landroid/content/Context;
    .locals 0

    .line 45
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView;)Landroid/content/Context;
    .locals 0

    .line 45
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method protected getAuthenticatedAccessibilityResourceId()I
    .locals 0

    const p0, 0x104029a

    return p0
.end method

.method protected getDelayAfterAuthenticatedDurationMs()I
    .locals 0

    const/16 p0, 0xc8

    return p0
.end method

.method protected getHintStringResourceId()I
    .locals 0

    .line 178
    sget p0, Lcom/android/systemui/R$string;->fingerprint_dialog_touch_sensor:I

    return p0
.end method

.method protected getIconDescriptionResourceId()I
    .locals 0

    .line 188
    sget p0, Lcom/android/systemui/R$string;->accessibility_fingerprint_dialog_fingerprint_icon:I

    return p0
.end method

.method protected handleResetMessage()V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView;->getHintStringResourceId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 147
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 148
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricDialogView;->announceAccessibilityEvent()V

    return-void
.end method

.method public synthetic lambda$new$0$FingerprintAndFaceDialogView()V
    .locals 1

    const/4 v0, 0x0

    .line 117
    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/BiometricDialogView;->updateState(I)V

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricDialogView;->announceAccessibilityEvent()V

    return-void
.end method

.method public onAuthenticationFailed(Ljava/lang/String;)V
    .locals 0

    .line 160
    invoke-super {p0, p1}, Lcom/android/systemui/biometrics/BiometricDialogView;->onAuthenticationFailed(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 161
    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView;->showTryAgainButton(Z)V

    return-void
.end method

.method public onDialogAnimatedIn()V
    .locals 1

    .line 260
    invoke-super {p0}, Lcom/android/systemui/biometrics/BiometricDialogView;->onDialogAnimatedIn()V

    const/4 v0, 0x1

    .line 261
    iput-boolean v0, p0, Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView;->mDialogAnimatedIn:Z

    .line 262
    iget-object p0, p0, Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView;->mIconController:Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView$IconController;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView$IconController;->startPulsing()V

    return-void
.end method

.method public onSaveState(Landroid/os/Bundle;)V
    .locals 1

    .line 140
    invoke-super {p0, p1}, Lcom/android/systemui/biometrics/BiometricDialogView;->onSaveState(Landroid/os/Bundle;)V

    .line 141
    iget-boolean p0, p0, Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView;->mDialogAnimatedIn:Z

    const-string v0, "key_dialog_animated_in"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 1

    .line 153
    invoke-super {p0, p1}, Lcom/android/systemui/biometrics/BiometricDialogView;->restoreState(Landroid/os/Bundle;)V

    const-string v0, "key_dialog_animated_in"

    .line 155
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView;->mDialogAnimatedIn:Z

    return-void
.end method

.method protected shouldGrayAreaDismissDialog()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public showTryAgainButton(Z)V
    .locals 2

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    .line 167
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mTryAgainButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 168
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 169
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricDialogView;->announceAccessibilityEvent()V

    goto :goto_0

    .line 171
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mTryAgainButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 172
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricDialogView;->announceAccessibilityEvent()V

    :goto_0
    return-void
.end method

.method protected updateIcon(II)V
    .locals 7

    .line 193
    iget-object v0, p0, Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView;->mIconController:Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView$IconController;

    iput p2, v0, Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView$IconController;->mState:I

    const-wide/16 v1, 0x7d0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne p2, v3, :cond_1

    .line 196
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView;->mErrorToIdleAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 197
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView;->mDialogAnimatedIn:Z

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView;->mIconController:Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView$IconController;

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView$IconController;->startPulsing()V

    goto :goto_0

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView;->mIconController:Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView$IconController;

    sget v3, Lcom/android/systemui/R$drawable;->face_dialog_pulse_dark_to_light:I

    invoke-virtual {v0, v3}, Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView$IconController;->showIcon(I)V

    .line 202
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView;->mFaceIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->biometric_dialog_face_icon_description_authenticating:I

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_1
    const/4 v5, 0x3

    const/4 v6, 0x4

    if-ne p1, v5, :cond_2

    if-ne p2, v6, :cond_2

    .line 205
    sget v3, Lcom/android/systemui/R$drawable;->face_dialog_dark_to_checkmark:I

    invoke-virtual {v0, v3}, Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView$IconController;->animateOnce(I)V

    .line 206
    iget-object v0, p0, Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView;->mFaceIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->biometric_dialog_face_icon_description_confirmed:I

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_2
    if-ne p1, v4, :cond_3

    if-nez p2, :cond_3

    .line 209
    iget-object v0, p0, Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView;->mIconController:Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView$IconController;

    sget v3, Lcom/android/systemui/R$drawable;->face_dialog_error_to_idle:I

    invoke-virtual {v0, v3}, Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView$IconController;->animateOnce(I)V

    .line 210
    iget-object v0, p0, Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView;->mFaceIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->biometric_dialog_face_icon_description_idle:I

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_3
    if-ne p1, v4, :cond_4

    if-ne p2, v6, :cond_4

    .line 213
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView;->mErrorToIdleAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 214
    iget-object v0, p0, Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView;->mIconController:Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView$IconController;

    sget v3, Lcom/android/systemui/R$drawable;->face_dialog_dark_to_checkmark:I

    invoke-virtual {v0, v3}, Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView$IconController;->animateOnce(I)V

    .line 215
    iget-object v0, p0, Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView;->mFaceIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->biometric_dialog_face_icon_description_authenticated:I

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_4
    if-ne p2, v4, :cond_5

    .line 223
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView;->mErrorToIdleAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 224
    iget-object v0, p0, Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView;->mIconController:Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView$IconController;

    sget v3, Lcom/android/systemui/R$drawable;->face_dialog_dark_to_error:I

    invoke-virtual {v0, v3}, Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView$IconController;->animateOnce(I)V

    .line 225
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView;->mErrorToIdleAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_5
    if-ne p1, v3, :cond_6

    if-ne p2, v6, :cond_6

    .line 229
    iget-object v0, p0, Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView;->mIconController:Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView$IconController;

    sget v3, Lcom/android/systemui/R$drawable;->face_dialog_dark_to_checkmark:I

    invoke-virtual {v0, v3}, Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView$IconController;->animateOnce(I)V

    .line 230
    iget-object v0, p0, Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView;->mFaceIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->biometric_dialog_face_icon_description_authenticated:I

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_6
    if-ne p2, v5, :cond_7

    .line 233
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView;->mErrorToIdleAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 234
    iget-object v0, p0, Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView;->mIconController:Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView$IconController;

    sget v3, Lcom/android/systemui/R$drawable;->face_dialog_wink_from_dark:I

    invoke-virtual {v0, v3}, Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView$IconController;->animateOnce(I)V

    .line 235
    iget-object v0, p0, Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView;->mFaceIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->biometric_dialog_face_icon_description_authenticated:I

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_7
    if-nez p2, :cond_8

    .line 238
    iget-object v0, p0, Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView;->mIconController:Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView$IconController;

    sget v3, Lcom/android/systemui/R$drawable;->face_dialog_idle_static:I

    invoke-virtual {v0, v3}, Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView$IconController;->showStatic(I)V

    .line 239
    iget-object v0, p0, Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView;->mFaceIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->biometric_dialog_face_icon_description_idle:I

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 242
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown animation from "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "FingerprintAndFaceDialogView"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_9
    :goto_1
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$drawable;->fingerprint_dialog_fp_to_error:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 246
    iget-object v3, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mBiometricIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-ne p1, v4, :cond_a

    if-ne p2, v4, :cond_a

    .line 253
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView;->mErrorToIdleAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 254
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView;->mErrorToIdleAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_a
    return-void
.end method
