.class Lcom/android/systemui/statusbar/policy/KeyButtonView$1;
.super Ljava/lang/Object;
.source "KeyButtonView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/KeyButtonView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/KeyButtonView;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$1;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 89
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$1;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 91
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$1;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->access$000(Lcom/android/systemui/statusbar/policy/KeyButtonView;)I

    move-result v0

    const/16 v1, 0x15

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$1;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->access$000(Lcom/android/systemui/statusbar/policy/KeyButtonView;)I

    move-result v0

    const/16 v1, 0x16

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$1;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isLongClickable()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$1;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->performLongClick()Z

    .line 100
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$1;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->access$302(Lcom/android/systemui/statusbar/policy/KeyButtonView;Z)Z

    goto :goto_1

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$1;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    const/4 v2, 0x0

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    .line 103
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$1;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->sendAccessibilityEvent(I)V

    .line 104
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$1;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->access$302(Lcom/android/systemui/statusbar/policy/KeyButtonView;Z)Z

    goto :goto_1

    .line 92
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$1;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    const/4 v3, 0x1

    const/4 v4, 0x6

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v7, 0x0

    .line 92
    invoke-static/range {v2 .. v7}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->access$100(Lcom/android/systemui/statusbar/policy/KeyButtonView;IIJZ)V

    .line 94
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$1;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    const/4 v9, 0x0

    const/4 v10, 0x6

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const/4 v13, 0x0

    .line 94
    invoke-static/range {v8 .. v13}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->access$100(Lcom/android/systemui/statusbar/policy/KeyButtonView;IIJZ)V

    .line 96
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$1;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->access$200(Lcom/android/systemui/statusbar/policy/KeyButtonView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_1
    return-void
.end method
