.class Lcom/android/systemui/screenshot/GlobalScreenshot$1;
.super Lcom/android/systemui/shared/system/TaskStackChangeListener;
.source "GlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/screenshot/GlobalScreenshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V
    .locals 0

    .line 661
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$1;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-direct {p0}, Lcom/android/systemui/shared/system/TaskStackChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onTaskStackChanged$0$GlobalScreenshot$1()V
    .locals 2

    .line 667
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->getFocusedStackInfo()Landroid/app/ActivityManager$StackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 668
    iget-object v1, v0, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    .line 669
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$1;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    iget-object v0, v0, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    invoke-static {p0, v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$102(Lcom/android/systemui/screenshot/GlobalScreenshot;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public onTaskStackChanged()V
    .locals 2

    .line 664
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$1;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$000(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/UiOffloadThread;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$1$_2AlPXQAYqyMplYoGuSt99EzSik;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$1$_2AlPXQAYqyMplYoGuSt99EzSik;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot$1;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
