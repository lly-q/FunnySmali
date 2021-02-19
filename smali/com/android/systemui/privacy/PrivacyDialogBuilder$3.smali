.class final Lcom/android/systemui/privacy/PrivacyDialogBuilder$3;
.super Lkotlin/jvm/internal/Lambda;
.source "PrivacyDialogBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/privacy/PrivacyDialogBuilder;-><init>(Landroid/content/Context;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/Pair<",
        "+",
        "Lcom/android/systemui/privacy/PrivacyApplication;",
        "+",
        "Ljava/util/List<",
        "+",
        "Lcom/android/systemui/privacy/PrivacyType;",
        ">;>;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/privacy/PrivacyDialogBuilder$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/privacy/PrivacyDialogBuilder$3;

    invoke-direct {v0}, Lcom/android/systemui/privacy/PrivacyDialogBuilder$3;-><init>()V

    sput-object v0, Lcom/android/systemui/privacy/PrivacyDialogBuilder$3;->INSTANCE:Lcom/android/systemui/privacy/PrivacyDialogBuilder$3;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lkotlin/Pair;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "Lcom/android/systemui/privacy/PrivacyApplication;",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/android/systemui/privacy/PrivacyType;",
            ">;>;)I"
        }
    .end annotation

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    neg-int p0, p0

    return p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p0, p1}, Lcom/android/systemui/privacy/PrivacyDialogBuilder$3;->invoke(Lkotlin/Pair;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
