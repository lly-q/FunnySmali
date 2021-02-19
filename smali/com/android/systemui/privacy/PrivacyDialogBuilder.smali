.class public final Lcom/android/systemui/privacy/PrivacyDialogBuilder;
.super Ljava/lang/Object;
.source "PrivacyDialogBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPrivacyDialogBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PrivacyDialogBuilder.kt\ncom/android/systemui/privacy/PrivacyDialogBuilder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,57:1\n1301#2:58\n1370#2,3:59\n1301#2:62\n1370#2,3:63\n1301#2:66\n1370#2,3:67\n1244#2:70\n1274#2,3:71\n1277#2,3:81\n1301#2:84\n1370#2,3:85\n305#3,7:74\n*E\n*S KotlinDebug\n*F\n+ 1 PrivacyDialogBuilder.kt\ncom/android/systemui/privacy/PrivacyDialogBuilder\n*L\n37#1:58\n37#1,3:59\n40#1:62\n40#1,3:63\n53#1:66\n53#1,3:67\n29#1:70\n29#1,3:71\n29#1,3:81\n33#1:84\n33#1,3:85\n29#1,7:74\n*E\n"
.end annotation


# instance fields
.field private final appsAndTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Lcom/android/systemui/privacy/PrivacyApplication;",
            "Ljava/util/List<",
            "Lcom/android/systemui/privacy/PrivacyType;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final lastSeparator:Ljava/lang/String;

.field private final separator:Ljava/lang/String;

.field private final types:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/privacy/PrivacyType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/systemui/privacy/PrivacyItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemsList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyDialogBuilder;->context:Landroid/content/Context;

    .line 25
    iget-object p1, p0, Lcom/android/systemui/privacy/PrivacyDialogBuilder;->context:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->ongoing_privacy_dialog_separator:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyDialogBuilder;->separator:Ljava/lang/String;

    .line 26
    iget-object p1, p0, Lcom/android/systemui/privacy/PrivacyDialogBuilder;->context:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->ongoing_privacy_dialog_last_separator:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyDialogBuilder;->lastSeparator:Ljava/lang/String;

    .line 70
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 71
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 72
    check-cast v1, Lcom/android/systemui/privacy/PrivacyItem;

    .line 29
    invoke-virtual {v1}, Lcom/android/systemui/privacy/PrivacyItem;->getApplication()Lcom/android/systemui/privacy/PrivacyApplication;

    move-result-object v2

    .line 74
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 73
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 77
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_0
    check-cast v3, Ljava/util/List;

    .line 29
    invoke-virtual {v1}, Lcom/android/systemui/privacy/PrivacyItem;->getPrivacyType()Lcom/android/systemui/privacy/PrivacyType;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 30
    :cond_1
    invoke-static {p1}, Lkotlin/collections/MapsKt;->toList(Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x0

    .line 31
    sget-object v2, Lcom/android/systemui/privacy/PrivacyDialogBuilder$3;->INSTANCE:Lcom/android/systemui/privacy/PrivacyDialogBuilder$3;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 32
    sget-object v2, Lcom/android/systemui/privacy/PrivacyDialogBuilder$4;->INSTANCE:Lcom/android/systemui/privacy/PrivacyDialogBuilder$4;

    aput-object v2, v0, v1

    .line 31
    invoke-static {v0}, Lkotlin/comparisons/ComparisonsKt;->compareBy([Lkotlin/jvm/functions/Function1;)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyDialogBuilder;->appsAndTypes:Ljava/util/List;

    .line 84
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p2, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 85
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 86
    check-cast v0, Lcom/android/systemui/privacy/PrivacyItem;

    .line 33
    invoke-virtual {v0}, Lcom/android/systemui/privacy/PrivacyItem;->getPrivacyType()Lcom/android/systemui/privacy/PrivacyType;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->sorted(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyDialogBuilder;->types:Ljava/util/List;

    return-void
.end method

.method private final joinWithAnd(Ljava/util/List;)Ljava/lang/StringBuilder;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;)",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .line 43
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/privacy/PrivacyDialogBuilder;->separator:Ljava/lang/String;

    const-string v1, "separator"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x7c

    const/4 v11, 0x0

    move-object v3, v0

    invoke-static/range {v2 .. v11}, Lkotlin/collections/CollectionsKt;->joinTo$default(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Appendable;

    check-cast v0, Ljava/lang/StringBuilder;

    .line 44
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyDialogBuilder;->lastSeparator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-object v0
.end method


# virtual methods
.method public final generateIcons()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyDialogBuilder;->types:Ljava/util/List;

    .line 62
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 63
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 64
    check-cast v2, Lcom/android/systemui/privacy/PrivacyType;

    .line 40
    iget-object v3, p0, Lcom/android/systemui/privacy/PrivacyDialogBuilder;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/systemui/privacy/PrivacyType;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final getAppsAndTypes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Lcom/android/systemui/privacy/PrivacyApplication;",
            "Ljava/util/List<",
            "Lcom/android/systemui/privacy/PrivacyType;",
            ">;>;>;"
        }
    .end annotation

    .line 23
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyDialogBuilder;->appsAndTypes:Ljava/util/List;

    return-object p0
.end method

.method public final joinTypes()Ljava/lang/String;
    .locals 4

    .line 50
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyDialogBuilder;->types:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 53
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyDialogBuilder;->types:Ljava/util/List;

    .line 66
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 67
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 68
    check-cast v2, Lcom/android/systemui/privacy/PrivacyType;

    .line 53
    iget-object v3, p0, Lcom/android/systemui/privacy/PrivacyDialogBuilder;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/systemui/privacy/PrivacyType;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/systemui/privacy/PrivacyDialogBuilder;->joinWithAnd(Ljava/util/List;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "types.map { it.getName(c….joinWithAnd().toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyDialogBuilder;->types:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/privacy/PrivacyType;

    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyDialogBuilder;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/systemui/privacy/PrivacyType;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "types[0].getName(context)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string p0, ""

    :goto_1
    return-object p0
.end method
