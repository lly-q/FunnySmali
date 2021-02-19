.class public Lorg/lineageos/internal/statusbar/LineageStatusBarItem;
.super Ljava/lang/Object;
.source "LineageStatusBarItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lineageos/internal/statusbar/LineageStatusBarItem$VisibilityReceiver;,
        Lorg/lineageos/internal/statusbar/LineageStatusBarItem$DarkReceiver;,
        Lorg/lineageos/internal/statusbar/LineageStatusBarItem$Manager;
    }
.end annotation


# direct methods
.method public static findManager(Landroid/view/View;)Lorg/lineageos/internal/statusbar/LineageStatusBarItem$Manager;
    .locals 2

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 44
    :cond_0
    instance-of v1, p0, Lorg/lineageos/internal/statusbar/LineageStatusBarItem$Manager;

    if-eqz v1, :cond_1

    .line 45
    check-cast p0, Lorg/lineageos/internal/statusbar/LineageStatusBarItem$Manager;

    return-object p0

    .line 46
    :cond_1
    instance-of v1, p0, Landroid/view/View;

    if-eqz v1, :cond_2

    .line 47
    check-cast p0, Landroid/view/View;

    invoke-static {p0}, Lorg/lineageos/internal/statusbar/LineageStatusBarItem;->findManager(Landroid/view/View;)Lorg/lineageos/internal/statusbar/LineageStatusBarItem$Manager;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method
