.class public Lcom/android/systemui/statusbar/NavigationBarController;
.super Ljava/lang/Object;
.source "NavigationBarController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NavigationBarController$SystemUiVisibility;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NavigationBarController"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final mHandler:Landroid/os/Handler;

.field mNavigationBars:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/statusbar/phone/NavigationBarFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    .line 82
    iput-object p1, p0, Lcom/android/systemui/statusbar/NavigationBarController;->mContext:Landroid/content/Context;

    .line 83
    iput-object p2, p0, Lcom/android/systemui/statusbar/NavigationBarController;->mHandler:Landroid/os/Handler;

    .line 84
    iget-object p1, p0, Lcom/android/systemui/statusbar/NavigationBarController;->mContext:Landroid/content/Context;

    const-string p2, "display"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/android/systemui/statusbar/NavigationBarController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 85
    iget-object p1, p0, Lcom/android/systemui/statusbar/NavigationBarController;->mContext:Landroid/content/Context;

    const-class p2, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1, p2}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/CommandQueue;

    if-eqz p1, :cond_0

    .line 87
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    :cond_0
    return-void
.end method

.method private removeNavigationBar(I)V
    .locals 3

    .line 210
    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 213
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v1

    const/4 v2, 0x1

    .line 214
    invoke-virtual {v1, v0, v2}, Landroid/view/WindowManagerGlobal;->removeView(Landroid/view/View;Z)V

    .line 215
    iget-object p0, p0, Lcom/android/systemui/statusbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public checkNavBarModes(I)V
    .locals 0

    .line 221
    iget-object p0, p0, Lcom/android/systemui/statusbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    if-eqz p0, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->checkNavBarModes()V

    :cond_0
    return-void
.end method

.method createNavigationBar(Landroid/view/Display;Lcom/android/internal/statusbar/RegisterStatusBarResult;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    .line 140
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/NavigationBarController;->createNavigationBar(Landroid/view/Display;Lcom/android/internal/statusbar/RegisterStatusBarResult;Lcom/android/systemui/statusbar/NavigationBarController$SystemUiVisibility;)V

    return-void
.end method

.method createNavigationBar(Landroid/view/Display;Lcom/android/internal/statusbar/RegisterStatusBarResult;Lcom/android/systemui/statusbar/NavigationBarController$SystemUiVisibility;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    .line 149
    :cond_0
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v5

    if-nez v5, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move v2, v0

    .line 151
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    .line 154
    :try_start_0
    invoke-interface {v0, v5}, Landroid/view/IWindowManager;->hasNavigationBar(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_2

    return-void

    :cond_2
    if-eqz v2, :cond_3

    .line 163
    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarController;->mContext:Landroid/content/Context;

    goto :goto_1

    .line 164
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v0

    :goto_1
    move-object v8, v0

    .line 165
    new-instance v9, Lcom/android/systemui/statusbar/-$$Lambda$NavigationBarController$qVlCTOvToBbgR1PLV26YdGJ6hZc;

    move-object v0, v9

    move-object v1, p0

    move-object v3, v8

    move-object v4, p3

    move-object v6, p2

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/-$$Lambda$NavigationBarController$qVlCTOvToBbgR1PLV26YdGJ6hZc;-><init>(Lcom/android/systemui/statusbar/NavigationBarController;ZLandroid/content/Context;Lcom/android/systemui/statusbar/NavigationBarController$SystemUiVisibility;ILcom/android/internal/statusbar/RegisterStatusBarResult;Landroid/view/Display;)V

    invoke-static {v8, v9}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->create(Landroid/content/Context;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)Landroid/view/View;

    return-void

    .line 159
    :catch_0
    sget-object p0, Lcom/android/systemui/statusbar/NavigationBarController;->TAG:Ljava/lang/String;

    const-string p1, "Cannot get WindowManager."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public createNavigationBars(ZLcom/android/internal/statusbar/RegisterStatusBarResult;Lcom/android/systemui/statusbar/NavigationBarController$SystemUiVisibility;)V
    .locals 5

    .line 124
    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    .line 125
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-nez p1, :cond_0

    .line 126
    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    if-eqz v4, :cond_1

    .line 127
    :cond_0
    invoke-virtual {p0, v3, p2, p3}, Lcom/android/systemui/statusbar/NavigationBarController;->createNavigationBar(Landroid/view/Display;Lcom/android/internal/statusbar/RegisterStatusBarResult;Lcom/android/systemui/statusbar/NavigationBarController$SystemUiVisibility;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public createSystemUiVisibility()Lcom/android/systemui/statusbar/NavigationBarController$SystemUiVisibility;
    .locals 1

    .line 107
    new-instance v0, Lcom/android/systemui/statusbar/NavigationBarController$SystemUiVisibility;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/NavigationBarController$SystemUiVisibility;-><init>(Lcom/android/systemui/statusbar/NavigationBarController;)V

    return-object v0
.end method

.method public disableAnimationsDuringHide(IJ)V
    .locals 0

    .line 253
    iget-object p0, p0, Lcom/android/systemui/statusbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    if-eqz p0, :cond_0

    .line 255
    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->disableAnimationsDuringHide(J)V

    :cond_0
    return-void
.end method

.method public finishBarAnimations(I)V
    .locals 0

    .line 229
    iget-object p0, p0, Lcom/android/systemui/statusbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    if-eqz p0, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->finishBarAnimations()V

    :cond_0
    return-void
.end method

.method public getDefaultNavigationBarFragment()Lcom/android/systemui/statusbar/phone/NavigationBarFragment;
    .locals 1

    .line 276
    iget-object p0, p0, Lcom/android/systemui/statusbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    return-object p0
.end method

.method public getNavigationBarView(I)Lcom/android/systemui/statusbar/phone/NavigationBarView;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/statusbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 271
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;

    :goto_0
    return-object p0
.end method

.method public synthetic lambda$createNavigationBar$0$NavigationBarController(ZLandroid/content/Context;Lcom/android/systemui/statusbar/NavigationBarController$SystemUiVisibility;ILcom/android/internal/statusbar/RegisterStatusBarResult;Landroid/view/Display;Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    .line 166
    move-object/from16 v14, p8

    check-cast v14, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    if-eqz p1, :cond_0

    .line 172
    const-class v5, Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/phone/LightBarController;

    goto :goto_0

    .line 173
    :cond_0
    new-instance v5, Lcom/android/systemui/statusbar/phone/LightBarController;

    const-class v6, Lcom/android/systemui/plugins/DarkIconDispatcher;

    .line 174
    invoke-static {v6}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/plugins/DarkIconDispatcher;

    const-class v7, Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 175
    invoke-static {v7}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-direct {v5, v1, v6, v7}, Lcom/android/systemui/statusbar/phone/LightBarController;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/DarkIconDispatcher;Lcom/android/systemui/statusbar/policy/BatteryController;)V

    .line 176
    :goto_0
    invoke-virtual {v14, v5}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->setLightBarController(Lcom/android/systemui/statusbar/phone/LightBarController;)V

    if-eqz p1, :cond_1

    .line 183
    const-class v1, Lcom/android/systemui/statusbar/phone/AutoHideController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/AutoHideController;

    goto :goto_1

    .line 184
    :cond_1
    new-instance v5, Lcom/android/systemui/statusbar/phone/AutoHideController;

    iget-object v6, v0, Lcom/android/systemui/statusbar/NavigationBarController;->mHandler:Landroid/os/Handler;

    invoke-direct {v5, v1, v6}, Lcom/android/systemui/statusbar/phone/AutoHideController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    move-object v1, v5

    .line 185
    :goto_1
    invoke-virtual {v14, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->setAutoHideController(Lcom/android/systemui/statusbar/phone/AutoHideController;)V

    .line 186
    invoke-virtual {v14}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->restoreSystemUiVisibilityState()V

    if-eqz v2, :cond_2

    .line 188
    iget v6, v2, Lcom/android/systemui/statusbar/NavigationBarController$SystemUiVisibility;->displayId:I

    if-ne v6, v3, :cond_2

    .line 189
    iget v7, v2, Lcom/android/systemui/statusbar/NavigationBarController$SystemUiVisibility;->vis:I

    iget v8, v2, Lcom/android/systemui/statusbar/NavigationBarController$SystemUiVisibility;->fullscreenStackVis:I

    iget v9, v2, Lcom/android/systemui/statusbar/NavigationBarController$SystemUiVisibility;->dockedStackVis:I

    iget v10, v2, Lcom/android/systemui/statusbar/NavigationBarController$SystemUiVisibility;->mask:I

    iget-object v11, v2, Lcom/android/systemui/statusbar/NavigationBarController$SystemUiVisibility;->fullscreenStackBounds:Landroid/graphics/Rect;

    iget-object v12, v2, Lcom/android/systemui/statusbar/NavigationBarController$SystemUiVisibility;->dockedStackBounds:Landroid/graphics/Rect;

    iget-boolean v13, v2, Lcom/android/systemui/statusbar/NavigationBarController$SystemUiVisibility;->navbarColorManagedByIme:Z

    move-object v5, v14

    invoke-virtual/range {v5 .. v13}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->setSystemUiVisibility(IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 199
    :cond_2
    iget-object v0, v0, Lcom/android/systemui/statusbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {v0, v3, v14}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    if-eqz v4, :cond_3

    .line 202
    invoke-virtual/range {p6 .. p6}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    iget-object v1, v4, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mImeToken:Landroid/os/IBinder;

    iget v2, v4, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mImeWindowVis:I

    iget v3, v4, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mImeBackDisposition:I

    iget-boolean v4, v4, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mShowImeSwitcher:Z

    move-object p0, v14

    move/from16 p1, v0

    move-object/from16 p2, v1

    move/from16 p3, v2

    move/from16 p4, v3

    move/from16 p5, v4

    invoke-virtual/range {p0 .. p5}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->setImeWindowStatus(ILandroid/os/IBinder;IIZ)V

    :cond_3
    return-void
.end method

.method public onDisplayReady(I)V
    .locals 1

    const/4 v0, 0x0

    .line 98
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/NavigationBarController;->onDisplayReady(ILcom/android/systemui/statusbar/NavigationBarController$SystemUiVisibility;)V

    return-void
.end method

.method public onDisplayReady(ILcom/android/systemui/statusbar/NavigationBarController$SystemUiVisibility;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    const/4 v0, 0x0

    .line 103
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/systemui/statusbar/NavigationBarController;->createNavigationBar(Landroid/view/Display;Lcom/android/internal/statusbar/RegisterStatusBarResult;Lcom/android/systemui/statusbar/NavigationBarController$SystemUiVisibility;)V

    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NavigationBarController;->removeNavigationBar(I)V

    return-void
.end method

.method public touchAutoDim(I)V
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/statusbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    if-eqz p0, :cond_0

    .line 239
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->touchAutoDim()V

    :cond_0
    return-void
.end method

.method public transitionTo(IIZ)V
    .locals 0

    .line 245
    iget-object p0, p0, Lcom/android/systemui/statusbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    if-eqz p0, :cond_0

    .line 247
    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->transitionTo(IZ)V

    :cond_0
    return-void
.end method
