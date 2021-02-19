.class public Lcom/android/systemui/statusbar/NavigationBarController$SystemUiVisibility;
.super Ljava/lang/Object;
.source "NavigationBarController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NavigationBarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SystemUiVisibility"
.end annotation


# instance fields
.field public displayId:I

.field public dockedStackBounds:Landroid/graphics/Rect;

.field public dockedStackVis:I

.field public fullscreenStackBounds:Landroid/graphics/Rect;

.field public fullscreenStackVis:I

.field public mask:I

.field public navbarColorManagedByIme:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/NavigationBarController;

.field public vis:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/NavigationBarController;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/android/systemui/statusbar/NavigationBarController$SystemUiVisibility;->this$0:Lcom/android/systemui/statusbar/NavigationBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
