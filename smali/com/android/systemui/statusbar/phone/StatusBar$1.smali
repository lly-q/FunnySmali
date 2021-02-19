.class Lcom/android/systemui/statusbar/phone/StatusBar$1;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    .line 521
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 524
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    .line 525
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$000(Lcom/android/systemui/statusbar/phone/StatusBar;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$100(Lcom/android/systemui/statusbar/phone/StatusBar;I)V

    .line 526
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/16 v0, 0x15

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$202(Lcom/android/systemui/statusbar/phone/StatusBar;I)I

    return-void
.end method
