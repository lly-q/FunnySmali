.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$17;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NotificationPanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingSettings(FILjava/lang/Runnable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field final synthetic val$onFinishRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Ljava/lang/Runnable;)V
    .locals 0

    .line 2070
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$17;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$17;->val$onFinishRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 2073
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$17;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->resetCheckSnoozeLeavebehind()V

    .line 2074
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$17;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$1802(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 2075
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$17;->val$onFinishRunnable:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    .line 2076
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
