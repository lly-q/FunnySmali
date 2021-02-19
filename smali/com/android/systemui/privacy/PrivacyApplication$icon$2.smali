.class final Lcom/android/systemui/privacy/PrivacyApplication$icon$2;
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
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPrivacyItem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PrivacyItem.kt\ncom/android/systemui/privacy/PrivacyApplication$icon$2\n*L\n1#1,81:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/privacy/PrivacyApplication;


# direct methods
.method constructor <init>(Lcom/android/systemui/privacy/PrivacyApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyApplication$icon$2;->this$0:Lcom/android/systemui/privacy/PrivacyApplication;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyApplication$icon$2;->this$0:Lcom/android/systemui/privacy/PrivacyApplication;

    invoke-static {v0}, Lcom/android/systemui/privacy/PrivacyApplication;->access$getApplicationInfo$p(Lcom/android/systemui/privacy/PrivacyApplication;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/privacy/PrivacyApplication$icon$2;->this$0:Lcom/android/systemui/privacy/PrivacyApplication;

    invoke-virtual {v1}, Lcom/android/systemui/privacy/PrivacyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;Z)Landroid/util/IconDrawableFactory;

    move-result-object v1

    .line 66
    iget-object v2, p0, Lcom/android/systemui/privacy/PrivacyApplication$icon$2;->this$0:Lcom/android/systemui/privacy/PrivacyApplication;

    invoke-virtual {v2}, Lcom/android/systemui/privacy/PrivacyApplication;->getUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    goto :goto_1

    .line 70
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyApplication$icon$2;->this$0:Lcom/android/systemui/privacy/PrivacyApplication;

    invoke-virtual {p0}, Lcom/android/systemui/privacy/PrivacyApplication;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x1080093

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/android/systemui/privacy/PrivacyApplication$icon$2;->invoke()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method
