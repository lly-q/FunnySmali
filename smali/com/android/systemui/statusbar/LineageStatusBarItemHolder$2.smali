.class Lcom/android/systemui/statusbar/LineageStatusBarItemHolder$2;
.super Ljava/lang/Object;
.source "LineageStatusBarItemHolder.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


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

    .line 111
    iput-object p1, p0, Lcom/android/systemui/statusbar/LineageStatusBarItemHolder$2;->this$0:Lcom/android/systemui/statusbar/LineageStatusBarItemHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/android/systemui/statusbar/LineageStatusBarItemHolder$2;->this$0:Lcom/android/systemui/statusbar/LineageStatusBarItemHolder;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/LineageStatusBarItemHolder;->access$400(Lcom/android/systemui/statusbar/LineageStatusBarItemHolder;I)V

    return-void
.end method
