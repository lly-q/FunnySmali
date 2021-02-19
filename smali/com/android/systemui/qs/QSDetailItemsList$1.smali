.class Lcom/android/systemui/qs/QSDetailItemsList$1;
.super Ljava/lang/Object;
.source "QSDetailItemsList.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSDetailItemsList;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSDetailItemsList;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSDetailItemsList;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetailItemsList$1;->this$0:Lcom/android/systemui/qs/QSDetailItemsList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    const/4 p0, 0x0

    return p0
.end method
