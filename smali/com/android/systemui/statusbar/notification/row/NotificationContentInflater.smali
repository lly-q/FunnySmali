.class public Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;
.super Ljava/lang/Object;
.source "NotificationContentInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$ApplyCallback;,
        Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;,
        Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;,
        Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationCallback;
    }
.end annotation


# instance fields
.field private final mCachedContentViews:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroid/widget/RemoteViews;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationCallback;

.field private mInflateSynchronously:Z

.field private mInflationFlags:I

.field private mIsChildInGroup:Z

.field private mIsLowPriority:Z

.field private mRemoteViewClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

.field private final mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field private mUsesIncreasedHeadsUpHeight:Z

.field private mUsesIncreasedHeight:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 1

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 107
    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mInflationFlags:I

    const/4 v0, 0x0

    .line 117
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mInflateSynchronously:Z

    .line 118
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mCachedContentViews:Landroid/util/ArrayMap;

    .line 121
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;ILandroid/util/ArrayMap;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationCallback;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z
    .locals 0

    .line 57
    invoke-static/range {p0 .. p5}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->finishIfDone(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;ILandroid/util/ArrayMap;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationCallback;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Ljava/util/HashMap;Ljava/lang/Exception;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationCallback;)V
    .locals 0

    .line 57
    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->handleInflationError(Ljava/util/HashMap;Ljava/lang/Exception;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationCallback;)V

    return-void
.end method

.method static synthetic access$1500(ILandroid/app/Notification$Builder;ZZZZLandroid/content/Context;)Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;
    .locals 0

    .line 57
    invoke-static/range {p0 .. p6}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->createRemoteViews(ILandroid/app/Notification$Builder;ZZZZLandroid/content/Context;)Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;ILcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/content/Context;Landroid/content/Context;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;)Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;
    .locals 0

    .line 57
    invoke-static/range {p0 .. p6}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->inflateSmartReplyViews(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;ILcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/content/Context;Landroid/content/Context;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;)Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;

    return-object p0
.end method

.method public static apply(ZLcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;ILandroid/util/ArrayMap;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationCallback;)Landroid/os/CancellationSignal;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;",
            "I",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroid/widget/RemoteViews;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;",
            "Landroid/widget/RemoteViews$OnClickHandler;",
            "Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationCallback;",
            ")",
            "Landroid/os/CancellationSignal;"
        }
    .end annotation

    move-object/from16 v14, p1

    move-object/from16 v15, p3

    .line 371
    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object v13

    .line 372
    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPublicLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object v12

    .line 373
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    and-int/lit8 v0, p2, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x1

    if-eqz v0, :cond_0

    .line 378
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$500(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 379
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    .line 378
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->canReapplyRemoteView(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v0

    xor-int/lit8 v6, v0, 0x1

    .line 380
    new-instance v8, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$1;

    invoke-direct {v8, v14}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$1;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)V

    .line 393
    invoke-virtual {v13}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v16

    invoke-virtual {v13, v10}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object v17

    const/4 v3, 0x1

    move/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v7, p5

    move-object/from16 v18, v8

    move-object/from16 v8, p6

    move-object v9, v13

    move-object/from16 v10, v16

    move-object/from16 v16, v11

    move-object/from16 v11, v17

    move-object/from16 v17, v12

    move-object/from16 v12, v16

    move-object/from16 v20, v13

    move-object/from16 v13, v18

    .line 391
    invoke-static/range {v0 .. v13}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->applyRemoteView(ZLcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;IILandroid/util/ArrayMap;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ZLandroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationCallback;Lcom/android/systemui/statusbar/notification/row/NotificationContentView;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$ApplyCallback;)V

    goto :goto_0

    :cond_0
    move-object/from16 v16, v11

    move-object/from16 v17, v12

    move-object/from16 v20, v13

    :goto_0
    and-int/lit8 v0, p2, 0x2

    const/4 v13, 0x2

    if-eqz v0, :cond_1

    .line 400
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$100(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 402
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$100(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 403
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    .line 402
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->canReapplyRemoteView(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v0

    const/4 v12, 0x1

    xor-int/lit8 v6, v0, 0x1

    .line 404
    new-instance v11, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$2;

    invoke-direct {v11, v14}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$2;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)V

    .line 417
    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getExpandedChild()Landroid/view/View;

    move-result-object v10

    move-object/from16 v9, v20

    .line 418
    invoke-virtual {v9, v12}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object v18

    const/4 v3, 0x2

    move/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v19, v11

    move-object/from16 v11, v18

    move/from16 v18, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v19

    .line 415
    invoke-static/range {v0 .. v13}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->applyRemoteView(ZLcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;IILandroid/util/ArrayMap;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ZLandroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationCallback;Lcom/android/systemui/statusbar/notification/row/NotificationContentView;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$ApplyCallback;)V

    goto :goto_1

    :cond_1
    const/16 v18, 0x1

    :goto_1
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_2

    .line 426
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$300(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 428
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$300(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v0

    const/4 v1, 0x4

    .line 429
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    .line 428
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->canReapplyRemoteView(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v0

    xor-int/lit8 v6, v0, 0x1

    .line 430
    new-instance v13, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$3;

    invoke-direct {v13, v14}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$3;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)V

    .line 443
    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getHeadsUpChild()Landroid/view/View;

    move-result-object v10

    move-object/from16 v9, v20

    const/4 v0, 0x2

    .line 444
    invoke-virtual {v9, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object v11

    const/4 v3, 0x4

    move/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v12, v16

    .line 441
    invoke-static/range {v0 .. v13}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->applyRemoteView(ZLcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;IILandroid/util/ArrayMap;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ZLandroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationCallback;Lcom/android/systemui/statusbar/notification/row/NotificationContentView;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$ApplyCallback;)V

    :cond_2
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_3

    .line 453
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$600(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v0

    const/16 v1, 0x8

    .line 454
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    .line 453
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->canReapplyRemoteView(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v0

    xor-int/lit8 v6, v0, 0x1

    .line 455
    new-instance v13, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$4;

    invoke-direct {v13, v14}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$4;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)V

    .line 468
    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v10

    move-object/from16 v9, v17

    const/4 v0, 0x0

    .line 469
    invoke-virtual {v9, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object v11

    const/16 v3, 0x8

    move/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v12, v16

    .line 466
    invoke-static/range {v0 .. v13}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->applyRemoteView(ZLcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;IILandroid/util/ArrayMap;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ZLandroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationCallback;Lcom/android/systemui/statusbar/notification/row/NotificationContentView;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$ApplyCallback;)V

    :cond_3
    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, v16

    move-object/from16 v4, p6

    move-object/from16 v5, p4

    .line 474
    invoke-static/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->finishIfDone(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;ILandroid/util/ArrayMap;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationCallback;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    .line 475
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    .line 476
    new-instance v1, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationContentInflater$WjCddtvZmmNqAdGsBYXcbiOdWQY;

    move-object/from16 v2, v16

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationContentInflater$WjCddtvZmmNqAdGsBYXcbiOdWQY;-><init>(Ljava/util/HashMap;)V

    invoke-virtual {v0, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    return-object v0
.end method

.method static applyRemoteView(ZLcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;IILandroid/util/ArrayMap;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ZLandroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationCallback;Lcom/android/systemui/statusbar/notification/row/NotificationContentView;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$ApplyCallback;)V
    .locals 18
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;",
            "II",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroid/widget/RemoteViews;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;",
            "Z",
            "Landroid/widget/RemoteViews$OnClickHandler;",
            "Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationCallback;",
            "Lcom/android/systemui/statusbar/notification/row/NotificationContentView;",
            "Landroid/view/View;",
            "Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/os/CancellationSignal;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$ApplyCallback;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v15, p7

    move-object/from16 v14, p12

    .line 497
    invoke-virtual/range {p13 .. p13}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$ApplyCallback;->getRemoteView()Landroid/widget/RemoteViews;

    move-result-object v13

    if-eqz p0, :cond_1

    if-eqz p6, :cond_0

    .line 501
    :try_start_0
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->packageContext:Landroid/content/Context;

    move-object/from16 v12, p9

    invoke-virtual {v13, v0, v12, v15}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    .line 505
    invoke-virtual {v0, v1}, Landroid/view/View;->setIsRootNamespace(Z)V

    move-object/from16 v4, p13

    .line 506
    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$ApplyCallback;->setResultView(Landroid/view/View;)V

    goto :goto_0

    .line 508
    :cond_0
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->packageContext:Landroid/content/Context;

    move-object/from16 v11, p10

    invoke-virtual {v13, v0, v11, v15}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 512
    invoke-virtual/range {p11 .. p11}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->onReinflated()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 515
    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    move-object/from16 v10, p8

    invoke-static {v14, v0, v1, v10}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->handleInflationError(Ljava/util/HashMap;Ljava/lang/Exception;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationCallback;)V

    .line 518
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Landroid/os/CancellationSignal;

    invoke-direct {v1}, Landroid/os/CancellationSignal;-><init>()V

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_1
    move-object/from16 v10, p8

    move-object/from16 v12, p9

    move-object/from16 v11, p10

    move-object/from16 v4, p13

    .line 522
    new-instance v16, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;

    move-object/from16 v1, v16

    move-object/from16 v2, p5

    move/from16 v3, p6

    move-object/from16 v5, p11

    move-object/from16 v6, p12

    move/from16 v7, p3

    move-object/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p4

    move-object/from16 v11, p8

    move-object/from16 v12, p10

    move-object/from16 v17, v13

    move-object/from16 v14, p9

    move-object/from16 v15, p7

    invoke-direct/range {v1 .. v15}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ZLcom/android/systemui/statusbar/notification/row/NotificationContentInflater$ApplyCallback;Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;Ljava/util/HashMap;ILcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;ILandroid/util/ArrayMap;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationCallback;Landroid/view/View;Landroid/widget/RemoteViews;Lcom/android/systemui/statusbar/notification/row/NotificationContentView;Landroid/widget/RemoteViews$OnClickHandler;)V

    if-eqz p6, :cond_2

    .line 573
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->packageContext:Landroid/content/Context;

    const/4 v3, 0x0

    move-object/from16 v0, v17

    move-object/from16 v2, p9

    move-object/from16 v4, v16

    move-object/from16 v5, p7

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->applyAsync(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/os/CancellationSignal;

    move-result-object v0

    goto :goto_1

    .line 580
    :cond_2
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->packageContext:Landroid/content/Context;

    const/4 v3, 0x0

    move-object/from16 v0, v17

    move-object/from16 v2, p10

    move-object/from16 v4, v16

    move-object/from16 v5, p7

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->reapplyAsync(Landroid/content/Context;Landroid/view/View;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/os/CancellationSignal;

    move-result-object v0

    .line 587
    :goto_1
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, p12

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static canReapplyRemoteView(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-eqz p1, :cond_2

    :cond_0
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 714
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 715
    invoke-virtual {p0}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 716
    invoke-virtual {p0}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 717
    invoke-virtual {p0}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result p0

    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v1

    if-ne p0, v1, :cond_1

    .line 718
    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews;->hasFlags(I)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method private static createContentView(Landroid/app/Notification$Builder;ZZ)Landroid/widget/RemoteViews;
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 699
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->makeLowPriorityContentView(Z)Landroid/widget/RemoteViews;

    move-result-object p0

    return-object p0

    .line 701
    :cond_0
    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->createContentView(Z)Landroid/widget/RemoteViews;

    move-result-object p0

    return-object p0
.end method

.method private static createExpandedView(Landroid/app/Notification$Builder;Z)Landroid/widget/RemoteViews;
    .locals 1

    .line 684
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->createBigContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    .line 689
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->createContentView()Landroid/widget/RemoteViews;

    move-result-object p0

    .line 690
    invoke-static {p0}, Landroid/app/Notification$Builder;->makeHeaderExpanded(Landroid/widget/RemoteViews;)V

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static createRemoteViews(ILandroid/app/Notification$Builder;ZZZZLandroid/content/Context;)Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;
    .locals 3

    .line 337
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    if-nez p3, :cond_0

    move p2, v2

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    and-int/lit8 p3, p0, 0x1

    if-eqz p3, :cond_1

    .line 341
    invoke-static {p1, p2, p4}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->createContentView(Landroid/app/Notification$Builder;ZZ)Landroid/widget/RemoteViews;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$502(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    :cond_1
    and-int/lit8 p3, p0, 0x2

    if-eqz p3, :cond_2

    .line 345
    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->createExpandedView(Landroid/app/Notification$Builder;Z)Landroid/widget/RemoteViews;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$102(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    :cond_2
    and-int/lit8 p3, p0, 0x4

    if-eqz p3, :cond_3

    .line 349
    invoke-virtual {p1, p5}, Landroid/app/Notification$Builder;->createHeadsUpContentView(Z)Landroid/widget/RemoteViews;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$302(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    :cond_3
    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_4

    .line 353
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->makePublicContentView(Z)Landroid/widget/RemoteViews;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$602(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    .line 356
    :cond_4
    iput-object p6, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->packageContext:Landroid/content/Context;

    .line 357
    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->getHeadsUpStatusBarText(Z)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$702(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 358
    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->getHeadsUpStatusBarText(Z)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$802(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    return-object v0
.end method

.method private static finishIfDone(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;ILandroid/util/ArrayMap;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationCallback;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;",
            "I",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroid/widget/RemoteViews;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/os/CancellationSignal;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationCallback;",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;",
            ")Z"
        }
    .end annotation

    .line 609
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 610
    invoke-virtual {p5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    .line 611
    invoke-virtual {p5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object v1

    .line 612
    invoke-virtual {p5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPublicLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object v2

    .line 613
    invoke-virtual {p3}, Ljava/util/HashMap;->isEmpty()Z

    move-result p3

    const/4 v3, 0x0

    if-eqz p3, :cond_10

    and-int/lit8 p3, p1, 0x1

    const/4 v4, 0x1

    if-eqz p3, :cond_1

    .line 615
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$900(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 617
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$900(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Landroid/view/View;

    move-result-object p3

    invoke-virtual {v1, p3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setContractedChild(Landroid/view/View;)V

    .line 618
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$500(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v5

    invoke-virtual {p2, p3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 619
    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 622
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$500(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v5

    invoke-virtual {p2, p3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    and-int/lit8 p3, p1, 0x2

    const/4 v5, 0x0

    if-eqz p3, :cond_7

    .line 627
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$1000(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Landroid/view/View;

    move-result-object p3

    const/4 v6, 0x2

    if-eqz p3, :cond_2

    .line 628
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$1000(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Landroid/view/View;

    move-result-object p3

    invoke-virtual {v1, p3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setExpandedChild(Landroid/view/View;)V

    .line 629
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$100(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v6

    invoke-virtual {p2, p3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 630
    :cond_2
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$100(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object p3

    if-nez p3, :cond_3

    .line 631
    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setExpandedChild(Landroid/view/View;)V

    .line 632
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 633
    :cond_3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 634
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$100(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v6

    invoke-virtual {p2, p3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    :cond_4
    :goto_1
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$100(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 638
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$200(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;

    move-result-object p3

    .line 637
    invoke-virtual {v1, p3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setExpandedInflatedSmartReplies(Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;)V

    goto :goto_2

    .line 640
    :cond_5
    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setExpandedInflatedSmartReplies(Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;)V

    .line 642
    :goto_2
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$100(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object p3

    if-eqz p3, :cond_6

    move v3, v4

    :cond_6
    invoke-virtual {p5, v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setExpandable(Z)V

    :cond_7
    and-int/lit8 p3, p1, 0x4

    if-eqz p3, :cond_c

    .line 646
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$1100(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Landroid/view/View;

    move-result-object p3

    const/4 v3, 0x4

    if-eqz p3, :cond_8

    .line 647
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$1100(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Landroid/view/View;

    move-result-object p3

    invoke-virtual {v1, p3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setHeadsUpChild(Landroid/view/View;)V

    .line 648
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$300(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v3

    invoke-virtual {p2, p3, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 649
    :cond_8
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$300(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object p3

    if-nez p3, :cond_9

    .line 650
    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setHeadsUpChild(Landroid/view/View;)V

    .line 651
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 652
    :cond_9
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_a

    .line 653
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$300(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v3

    invoke-virtual {p2, p3, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    :cond_a
    :goto_3
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$300(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object p3

    if-eqz p3, :cond_b

    .line 657
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$400(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;

    move-result-object p3

    .line 656
    invoke-virtual {v1, p3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setHeadsUpInflatedSmartReplies(Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;)V

    goto :goto_4

    .line 659
    :cond_b
    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setHeadsUpInflatedSmartReplies(Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;)V

    :cond_c
    :goto_4
    and-int/lit8 p3, p1, 0x8

    if-eqz p3, :cond_e

    .line 664
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$1200(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Landroid/view/View;

    move-result-object p3

    const/16 v1, 0x8

    if-eqz p3, :cond_d

    .line 665
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$1200(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Landroid/view/View;

    move-result-object p3

    invoke-virtual {v2, p3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setContractedChild(Landroid/view/View;)V

    .line 666
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$600(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-virtual {p2, p3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 667
    :cond_d
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_e

    .line 668
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$600(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-virtual {p2, p3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    :cond_e
    :goto_5
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$700(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->headsUpStatusBarText:Ljava/lang/CharSequence;

    .line 673
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$800(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->headsUpStatusBarTextPublic:Ljava/lang/CharSequence;

    if-eqz p4, :cond_f

    .line 675
    invoke-virtual {p5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    invoke-interface {p4, p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationCallback;->onAsyncInflationFinished(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    :cond_f
    return v4

    :cond_10
    return v3
.end method

.method private static handleInflationError(Ljava/util/HashMap;Ljava/lang/Exception;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/os/CancellationSignal;",
            ">;",
            "Ljava/lang/Exception;",
            "Landroid/service/notification/StatusBarNotification;",
            "Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationCallback;",
            ")V"
        }
    .end annotation

    .line 593
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 594
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$POlPJz26zF5Nt5Z2kVGSqFxN8Co;->INSTANCE:Lcom/android/systemui/statusbar/notification/row/-$$Lambda$POlPJz26zF5Nt5Z2kVGSqFxN8Co;

    invoke-interface {p0, v0}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    if-eqz p3, :cond_0

    .line 596
    invoke-interface {p3, p2, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationCallback;->handleInflationException(Landroid/service/notification/StatusBarNotification;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method private inflateNotificationViews(I)V
    .locals 14

    .line 225
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isRemoved()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 232
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mInflationFlags:I

    and-int v4, p1, v0

    .line 233
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 236
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getImageResolver()Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver;

    move-result-object p1

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver;->preloadImages(Landroid/app/Notification;)V

    .line 238
    new-instance p1, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mInflateSynchronously:Z

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mCachedContentViews:Landroid/util/ArrayMap;

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mIsLowPriority:Z

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mIsChildInGroup:Z

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mUsesIncreasedHeight:Z

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mUsesIncreasedHeadsUpHeight:Z

    iget-object v11, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mCallback:Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationCallback;

    iget-object v12, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mRemoteViewClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    const/4 v13, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v13}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;-><init>(Landroid/service/notification/StatusBarNotification;ZILandroid/util/ArrayMap;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ZZZZLcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationCallback;Landroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$1;)V

    .line 250
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mInflateSynchronously:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    new-array p0, v0, [Ljava/lang/Void;

    .line 251
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->doInBackground([Ljava/lang/Void;)Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->onPostExecute(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)V

    goto :goto_0

    :cond_1
    new-array p0, v0, [Ljava/lang/Void;

    .line 253
    invoke-virtual {p1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void
.end method

.method private static inflateSmartReplyViews(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;ILcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/content/Context;Landroid/content/Context;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;)Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;
    .locals 9

    .line 316
    const-class v0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    .line 317
    const-class v1, Lcom/android/systemui/statusbar/SmartReplyController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/systemui/statusbar/SmartReplyController;

    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_0

    .line 318
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$100(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p2

    move-object v4, v0

    move-object v5, v8

    move-object v6, p5

    move-object v7, p6

    .line 320
    invoke-static/range {v1 .. v7}, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;->inflate(Landroid/content/Context;Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/policy/SmartReplyConstants;Lcom/android/systemui/statusbar/SmartReplyController;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;)Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;

    move-result-object v1

    .line 319
    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$202(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;)Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;

    :cond_0
    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_1

    .line 324
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$300(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object p1

    if-eqz p1, :cond_1

    move-object v1, p3

    move-object v2, p4

    move-object v3, p2

    move-object v4, v0

    move-object v5, v8

    move-object v6, p5

    move-object v7, p6

    .line 326
    invoke-static/range {v1 .. v7}, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;->inflate(Landroid/content/Context;Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/policy/SmartReplyConstants;Lcom/android/systemui/statusbar/SmartReplyController;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;)Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;

    move-result-object p1

    .line 325
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$402(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;)Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;

    :cond_1
    return-object p0
.end method

.method static synthetic lambda$apply$0(Ljava/util/HashMap;)V
    .locals 1

    .line 477
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$POlPJz26zF5Nt5Z2kVGSqFxN8Co;->INSTANCE:Lcom/android/systemui/statusbar/notification/row/-$$Lambda$POlPJz26zF5Nt5Z2kVGSqFxN8Co;

    invoke-interface {p0, v0}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public addInflationFlags(I)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 195
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mInflationFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mInflationFlags:I

    return-void
.end method

.method public clearCachesAndReInflate()V
    .locals 1

    .line 738
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mCachedContentViews:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 739
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->inflateNotificationViews()V

    return-void
.end method

.method public freeNotificationView(I)V
    .locals 3

    .line 287
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mInflationFlags:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 300
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPublicLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->isContentViewInactive(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 301
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPublicLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setContractedChild(Landroid/view/View;)V

    .line 302
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mCachedContentViews:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 293
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object p1

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->isContentViewInactive(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 294
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setHeadsUpChild(Landroid/view/View;)V

    .line 295
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mCachedContentViews:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setHeadsUpInflatedSmartReplies(Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;)V

    :cond_3
    :goto_0
    return-void
.end method

.method inflateNotificationViews(ZILandroid/app/Notification$Builder;Landroid/content/Context;)Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;
    .locals 14
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object v0, p0

    .line 263
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mIsLowPriority:Z

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mIsChildInGroup:Z

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mUsesIncreasedHeight:Z

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mUsesIncreasedHeadsUpHeight:Z

    move/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v7, p4

    invoke-static/range {v1 .. v7}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->createRemoteViews(ILandroid/app/Notification$Builder;ZZZZLandroid/content/Context;)Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;

    move-result-object v1

    .line 266
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v9

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 267
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v10

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getHeadsUpManager()Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-result-object v12

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 268
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getExistingSmartRepliesAndActions()Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;

    move-result-object v13

    move-object v7, v1

    move/from16 v8, p2

    move-object/from16 v11, p4

    .line 266
    invoke-static/range {v7 .. v13}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->inflateSmartReplyViews(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;ILcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/content/Context;Landroid/content/Context;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;)Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;

    .line 269
    iget-object v10, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mCachedContentViews:Landroid/util/ArrayMap;

    iget-object v11, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v12, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mRemoteViewClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    const/4 v13, 0x0

    move v7, p1

    move-object v8, v1

    move/from16 v9, p2

    invoke-static/range {v7 .. v13}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->apply(ZLcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;ILandroid/util/ArrayMap;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationCallback;)Landroid/os/CancellationSignal;

    return-object v1
.end method

.method public inflateNotificationViews()V
    .locals 1

    .line 213
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mInflationFlags:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->inflateNotificationViews(I)V

    return-void
.end method

.method public isInflationFlagSet(I)Z
    .locals 0

    .line 205
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mInflationFlags:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method setInflateSynchronously(Z)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 748
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mInflateSynchronously:Z

    return-void
.end method

.method public setInflationCallback(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationCallback;)V
    .locals 0

    .line 722
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mCallback:Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationCallback;

    return-void
.end method

.method public setIsChildInGroup(Z)V
    .locals 1

    .line 134
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mIsChildInGroup:Z

    if-eq p1, v0, :cond_0

    .line 135
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mIsChildInGroup:Z

    .line 136
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mIsLowPriority:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    .line 138
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->inflateNotificationViews(I)V

    :cond_0
    return-void
.end method

.method public setIsLowPriority(Z)V
    .locals 0

    .line 125
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mIsLowPriority:Z

    return-void
.end method

.method public setRemoteViewClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mRemoteViewClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    return-void
.end method

.method public setUsesIncreasedHeadsUpHeight(Z)V
    .locals 0

    .line 148
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mUsesIncreasedHeadsUpHeight:Z

    return-void
.end method

.method public setUsesIncreasedHeight(Z)V
    .locals 0

    .line 144
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mUsesIncreasedHeight:Z

    return-void
.end method

.method public updateInflationFlag(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 181
    iget p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mInflationFlags:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mInflationFlags:I

    goto :goto_0

    :cond_0
    and-int/lit8 p2, p1, 0x3

    if-nez p2, :cond_1

    .line 183
    iget p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mInflationFlags:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mInflationFlags:I

    :cond_1
    :goto_0
    return-void
.end method

.method public updateNeedsRedaction(Z)V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/16 p1, 0x8

    .line 167
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->inflateNotificationViews(I)V

    :cond_1
    return-void
.end method
