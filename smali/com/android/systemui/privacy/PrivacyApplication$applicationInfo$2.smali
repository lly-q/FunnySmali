.class final Lcom/android/systemui/privacy/PrivacyApplication$applicationInfo$2;
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
        "Landroid/content/pm/ApplicationInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/privacy/PrivacyApplication;


# direct methods
.method constructor <init>(Lcom/android/systemui/privacy/PrivacyApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyApplication$applicationInfo$2;->this$0:Lcom/android/systemui/privacy/PrivacyApplication;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/content/pm/ApplicationInfo;
    .locals 4

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyApplication$applicationInfo$2;->this$0:Lcom/android/systemui/privacy/PrivacyApplication;

    invoke-virtual {v0}, Lcom/android/systemui/privacy/PrivacyApplication;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/android/systemui/privacy/PrivacyApplication$applicationInfo$2;->this$0:Lcom/android/systemui/privacy/PrivacyApplication;

    invoke-virtual {v1}, Lcom/android/systemui/privacy/PrivacyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/privacy/PrivacyApplication$applicationInfo$2;->this$0:Lcom/android/systemui/privacy/PrivacyApplication;

    invoke-virtual {v2}, Lcom/android/systemui/privacy/PrivacyApplication;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyApplication$applicationInfo$2;->this$0:Lcom/android/systemui/privacy/PrivacyApplication;

    invoke-virtual {p0}, Lcom/android/systemui/privacy/PrivacyApplication;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/android/systemui/privacy/PrivacyApplication$applicationInfo$2;->invoke()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0
.end method
