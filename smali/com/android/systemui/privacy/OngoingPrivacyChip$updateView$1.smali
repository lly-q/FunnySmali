.class final Lcom/android/systemui/privacy/OngoingPrivacyChip$updateView$1;
.super Lkotlin/jvm/internal/Lambda;
.source "OngoingPrivacyChip.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/privacy/OngoingPrivacyChip;->updateView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/android/systemui/privacy/PrivacyDialogBuilder;",
        "Landroid/view/ViewGroup;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOngoingPrivacyChip.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OngoingPrivacyChip.kt\ncom/android/systemui/privacy/OngoingPrivacyChip$updateView$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,110:1\n1583#2,3:111\n*E\n*S KotlinDebug\n*F\n+ 1 OngoingPrivacyChip.kt\ncom/android/systemui/privacy/OngoingPrivacyChip$updateView$1\n*L\n76#1,3:111\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/privacy/OngoingPrivacyChip;


# direct methods
.method constructor <init>(Lcom/android/systemui/privacy/OngoingPrivacyChip;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip$updateView$1;->this$0:Lcom/android/systemui/privacy/OngoingPrivacyChip;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 26
    check-cast p1, Lcom/android/systemui/privacy/PrivacyDialogBuilder;

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/privacy/OngoingPrivacyChip$updateView$1;->invoke(Lcom/android/systemui/privacy/PrivacyDialogBuilder;Landroid/view/ViewGroup;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/android/systemui/privacy/PrivacyDialogBuilder;Landroid/view/ViewGroup;)V
    .locals 5

    const-string v0, "dialogBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconsContainer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 76
    invoke-virtual {p1}, Lcom/android/systemui/privacy/PrivacyDialogBuilder;->generateIcons()Ljava/util/List;

    move-result-object p1

    .line 112
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    if-ltz v0, :cond_3

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 77
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 78
    iget-object v3, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip$updateView$1;->this$0:Lcom/android/systemui/privacy/OngoingPrivacyChip;

    invoke-static {v3}, Lcom/android/systemui/privacy/OngoingPrivacyChip;->access$getIconColor$p(Lcom/android/systemui/privacy/OngoingPrivacyChip;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 79
    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip$updateView$1;->this$0:Lcom/android/systemui/privacy/OngoingPrivacyChip;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 80
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 83
    iget-object v1, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip$updateView$1;->this$0:Lcom/android/systemui/privacy/OngoingPrivacyChip;

    invoke-static {v1}, Lcom/android/systemui/privacy/OngoingPrivacyChip;->access$getIconSize$p(Lcom/android/systemui/privacy/OngoingPrivacyChip;)I

    move-result v1

    iget-object v4, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip$updateView$1;->this$0:Lcom/android/systemui/privacy/OngoingPrivacyChip;

    invoke-static {v4}, Lcom/android/systemui/privacy/OngoingPrivacyChip;->access$getIconSize$p(Lcom/android/systemui/privacy/OngoingPrivacyChip;)I

    move-result v4

    invoke-virtual {p2, v3, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    if-eqz v0, :cond_2

    .line 85
    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 86
    iget-object v1, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip$updateView$1;->this$0:Lcom/android/systemui/privacy/OngoingPrivacyChip;

    invoke-virtual {v1}, Lcom/android/systemui/privacy/OngoingPrivacyChip;->getExpanded()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip$updateView$1;->this$0:Lcom/android/systemui/privacy/OngoingPrivacyChip;

    invoke-static {v1}, Lcom/android/systemui/privacy/OngoingPrivacyChip;->access$getIconMarginExpanded$p(Lcom/android/systemui/privacy/OngoingPrivacyChip;)I

    move-result v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip$updateView$1;->this$0:Lcom/android/systemui/privacy/OngoingPrivacyChip;

    invoke-static {v1}, Lcom/android/systemui/privacy/OngoingPrivacyChip;->access$getIconMarginCollapsed$p(Lcom/android/systemui/privacy/OngoingPrivacyChip;)I

    move-result v1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 87
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 85
    :cond_1
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_2
    move v0, v2

    goto :goto_0

    .line 112
    :cond_3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    const/4 p0, 0x0

    throw p0

    :cond_4
    return-void
.end method
