.class public Lcom/android/systemui/bubbles/BubbleData;
.super Ljava/lang/Object;
.source "BubbleData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/bubbles/BubbleData$TimeSource;,
        Lcom/android/systemui/bubbles/BubbleData$Listener;,
        Lcom/android/systemui/bubbles/BubbleData$Update;
    }
.end annotation


# static fields
.field private static final BUBBLES_BY_SORT_KEY_DESCENDING:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/systemui/bubbles/Bubble;",
            ">;"
        }
    .end annotation
.end field

.field private static final GROUPS_BY_MAX_SORT_KEY_DESCENDING:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mBubbles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/bubbles/Bubble;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mExpanded:Z

.field private mListener:Lcom/android/systemui/bubbles/BubbleData$Listener;

.field private mSelectedBubble:Lcom/android/systemui/bubbles/Bubble;

.field private mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

.field private mSuppressedGroupKeys:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeSource:Lcom/android/systemui/bubbles/BubbleData$TimeSource;

.field private mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    sget-object v0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleData$vPZCImnk7rTPTX1c7nr0PX7FO2o;->INSTANCE:Lcom/android/systemui/bubbles/-$$Lambda$BubbleData$vPZCImnk7rTPTX1c7nr0PX7FO2o;

    .line 63
    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/bubbles/BubbleData;->BUBBLES_BY_SORT_KEY_DESCENDING:Ljava/util/Comparator;

    .line 65
    sget-object v0, Lcom/android/systemui/bubbles/-$$Lambda$JmVH-PWbzq5woEs3Hauzhf2I3Jc;->INSTANCE:Lcom/android/systemui/bubbles/-$$Lambda$JmVH-PWbzq5woEs3Hauzhf2I3Jc;

    .line 66
    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/bubbles/BubbleData;->GROUPS_BY_MAX_SORT_KEY_DESCENDING:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    sget-object v0, Lcom/android/systemui/bubbles/-$$Lambda$0E0fwzH9SS6-aB9lL5npMzupI4Q;->INSTANCE:Lcom/android/systemui/bubbles/-$$Lambda$0E0fwzH9SS6-aB9lL5npMzupI4Q;

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mTimeSource:Lcom/android/systemui/bubbles/BubbleData$TimeSource;

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mSuppressedGroupKeys:Ljava/util/HashMap;

    .line 144
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mContext:Landroid/content/Context;

    .line 145
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    .line 146
    new-instance p1, Lcom/android/systemui/bubbles/BubbleData$Update;

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/android/systemui/bubbles/BubbleData$Update;-><init>(Ljava/util/List;Lcom/android/systemui/bubbles/BubbleData$1;)V

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    return-void
.end method

.method private dispatchPendingChanges()V
    .locals 3

    .line 416
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mListener:Lcom/android/systemui/bubbles/BubbleData$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleData$Update;->anythingChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mListener:Lcom/android/systemui/bubbles/BubbleData$Listener;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    invoke-interface {v0, v1}, Lcom/android/systemui/bubbles/BubbleData$Listener;->applyUpdate(Lcom/android/systemui/bubbles/BubbleData$Update;)V

    .line 419
    :cond_0
    new-instance v0, Lcom/android/systemui/bubbles/BubbleData$Update;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bubbles/BubbleData$Update;-><init>(Ljava/util/List;Lcom/android/systemui/bubbles/BubbleData$1;)V

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    return-void
.end method

.method private doAdd(Lcom/android/systemui/bubbles/Bubble;)V
    .locals 4

    .line 305
    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/bubbles/BubbleData;->hasBubbleWithGroupId(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 306
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleData;->isExpanded()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 308
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/bubbles/BubbleData;->findFirstIndexForGroup(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    .line 310
    :goto_1
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/bubbles/BubbleData;->insertBubble(ILcom/android/systemui/bubbles/Bubble;)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_2

    .line 311
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    iput-boolean v1, v0, Lcom/android/systemui/bubbles/BubbleData$Update;->orderChanged:Z

    .line 313
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    iput-object p1, v0, Lcom/android/systemui/bubbles/BubbleData$Update;->addedBubble:Lcom/android/systemui/bubbles/Bubble;

    .line 314
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleData;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_3

    .line 315
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    iget-boolean v1, v0, Lcom/android/systemui/bubbles/BubbleData$Update;->orderChanged:Z

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getGroupId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->findFirstIndexForGroup(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->packGroup(I)Z

    move-result p1

    or-int/2addr p1, v1

    iput-boolean p1, v0, Lcom/android/systemui/bubbles/BubbleData$Update;->orderChanged:Z

    .line 317
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/bubbles/Bubble;

    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->setSelectedBubbleInternal(Lcom/android/systemui/bubbles/Bubble;)V

    :cond_3
    return-void
.end method

.method private doRemove(Ljava/lang/String;I)V
    .locals 5

    .line 352
    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->indexForKey(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/bubbles/Bubble;

    .line 357
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    .line 359
    invoke-direct {p0, v1}, Lcom/android/systemui/bubbles/BubbleData;->setExpandedInternal(Z)V

    const/4 v1, 0x0

    .line 360
    invoke-direct {p0, v1}, Lcom/android/systemui/bubbles/BubbleData;->setSelectedBubbleInternal(Lcom/android/systemui/bubbles/Bubble;)V

    .line 362
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    if-ge p1, v1, :cond_2

    .line 364
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    iput-boolean v2, v1, Lcom/android/systemui/bubbles/BubbleData$Update;->orderChanged:Z

    .line 366
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 367
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    invoke-virtual {v1, v0, p2}, Lcom/android/systemui/bubbles/BubbleData$Update;->bubbleRemoved(Lcom/android/systemui/bubbles/Bubble;I)V

    .line 368
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleData;->isExpanded()Z

    move-result v1

    if-nez v1, :cond_3

    .line 369
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    iget-boolean v3, v1, Lcom/android/systemui/bubbles/BubbleData$Update;->orderChanged:Z

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleData;->repackAll()Z

    move-result v4

    or-int/2addr v3, v4

    iput-boolean v3, v1, Lcom/android/systemui/bubbles/BubbleData$Update;->orderChanged:Z

    .line 373
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mSelectedBubble:Lcom/android/systemui/bubbles/Bubble;

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 375
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 376
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/bubbles/Bubble;

    .line 377
    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->setSelectedBubbleInternal(Lcom/android/systemui/bubbles/Bubble;)V

    .line 379
    :cond_4
    invoke-virtual {v0}, Lcom/android/systemui/bubbles/Bubble;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/android/systemui/bubbles/BubbleData;->maybeSendDeleteIntent(ILcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method private doUpdate(Lcom/android/systemui/bubbles/Bubble;)V
    .locals 2

    .line 337
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    iput-object p1, v0, Lcom/android/systemui/bubbles/BubbleData$Update;->updatedBubble:Lcom/android/systemui/bubbles/Bubble;

    .line 338
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleData;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 340
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 341
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 342
    invoke-direct {p0, v1, p1}, Lcom/android/systemui/bubbles/BubbleData;->insertBubble(ILcom/android/systemui/bubbles/Bubble;)I

    move-result p1

    if-eq v0, p1, :cond_0

    .line 344
    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->packGroup(I)Z

    .line 345
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/systemui/bubbles/BubbleData$Update;->orderChanged:Z

    .line 347
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/bubbles/Bubble;

    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->setSelectedBubbleInternal(Lcom/android/systemui/bubbles/Bubble;)V

    :cond_1
    return-void
.end method

.method private findFirstIndexForGroup(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 540
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 541
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/bubbles/Bubble;

    .line 542
    invoke-virtual {v2}, Lcom/android/systemui/bubbles/Bubble;->getGroupId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private hasBubbleWithGroupId(Ljava/lang/String;)Z
    .locals 1

    .line 536
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleData$H_9shD4W4k6iZvs8GpmXTAxbTbM;

    invoke-direct {v0, p1}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleData$H_9shD4W4k6iZvs8GpmXTAxbTbM;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method private indexForKey(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 643
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 644
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/bubbles/Bubble;

    .line 645
    invoke-virtual {v1}, Lcom/android/systemui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private insertBubble(ILcom/android/systemui/bubbles/Bubble;)I
    .locals 5

    .line 516
    invoke-static {p2}, Lcom/android/systemui/bubbles/BubbleData;->sortKey(Lcom/android/systemui/bubbles/Bubble;)J

    move-result-wide v0

    const/4 v2, 0x0

    .line 519
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge p1, v3, :cond_1

    .line 520
    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/bubbles/Bubble;

    .line 521
    invoke-virtual {v3}, Lcom/android/systemui/bubbles/Bubble;->getGroupId()Ljava/lang/String;

    move-result-object v4

    .line 522
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 524
    invoke-static {v3}, Lcom/android/systemui/bubbles/BubbleData;->sortKey(Lcom/android/systemui/bubbles/Bubble;)J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 526
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    move-object v2, v4

    goto :goto_0

    .line 531
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 532
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method static synthetic lambda$hasBubbleWithGroupId$2(Ljava/lang/String;Lcom/android/systemui/bubbles/Bubble;)Z
    .locals 0

    .line 536
    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getGroupId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$repackAll$3(Ljava/lang/String;Lcom/android/systemui/bubbles/Bubble;)Z
    .locals 0

    .line 614
    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getGroupId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$vPZCImnk7rTPTX1c7nr0PX7FO2o(Lcom/android/systemui/bubbles/Bubble;)J
    .locals 2

    invoke-static {p0}, Lcom/android/systemui/bubbles/BubbleData;->sortKey(Lcom/android/systemui/bubbles/Bubble;)J

    move-result-wide v0

    return-wide v0
.end method

.method private maybeSendDeleteIntent(ILcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_1

    .line 628
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 630
    invoke-virtual {p0}, Landroid/app/Notification$BubbleMetadata;->getDeleteIntent()Landroid/app/PendingIntent;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 634
    :try_start_0
    invoke-virtual {p0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 636
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Failed to send delete intent for bubble with key: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Bubbles"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void
.end method

.method private packGroup(I)Z
    .locals 6

    .line 561
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/bubbles/Bubble;

    .line 562
    invoke-virtual {v0}, Lcom/android/systemui/bubbles/Bubble;->getGroupId()Ljava/lang/String;

    move-result-object v0

    .line 563
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 566
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    const/4 v4, 0x0

    if-le v2, p1, :cond_1

    .line 567
    iget-object v5, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/bubbles/Bubble;

    invoke-virtual {v5}, Lcom/android/systemui/bubbles/Bubble;->getGroupId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 568
    iget-object v5, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/bubbles/Bubble;

    invoke-interface {v1, v4, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 571
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    return v4

    .line 574
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 575
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    add-int/2addr p1, v3

    invoke-interface {p0, p1, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    return v3
.end method

.method private repackAll()Z
    .locals 8

    .line 590
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 593
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 594
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/bubbles/Bubble;

    .line 595
    invoke-virtual {v3}, Lcom/android/systemui/bubbles/Bubble;->getGroupId()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 596
    invoke-static {v3}, Lcom/android/systemui/bubbles/BubbleData;->sortKey(Lcom/android/systemui/bubbles/Bubble;)J

    move-result-wide v6

    cmp-long v4, v6, v4

    if-lez v4, :cond_1

    .line 598
    invoke-virtual {v3}, Lcom/android/systemui/bubbles/Bubble;->getGroupId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 604
    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v2, Lcom/android/systemui/bubbles/BubbleData;->GROUPS_BY_MAX_SORT_KEY_DESCENDING:Ljava/util/Comparator;

    .line 605
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v2, Lcom/android/systemui/bubbles/-$$Lambda$CSz_ibwXhtkKNl72Q8tR5oBgkWk;->INSTANCE:Lcom/android/systemui/bubbles/-$$Lambda$CSz_ibwXhtkKNl72Q8tR5oBgkWk;

    .line 606
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 607
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 609
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 612
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 613
    iget-object v4, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/bubbles/-$$Lambda$BubbleData$dNlU6_h6UYMtjKJV6CpiMlj80Mk;

    invoke-direct {v5, v3}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleData$dNlU6_h6UYMtjKJV6CpiMlj80Mk;-><init>(Ljava/lang/String;)V

    .line 614
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/bubbles/BubbleData;->BUBBLES_BY_SORT_KEY_DESCENDING:Ljava/util/Comparator;

    .line 615
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/bubbles/-$$Lambda$0tU2wih_2wwdAnw6hE7FT9YuCis;

    invoke-direct {v4, v2}, Lcom/android/systemui/bubbles/-$$Lambda$0tU2wih_2wwdAnw6hE7FT9YuCis;-><init>(Ljava/util/List;)V

    .line 616
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    goto :goto_1

    .line 618
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 621
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 622
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p0, 0x1

    return p0
.end method

.method private setExpandedInternal(Z)V
    .locals 3

    .line 456
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mExpanded:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    .line 460
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "Bubbles"

    if-eqz v0, :cond_1

    const-string p0, "Attempt to expand stack when empty!"

    .line 461
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 464
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mSelectedBubble:Lcom/android/systemui/bubbles/Bubble;

    if-nez v0, :cond_2

    const-string p0, "Attempt to expand stack without selected bubble!"

    .line 465
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 468
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mTimeSource:Lcom/android/systemui/bubbles/BubbleData$TimeSource;

    invoke-interface {v1}, Lcom/android/systemui/bubbles/BubbleData$TimeSource;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/bubbles/Bubble;->markAsAccessedAt(J)V

    .line 469
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    iget-boolean v1, v0, Lcom/android/systemui/bubbles/BubbleData$Update;->orderChanged:Z

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleData;->repackAll()Z

    move-result v2

    or-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/android/systemui/bubbles/BubbleData$Update;->orderChanged:Z

    goto :goto_0

    .line 470
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 473
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    iget-boolean v1, v0, Lcom/android/systemui/bubbles/BubbleData$Update;->orderChanged:Z

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleData;->repackAll()Z

    move-result v2

    or-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/android/systemui/bubbles/BubbleData$Update;->orderChanged:Z

    .line 476
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mSelectedBubble:Lcom/android/systemui/bubbles/Bubble;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_5

    .line 478
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mSelectedBubble:Lcom/android/systemui/bubbles/Bubble;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/Bubble;->isOngoing()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/bubbles/Bubble;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/Bubble;->isOngoing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 482
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/bubbles/Bubble;

    invoke-direct {p0, v0}, Lcom/android/systemui/bubbles/BubbleData;->setSelectedBubbleInternal(Lcom/android/systemui/bubbles/Bubble;)V

    goto :goto_0

    .line 486
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleData;->mSelectedBubble:Lcom/android/systemui/bubbles/Bubble;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 487
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleData;->mSelectedBubble:Lcom/android/systemui/bubbles/Bubble;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 488
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    iget-boolean v2, v0, Lcom/android/systemui/bubbles/BubbleData$Update;->orderChanged:Z

    invoke-direct {p0, v1}, Lcom/android/systemui/bubbles/BubbleData;->packGroup(I)Z

    move-result v1

    or-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/android/systemui/bubbles/BubbleData$Update;->orderChanged:Z

    .line 492
    :cond_5
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mExpanded:Z

    .line 493
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    iput-boolean p1, p0, Lcom/android/systemui/bubbles/BubbleData$Update;->expanded:Z

    const/4 p1, 0x1

    .line 494
    iput-boolean p1, p0, Lcom/android/systemui/bubbles/BubbleData$Update;->expandedChanged:Z

    return-void
.end method

.method private setSelectedBubbleInternal(Lcom/android/systemui/bubbles/Bubble;)V
    .locals 2

    .line 431
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mSelectedBubble:Lcom/android/systemui/bubbles/Bubble;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 434
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot select bubble which doesn\'t exist! ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") bubbles="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Bubbles"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 439
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mExpanded:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 440
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mTimeSource:Lcom/android/systemui/bubbles/BubbleData$TimeSource;

    invoke-interface {v0}, Lcom/android/systemui/bubbles/BubbleData$TimeSource;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/bubbles/Bubble;->markAsAccessedAt(J)V

    .line 442
    :cond_2
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mSelectedBubble:Lcom/android/systemui/bubbles/Bubble;

    .line 443
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleData$Update;->selectedBubble:Lcom/android/systemui/bubbles/Bubble;

    const/4 p1, 0x1

    .line 444
    iput-boolean p1, p0, Lcom/android/systemui/bubbles/BubbleData$Update;->selectionChanged:Z

    return-void
.end method

.method private static sortKey(Lcom/android/systemui/bubbles/Bubble;)J
    .locals 4

    .line 498
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/Bubble;->getLastUpdateTime()J

    move-result-wide v0

    .line 499
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/Bubble;->isOngoing()Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    or-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method private trim()V
    .locals 2

    .line 322
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 323
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/bubbles/-$$Lambda$x9O8XLDgnXklCbpbq_xgakOvcgY;->INSTANCE:Lcom/android/systemui/bubbles/-$$Lambda$x9O8XLDgnXklCbpbq_xgakOvcgY;

    .line 325
    invoke-static {v1}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/bubbles/-$$Lambda$BubbleData$cMHgi74d7w0GcIwOfMT2Vp3u6PQ;

    invoke-direct {v1, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleData$cMHgi74d7w0GcIwOfMT2Vp3u6PQ;-><init>(Lcom/android/systemui/bubbles/BubbleData;)V

    .line 327
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 328
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/bubbles/-$$Lambda$BubbleData$29N_uZXST8y3Cv7BRkVQkHhseh0;

    invoke-direct {v1, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleData$29N_uZXST8y3Cv7BRkVQkHhseh0;-><init>(Lcom/android/systemui/bubbles/BubbleData;)V

    .line 329
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method


# virtual methods
.method addSummaryToSuppress(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mSuppressedGroupKeys:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public dismissAll(I)V
    .locals 3

    .line 386
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 389
    invoke-direct {p0, v0}, Lcom/android/systemui/bubbles/BubbleData;->setExpandedInternal(Z)V

    const/4 v1, 0x0

    .line 390
    invoke-direct {p0, v1}, Lcom/android/systemui/bubbles/BubbleData;->setSelectedBubbleInternal(Lcom/android/systemui/bubbles/Bubble;)V

    .line 391
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 392
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/bubbles/Bubble;

    .line 393
    invoke-virtual {v1}, Lcom/android/systemui/bubbles/Bubble;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/systemui/bubbles/BubbleData;->maybeSendDeleteIntent(ILcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 394
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    invoke-virtual {v2, v1, p1}, Lcom/android/systemui/bubbles/BubbleData$Update;->bubbleRemoved(Lcom/android/systemui/bubbles/Bubble;I)V

    goto :goto_0

    .line 396
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleData;->dispatchPendingChanges()V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string v0, "selected: "

    .line 684
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mSelectedBubble:Lcom/android/systemui/bubbles/Bubble;

    if-eqz v0, :cond_0

    .line 685
    invoke-virtual {v0}, Lcom/android/systemui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "null"

    .line 684
    :goto_0
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "expanded: "

    .line 687
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mExpanded:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "count:    "

    .line 688
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 689
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/bubbles/Bubble;

    .line 690
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/systemui/bubbles/Bubble;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p1, "summaryKeys: "

    .line 692
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mSuppressedGroupKeys:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    .line 693
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mSuppressedGroupKeys:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 694
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "   suppressing: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    return-void
.end method

.method getBubbleWithKey(Ljava/lang/String;)Lcom/android/systemui/bubbles/Bubble;
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    const/4 v0, 0x0

    .line 662
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 663
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/bubbles/Bubble;

    .line 664
    invoke-virtual {v1}, Lcom/android/systemui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getBubbles()Ljava/util/List;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/bubbles/Bubble;",
            ">;"
        }
    .end annotation

    .line 657
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method getBubblesInGroup(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/bubbles/Bubble;",
            ">;"
        }
    .end annotation

    .line 288
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    .line 292
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/bubbles/Bubble;

    .line 293
    invoke-virtual {v1}, Lcom/android/systemui/bubbles/Bubble;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 294
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getSelectedBubble()Lcom/android/systemui/bubbles/Bubble;
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mSelectedBubble:Lcom/android/systemui/bubbles/Bubble;

    return-object p0
.end method

.method getSummaryKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 266
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mSuppressedGroupKeys:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public hasBubbleWithKey(Ljava/lang/String;)Z
    .locals 0

    .line 158
    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->getBubbleWithKey(Ljava/lang/String;)Lcom/android/systemui/bubbles/Bubble;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasBubbles()Z
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isExpanded()Z
    .locals 0

    .line 154
    iget-boolean p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mExpanded:Z

    return p0
.end method

.method isSummarySuppressed(Ljava/lang/String;)Z
    .locals 0

    .line 280
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mSuppressedGroupKeys:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$trim$0$BubbleData(Lcom/android/systemui/bubbles/Bubble;)Z
    .locals 0

    .line 327
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mSelectedBubble:Lcom/android/systemui/bubbles/Bubble;

    invoke-virtual {p1, p0}, Lcom/android/systemui/bubbles/Bubble;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public synthetic lambda$trim$1$BubbleData(Lcom/android/systemui/bubbles/Bubble;)V
    .locals 1

    .line 329
    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bubbles/BubbleData;->doRemove(Ljava/lang/String;I)V

    return-void
.end method

.method public notificationEntryRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V
    .locals 0

    .line 220
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/bubbles/BubbleData;->doRemove(Ljava/lang/String;I)V

    .line 221
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleData;->dispatchPendingChanges()V

    return-void
.end method

.method notificationEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .locals 4

    .line 186
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/bubbles/BubbleData;->getBubbleWithKey(Ljava/lang/String;)Lcom/android/systemui/bubbles/Bubble;

    move-result-object v0

    .line 187
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isVisuallyInterruptive:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move p2, v2

    goto :goto_1

    :cond_1
    :goto_0
    move p2, v3

    :goto_1
    if-nez v0, :cond_2

    .line 191
    new-instance v0, Lcom/android/systemui/bubbles/Bubble;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/systemui/bubbles/Bubble;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 192
    invoke-virtual {v0, p2}, Lcom/android/systemui/bubbles/Bubble;->setSuppressFlyout(Z)V

    .line 193
    invoke-direct {p0, v0}, Lcom/android/systemui/bubbles/BubbleData;->doAdd(Lcom/android/systemui/bubbles/Bubble;)V

    .line 194
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleData;->trim()V

    goto :goto_2

    .line 197
    :cond_2
    invoke-virtual {v0, p1}, Lcom/android/systemui/bubbles/Bubble;->updateEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 198
    invoke-virtual {v0, p2}, Lcom/android/systemui/bubbles/Bubble;->setSuppressFlyout(Z)V

    .line 199
    invoke-direct {p0, v0}, Lcom/android/systemui/bubbles/BubbleData;->doUpdate(Lcom/android/systemui/bubbles/Bubble;)V

    .line 202
    :goto_2
    invoke-virtual {v0}, Lcom/android/systemui/bubbles/Bubble;->shouldAutoExpand()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 203
    invoke-direct {p0, v0}, Lcom/android/systemui/bubbles/BubbleData;->setSelectedBubbleInternal(Lcom/android/systemui/bubbles/Bubble;)V

    .line 204
    iget-boolean p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mExpanded:Z

    if-nez p1, :cond_4

    .line 205
    invoke-direct {p0, v3}, Lcom/android/systemui/bubbles/BubbleData;->setExpandedInternal(Z)V

    goto :goto_3

    .line 207
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mSelectedBubble:Lcom/android/systemui/bubbles/Bubble;

    if-nez p1, :cond_4

    .line 208
    invoke-direct {p0, v0}, Lcom/android/systemui/bubbles/BubbleData;->setSelectedBubbleInternal(Lcom/android/systemui/bubbles/Bubble;)V

    .line 210
    :cond_4
    :goto_3
    iget-boolean p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mExpanded:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mSelectedBubble:Lcom/android/systemui/bubbles/Bubble;

    if-ne p1, v0, :cond_5

    move v2, v3

    :cond_5
    xor-int/lit8 p1, v2, 0x1

    .line 211
    invoke-virtual {v0, p1}, Lcom/android/systemui/bubbles/Bubble;->setShowInShadeWhenBubble(Z)V

    xor-int/lit8 p1, v2, 0x1

    .line 212
    invoke-virtual {v0, p1}, Lcom/android/systemui/bubbles/Bubble;->setShowBubbleDot(Z)V

    .line 213
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleData;->dispatchPendingChanges()V

    return-void
.end method

.method public notificationRankingUpdated(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 4

    .line 232
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    if-nez v0, :cond_0

    .line 233
    new-instance v0, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v0}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 236
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getOrderedKeys()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 237
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 238
    aget-object v2, v0, v1

    .line 239
    invoke-virtual {p0, v2}, Lcom/android/systemui/bubbles/BubbleData;->hasBubbleWithKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 240
    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p1, v2, v3}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 241
    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v3}, Landroid/service/notification/NotificationListenerService$Ranking;->canBubble()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x4

    .line 242
    invoke-direct {p0, v2, v3}, Lcom/android/systemui/bubbles/BubbleData;->doRemove(Ljava/lang/String;I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 246
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleData;->dispatchPendingChanges()V

    return-void
.end method

.method notifyDisplayEmpty(I)V
    .locals 2

    .line 405
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/bubbles/Bubble;

    .line 406
    invoke-virtual {v0}, Lcom/android/systemui/bubbles/Bubble;->getDisplayId()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 407
    invoke-virtual {v0}, Lcom/android/systemui/bubbles/Bubble;->getExpandedView()Lcom/android/systemui/bubbles/BubbleExpandedView;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 408
    invoke-virtual {v0}, Lcom/android/systemui/bubbles/Bubble;->getExpandedView()Lcom/android/systemui/bubbles/BubbleExpandedView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->notifyDisplayEmpty()V

    :cond_1
    return-void
.end method

.method removeSuppressedSummary(Ljava/lang/String;)V
    .locals 0

    .line 273
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mSuppressedGroupKeys:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setExpanded(Z)V
    .locals 0

    .line 170
    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->setExpandedInternal(Z)V

    .line 171
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleData;->dispatchPendingChanges()V

    return-void
.end method

.method public setListener(Lcom/android/systemui/bubbles/BubbleData$Listener;)V
    .locals 0

    .line 677
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mListener:Lcom/android/systemui/bubbles/BubbleData$Listener;

    return-void
.end method

.method public setSelectedBubble(Lcom/android/systemui/bubbles/Bubble;)V
    .locals 0

    .line 178
    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->setSelectedBubbleInternal(Lcom/android/systemui/bubbles/Bubble;)V

    .line 179
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleData;->dispatchPendingChanges()V

    return-void
.end method

.method setTimeSource(Lcom/android/systemui/bubbles/BubbleData$TimeSource;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 673
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mTimeSource:Lcom/android/systemui/bubbles/BubbleData$TimeSource;

    return-void
.end method
