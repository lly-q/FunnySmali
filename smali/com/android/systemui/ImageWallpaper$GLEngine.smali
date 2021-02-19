.class Lcom/android/systemui/ImageWallpaper$GLEngine;
.super Landroid/service/wallpaper/WallpaperService$Engine;
.source "ImageWallpaper.java"

# interfaces
.implements Lcom/android/systemui/glwallpaper/GLWallpaperRenderer$SurfaceProxy;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/ImageWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GLEngine"
.end annotation


# static fields
.field static final MIN_SURFACE_HEIGHT:I = 0x40
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MIN_SURFACE_WIDTH:I = 0x40
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private final mDisplayInfo:Landroid/view/DisplayInfo;

.field private final mDisplayNeedsBlanking:Z

.field private mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

.field private final mFinishRenderingTask:Ljava/lang/Runnable;

.field private final mIsHighEndGfx:Z

.field private final mMonitor:Ljava/lang/Object;

.field private mNeedRedraw:Z

.field private final mNeedTransition:Z

.field private mRenderer:Lcom/android/systemui/glwallpaper/GLWallpaperRenderer;

.field private mShouldStopTransition:Z

.field private mWaitingForRendering:Z

.field final synthetic this$0:Lcom/android/systemui/ImageWallpaper;


# direct methods
.method constructor <init>(Lcom/android/systemui/ImageWallpaper;Landroid/content/Context;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;)V

    .line 87
    new-instance p1, Lcom/android/systemui/-$$Lambda$ImageWallpaper$GLEngine$4IwqG_0jMNtMT6yCqqj-KAFKSvE;

    invoke-direct {p1, p0}, Lcom/android/systemui/-$$Lambda$ImageWallpaper$GLEngine$4IwqG_0jMNtMT6yCqqj-KAFKSvE;-><init>(Lcom/android/systemui/ImageWallpaper$GLEngine;)V

    iput-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mFinishRenderingTask:Ljava/lang/Runnable;

    .line 92
    new-instance p1, Landroid/view/DisplayInfo;

    invoke-direct {p1}, Landroid/view/DisplayInfo;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 93
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mMonitor:Ljava/lang/Object;

    .line 99
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mIsHighEndGfx:Z

    .line 100
    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayNeedsBlanking()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mDisplayNeedsBlanking:Z

    .line 101
    iget-boolean p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mIsHighEndGfx:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mDisplayNeedsBlanking:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mNeedTransition:Z

    .line 105
    const-class p1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 106
    iget-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    if-eqz p1, :cond_1

    .line 107
    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    :cond_1
    return-void
.end method

.method private cancelFinishRenderingTask()V
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$000(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$000(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mFinishRenderingTask:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private drawFrame()V
    .locals 0

    .line 252
    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->preRender()V

    .line 253
    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->requestRender()V

    .line 254
    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->postRender()V

    return-void
.end method

.method private finishRendering()V
    .locals 3

    .line 377
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishRendering, preserve="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->needPreserveEglContext()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ImageWallpaper#finishRendering"

    .line 380
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    if-eqz v0, :cond_0

    .line 382
    invoke-virtual {v0}, Lcom/android/systemui/glwallpaper/EglHelper;->destroyEglSurface()V

    .line 383
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->needPreserveEglContext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 384
    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    invoke-virtual {p0}, Lcom/android/systemui/glwallpaper/EglHelper;->destroyEglContext()V

    .line 387
    :cond_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public static synthetic lambda$4IwqG_0jMNtMT6yCqqj-KAFKSvE(Lcom/android/systemui/ImageWallpaper$GLEngine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->finishRendering()V

    return-void
.end method

.method public static synthetic lambda$8Tw1AsmyFt-Lr4VSDxpiW6fEz7g(Lcom/android/systemui/ImageWallpaper$GLEngine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->scheduleFinishRendering()V

    return-void
.end method

.method private needPreserveEglContext()Z
    .locals 2

    .line 391
    iget-boolean v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mNeedTransition:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    if-eqz p0, :cond_0

    .line 392
    invoke-interface {p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private notifyWaitingThread()V
    .locals 2

    .line 353
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 354
    :try_start_0
    iget-boolean v1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mWaitingForRendering:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 356
    :try_start_1
    iput-boolean v1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mWaitingForRendering:Z

    .line 357
    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mMonitor:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 361
    :catch_0
    :cond_0
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private preRenderInternal()V
    .locals 4

    .line 283
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v0

    .line 284
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->cancelFinishRenderingTask()V

    .line 287
    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    invoke-virtual {v1}, Lcom/android/systemui/glwallpaper/EglHelper;->hasEglContext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 288
    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    invoke-virtual {v1}, Lcom/android/systemui/glwallpaper/EglHelper;->destroyEglSurface()V

    .line 289
    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    invoke-virtual {v1}, Lcom/android/systemui/glwallpaper/EglHelper;->createEglContext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 290
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "recreate egl context failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 297
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    invoke-virtual {v2}, Lcom/android/systemui/glwallpaper/EglHelper;->hasEglContext()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    invoke-virtual {v2}, Lcom/android/systemui/glwallpaper/EglHelper;->hasEglSurface()Z

    move-result v2

    if-nez v2, :cond_2

    .line 298
    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/glwallpaper/EglHelper;->createEglSurface(Landroid/view/SurfaceHolder;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 299
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "recreate egl surface failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    invoke-virtual {v2}, Lcom/android/systemui/glwallpaper/EglHelper;->hasEglContext()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    invoke-virtual {v2}, Lcom/android/systemui/glwallpaper/EglHelper;->hasEglSurface()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    .line 305
    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/glwallpaper/GLWallpaperRenderer;

    invoke-interface {v1}, Lcom/android/systemui/glwallpaper/GLWallpaperRenderer;->onSurfaceCreated()V

    .line 306
    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/glwallpaper/GLWallpaperRenderer;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-interface {p0, v1, v0}, Lcom/android/systemui/glwallpaper/GLWallpaperRenderer;->onSurfaceChanged(II)V

    :cond_3
    return-void
.end method

.method private requestRenderInternal()V
    .locals 4

    .line 319
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v0

    .line 320
    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    invoke-virtual {v1}, Lcom/android/systemui/glwallpaper/EglHelper;->hasEglContext()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    invoke-virtual {v1}, Lcom/android/systemui/glwallpaper/EglHelper;->hasEglSurface()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 321
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 324
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/glwallpaper/GLWallpaperRenderer;

    invoke-interface {v0}, Lcom/android/systemui/glwallpaper/GLWallpaperRenderer;->onDrawFrame()V

    .line 325
    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    invoke-virtual {p0}, Lcom/android/systemui/glwallpaper/EglHelper;->swapBuffer()Z

    move-result p0

    if-nez p0, :cond_2

    .line 326
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$100()Ljava/lang/String;

    move-result-object p0

    const-string v0, "drawFrame failed!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 329
    :cond_1
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestRender: not ready, has context="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    invoke-virtual {v3}, Lcom/android/systemui/glwallpaper/EglHelper;->hasEglContext()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", has surface="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    .line 330
    invoke-virtual {p0}, Lcom/android/systemui/glwallpaper/EglHelper;->hasEglSurface()Z

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", frame="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 329
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method private scheduleFinishRendering()V
    .locals 3

    .line 370
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$000(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 371
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->cancelFinishRenderingTask()V

    .line 372
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$000(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mFinishRenderingTask:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private updateSurfaceSize()V
    .locals 3

    .line 123
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 124
    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/glwallpaper/GLWallpaperRenderer;

    invoke-interface {p0}, Lcom/android/systemui/glwallpaper/GLWallpaperRenderer;->reportSurfaceSize()Landroid/util/Size;

    move-result-object p0

    .line 125
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v1

    const/16 v2, 0x40

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 126
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 127
    invoke-interface {v0, v1, p0}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    return-void
.end method

.method private waitForBackgroundRendering()V
    .locals 7

    .line 177
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mMonitor:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 179
    :try_start_0
    iput-boolean v2, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mWaitingForRendering:Z

    move v3, v2

    .line 180
    :goto_0
    iget-boolean v4, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mWaitingForRendering:Z

    if-eqz v4, :cond_1

    .line 181
    iget-object v4, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mMonitor:Ljava/lang/Object;

    const-wide/16 v5, 0x64

    invoke-virtual {v4, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 182
    iget-boolean v4, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mWaitingForRendering:Z

    const/16 v5, 0xa

    if-ge v3, v5, :cond_0

    move v5, v2

    goto :goto_1

    :cond_0
    move v5, v1

    :goto_1
    and-int/2addr v4, v5

    iput-boolean v4, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mWaitingForRendering:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 186
    :catch_0
    :cond_1
    :try_start_1
    iput-boolean v1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mWaitingForRendering:Z

    goto :goto_2

    :catchall_0
    move-exception v2

    iput-boolean v1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mWaitingForRendering:Z

    throw v2

    .line 188
    :goto_2
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0
.end method


# virtual methods
.method checkIfShouldStopTransition()Z
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 139
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 141
    :goto_0
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v3

    .line 142
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 143
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 144
    iget-object v5, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mDisplayInfo:Landroid/view/DisplayInfo;

    if-eqz v0, :cond_1

    iget v5, v5, Landroid/view/DisplayInfo;->logicalWidth:I

    goto :goto_1

    :cond_1
    iget v5, v5, Landroid/view/DisplayInfo;->logicalHeight:I

    :goto_1
    if-eqz v0, :cond_2

    .line 145
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 146
    :goto_2
    iget-boolean p0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mNeedTransition:Z

    if-eqz p0, :cond_4

    if-lt v4, v5, :cond_3

    if-ge v3, v0, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    return v1
.end method

.method protected dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 397
    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 398
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Engine="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 399
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "isHighEndGfx="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mIsHighEndGfx:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 400
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "displayNeedsBlanking="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 401
    iget-boolean v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mDisplayNeedsBlanking:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 402
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "displayInfo="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 403
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNeedTransition="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mNeedTransition:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 404
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mShouldStopTransition="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 405
    iget-boolean v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mShouldStopTransition:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 406
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "StatusBarState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    const-string v1, "null"

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 409
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "valid surface="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 410
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 411
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 410
    :goto_1
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 414
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "surface frame="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 415
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v1

    :cond_2
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 417
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/systemui/glwallpaper/EglHelper;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 418
    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/glwallpaper/GLWallpaperRenderer;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/systemui/glwallpaper/GLWallpaperRenderer;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$onAmbientModeChanged$1$ImageWallpaper$GLEngine(ZJ)V
    .locals 0

    .line 167
    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/glwallpaper/GLWallpaperRenderer;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/glwallpaper/GLWallpaperRenderer;->updateAmbientMode(ZJ)V

    return-void
.end method

.method public synthetic lambda$onDestroy$2$ImageWallpaper$GLEngine()V
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/glwallpaper/GLWallpaperRenderer;

    invoke-interface {v0}, Lcom/android/systemui/glwallpaper/GLWallpaperRenderer;->finish()V

    const/4 v0, 0x0

    .line 200
    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/glwallpaper/GLWallpaperRenderer;

    .line 201
    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    invoke-virtual {v1}, Lcom/android/systemui/glwallpaper/EglHelper;->finish()V

    .line 202
    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    return-void
.end method

.method public synthetic lambda$onOffsetsChanged$0$ImageWallpaper$GLEngine(FF)V
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/glwallpaper/GLWallpaperRenderer;

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/glwallpaper/GLWallpaperRenderer;->updateOffsets(FF)V

    return-void
.end method

.method public synthetic lambda$onSurfaceChanged$4$ImageWallpaper$GLEngine(II)V
    .locals 3

    .line 221
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceChanged: w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/glwallpaper/GLWallpaperRenderer;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/glwallpaper/GLWallpaperRenderer;->onSurfaceChanged(II)V

    const/4 p1, 0x1

    .line 225
    iput-boolean p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mNeedRedraw:Z

    return-void
.end method

.method public synthetic lambda$onSurfaceCreated$3$ImageWallpaper$GLEngine(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/glwallpaper/EglHelper;->init(Landroid/view/SurfaceHolder;)Z

    .line 212
    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/glwallpaper/GLWallpaperRenderer;

    invoke-interface {p0}, Lcom/android/systemui/glwallpaper/GLWallpaperRenderer;->onSurfaceCreated()V

    return-void
.end method

.method public synthetic lambda$onSurfaceRedrawNeeded$5$ImageWallpaper$GLEngine()V
    .locals 3

    .line 234
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceRedrawNeeded: mNeedRedraw="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mNeedRedraw:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-boolean v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mNeedRedraw:Z

    if-eqz v0, :cond_0

    .line 238
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->drawFrame()V

    const/4 v0, 0x0

    .line 239
    iput-boolean v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mNeedRedraw:Z

    :cond_0
    return-void
.end method

.method public onAmbientModeChanged(ZJ)V
    .locals 7

    .line 159
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$000(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mNeedTransition:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 160
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mShouldStopTransition:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    move-wide v3, v1

    goto :goto_0

    :cond_1
    move-wide v3, p2

    .line 162
    :goto_0
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onAmbientModeChanged: inAmbient="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", duration="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", mShouldStopTransition="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mShouldStopTransition:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$000(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v5, Lcom/android/systemui/-$$Lambda$ImageWallpaper$GLEngine$w2dgQ1kcC5UhS4OuTNdpiCJsVqQ;

    invoke-direct {v5, p0, p1, v3, v4}, Lcom/android/systemui/-$$Lambda$ImageWallpaper$GLEngine$w2dgQ1kcC5UhS4OuTNdpiCJsVqQ;-><init>(Lcom/android/systemui/ImageWallpaper$GLEngine;ZJ)V

    invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-eqz p1, :cond_2

    cmp-long p1, p2, v1

    if-nez p1, :cond_2

    .line 172
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->waitForBackgroundRendering()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 113
    new-instance p1, Lcom/android/systemui/glwallpaper/EglHelper;

    invoke-direct {p1}, Lcom/android/systemui/glwallpaper/EglHelper;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    .line 115
    new-instance p1, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;-><init>(Landroid/content/Context;Lcom/android/systemui/glwallpaper/GLWallpaperRenderer$SurfaceProxy;)V

    iput-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/glwallpaper/GLWallpaperRenderer;

    .line 116
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {p1, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    const/4 p1, 0x1

    .line 117
    invoke-virtual {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->setFixedSizeAllowed(Z)V

    .line 118
    invoke-virtual {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->setOffsetNotificationsEnabled(Z)V

    .line 119
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->updateSurfaceSize()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    if-eqz v0, :cond_0

    .line 194
    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    :cond_0
    const/4 v0, 0x0

    .line 196
    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 198
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$000(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/-$$Lambda$ImageWallpaper$GLEngine$Rhxb7oaAcAGNLCxy2rNqC6pp_0w;

    invoke-direct {v1, p0}, Lcom/android/systemui/-$$Lambda$ImageWallpaper$GLEngine$Rhxb7oaAcAGNLCxy2rNqC6pp_0w;-><init>(Lcom/android/systemui/ImageWallpaper$GLEngine;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onOffsetsChanged(FFFFII)V
    .locals 0

    .line 153
    iget-object p3, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {p3}, Lcom/android/systemui/ImageWallpaper;->access$000(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    .line 154
    :cond_0
    iget-object p3, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {p3}, Lcom/android/systemui/ImageWallpaper;->access$000(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p3

    new-instance p4, Lcom/android/systemui/-$$Lambda$ImageWallpaper$GLEngine$g3IyjqoMJVi1L9x8yfO51WpEVxQ;

    invoke-direct {p4, p0, p1, p2}, Lcom/android/systemui/-$$Lambda$ImageWallpaper$GLEngine$g3IyjqoMJVi1L9x8yfO51WpEVxQ;-><init>(Lcom/android/systemui/ImageWallpaper$GLEngine;FF)V

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStatePostChange()V
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$000(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    if-nez v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$000(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/-$$Lambda$ImageWallpaper$GLEngine$8Tw1AsmyFt-Lr4VSDxpiW6fEz7g;

    invoke-direct {v1, p0}, Lcom/android/systemui/-$$Lambda$ImageWallpaper$GLEngine$8Tw1AsmyFt-Lr4VSDxpiW6fEz7g;-><init>(Lcom/android/systemui/ImageWallpaper$GLEngine;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 218
    iget-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {p1}, Lcom/android/systemui/ImageWallpaper;->access$000(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 219
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {p1}, Lcom/android/systemui/ImageWallpaper;->access$000(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/-$$Lambda$ImageWallpaper$GLEngine$syj9B-tRzmYbOUFqEOGp6WsQqI0;

    invoke-direct {p2, p0, p3, p4}, Lcom/android/systemui/-$$Lambda$ImageWallpaper$GLEngine$syj9B-tRzmYbOUFqEOGp6WsQqI0;-><init>(Lcom/android/systemui/ImageWallpaper$GLEngine;II)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$000(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 209
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->checkIfShouldStopTransition()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mShouldStopTransition:Z

    .line 210
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$000(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/-$$Lambda$ImageWallpaper$GLEngine$WwPnKXUZbkazdjOcqYKAzWQFvTQ;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/-$$Lambda$ImageWallpaper$GLEngine$WwPnKXUZbkazdjOcqYKAzWQFvTQ;-><init>(Lcom/android/systemui/ImageWallpaper$GLEngine;Landroid/view/SurfaceHolder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 231
    iget-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {p1}, Lcom/android/systemui/ImageWallpaper;->access$000(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 232
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {p1}, Lcom/android/systemui/ImageWallpaper;->access$000(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/-$$Lambda$ImageWallpaper$GLEngine$nUXqEeCVFkWFioUicXPSoLlcN1s;

    invoke-direct {v0, p0}, Lcom/android/systemui/-$$Lambda$ImageWallpaper$GLEngine$nUXqEeCVFkWFioUicXPSoLlcN1s;-><init>(Lcom/android/systemui/ImageWallpaper$GLEngine;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 2

    .line 247
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$100()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wallpaper visibility changes to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public postRender()V
    .locals 2

    .line 338
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "postRender start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ImageWallpaper#postRender"

    .line 342
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 343
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->notifyWaitingThread()V

    .line 344
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->scheduleFinishRendering()V

    .line 345
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 348
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$100()Ljava/lang/String;

    move-result-object p0

    const-string v0, "postRender end"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public preRender()V
    .locals 2

    .line 268
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "preRender start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ImageWallpaper#preRender"

    .line 272
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 273
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->preRenderInternal()V

    .line 274
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 277
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$100()Ljava/lang/String;

    move-result-object p0

    const-string v0, "preRender end"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public requestRender()V
    .locals 1

    const-string v0, "ImageWallpaper#requestRender"

    .line 313
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 314
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->requestRenderInternal()V

    .line 315
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method
