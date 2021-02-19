.class Lcom/android/systemui/statusbar/phone/StatusBar$MyLyricTicker;
.super Lcom/android/systemui/statusbar/phone/LyricTicker;
.source "StatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLyricTicker"
.end annotation


# instance fields
.field public mTickerView:Landroid/view/View;

.field mTickingDoneListener:Landroid/view/animation/Animation$AnimationListener;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 2688
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyLyricTicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 2689
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/phone/LyricTicker;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 2750
    new-instance p2, Lcom/android/systemui/statusbar/phone/StatusBar$MyLyricTicker$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$MyLyricTicker$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar$MyLyricTicker;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyLyricTicker;->mTickingDoneListener:Landroid/view/animation/Animation$AnimationListener;

    .line 2690
    iget-boolean p0, p1, Lcom/android/systemui/statusbar/phone/StatusBar;->mLyricEnabled:Z

    if-nez p0, :cond_0

    .line 2691
    new-instance p0, Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    const-string p1, "StatusBar"

    const-string p2, "MyLyricTicker instantiated with mLyricEnabled=false"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 0

    .line 2747
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyLyricTicker;->mTickerView:Landroid/view/View;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/LyricTicker;->applyDarkIntensity(Landroid/graphics/Rect;Landroid/view/View;I)V

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    .line 2696
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyLyricTicker;->mTickerView:Landroid/view/View;

    return-void
.end method

.method public tickerDone()V
    .locals 4

    .line 2719
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyLyricTicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyLyricTicker;->mTickingDoneListener:Landroid/view/animation/Animation$AnimationListener;

    const v2, 0x10a007c

    invoke-static {v0, v2, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$800(Lcom/android/systemui/statusbar/phone/StatusBar;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2720
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyLyricTicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    const v2, 0x10a007b

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$800(Lcom/android/systemui/statusbar/phone/StatusBar;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    .line 2721
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyLyricTicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarLeftSide:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2722
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyLyricTicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarLeftSide:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2723
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyLyricTicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mCenteredIconArea:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2724
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyLyricTicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mCenteredIconArea:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2725
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyLyricTicker;->mTickerView:Landroid/view/View;

    if-eqz v1, :cond_0

    const/16 v2, 0x8

    .line 2726
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2727
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyLyricTicker;->mTickerView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public tickerHalting()V
    .locals 4

    .line 2733
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyLyricTicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarLeftSide:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2734
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyLyricTicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarLeftSide:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2735
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyLyricTicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarLeftSide:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$900(Lcom/android/systemui/statusbar/phone/StatusBar;ZLandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2736
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyLyricTicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCenteredIconArea:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2737
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyLyricTicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCenteredIconArea:Landroid/view/View;

    invoke-static {v0, v1, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$900(Lcom/android/systemui/statusbar/phone/StatusBar;ZLandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2739
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyLyricTicker;->mTickerView:Landroid/view/View;

    if-eqz p0, :cond_1

    const/16 v0, 0x8

    .line 2740
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public tickerStarting()V
    .locals 4

    .line 2701
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyLyricTicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLyricTicker:Lcom/android/systemui/statusbar/phone/LyricTicker;

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLyricEnabled:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 2702
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$702(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z

    .line 2704
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyLyricTicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    const v1, 0x10a007c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$800(Lcom/android/systemui/statusbar/phone/StatusBar;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2705
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyLyricTicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    const v3, 0x10a007b

    invoke-static {v1, v3, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$800(Lcom/android/systemui/statusbar/phone/StatusBar;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    .line 2706
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyLyricTicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarLeftSide:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2707
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyLyricTicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarLeftSide:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2708
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyLyricTicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mCenteredIconArea:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2709
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyLyricTicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mCenteredIconArea:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2710
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyLyricTicker;->mTickerView:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .line 2711
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2712
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyLyricTicker;->mTickerView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    :goto_0
    return-void
.end method
