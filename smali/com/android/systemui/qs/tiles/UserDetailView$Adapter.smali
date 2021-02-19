.class public Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;
.super Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;
.source "UserDetailView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/UserDetailView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Adapter"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field protected mController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V
    .locals 0

    .line 64
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;-><init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    .line 65
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mContext:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    return-void
.end method


# virtual methods
.method public createUserDetailItemView(Landroid/view/View;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)Lcom/android/systemui/qs/tiles/UserDetailItemView;
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/systemui/qs/tiles/UserDetailItemView;->convertOrInflate(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/tiles/UserDetailItemView;

    move-result-object p1

    .line 79
    iget-boolean p2, p3, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isCurrent:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget-boolean p2, p3, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isGuest:Z

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 82
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setClickable(Z)V

    goto :goto_1

    .line 80
    :cond_1
    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    :goto_1
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->getName(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)Ljava/lang/String;

    move-result-object p2

    .line 86
    iget-object v1, p3, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->picture:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 87
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, p3}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->getDrawable(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->resolveId()I

    move-result v1

    invoke-virtual {p1, p2, p0, v1}, Lcom/android/systemui/qs/tiles/UserDetailItemView;->bind(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    goto :goto_2

    .line 89
    :cond_2
    iget-object p0, p3, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, p2, v1, p0}, Lcom/android/systemui/qs/tiles/UserDetailItemView;->bind(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    .line 91
    :goto_2
    iget-boolean p0, p3, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isCurrent:Z

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setActivated(Z)V

    .line 92
    iget-boolean p0, p3, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isDisabledByAdmin:Z

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/tiles/UserDetailItemView;->setDisabledByAdmin(Z)V

    .line 93
    iget-boolean p0, p3, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isSwitchToEnabled:Z

    if-nez p0, :cond_3

    .line 94
    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/tiles/UserDetailItemView;->setEnabled(Z)V

    .line 96
    :cond_3
    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 71
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->getItem(I)Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    move-result-object p1

    .line 72
    invoke-virtual {p0, p2, p3, p1}, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->createUserDetailItemView(Landroid/view/View;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)Lcom/android/systemui/qs/tiles/UserDetailItemView;

    move-result-object p0

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 103
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    .line 104
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isDisabledByAdmin:Z

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mContext:Landroid/content/Context;

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->enforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {v0, p1}, Lcom/android/settingslib/RestrictedLockUtils;->getShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroid/content/Intent;

    move-result-object p1

    .line 107
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 108
    :cond_0
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isSwitchToEnabled:Z

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mContext:Landroid/content/Context;

    const/16 v1, 0x9c

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->switchTo(Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)V

    :cond_1
    :goto_0
    return-void
.end method
