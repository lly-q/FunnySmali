.class abstract Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;
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
    name = "SinglePressAction"
.end annotation


# instance fields
.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mIconResId:I

.field private final mMessage:Ljava/lang/CharSequence;

.field protected mMessageResId:I

.field private mStatusMessage:Ljava/lang/CharSequence;


# direct methods
.method protected constructor <init>(II)V
    .locals 0

    .line 1367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1368
    iput p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;->mIconResId:I

    .line 1369
    iput p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;->mMessageResId:I

    const/4 p1, 0x0

    .line 1370
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    .line 1371
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method protected constructor <init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1375
    iput p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;->mIconResId:I

    const/4 p1, 0x0

    .line 1376
    iput p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;->mMessageResId:I

    .line 1377
    iput-object p3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    .line 1378
    iput-object p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 1

    .line 1409
    invoke-virtual {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;->getActionLayoutId(Landroid/content/Context;)I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p4, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const p3, 0x1020006

    .line 1412
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    const p4, 0x102000b

    .line 1413
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    const/4 v0, 0x1

    .line 1414
    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1416
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1417
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1418
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 1419
    :cond_0
    iget v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;->mIconResId:I

    if-eqz v0, :cond_1

    .line 1420
    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1422
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    if-eqz p1, :cond_2

    .line 1423
    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1425
    :cond_2
    iget p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;->mMessageResId:I

    invoke-virtual {p4, p0}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    return-object p2
.end method

.method protected getActionLayoutId(Landroid/content/Context;)I
    .locals 0

    .line 1404
    sget p0, Lcom/android/systemui/R$layout;->global_actions_grid_item:I

    return p0
.end method

.method public isEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public abstract onPress()V
.end method

.method public setStatus(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1390
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;->mStatusMessage:Ljava/lang/CharSequence;

    return-void
.end method
