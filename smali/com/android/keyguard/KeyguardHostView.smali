.class public Lcom/android/keyguard/KeyguardHostView;
.super Landroid/widget/FrameLayout;
.source "KeyguardHostView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCancelAction:Ljava/lang/Runnable;

.field private mDismissAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

.field protected mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field protected mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 105
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardHostView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 109
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 55
    iput-object p2, p0, Lcom/android/keyguard/KeyguardHostView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 61
    new-instance p2, Lcom/android/keyguard/KeyguardHostView$1;

    invoke-direct {p2, p0}, Lcom/android/keyguard/KeyguardHostView$1;-><init>(Lcom/android/keyguard/KeyguardHostView;)V

    iput-object p2, p0, Lcom/android/keyguard/KeyguardHostView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 110
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method private handleMediaKeyEvent(Landroid/view/KeyEvent;)V
    .locals 2

    .line 401
    monitor-enter p0

    .line 402
    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 403
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAudioManager:Landroid/media/AudioManager;

    .line 406
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    return-void

    :catchall_0
    move-exception p1

    .line 406
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public cancelDismissAction()V
    .locals 1

    const/4 v0, 0x0

    .line 140
    invoke-virtual {p0, v0, v0}, Lcom/android/keyguard/KeyguardHostView;->setOnDismissAction(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;)V

    return-void
.end method

.method public cleanUp()V
    .locals 0

    .line 306
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->getSecurityContainer()Lcom/android/keyguard/KeyguardSecurityContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->onPause()V

    return-void
.end method

.method public dismiss(I)Z
    .locals 1

    const/4 v0, 0x0

    .line 191
    invoke-virtual {p0, v0, p1}, Lcom/android/keyguard/KeyguardHostView;->dismiss(ZI)Z

    move-result p0

    return p0
.end method

.method public dismiss(ZI)Z
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecurityContainer;->showNextSecurityScreenOrFinish(ZI)Z

    move-result p0

    return p0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 115
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 116
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    if-eqz p0, :cond_0

    .line 117
    invoke-interface {p0}, Lcom/android/keyguard/ViewMediatorCallback;->keyguardDoneDrawing()V

    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 311
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardHostView;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 314
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchSystemUiVisibilityChanged(I)V
    .locals 0

    .line 412
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchSystemUiVisibilityChanged(I)V

    .line 414
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    instance-of p1, p1, Landroid/app/Activity;

    if-nez p1, :cond_0

    const/high16 p1, 0x400000

    .line 415
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method

.method public finish(ZI)V
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mDismissAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    if-eqz v0, :cond_0

    .line 225
    invoke-interface {v0}, Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;->onDismiss()Z

    move-result v0

    const/4 v1, 0x0

    .line 226
    iput-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mDismissAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    .line 227
    iput-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mCancelAction:Ljava/lang/Runnable;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 229
    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    if-eqz p0, :cond_2

    if-eqz v0, :cond_1

    .line 231
    invoke-interface {p0, p1, p2}, Lcom/android/keyguard/ViewMediatorCallback;->keyguardDonePending(ZI)V

    goto :goto_1

    .line 233
    :cond_1
    invoke-interface {p0, p1, p2}, Lcom/android/keyguard/ViewMediatorCallback;->keyguardDone(ZI)V

    :cond_2
    :goto_1
    return-void
.end method

.method public getAccessibilityTitleForCurrentMode()Ljava/lang/CharSequence;
    .locals 0

    .line 260
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 0

    .line 451
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentSecurityView()Lcom/android/keyguard/KeyguardSecurityView;
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getCurrentSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method protected getSecurityContainer()Lcom/android/keyguard/KeyguardSecurityContainer;
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    return-object p0
.end method

.method public getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 0

    .line 447
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object p0

    return-object p0
.end method

.method public hasDismissActions()Z
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mDismissAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostView;->mCancelAction:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public interceptMediaKey(Landroid/view/KeyEvent;)Z
    .locals 9

    .line 325
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 326
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x7f

    const/16 v4, 0x7e

    const/16 v5, 0xde

    const/16 v6, 0x82

    const/16 v7, 0x4f

    const/4 v8, 0x1

    if-nez v1, :cond_4

    const/16 v1, 0x18

    if-eq v0, v1, :cond_3

    const/16 v1, 0x19

    if-eq v0, v1, :cond_3

    if-eq v0, v7, :cond_2

    if-eq v0, v6, :cond_2

    const/16 v1, 0xa4

    if-eq v0, v1, :cond_3

    if-eq v0, v5, :cond_2

    if-eq v0, v4, :cond_0

    if-eq v0, v3, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 333
    :cond_0
    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_1

    .line 334
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 337
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_2

    .line 338
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-eqz v0, :cond_2

    return v8

    .line 350
    :cond_2
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardHostView;->handleMediaKeyEvent(Landroid/view/KeyEvent;)V

    return v8

    :cond_3
    return v2

    .line 378
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v8, :cond_6

    if-eq v0, v7, :cond_5

    if-eq v0, v6, :cond_5

    if-eq v0, v5, :cond_5

    if-eq v0, v4, :cond_5

    if-eq v0, v3, :cond_5

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 392
    :cond_5
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardHostView;->handleMediaKeyEvent(Landroid/view/KeyEvent;)V

    return v8

    :cond_6
    :goto_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x55
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onCancelClicked()V
    .locals 0

    .line 245
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {p0}, Lcom/android/keyguard/ViewMediatorCallback;->onCancelClicked()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 145
    sget v0, Lcom/android/systemui/R$id;->keyguard_security_container:I

    .line 146
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardSecurityContainer;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    .line 147
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 148
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 149
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->setSecurityCallback(Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;)V

    .line 150
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showPrimarySecurityScreen(Z)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showPrimarySecurityScreen(Z)V

    .line 276
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->onPause()V

    .line 277
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->clearFocus()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->onResume(I)V

    .line 286
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestFocus()Z

    return-void
.end method

.method public onSecurityModeChanged(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Z)V
    .locals 0

    .line 254
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    if-eqz p0, :cond_0

    .line 255
    invoke-interface {p0, p2}, Lcom/android/keyguard/ViewMediatorCallback;->setNeedsInput(Z)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 0

    .line 240
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {p0}, Lcom/android/keyguard/ViewMediatorCallback;->resetKeyguard()V

    return-void
.end method

.method public resetSecurityContainer()V
    .locals 0

    .line 249
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->reset()V

    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0

    .line 442
    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 443
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    return-void
.end method

.method public setOnDismissAction(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;)V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mCancelAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 128
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 129
    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mCancelAction:Ljava/lang/Runnable;

    .line 131
    :cond_0
    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostView;->mDismissAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    .line 132
    iput-object p2, p0, Lcom/android/keyguard/KeyguardHostView;->mCancelAction:Ljava/lang/Runnable;

    return-void
.end method

.method public setViewMediatorCallback(Lcom/android/keyguard/ViewMediatorCallback;)V
    .locals 0

    .line 436
    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 438
    iget-object p1, p0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->needsInput()Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/keyguard/ViewMediatorCallback;->setNeedsInput(Z)V

    return-void
.end method

.method public shouldEnableMenuKey()Z
    .locals 3

    .line 428
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 429
    sget v0, Lcom/android/systemui/R$bool;->config_disableMenuKeyInLockScreen:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    .line 430
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v0

    .line 431
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/local/enable_menu_key"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz p0, :cond_1

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public showErrorMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .line 182
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/Utils;->getColorError(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/KeyguardHostView;->showMessage(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public showMessage(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecurityContainer;->showMessage(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public showPrimarySecurityScreen()V
    .locals 1

    .line 158
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showPrimarySecurityScreen(Z)V

    return-void
.end method

.method public showPromptReason(I)V
    .locals 0

    .line 174
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showPromptReason(I)V

    return-void
.end method

.method public startAppearAnimation()V
    .locals 0

    .line 293
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->startAppearAnimation()V

    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)V
    .locals 0

    .line 297
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->startDisappearAnimation(Ljava/lang/Runnable;)Z

    move-result p0

    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    .line 298
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public userActivity()V
    .locals 0

    .line 264
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    if-eqz p0, :cond_0

    .line 265
    invoke-interface {p0}, Lcom/android/keyguard/ViewMediatorCallback;->userActivity()V

    :cond_0
    return-void
.end method
