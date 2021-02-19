.class Lcom/android/systemui/bubbles/BubbleController$BubbleTaskStackListener;
.super Lcom/android/systemui/shared/system/TaskStackChangeListener;
.source "BubbleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/bubbles/BubbleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BubbleTaskStackListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/bubbles/BubbleController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/bubbles/BubbleController;)V
    .locals 0

    .line 903
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleController$BubbleTaskStackListener;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-direct {p0}, Lcom/android/systemui/shared/system/TaskStackChangeListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/bubbles/BubbleController;Lcom/android/systemui/bubbles/BubbleController$1;)V
    .locals 0

    .line 903
    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleController$BubbleTaskStackListener;-><init>(Lcom/android/systemui/bubbles/BubbleController;)V

    return-void
.end method


# virtual methods
.method public onActivityLaunchOnSecondaryDisplayRerouted()V
    .locals 1

    .line 916
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController$BubbleTaskStackListener;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleController;->access$000(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleStackView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 917
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController$BubbleTaskStackListener;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {p0}, Lcom/android/systemui/bubbles/BubbleController;->access$100(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleData;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/bubbles/BubbleData;->setExpanded(Z)V

    :cond_0
    return-void
.end method

.method public onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 2

    .line 923
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController$BubbleTaskStackListener;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleController;->access$000(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleStackView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController$BubbleTaskStackListener;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleController;->access$700(Lcom/android/systemui/bubbles/BubbleController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/bubbles/BubbleController;->getExpandedDisplayId(Landroid/content/Context;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 924
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController$BubbleTaskStackListener;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {p0}, Lcom/android/systemui/bubbles/BubbleController;->access$100(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleData;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->setExpanded(Z)V

    :cond_0
    return-void
.end method

.method public onSingleTaskDisplayDrawn(I)V
    .locals 1

    .line 930
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController$BubbleTaskStackListener;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleController;->access$000(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleStackView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 931
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController$BubbleTaskStackListener;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {p0}, Lcom/android/systemui/bubbles/BubbleController;->access$000(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleStackView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->getExpandedBubble()Lcom/android/systemui/bubbles/Bubble;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 933
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/Bubble;->getDisplayId()I

    move-result v0

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    .line 934
    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/Bubble;->setContentVisibility(Z)V

    :cond_1
    return-void
.end method

.method public onSingleTaskDisplayEmpty(I)V
    .locals 2

    .line 940
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController$BubbleTaskStackListener;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleController;->access$000(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleStackView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 941
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController$BubbleTaskStackListener;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleController;->access$000(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleStackView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleStackView;->getExpandedBubble()Lcom/android/systemui/bubbles/Bubble;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 943
    invoke-virtual {v0}, Lcom/android/systemui/bubbles/Bubble;->getDisplayId()I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    .line 944
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleController$BubbleTaskStackListener;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v1}, Lcom/android/systemui/bubbles/BubbleController;->access$000(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleStackView;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleController$BubbleTaskStackListener;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v1}, Lcom/android/systemui/bubbles/BubbleController;->access$000(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleStackView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/bubbles/BubbleStackView;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_2

    if-ne v0, p1, :cond_2

    .line 945
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController$BubbleTaskStackListener;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleController;->access$100(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleData;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/bubbles/BubbleData;->setExpanded(Z)V

    .line 947
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController$BubbleTaskStackListener;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {p0}, Lcom/android/systemui/bubbles/BubbleController;->access$100(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleData;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->notifyDisplayEmpty(I)V

    return-void
.end method

.method public onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 1

    .line 907
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController$BubbleTaskStackListener;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleController;->access$000(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleStackView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    if-nez p1, :cond_0

    .line 908
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleController$BubbleTaskStackListener;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {p1}, Lcom/android/systemui/bubbles/BubbleController;->access$000(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleStackView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/BubbleStackView;->isExpansionAnimating()Z

    move-result p1

    if-nez p1, :cond_0

    .line 909
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController$BubbleTaskStackListener;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {p0}, Lcom/android/systemui/bubbles/BubbleController;->access$100(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleData;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->setExpanded(Z)V

    :cond_0
    return-void
.end method
