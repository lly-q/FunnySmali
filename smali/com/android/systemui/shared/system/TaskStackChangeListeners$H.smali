.class final Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;
.super Landroid/os/Handler;
.source "TaskStackChangeListeners.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/system/TaskStackChangeListeners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/system/TaskStackChangeListeners;Landroid/os/Looper;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    .line 247
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 252
    iget-object v0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v0}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 253
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_16

    .line 394
    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_3

    .line 395
    iget-object v2, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v2}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onTaskDisplayChanged(II)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 387
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_1
    if-ltz v1, :cond_3

    .line 388
    iget-object v2, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v2}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onSingleTaskDisplayEmpty(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 381
    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_2
    if-ltz v1, :cond_3

    .line 382
    iget-object v2, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v2}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onSingleTaskDisplayDrawn(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 374
    :pswitch_3
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_3
    if-ltz v1, :cond_3

    .line 375
    iget-object v2, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v2}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v2, v3}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 367
    :pswitch_4
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_4
    if-ltz v1, :cond_3

    .line 368
    iget-object v2, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v2}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onSizeCompatModeActivityChanged(ILandroid/os/IBinder;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 326
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 327
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_5
    if-ltz v1, :cond_3

    .line 328
    iget-object v2, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v2}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    .line 329
    invoke-virtual {v2, p1}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onActivityLaunchOnSecondaryDisplayRerouted(Landroid/app/ActivityManager$RunningTaskInfo;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    .line 360
    :pswitch_6
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_6
    if-ltz v1, :cond_3

    .line 361
    iget-object v2, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v2}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    .line 362
    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onActivityRequestedOrientationChanged(II)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 353
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 354
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_7
    if-ltz v1, :cond_3

    .line 355
    iget-object v2, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v2}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v2, p1}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 347
    :pswitch_8
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_8
    if-ltz v1, :cond_3

    .line 348
    iget-object v2, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v2}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onTaskRemoved(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 340
    :pswitch_9
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_9
    if-ltz v1, :cond_3

    .line 341
    iget-object v2, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v2}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/ComponentName;

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onTaskCreated(ILandroid/content/ComponentName;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 318
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 319
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_a
    if-ltz v1, :cond_3

    .line 320
    iget-object v2, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v2}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    .line 321
    invoke-virtual {v2, p1}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onActivityLaunchOnSecondaryDisplayFailed(Landroid/app/ActivityManager$RunningTaskInfo;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 280
    :pswitch_b
    iget-object p1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {p1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v2

    :goto_b
    if-ltz p1, :cond_3

    .line 281
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v1}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onActivityUnpinned()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_b

    .line 293
    :pswitch_c
    iget-object p1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {p1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v2

    :goto_c
    if-ltz p1, :cond_3

    .line 294
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v1}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onPinnedStackAnimationStarted()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_c

    .line 334
    :pswitch_d
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_d
    if-ltz v1, :cond_3

    .line 335
    iget-object v2, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v2}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onTaskProfileLocked(II)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 312
    :pswitch_e
    iget-object p1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {p1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v2

    :goto_e
    if-ltz p1, :cond_3

    .line 313
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v1}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onActivityDismissingDockedStack()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_e

    .line 305
    :pswitch_f
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_f
    if-ltz v1, :cond_3

    .line 306
    iget-object v2, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v2}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onActivityForcedResizable(Ljava/lang/String;II)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    .line 299
    :pswitch_10
    iget-object p1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {p1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v2

    :goto_10
    if-ltz p1, :cond_3

    .line 300
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v1}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onPinnedStackAnimationEnded()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_10

    .line 286
    :pswitch_11
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_11
    if-ltz v1, :cond_3

    .line 287
    iget-object v3, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v3}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_0

    move v4, v2

    goto :goto_12

    :cond_0
    const/4 v4, 0x0

    :goto_12
    invoke-virtual {v3, v4}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onPinnedActivityRestartAttempt(Z)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_11

    .line 272
    :pswitch_12
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/shared/system/TaskStackChangeListeners$PinnedActivityInfo;

    .line 273
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_13
    if-ltz v1, :cond_3

    .line 274
    iget-object v2, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v2}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    iget-object v3, p1, Lcom/android/systemui/shared/system/TaskStackChangeListeners$PinnedActivityInfo;->mPackageName:Ljava/lang/String;

    iget v4, p1, Lcom/android/systemui/shared/system/TaskStackChangeListeners$PinnedActivityInfo;->mUserId:I

    iget v5, p1, Lcom/android/systemui/shared/system/TaskStackChangeListeners$PinnedActivityInfo;->mTaskId:I

    iget v6, p1, Lcom/android/systemui/shared/system/TaskStackChangeListeners$PinnedActivityInfo;->mStackId:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onActivityPinned(Ljava/lang/String;III)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_13

    :pswitch_13
    const-string v1, "onTaskSnapshotChanged"

    .line 263
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 264
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_14
    if-ltz v1, :cond_1

    .line 265
    iget-object v2, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v2}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    new-instance v4, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/app/ActivityManager$TaskSnapshot;

    invoke-direct {v4, v5}, Lcom/android/systemui/shared/recents/model/ThumbnailData;-><init>(Landroid/app/ActivityManager$TaskSnapshot;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onTaskSnapshotChanged(ILcom/android/systemui/shared/recents/model/ThumbnailData;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_14

    .line 268
    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_16

    :pswitch_14
    const-string p1, "onTaskStackChanged"

    .line 255
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 256
    iget-object p1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {p1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v2

    :goto_15
    if-ltz p1, :cond_2

    .line 257
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v1}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onTaskStackChanged()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_15

    .line 259
    :cond_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 400
    :cond_3
    :goto_16
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
