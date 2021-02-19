.class public Lcom/android/systemui/assist/AssistManager;
.super Ljava/lang/Object;
.source "AssistManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/assist/AssistManager$UiController;
    }
.end annotation


# instance fields
.field private final mAssistDisclosure:Lcom/android/systemui/assist/AssistDisclosure;

.field protected final mAssistUtils:Lcom/android/internal/app/AssistUtils;

.field private mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

.field protected final mContext:Landroid/content/Context;

.field private final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field private final mHandleController:Lcom/android/systemui/assist/AssistHandleBehaviorController;

.field private mHideRunnable:Ljava/lang/Runnable;

.field private final mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

.field protected final mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

.field private final mPhoneStateMonitor:Lcom/android/systemui/assist/PhoneStateMonitor;

.field private final mShouldEnableOrb:Z

.field private mShowCallback:Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

.field private final mUiController:Lcom/android/systemui/assist/AssistManager$UiController;

.field private mView:Lcom/android/systemui/assist/AssistOrbContainer;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Landroid/content/Context;Lcom/android/internal/app/AssistUtils;Lcom/android/systemui/assist/AssistHandleBehaviorController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/recents/OverviewProxyService;)V
    .locals 1

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-instance v0, Lcom/android/systemui/assist/AssistManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/assist/AssistManager$1;-><init>(Lcom/android/systemui/assist/AssistManager;)V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mShowCallback:Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    .line 155
    new-instance v0, Lcom/android/systemui/assist/AssistManager$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/assist/AssistManager$2;-><init>(Lcom/android/systemui/assist/AssistManager;)V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mHideRunnable:Ljava/lang/Runnable;

    .line 163
    new-instance v0, Lcom/android/systemui/assist/AssistManager$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/assist/AssistManager$3;-><init>(Lcom/android/systemui/assist/AssistManager;)V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .line 198
    iput-object p2, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    .line 199
    iput-object p1, p0, Lcom/android/systemui/assist/AssistManager;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 200
    iget-object p1, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/systemui/assist/AssistManager;->mWindowManager:Landroid/view/WindowManager;

    .line 201
    iput-object p3, p0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    .line 202
    new-instance p1, Lcom/android/systemui/assist/AssistDisclosure;

    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p2, p3}, Lcom/android/systemui/assist/AssistDisclosure;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/systemui/assist/AssistManager;->mAssistDisclosure:Lcom/android/systemui/assist/AssistDisclosure;

    .line 203
    new-instance p1, Lcom/android/systemui/assist/PhoneStateMonitor;

    invoke-direct {p1, p2}, Lcom/android/systemui/assist/PhoneStateMonitor;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/assist/AssistManager;->mPhoneStateMonitor:Lcom/android/systemui/assist/PhoneStateMonitor;

    .line 204
    iput-object p4, p0, Lcom/android/systemui/assist/AssistManager;->mHandleController:Lcom/android/systemui/assist/AssistHandleBehaviorController;

    .line 206
    iget-object p1, p0, Lcom/android/systemui/assist/AssistManager;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-interface {p5, p1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 208
    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistManager;->registerVoiceInteractionSessionListener()V

    .line 209
    new-instance p1, Lcom/android/settingslib/applications/InterestingConfigChanges;

    const p3, -0x7ffffc7c

    invoke-direct {p1, p3}, Lcom/android/settingslib/applications/InterestingConfigChanges;-><init>(I)V

    iput-object p1, p0, Lcom/android/systemui/assist/AssistManager;->mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    .line 212
    iget-object p1, p0, Lcom/android/systemui/assist/AssistManager;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;->onConfigChanged(Landroid/content/res/Configuration;)V

    .line 213
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/assist/AssistManager;->mShouldEnableOrb:Z

    .line 215
    new-instance p1, Lcom/android/systemui/assist/ui/DefaultUiController;

    iget-object p2, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/systemui/assist/ui/DefaultUiController;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/assist/AssistManager;->mUiController:Lcom/android/systemui/assist/AssistManager$UiController;

    .line 217
    iput-object p6, p0, Lcom/android/systemui/assist/AssistManager;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    .line 218
    iget-object p1, p0, Lcom/android/systemui/assist/AssistManager;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    new-instance p2, Lcom/android/systemui/assist/AssistManager$4;

    invoke-direct {p2, p0}, Lcom/android/systemui/assist/AssistManager$4;-><init>(Lcom/android/systemui/assist/AssistManager;)V

    invoke-virtual {p1, p2}, Lcom/android/systemui/recents/OverviewProxyService;->addCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/assist/AssistManager;)Ljava/lang/Runnable;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mHideRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/assist/AssistManager;)Lcom/android/systemui/assist/AssistOrbContainer;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mView:Lcom/android/systemui/assist/AssistOrbContainer;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/systemui/assist/AssistManager;Lcom/android/systemui/assist/AssistOrbContainer;)Lcom/android/systemui/assist/AssistOrbContainer;
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/android/systemui/assist/AssistManager;->mView:Lcom/android/systemui/assist/AssistOrbContainer;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/systemui/assist/AssistManager;)Lcom/android/settingslib/applications/InterestingConfigChanges;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/assist/AssistManager;)Landroid/view/WindowManager;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mWindowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/assist/AssistManager;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistManager;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method private getAssistInfo()Landroid/content/ComponentName;
    .locals 1

    .line 471
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/assist/AssistManager;->getAssistInfoForUser(I)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method private getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 7

    .line 324
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    .line 326
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$dimen;->assist_orb_scrim_height:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v1, -0x1

    const/16 v3, 0x7f1

    const/16 v4, 0x118

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 332
    new-instance p0, Landroid/os/Binder;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    iput-object p0, v6, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const p0, 0x800053

    .line 333
    iput p0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const-string p0, "AssistPreviewPanel"

    .line 334
    invoke-virtual {v6, p0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 p0, 0x31

    .line 335
    iput p0, v6, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    return-object v6
.end method

.method private isVoiceSessionRunning()Z
    .locals 0

    .line 419
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-virtual {p0}, Lcom/android/internal/app/AssistUtils;->isSessionRunning()Z

    move-result p0

    return p0
.end method

.method private maybeSwapSearchIcon(Landroid/content/ComponentName;Z)V
    .locals 2

    .line 423
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mView:Lcom/android/systemui/assist/AssistOrbContainer;

    invoke-virtual {v0}, Lcom/android/systemui/assist/AssistOrbContainer;->getOrb()Lcom/android/systemui/assist/AssistOrbView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/assist/AssistOrbView;->getLogo()Landroid/widget/ImageView;

    move-result-object v0

    const-string v1, "com.android.systemui.action_assist_icon"

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/android/systemui/assist/AssistManager;->replaceDrawable(Landroid/widget/ImageView;Landroid/content/ComponentName;Ljava/lang/String;Z)V

    return-void
.end method

.method private showOrb(Landroid/content/ComponentName;Z)V
    .locals 0

    .line 341
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/assist/AssistManager;->maybeSwapSearchIcon(Landroid/content/ComponentName;Z)V

    .line 342
    iget-boolean p1, p0, Lcom/android/systemui/assist/AssistManager;->mShouldEnableOrb:Z

    if-eqz p1, :cond_0

    .line 343
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mView:Lcom/android/systemui/assist/AssistOrbContainer;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p1}, Lcom/android/systemui/assist/AssistOrbContainer;->show(ZZ)V

    :cond_0
    return-void
.end method

.method private startAssistActivity(Landroid/os/Bundle;Landroid/content/ComponentName;)V
    .locals 5

    .line 357
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/CommandQueue;->animateCollapsePanels(IZ)V

    .line 366
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const/4 v3, 0x1

    const-string v4, "assist_structure_enabled"

    invoke-static {v0, v4, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_1

    move v2, v3

    .line 369
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    const-string v1, "search"

    .line 370
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    if-nez v0, :cond_2

    return-void

    .line 374
    :cond_2
    invoke-virtual {v0, v2}, Landroid/app/SearchManager;->getAssistIntent(Z)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 378
    :cond_3
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 379
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    if-eqz v2, :cond_4

    .line 382
    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistManager;->showDisclosure()V

    .line 386
    :cond_4
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$anim;->search_launch_enter:I

    sget v1, Lcom/android/systemui/R$anim;->search_launch_exit:I

    invoke-static {p1, p2, v1}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object p1

    const/high16 p2, 0x10000000

    .line 388
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 389
    new-instance p2, Lcom/android/systemui/assist/AssistManager$6;

    invoke-direct {p2, p0, v0, p1}, Lcom/android/systemui/assist/AssistManager$6;-><init>(Lcom/android/systemui/assist/AssistManager;Landroid/content/Intent;Landroid/app/ActivityOptions;)V

    invoke-static {p2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 397
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Activity not found for "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AssistManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private startAssistInternal(Landroid/os/Bundle;Landroid/content/ComponentName;Z)V
    .locals 0

    if-eqz p3, :cond_0

    .line 350
    invoke-direct {p0, p1}, Lcom/android/systemui/assist/AssistManager;->startVoiceInteractor(Landroid/os/Bundle;)V

    goto :goto_0

    .line 352
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/assist/AssistManager;->startAssistActivity(Landroid/os/Bundle;Landroid/content/ComponentName;)V

    :goto_0
    return-void
.end method

.method private startVoiceInteractor(Landroid/os/Bundle;)V
    .locals 3

    .line 402
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mShowCallback:Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p0, v2}, Lcom/android/internal/app/AssistUtils;->showSessionForActiveService(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z

    return-void
.end method


# virtual methods
.method public canVoiceAssistBeLaunchedFromKeyguard()Z
    .locals 0

    .line 411
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-virtual {p0}, Lcom/android/internal/app/AssistUtils;->activeServiceSupportsLaunchFromKeyguard()Z

    move-result p0

    return p0
.end method

.method public getAssistHandleShowAndGoRemainingDurationMs()J
    .locals 2

    .line 483
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mHandleController:Lcom/android/systemui/assist/AssistHandleBehaviorController;

    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistHandleBehaviorController;->getShowAndGoRemainingTimeMs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAssistInfoForUser(I)Landroid/content/ComponentName;
    .locals 0

    .line 466
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public getVoiceInteractorComponentName()Landroid/content/ComponentName;
    .locals 0

    .line 415
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-virtual {p0}, Lcom/android/internal/app/AssistUtils;->getActiveServiceComponentName()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public hideAssist()V
    .locals 0

    .line 320
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-virtual {p0}, Lcom/android/internal/app/AssistUtils;->hideCurrentSession()V

    return-void
.end method

.method public launchVoiceAssistFromKeyguard()V
    .locals 0

    .line 407
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-virtual {p0}, Lcom/android/internal/app/AssistUtils;->launchVoiceAssistFromKeyguard()V

    return-void
.end method

.method protected logStartAssist(II)V
    .locals 2

    .line 492
    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x6b4

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v1, 0x1

    .line 494
    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 495
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/assist/AssistManager;->toLoggingSubType(II)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object p0

    .line 492
    invoke-static {p0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    return-void
.end method

.method public onGestureCompletion(F)V
    .locals 0

    .line 312
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mUiController:Lcom/android/systemui/assist/AssistManager$UiController;

    invoke-interface {p0, p1}, Lcom/android/systemui/assist/AssistManager$UiController;->onGestureCompletion(F)V

    return-void
.end method

.method public onInvocationProgress(IF)V
    .locals 0

    .line 303
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mUiController:Lcom/android/systemui/assist/AssistManager$UiController;

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/assist/AssistManager$UiController;->onInvocationProgress(IF)V

    return-void
.end method

.method public onLockscreenShown()V
    .locals 0

    .line 479
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-virtual {p0}, Lcom/android/internal/app/AssistUtils;->onLockscreenShown()V

    return-void
.end method

.method protected registerVoiceInteractionSessionListener()V
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    new-instance v1, Lcom/android/systemui/assist/AssistManager$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/assist/AssistManager$5;-><init>(Lcom/android/systemui/assist/AssistManager;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AssistUtils;->registerVoiceInteractionSessionListener(Lcom/android/internal/app/IVoiceInteractionSessionListener;)V

    return-void
.end method

.method public replaceDrawable(Landroid/widget/ImageView;Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .locals 1

    if-eqz p2, :cond_1

    .line 431
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x80

    if-eqz p4, :cond_0

    .line 434
    invoke-virtual {p0, p2, v0}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object p4

    iget-object p4, p4, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    goto :goto_0

    .line 436
    :cond_0
    invoke-virtual {p0, p2, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p4

    iget-object p4, p4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    :goto_0
    if-eqz p4, :cond_1

    .line 439
    invoke-virtual {p4, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p3

    if-eqz p3, :cond_1

    .line 442
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p4

    .line 441
    invoke-virtual {p0, p4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    .line 443
    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 453
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to swap drawable from "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "AssistManager"

    .line 453
    invoke-static {p3, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_1
    :cond_1
    const/4 p0, 0x0

    .line 457
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected requestAssistHandles()V
    .locals 0

    .line 316
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mHandleController:Lcom/android/systemui/assist/AssistHandleBehaviorController;

    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistHandleBehaviorController;->onAssistHandlesRequested()V

    return-void
.end method

.method protected shouldShowOrb()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public showDisclosure()V
    .locals 0

    .line 475
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistDisclosure:Lcom/android/systemui/assist/AssistDisclosure;

    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistDisclosure;->postShow()V

    return-void
.end method

.method public startAssist(Landroid/os/Bundle;)V
    .locals 7

    .line 274
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistManager;->getAssistInfo()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 279
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistManager;->getVoiceInteractorComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 280
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistManager;->isVoiceSessionRunning()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistManager;->shouldShowOrb()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 281
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/assist/AssistManager;->showOrb(Landroid/content/ComponentName;Z)V

    .line 282
    iget-object v2, p0, Lcom/android/systemui/assist/AssistManager;->mView:Lcom/android/systemui/assist/AssistOrbContainer;

    iget-object v3, p0, Lcom/android/systemui/assist/AssistManager;->mHideRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    const-wide/16 v4, 0x9c4

    goto :goto_0

    :cond_2
    const-wide/16 v4, 0x3e8

    :goto_0
    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    if-nez p1, :cond_4

    .line 288
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_4
    const/4 v2, 0x0

    const-string v3, "invocation_type"

    .line 290
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 292
    iget-object v3, p0, Lcom/android/systemui/assist/AssistManager;->mHandleController:Lcom/android/systemui/assist/AssistHandleBehaviorController;

    invoke-virtual {v3}, Lcom/android/systemui/assist/AssistHandleBehaviorController;->onAssistantGesturePerformed()V

    .line 294
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/assist/AssistManager;->mPhoneStateMonitor:Lcom/android/systemui/assist/PhoneStateMonitor;

    invoke-virtual {v3}, Lcom/android/systemui/assist/PhoneStateMonitor;->getPhoneState()I

    move-result v3

    const-string v4, "invocation_phone_state"

    .line 295
    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 296
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-string v6, "invocation_time_ms"

    invoke-virtual {p1, v6, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 297
    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/assist/AssistManager;->logStartAssist(II)V

    .line 298
    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/assist/AssistManager;->startAssistInternal(Landroid/os/Bundle;Landroid/content/ComponentName;Z)V

    return-void
.end method

.method public toLoggingSubType(I)I
    .locals 1

    .line 488
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mPhoneStateMonitor:Lcom/android/systemui/assist/PhoneStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/assist/PhoneStateMonitor;->getPhoneState()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/assist/AssistManager;->toLoggingSubType(II)I

    move-result p0

    return p0
.end method

.method protected final toLoggingSubType(II)I
    .locals 0

    .line 502
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mHandleController:Lcom/android/systemui/assist/AssistHandleBehaviorController;

    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistHandleBehaviorController;->areHandlesShowing()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    shl-int/lit8 p1, p1, 0x1

    or-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x4

    or-int/2addr p0, p1

    return p0
.end method
