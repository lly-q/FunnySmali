.class public final Lcom/android/systemui/privacy/OngoingPrivacyChip;
.super Landroid/widget/LinearLayout;
.source "OngoingPrivacyChip.kt"


# instance fields
.field private back:Landroid/widget/FrameLayout;

.field private final backgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private builder:Lcom/android/systemui/privacy/PrivacyDialogBuilder;

.field private expanded:Z

.field private final iconColor:I

.field private final iconMarginCollapsed:I

.field private final iconMarginExpanded:I

.field private final iconSize:I

.field private iconsContainer:Landroid/widget/LinearLayout;

.field private privacyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/privacy/PrivacyItem;",
            ">;"
        }
    .end annotation
.end field

.field private final sidePadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/privacy/OngoingPrivacyChip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/privacy/OngoingPrivacyChip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/privacy/OngoingPrivacyChip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 34
    sget p3, Lcom/android/systemui/R$dimen;->ongoing_appops_chip_icon_margin_expanded:I

    .line 33
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->iconMarginExpanded:I

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 36
    sget p3, Lcom/android/systemui/R$dimen;->ongoing_appops_chip_icon_margin_collapsed:I

    .line 35
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->iconMarginCollapsed:I

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/systemui/R$dimen;->ongoing_appops_chip_icon_size:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->iconSize:I

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 40
    sget p3, Lcom/android/systemui/R$color;->status_bar_clock_color:I

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p4

    .line 39
    invoke-virtual {p2, p3, p4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->iconColor:I

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/systemui/R$dimen;->ongoing_appops_chip_side_padding:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->sidePadding:I

    .line 43
    sget p2, Lcom/android/systemui/R$drawable;->privacy_chip_bg:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 54
    new-instance p2, Lcom/android/systemui/privacy/PrivacyDialogBuilder;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lcom/android/systemui/privacy/PrivacyDialogBuilder;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p2, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->builder:Lcom/android/systemui/privacy/PrivacyDialogBuilder;

    .line 55
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->privacyList:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move p4, v0

    .line 30
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/privacy/OngoingPrivacyChip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static final synthetic access$getIconColor$p(Lcom/android/systemui/privacy/OngoingPrivacyChip;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->iconColor:I

    return p0
.end method

.method public static final synthetic access$getIconMarginCollapsed$p(Lcom/android/systemui/privacy/OngoingPrivacyChip;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->iconMarginCollapsed:I

    return p0
.end method

.method public static final synthetic access$getIconMarginExpanded$p(Lcom/android/systemui/privacy/OngoingPrivacyChip;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->iconMarginExpanded:I

    return p0
.end method

.method public static final synthetic access$getIconSize$p(Lcom/android/systemui/privacy/OngoingPrivacyChip;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->iconSize:I

    return p0
.end method

.method private final generateContentDescription()V
    .locals 5

    .line 106
    iget-object v0, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->builder:Lcom/android/systemui/privacy/PrivacyDialogBuilder;

    invoke-virtual {v0}, Lcom/android/systemui/privacy/PrivacyDialogBuilder;->joinTypes()Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 108
    sget v2, Lcom/android/systemui/R$string;->ongoing_privacy_chip_content_multiple_apps:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 107
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final updateView()V
    .locals 5

    .line 71
    iget-object v0, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->back:Landroid/widget/FrameLayout;

    const-string v1, "back"

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    iget-boolean v3, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->expanded:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 72
    iget-boolean v0, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->expanded:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->sidePadding:I

    goto :goto_1

    :cond_1
    move v0, v3

    .line 73
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->back:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_9

    invoke-virtual {v4, v0, v3, v0, v3}, Landroid/widget/FrameLayout;->setPaddingRelative(IIII)V

    .line 74
    new-instance v0, Lcom/android/systemui/privacy/OngoingPrivacyChip$updateView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/privacy/OngoingPrivacyChip$updateView$1;-><init>(Lcom/android/systemui/privacy/OngoingPrivacyChip;)V

    .line 92
    iget-object v1, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->privacyList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-string v3, "iconsContainer"

    if-nez v1, :cond_7

    .line 93
    invoke-direct {p0}, Lcom/android/systemui/privacy/OngoingPrivacyChip;->generateContentDescription()V

    .line 94
    iget-object v1, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->builder:Lcom/android/systemui/privacy/PrivacyDialogBuilder;

    iget-object v4, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->iconsContainer:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_6

    invoke-virtual {v0, v1, v4}, Lcom/android/systemui/privacy/OngoingPrivacyChip$updateView$1;->invoke(Lcom/android/systemui/privacy/PrivacyDialogBuilder;Landroid/view/ViewGroup;)V

    .line 95
    iget-object v0, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->iconsContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 97
    iget-boolean v1, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->expanded:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const v1, 0x800005

    :goto_2
    or-int/lit8 v1, v1, 0x10

    .line 96
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 98
    iget-object v1, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->iconsContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    :cond_3
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 95
    :cond_4
    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 94
    :cond_6
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 100
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->iconsContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 102
    :goto_3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void

    .line 100
    :cond_8
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 73
    :cond_9
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 71
    :cond_a
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public final getBuilder()Lcom/android/systemui/privacy/PrivacyDialogBuilder;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->builder:Lcom/android/systemui/privacy/PrivacyDialogBuilder;

    return-object p0
.end method

.method public final getExpanded()Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->expanded:Z

    return p0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 63
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 65
    sget v0, Lcom/android/systemui/R$id;->background:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.background)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->back:Landroid/widget/FrameLayout;

    .line 66
    sget v0, Lcom/android/systemui/R$id;->icons_container:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.icons_container)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->iconsContainer:Landroid/widget/LinearLayout;

    return-void
.end method

.method public final setExpanded(Z)V
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->expanded:Z

    if-eq p1, v0, :cond_0

    .line 49
    iput-boolean p1, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->expanded:Z

    .line 50
    invoke-direct {p0}, Lcom/android/systemui/privacy/OngoingPrivacyChip;->updateView()V

    :cond_0
    return-void
.end method

.method public final setPrivacyList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/privacy/PrivacyItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iput-object p1, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->privacyList:Ljava/util/List;

    .line 58
    new-instance v0, Lcom/android/systemui/privacy/PrivacyDialogBuilder;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, p1}, Lcom/android/systemui/privacy/PrivacyDialogBuilder;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->builder:Lcom/android/systemui/privacy/PrivacyDialogBuilder;

    .line 59
    invoke-direct {p0}, Lcom/android/systemui/privacy/OngoingPrivacyChip;->updateView()V

    return-void
.end method
