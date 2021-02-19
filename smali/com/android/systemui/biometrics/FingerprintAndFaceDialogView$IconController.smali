.class final Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView$IconController;
.super Landroid/graphics/drawable/Animatable2$AnimationCallback;
.source "FingerprintAndFaceDialogView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "IconController"
.end annotation


# instance fields
.field private mLastPulseDirection:Z

.field mState:I

.field final synthetic this$0:Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView;


# direct methods
.method constructor <init>(Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView$IconController;->this$0:Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView;

    invoke-direct {p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    const/4 p1, 0x0

    .line 66
    iput p1, p0, Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView$IconController;->mState:I

    return-void
.end method

.method private animateIcon(IZ)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView$IconController;->this$0:Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView;

    .line 89
    invoke-static {v0}, Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView;->access$300(Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 90
    iget-object v0, p0, Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView$IconController;->this$0:Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView;

    invoke-static {v0}, Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView;->access$100(Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->forceAnimationOnUI()V

    if-eqz p2, :cond_0

    .line 93
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    .line 95
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    return-void
.end method

.method private pulseInNextDirection()V
    .locals 2

    .line 99
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView$IconController;->mLastPulseDirection:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/android/systemui/R$drawable;->face_dialog_pulse_dark_to_light:I

    goto :goto_0

    .line 100
    :cond_0
    sget v0, Lcom/android/systemui/R$drawable;->face_dialog_pulse_light_to_dark:I

    :goto_0
    const/4 v1, 0x1

    .line 101
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView$IconController;->animateIcon(IZ)V

    .line 102
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView$IconController;->mLastPulseDirection:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView$IconController;->mLastPulseDirection:Z

    return-void
.end method


# virtual methods
.method public animateOnce(I)V
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView$IconController;->animateIcon(IZ)V

    return-void
.end method

.method public onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 107
    invoke-super {p0, p1}, Landroid/graphics/drawable/Animatable2$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    .line 109
    iget p1, p0, Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView$IconController;->mState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 111
    invoke-direct {p0}, Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView$IconController;->pulseInNextDirection()V

    :cond_0
    return-void
.end method

.method public showIcon(I)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView$IconController;->this$0:Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView;

    invoke-static {v0}, Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView;->access$200(Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 84
    iget-object p0, p0, Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView$IconController;->this$0:Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView;

    invoke-static {p0}, Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView;->access$100(Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public showStatic(I)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView$IconController;->this$0:Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView;

    invoke-static {v0}, Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView;->access$100(Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView$IconController;->this$0:Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView;

    invoke-static {p0}, Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView;->access$000(Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public startPulsing()V
    .locals 2

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView$IconController;->mLastPulseDirection:Z

    .line 79
    sget v0, Lcom/android/systemui/R$drawable;->face_dialog_pulse_dark_to_light:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView$IconController;->animateIcon(IZ)V

    return-void
.end method
