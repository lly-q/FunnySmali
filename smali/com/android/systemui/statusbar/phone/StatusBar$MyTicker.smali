.class Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;
.super Lcom/android/systemui/statusbar/phone/Ticker;
.source "StatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTicker"
.end annotation


# instance fields
.field public mTickerView:Landroid/view/View;

.field mTickingDoneListener:Landroid/view/animation/Animation$AnimationListener;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    .line 2766
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 2767
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1000(Lcom/android/systemui/statusbar/phone/StatusBar;)I

    move-result v0

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1100(Lcom/android/systemui/statusbar/phone/StatusBar;)I

    move-result v1

    invoke-direct {p0, p2, p3, v0, v1}, Lcom/android/systemui/statusbar/phone/Ticker;-><init>(Landroid/content/Context;Landroid/view/View;II)V

    .line 2838
    new-instance p2, Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;->mTickingDoneListener:Landroid/view/animation/Animation$AnimationListener;

    .line 2768
    iget p0, p1, Lcom/android/systemui/statusbar/phone/StatusBar;->mTickerEnabled:I

    if-nez p0, :cond_0

    .line 2769
    new-instance p0, Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    const-string p1, "StatusBar"

    const-string p2, "MyTicker instantiated with mTickerEnabled=0"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 0

    .line 2835
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;->mTickerView:Landroid/view/View;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/Ticker;->applyDarkIntensity(Landroid/graphics/Rect;Landroid/view/View;I)V

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    .line 2774
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;->mTickerView:Landroid/view/View;

    return-void
.end method

.method public tickerDone()V
    .locals 5

    .line 2802
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1000(Lcom/android/systemui/statusbar/phone/StatusBar;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    .line 2803
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    const v2, 0x10a007c

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;->mTickingDoneListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-static {v0, v2, v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$800(Lcom/android/systemui/statusbar/phone/StatusBar;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2804
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    const v4, 0x10a007b

    invoke-static {v2, v4, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$800(Lcom/android/systemui/statusbar/phone/StatusBar;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    goto :goto_0

    .line 2806
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;->mTickingDoneListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-static {v0, v2, v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$900(Lcom/android/systemui/statusbar/phone/StatusBar;ZLandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2807
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v2, v3, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$900(Lcom/android/systemui/statusbar/phone/StatusBar;ZLandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    .line 2809
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarContent:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2810
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarContent:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2811
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mCenterClockLayout:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2812
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mCenterClockLayout:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2813
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;->mTickerView:Landroid/view/View;

    if-eqz v1, :cond_1

    const/16 v2, 0x8

    .line 2814
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2815
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;->mTickerView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method

.method public tickerHalting()V
    .locals 4

    .line 2821
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2822
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarContent:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2823
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarContent:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$900(Lcom/android/systemui/statusbar/phone/StatusBar;ZLandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2824
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCenterClockLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2825
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCenterClockLayout:Landroid/view/View;

    invoke-static {v0, v1, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$900(Lcom/android/systemui/statusbar/phone/StatusBar;ZLandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2827
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;->mTickerView:Landroid/view/View;

    if-eqz p0, :cond_1

    const/16 v0, 0x8

    .line 2828
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public tickerStarting()V
    .locals 5

    .line 2779
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTicker:Lcom/android/systemui/statusbar/phone/Ticker;

    if-eqz v1, :cond_2

    iget v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTickerEnabled:I

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    .line 2780
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1202(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z

    .line 2782
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1000(Lcom/android/systemui/statusbar/phone/StatusBar;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 2783
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    const v1, 0x10a007c

    invoke-static {v0, v1, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$800(Lcom/android/systemui/statusbar/phone/StatusBar;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2784
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    const v4, 0x10a007b

    invoke-static {v1, v4, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$800(Lcom/android/systemui/statusbar/phone/StatusBar;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    goto :goto_0

    .line 2786
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, v1, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$900(Lcom/android/systemui/statusbar/phone/StatusBar;ZLandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2787
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$900(Lcom/android/systemui/statusbar/phone/StatusBar;ZLandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    .line 2789
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarContent:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2790
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2791
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar;->mCenterClockLayout:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2792
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar;->mCenterClockLayout:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2793
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;->mTickerView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 2794
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2795
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;->mTickerView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    :goto_1
    return-void
.end method
