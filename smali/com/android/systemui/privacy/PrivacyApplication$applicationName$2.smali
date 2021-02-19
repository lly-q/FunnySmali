.class final Lcom/android/systemui/privacy/PrivacyApplication$applicationName$2;
.super Lkotlin/jvm/internal/Lambda;
.source "PrivacyItem.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/privacy/PrivacyApplication;-><init>(Ljava/lang/String;ILandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPrivacyItem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PrivacyItem.kt\ncom/android/systemui/privacy/PrivacyApplication$applicationName$2\n*L\n1#1,81:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/privacy/PrivacyApplication;


# direct methods
.method constructor <init>(Lcom/android/systemui/privacy/PrivacyApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyApplication$applicationName$2;->this$0:Lcom/android/systemui/privacy/PrivacyApplication;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/android/systemui/privacy/PrivacyApplication$applicationName$2;->invoke()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ljava/lang/String;
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyApplication$applicationName$2;->this$0:Lcom/android/systemui/privacy/PrivacyApplication;

    invoke-static {v0}, Lcom/android/systemui/privacy/PrivacyApplication;->access$getApplicationInfo$p(Lcom/android/systemui/privacy/PrivacyApplication;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 75
    iget-object v1, p0, Lcom/android/systemui/privacy/PrivacyApplication$applicationName$2;->this$0:Lcom/android/systemui/privacy/PrivacyApplication;

    invoke-virtual {v1}, Lcom/android/systemui/privacy/PrivacyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.String"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 76
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyApplication$applicationName$2;->this$0:Lcom/android/systemui/privacy/PrivacyApplication;

    invoke-virtual {p0}, Lcom/android/systemui/privacy/PrivacyApplication;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
