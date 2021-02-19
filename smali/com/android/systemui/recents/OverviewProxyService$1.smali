.class Lcom/android/systemui/recents/OverviewProxyService$1;
.super Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;
.source "OverviewProxyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/OverviewProxyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/OverviewProxyService;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/OverviewProxyService;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-direct {p0}, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$stopScreenPinning$1()V
    .locals 2

    .line 159
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->stopSystemLockTaskMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "OverviewProxyService"

    const-string v1, "Failed to stop screen pinning"

    .line 161
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private verifyCaller(Ljava/lang/String;)Z
    .locals 2

    .line 358
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 359
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$300(Lcom/android/systemui/recents/OverviewProxyService;)I

    move-result p0

    if-eq v0, p0, :cond_0

    .line 360
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Launcher called sysui with invalid user: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", reason: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OverviewProxyService"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getNonMinimizedSplitScreenSecondaryBounds()Landroid/graphics/Rect;
    .locals 4

    const-string v0, "getNonMinimizedSplitScreenSecondaryBounds"

    .line 238
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 241
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 243
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$100(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/content/Context;

    move-result-object p0

    const-class v0, Lcom/android/systemui/stackdivider/Divider;

    invoke-static {p0, v0}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/stackdivider/Divider;

    if-eqz p0, :cond_1

    .line 245
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/Divider;->getView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getNonMinimizedSplitScreenSecondaryBounds()Landroid/graphics/Rect;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :cond_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v1

    :catchall_0
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public synthetic lambda$onAssistantGestureCompletion$6$OverviewProxyService$1(F)V
    .locals 0

    .line 292
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService;->access$500(Lcom/android/systemui/recents/OverviewProxyService;F)V

    return-void
.end method

.method public synthetic lambda$onAssistantProgress$5$OverviewProxyService$1(F)V
    .locals 0

    .line 279
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService;->access$600(Lcom/android/systemui/recents/OverviewProxyService;F)V

    return-void
.end method

.method public synthetic lambda$onOverviewShown$3$OverviewProxyService$1(Z)V
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/recents/OverviewProxyService;->access$800(Lcom/android/systemui/recents/OverviewProxyService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 228
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v1}, Lcom/android/systemui/recents/OverviewProxyService;->access$800(Lcom/android/systemui/recents/OverviewProxyService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-interface {v1, p1}, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;->onOverviewShown(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic lambda$onStatusBarMotionEvent$2$OverviewProxyService$1(Landroid/view/MotionEvent;)V
    .locals 7

    .line 179
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/recents/OverviewProxyService;->access$100(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_3

    .line 182
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 184
    iget-object v3, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v3, v2}, Lcom/android/systemui/recents/OverviewProxyService;->access$902(Lcom/android/systemui/recents/OverviewProxyService;Z)Z

    .line 185
    iget-object v3, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-static {v3, v4}, Lcom/android/systemui/recents/OverviewProxyService;->access$1002(Lcom/android/systemui/recents/OverviewProxyService;F)F

    .line 186
    iget-object v3, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/android/systemui/recents/OverviewProxyService;->access$1102(Lcom/android/systemui/recents/OverviewProxyService;J)J

    .line 187
    iget-object v3, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v3}, Lcom/android/systemui/recents/OverviewProxyService;->access$900(Lcom/android/systemui/recents/OverviewProxyService;)Z

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->onInputFocusTransfer(ZF)V

    :cond_0
    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 190
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/systemui/recents/OverviewProxyService;->access$902(Lcom/android/systemui/recents/OverviewProxyService;Z)Z

    .line 191
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v1}, Lcom/android/systemui/recents/OverviewProxyService;->access$900(Lcom/android/systemui/recents/OverviewProxyService;)Z

    move-result v1

    .line 192
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v3}, Lcom/android/systemui/recents/OverviewProxyService;->access$1000(Lcom/android/systemui/recents/OverviewProxyService;)F

    move-result v3

    sub-float/2addr v2, v3

    .line 193
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$1100(Lcom/android/systemui/recents/OverviewProxyService;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    long-to-float p0, v3

    div-float/2addr v2, p0

    .line 191
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->onInputFocusTransfer(ZF)V

    .line 195
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    :cond_3
    return-void
.end method

.method public synthetic lambda$setNavBarButtonAlpha$4$OverviewProxyService$1(FZ)V
    .locals 0

    .line 261
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0, p1, p2}, Lcom/android/systemui/recents/OverviewProxyService;->access$700(Lcom/android/systemui/recents/OverviewProxyService;FZ)V

    return-void
.end method

.method public synthetic lambda$startAssistant$7$OverviewProxyService$1(Landroid/os/Bundle;)V
    .locals 0

    .line 305
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService;->access$400(Lcom/android/systemui/recents/OverviewProxyService;Landroid/os/Bundle;)V

    return-void
.end method

.method public synthetic lambda$startScreenPinning$0$OverviewProxyService$1(I)V
    .locals 1

    .line 139
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$100(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/content/Context;

    move-result-object p0

    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p0, v0}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 142
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->showScreenPinningRequest(IZ)V

    :cond_0
    return-void
.end method

.method public monitorGestureInput(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 2

    const-string v0, "monitorGestureInput"

    .line 313
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 316
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 319
    :try_start_0
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/hardware/input/InputManager;->monitorGestureInput(Ljava/lang/String;I)Landroid/view/InputMonitor;

    move-result-object p0

    .line 320
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "extra_input_monitor"

    .line 321
    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public notifyAccessibilityButtonClicked(I)V
    .locals 2

    const-string v0, "notifyAccessibilityButtonClicked"

    .line 330
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 333
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 335
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$100(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p0

    .line 336
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityManager;->notifyAccessibilityButtonClicked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public notifyAccessibilityButtonLongClicked()V
    .locals 4

    const-string v0, "notifyAccessibilityButtonLongClicked"

    .line 344
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 347
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 349
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.internal.intent.action.CHOOSE_ACCESSIBILITY_BUTTON"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v3, 0x10008000

    .line 350
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 351
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$100(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/content/Context;

    move-result-object p0

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public onAssistantGestureCompletion(F)V
    .locals 4

    const-string v0, "onAssistantGestureCompletion"

    .line 287
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 290
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 292
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v2}, Lcom/android/systemui/recents/OverviewProxyService;->access$000(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$tM0ScuR2E6sp4f29_cYFeTNI-IA;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$tM0ScuR2E6sp4f29_cYFeTNI-IA;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;F)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public onAssistantProgress(F)V
    .locals 4

    const-string v0, "onAssistantProgress"

    .line 274
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 277
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 279
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v2}, Lcom/android/systemui/recents/OverviewProxyService;->access$000(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$HkSs0hra3pArt93DbnvuWmlgXvE;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$HkSs0hra3pArt93DbnvuWmlgXvE;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;F)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public onOverviewShown(Z)V
    .locals 4

    const-string v0, "onOverviewShown"

    .line 221
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 224
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 226
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v2}, Lcom/android/systemui/recents/OverviewProxyService;->access$000(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$o_Nvl9rNrEnvxnQlEkJ_hCsmmfI;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$o_Nvl9rNrEnvxnQlEkJ_hCsmmfI;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public onSplitScreenInvoked()V
    .locals 3

    const-string v0, "onSplitScreenInvoked"

    .line 205
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 208
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 210
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$100(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/content/Context;

    move-result-object p0

    const-class v2, Lcom/android/systemui/stackdivider/Divider;

    invoke-static {p0, v2}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/stackdivider/Divider;

    if-eqz p0, :cond_1

    .line 212
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/Divider;->onDockedFirstAnimationFrame()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public onStatusBarMotionEvent(Landroid/view/MotionEvent;)V
    .locals 4

    const-string v0, "onStatusBarMotionEvent"

    .line 172
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 175
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 178
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v2}, Lcom/android/systemui/recents/OverviewProxyService;->access$000(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$2LCvhYvor9KUdkD8Lozm_8CbJlE;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$2LCvhYvor9KUdkD8Lozm_8CbJlE;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;Landroid/view/MotionEvent;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public setBackButtonAlpha(FZ)V
    .locals 0

    .line 269
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/OverviewProxyService$1;->setNavBarButtonAlpha(FZ)V

    return-void
.end method

.method public setNavBarButtonAlpha(FZ)V
    .locals 4

    const-string v0, "setNavBarButtonAlpha"

    .line 255
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 258
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 260
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v2, p1}, Lcom/android/systemui/recents/OverviewProxyService;->access$202(Lcom/android/systemui/recents/OverviewProxyService;F)F

    .line 261
    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v2}, Lcom/android/systemui/recents/OverviewProxyService;->access$000(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$dMl_i-5aLm6UXcbb7W1OvCrMhAM;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$dMl_i-5aLm6UXcbb7W1OvCrMhAM;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;FZ)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public startAssistant(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "startAssistant"

    .line 300
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 303
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 305
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v2}, Lcom/android/systemui/recents/OverviewProxyService;->access$000(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$lzBDCxnJTcDNIZHX5ISOsfuKOL0;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$lzBDCxnJTcDNIZHX5ISOsfuKOL0;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;Landroid/os/Bundle;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public startScreenPinning(I)V
    .locals 4

    const-string v0, "startScreenPinning"

    .line 133
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 136
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 138
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v2}, Lcom/android/systemui/recents/OverviewProxyService;->access$000(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$gf7wUE1qIRz6uZ2klN6hqV9xFfM;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$gf7wUE1qIRz6uZ2klN6hqV9xFfM;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public stopScreenPinning()V
    .locals 3

    const-string v0, "stopScreenPinning"

    .line 152
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 155
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 157
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$000(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/os/Handler;

    move-result-object p0

    sget-object v2, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$WjFAUijOf0iWbjyxz5nDkhLz-xA;->INSTANCE:Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$WjFAUijOf0iWbjyxz5nDkhLz-xA;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method
