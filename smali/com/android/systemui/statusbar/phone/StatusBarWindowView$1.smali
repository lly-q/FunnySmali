.class Lcom/android/systemui/statusbar/phone/StatusBarWindowView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "StatusBarWindowView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBarWindowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 138
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->access$200(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDozing()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->access$300(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->access$400(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 140
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->access$500(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)Landroid/content/Context;

    move-result-object p0

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    if-eqz p0, :cond_0

    .line 142
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    :cond_0
    return v1

    .line 146
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->access$600(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->access$000(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->access$700(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0

    .line 147
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->access$200(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const-string v0, "DOUBLE_TAP"

    invoke-virtual {p1, v2, v3, p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->wakeUpIfDozing(JLandroid/view/View;Ljava/lang/String;)V

    return v1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 128
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->access$000(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->access$100(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 129
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->access$200(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const-string v2, "SINGLE_TAP"

    invoke-virtual {p1, v0, v1, p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->wakeUpIfDozing(JLandroid/view/View;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
