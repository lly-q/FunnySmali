.class public Lcom/android/systemui/biometrics/BiometricDialogImpl;
.super Lcom/android/systemui/SystemUI;
.source "BiometricDialogImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/biometrics/BiometricDialogImpl$Callback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/systemui/biometrics/BiometricDialogImpl$Callback;

.field private mCurrentDialog:Lcom/android/systemui/biometrics/BiometricDialogView;

.field private mCurrentDialogArgs:Lcom/android/internal/os/SomeArgs;

.field private mDialogShowing:Z

.field private mHandler:Landroid/os/Handler;

.field private mReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

.field private mTryAgainPressed:Z

.field private mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field final mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 63
    new-instance v0, Lcom/android/systemui/biometrics/BiometricDialogImpl$Callback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/biometrics/BiometricDialogImpl$Callback;-><init>(Lcom/android/systemui/biometrics/BiometricDialogImpl;Lcom/android/systemui/biometrics/BiometricDialogImpl$1;)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCallback:Lcom/android/systemui/biometrics/BiometricDialogImpl$Callback;

    .line 66
    new-instance v0, Lcom/android/systemui/biometrics/BiometricDialogImpl$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/biometrics/BiometricDialogImpl$1;-><init>(Lcom/android/systemui/biometrics/BiometricDialogImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mHandler:Landroid/os/Handler;

    .line 141
    new-instance v0, Lcom/android/systemui/biometrics/BiometricDialogImpl$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/BiometricDialogImpl$2;-><init>(Lcom/android/systemui/biometrics/BiometricDialogImpl;)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/biometrics/BiometricDialogImpl;Lcom/android/internal/os/SomeArgs;ZLandroid/os/Bundle;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->handleShowDialog(Lcom/android/internal/os/SomeArgs;ZLandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/biometrics/BiometricDialogImpl;)Landroid/os/Handler;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/biometrics/BiometricDialogImpl;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mDialogShowing:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/biometrics/BiometricDialogImpl;ZLjava/lang/String;Z)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->handleBiometricAuthenticated(ZLjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/biometrics/BiometricDialogImpl;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->handleBiometricHelp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/biometrics/BiometricDialogImpl;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->handleBiometricError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/biometrics/BiometricDialogImpl;Z)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->handleHideDialog(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/biometrics/BiometricDialogImpl;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->handleButtonNegative()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/biometrics/BiometricDialogImpl;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->handleUserCanceled()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/biometrics/BiometricDialogImpl;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->handleButtonPositive()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/biometrics/BiometricDialogImpl;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->handleTryAgainPressed()V

    return-void
.end method

.method private handleBiometricAuthenticated(ZLjava/lang/String;Z)V
    .locals 2

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleBiometricAuthenticated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " requireConfirmation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricDialogImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 276
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/android/systemui/biometrics/BiometricDialogView;

    iget-object p2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 277
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/android/systemui/biometrics/BiometricDialogView;

    .line 278
    invoke-virtual {v0}, Lcom/android/systemui/biometrics/BiometricDialogView;->getAuthenticatedAccessibilityResourceId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    .line 276
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_0

    .line 280
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/android/systemui/biometrics/BiometricDialogView;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/BiometricDialogView;->updateState(I)V

    goto :goto_0

    .line 282
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/android/systemui/biometrics/BiometricDialogView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/android/systemui/biometrics/BiometricDialogView;->updateState(I)V

    .line 283
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/systemui/biometrics/-$$Lambda$BiometricDialogImpl$ClyZbr2Bp-ugYn9TuyRxsmSCP_U;

    invoke-direct {p2, p0}, Lcom/android/systemui/biometrics/-$$Lambda$BiometricDialogImpl$ClyZbr2Bp-ugYn9TuyRxsmSCP_U;-><init>(Lcom/android/systemui/biometrics/BiometricDialogImpl;)V

    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/android/systemui/biometrics/BiometricDialogView;

    .line 285
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricDialogView;->getDelayAfterAuthenticatedDurationMs()I

    move-result p0

    int-to-long v0, p0

    .line 283
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 288
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/android/systemui/biometrics/BiometricDialogView;

    invoke-virtual {p0, p2}, Lcom/android/systemui/biometrics/BiometricDialogView;->onAuthenticationFailed(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private handleBiometricError(Ljava/lang/String;)V
    .locals 2

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleBiometricError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricDialogImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mDialogShowing:Z

    if-nez v0, :cond_0

    const-string p0, "Dialog already dismissed"

    .line 300
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 303
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/android/systemui/biometrics/BiometricDialogView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/BiometricDialogView;->onErrorReceived(Ljava/lang/String;)V

    return-void
.end method

.method private handleBiometricHelp(Ljava/lang/String;)V
    .locals 2

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleBiometricHelp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricDialogImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/android/systemui/biometrics/BiometricDialogView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/BiometricDialogView;->onHelpReceived(Ljava/lang/String;)V

    return-void
.end method

.method private handleButtonNegative()V
    .locals 3

    .line 328
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    const-string v1, "BiometricDialogImpl"

    if-nez v0, :cond_0

    const-string p0, "Receiver is null"

    .line 329
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v2, 0x2

    .line 333
    :try_start_0
    invoke-interface {v0, v2}, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;->onDialogDismissed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Remote exception when handling negative button"

    .line 335
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    .line 337
    invoke-direct {p0, v0}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->handleHideDialog(Z)V

    return-void
.end method

.method private handleButtonPositive()V
    .locals 3

    .line 341
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    const-string v1, "BiometricDialogImpl"

    if-nez v0, :cond_0

    const-string p0, "Receiver is null"

    .line 342
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v2, 0x1

    .line 346
    :try_start_0
    invoke-interface {v0, v2}, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;->onDialogDismissed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Remote exception when handling positive button"

    .line 348
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    .line 350
    invoke-direct {p0, v0}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->handleHideDialog(Z)V

    return-void
.end method

.method private handleHideDialog(Z)V
    .locals 2

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleHideDialog, userCanceled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricDialogImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mDialogShowing:Z

    if-nez v0, :cond_0

    .line 311
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Dialog already dismissed, userCanceled: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 316
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;->onDialogDismissed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "RemoteException when hiding dialog"

    .line 318
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 321
    iput-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    const/4 p1, 0x0

    .line 322
    iput-boolean p1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mDialogShowing:Z

    .line 323
    iput-boolean p1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mTryAgainPressed:Z

    .line 324
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/android/systemui/biometrics/BiometricDialogView;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricDialogView;->startDismiss()V

    return-void
.end method

.method private handleShowDialog(Lcom/android/internal/os/SomeArgs;ZLandroid/os/Bundle;)V
    .locals 9

    .line 218
    iput-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialogArgs:Lcom/android/internal/os/SomeArgs;

    .line 219
    iget v0, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 222
    iget-object v1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/android/systemui/biometrics/BiometricDialogView;

    and-int/lit8 v2, v0, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v3

    .line 225
    :goto_1
    iget-boolean v6, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mTryAgainPressed:Z

    const-string v7, "BiometricDialogImpl"

    if-nez v6, :cond_5

    if-eqz v5, :cond_2

    if-eqz v2, :cond_2

    .line 227
    new-instance v1, Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView;

    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCallback:Lcom/android/systemui/biometrics/BiometricDialogImpl$Callback;

    invoke-direct {v1, v6, v8}, Lcom/android/systemui/biometrics/FingerprintAndFaceDialogView;-><init>(Landroid/content/Context;Lcom/android/systemui/biometrics/DialogViewCallback;)V

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_3

    .line 229
    new-instance v1, Lcom/android/systemui/biometrics/FingerprintDialogView;

    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCallback:Lcom/android/systemui/biometrics/BiometricDialogImpl$Callback;

    invoke-direct {v1, v6, v8}, Lcom/android/systemui/biometrics/FingerprintDialogView;-><init>(Landroid/content/Context;Lcom/android/systemui/biometrics/DialogViewCallback;)V

    goto :goto_2

    :cond_3
    if-eqz v5, :cond_4

    .line 231
    new-instance v1, Lcom/android/systemui/biometrics/FaceDialogView;

    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCallback:Lcom/android/systemui/biometrics/BiometricDialogImpl$Callback;

    invoke-direct {v1, v6, v8}, Lcom/android/systemui/biometrics/FaceDialogView;-><init>(Landroid/content/Context;Lcom/android/systemui/biometrics/DialogViewCallback;)V

    goto :goto_2

    .line 233
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unsupported type: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 238
    :cond_5
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleShowDialog,  savedState: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " mCurrentDialog: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/android/systemui/biometrics/BiometricDialogView;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " newDialog: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " type: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_6

    .line 247
    invoke-virtual {v1, p3}, Lcom/android/systemui/biometrics/BiometricDialogView;->restoreState(Landroid/os/Bundle;)V

    goto :goto_3

    .line 248
    :cond_6
    iget-object p3, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/android/systemui/biometrics/BiometricDialogView;

    if-eqz p3, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mDialogShowing:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mTryAgainPressed:Z

    if-nez v0, :cond_7

    .line 253
    invoke-virtual {p3}, Lcom/android/systemui/biometrics/BiometricDialogView;->forceRemove()V

    .line 254
    iput-boolean v3, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mDialogShowing:Z

    .line 257
    :cond_7
    :goto_3
    invoke-virtual {v1, v5, v2}, Lcom/android/systemui/biometrics/BiometricDialogView;->setFaceAndFingerprint(ZZ)V

    .line 258
    iget-object p3, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast p3, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    iput-object p3, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    .line 259
    iget-object p3, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast p3, Landroid/os/Bundle;

    invoke-virtual {v1, p3}, Lcom/android/systemui/biometrics/BiometricDialogView;->setBundle(Landroid/os/Bundle;)V

    .line 260
    iget-object p3, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {v1, p3}, Lcom/android/systemui/biometrics/BiometricDialogView;->setRequireConfirmation(Z)V

    .line 261
    iget p1, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    invoke-virtual {v1, p1}, Lcom/android/systemui/biometrics/BiometricDialogView;->setUserId(I)V

    .line 262
    invoke-virtual {v1, p2}, Lcom/android/systemui/biometrics/BiometricDialogView;->setSkipIntro(Z)V

    .line 263
    iput-object v1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/android/systemui/biometrics/BiometricDialogView;

    .line 264
    iget-boolean p1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mTryAgainPressed:Z

    if-nez p1, :cond_8

    iget-boolean p1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mDialogShowing:Z

    if-nez p1, :cond_8

    .line 265
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mWindowManager:Landroid/view/WindowManager;

    iget-object p2, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/android/systemui/biometrics/BiometricDialogView;

    invoke-virtual {p2}, Lcom/android/systemui/biometrics/BiometricDialogView;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 267
    :cond_8
    iput-boolean v4, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mDialogShowing:Z

    .line 268
    iput-boolean v3, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mTryAgainPressed:Z

    return-void
.end method

.method private handleTryAgainPressed()V
    .locals 2

    const/4 v0, 0x1

    .line 359
    :try_start_0
    iput-boolean v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mTryAgainPressed:Z

    .line 360
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    invoke-interface {p0}, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;->onTryAgainPressed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "BiometricDialogImpl"

    const-string v1, "RemoteException when handling try again"

    .line 362
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private handleUserCanceled()V
    .locals 1

    const/4 v0, 0x1

    .line 354
    invoke-direct {p0, v0}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->handleHideDialog(Z)V

    return-void
.end method


# virtual methods
.method public hideBiometricDialog()V
    .locals 2

    const-string v0, "BiometricDialogImpl"

    const-string v1, "hideBiometricDialog"

    .line 213
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public synthetic lambda$handleBiometricAuthenticated$0$BiometricDialogImpl()V
    .locals 1

    const/4 v0, 0x0

    .line 284
    invoke-direct {p0, v0}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->handleHideDialog(Z)V

    return-void
.end method

.method public onBiometricAuthenticated(ZLjava/lang/String;Z)V
    .locals 2

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBiometricAuthenticated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricDialogImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 191
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 192
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 193
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 194
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onBiometricError(Ljava/lang/String;)V
    .locals 2

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBiometricError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricDialogImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onBiometricHelp(Ljava/lang/String;)V
    .locals 2

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBiometricHelp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricDialogImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 201
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 202
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 368
    invoke-super {p0, p1}, Lcom/android/systemui/SystemUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 369
    iget-boolean p1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mDialogShowing:Z

    .line 372
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 373
    iget-object v1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/android/systemui/biometrics/BiometricDialogView;

    if-eqz v1, :cond_0

    .line 374
    invoke-virtual {v1, v0}, Lcom/android/systemui/biometrics/BiometricDialogView;->onSaveState(Landroid/os/Bundle;)V

    .line 377
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mDialogShowing:Z

    if-eqz v1, :cond_1

    .line 378
    iget-object v1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/android/systemui/biometrics/BiometricDialogView;

    invoke-virtual {v1}, Lcom/android/systemui/biometrics/BiometricDialogView;->forceRemove()V

    const/4 v1, 0x0

    .line 379
    iput-boolean v1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mDialogShowing:Z

    .line 380
    iput-boolean v1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mTryAgainPressed:Z

    :cond_1
    if-eqz p1, :cond_2

    .line 384
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialogArgs:Lcom/android/internal/os/SomeArgs;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v0}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->handleShowDialog(Lcom/android/internal/os/SomeArgs;ZLandroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method public showBiometricDialog(Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;IZI)V
    .locals 2

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showBiometricDialog, type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", requireConfirmation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricDialogImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 173
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 174
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 175
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 176
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 177
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 178
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 179
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 180
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 181
    iput p5, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 182
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public start()V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.fingerprint"

    .line 154
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.hardware.biometrics.face"

    .line 155
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.hardware.biometrics.iris"

    .line 156
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    :cond_0
    const-class v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p0, v0}, Lcom/android/systemui/SystemUI;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 158
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mWindowManager:Landroid/view/WindowManager;

    .line 159
    const-class v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iput-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 160
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
