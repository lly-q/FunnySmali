.class abstract Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;
.super Ljava/lang/Object;
.source "GlobalActionsDialog.java"

# interfaces
.implements Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ToggleAction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;
    }
.end annotation


# instance fields
.field protected mDisabledIconResid:I

.field protected mDisabledStatusMessageResId:I

.field protected mEnabledIconResId:I

.field protected mEnabledStatusMessageResId:I

.field protected mMessageResId:I

.field protected mState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;


# direct methods
.method public constructor <init>(IIIII)V
    .locals 1

    .line 1475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1455
    sget-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->Off:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->mState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    .line 1476
    iput p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->mEnabledIconResId:I

    .line 1477
    iput p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->mDisabledIconResid:I

    .line 1478
    iput p3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->mMessageResId:I

    .line 1479
    iput p4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->mEnabledStatusMessageResId:I

    .line 1480
    iput p5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->mDisabledStatusMessageResId:I

    return-void
.end method


# virtual methods
.method protected changeStateFromPress(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1548
    sget-object p1, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->On:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->Off:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    :goto_0
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->mState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    return-void
.end method

.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 5

    .line 1498
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->willCreate()V

    .line 1500
    sget p2, Lcom/android/systemui/R$layout;->global_actions_grid_item:I

    const/4 v0, 0x0

    invoke-virtual {p4, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const p3, 0x1020006

    .line 1503
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    const p4, 0x102000b

    .line 1504
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    .line 1505
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->isEnabled()Z

    move-result v1

    .line 1506
    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->mState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    sget-object v3, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->On:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    const/4 v4, 0x1

    if-eq v2, v3, :cond_0

    sget-object v3, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->TurningOn:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    if-ne v2, v3, :cond_1

    :cond_0
    move v0, v4

    :cond_1
    if-eqz p4, :cond_3

    if-eqz v0, :cond_2

    .line 1509
    iget v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->mEnabledStatusMessageResId:I

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->mDisabledStatusMessageResId:I

    :goto_0
    invoke-virtual {p4, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1510
    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1511
    invoke-virtual {p4, v4}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_3
    if-eqz p3, :cond_5

    if-eqz v0, :cond_4

    .line 1516
    iget p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->mEnabledIconResId:I

    goto :goto_1

    :cond_4
    iget p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->mDisabledIconResid:I

    .line 1515
    :goto_1
    invoke-virtual {p1, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1517
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1520
    :cond_5
    invoke-virtual {p2, v1}, Landroid/view/View;->setEnabled(Z)V

    return-object p2
.end method

.method public isEnabled()Z
    .locals 0

    .line 1537
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->mState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->inTransition()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final onPress()V
    .locals 2

    .line 1526
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->mState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->inTransition()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "GlobalActionsDialog"

    const-string v0, "shouldn\'t be able to toggle when in transition"

    .line 1527
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1531
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->mState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    sget-object v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->On:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1532
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->onToggle(Z)V

    .line 1533
    invoke-virtual {p0, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->changeStateFromPress(Z)V

    return-void
.end method

.method abstract onToggle(Z)V
.end method

.method public updateState(Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;)V
    .locals 0

    .line 1554
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->mState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    return-void
.end method

.method willCreate()V
    .locals 0

    return-void
.end method
