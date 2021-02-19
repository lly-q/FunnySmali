.class Lcom/android/systemui/statusbar/LineageStatusBarItemHolder$1;
.super Ljava/lang/Object;
.source "LineageStatusBarItemHolder.java"

# interfaces
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/LineageStatusBarItemHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/LineageStatusBarItemHolder;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/LineageStatusBarItemHolder;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/android/systemui/statusbar/LineageStatusBarItemHolder$1;->this$0:Lcom/android/systemui/statusbar/LineageStatusBarItemHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/android/systemui/statusbar/LineageStatusBarItemHolder$1;->this$0:Lcom/android/systemui/statusbar/LineageStatusBarItemHolder;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/LineageStatusBarItemHolder;->access$002(Lcom/android/systemui/statusbar/LineageStatusBarItemHolder;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 89
    iget-object v0, p0, Lcom/android/systemui/statusbar/LineageStatusBarItemHolder$1;->this$0:Lcom/android/systemui/statusbar/LineageStatusBarItemHolder;

    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/LineageStatusBarItemHolder;->access$102(Lcom/android/systemui/statusbar/LineageStatusBarItemHolder;F)F

    .line 90
    iget-object v0, p0, Lcom/android/systemui/statusbar/LineageStatusBarItemHolder$1;->this$0:Lcom/android/systemui/statusbar/LineageStatusBarItemHolder;

    invoke-static {v0, p3}, Lcom/android/systemui/statusbar/LineageStatusBarItemHolder;->access$202(Lcom/android/systemui/statusbar/LineageStatusBarItemHolder;I)I

    .line 91
    iget-object p0, p0, Lcom/android/systemui/statusbar/LineageStatusBarItemHolder$1;->this$0:Lcom/android/systemui/statusbar/LineageStatusBarItemHolder;

    invoke-static {p0}, Lcom/android/systemui/statusbar/LineageStatusBarItemHolder;->access$300(Lcom/android/systemui/statusbar/LineageStatusBarItemHolder;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/lineageos/internal/statusbar/LineageStatusBarItem$DarkReceiver;

    .line 92
    invoke-interface {v0, p1, p2, p3}, Lorg/lineageos/internal/statusbar/LineageStatusBarItem$DarkReceiver;->onDarkChanged(Landroid/graphics/Rect;FI)V

    goto :goto_0

    :cond_0
    return-void
.end method
