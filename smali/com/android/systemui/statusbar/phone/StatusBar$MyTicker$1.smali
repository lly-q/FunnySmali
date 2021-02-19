.class Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker$1;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;)V
    .locals 0

    .line 2838
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 2840
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1202(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
