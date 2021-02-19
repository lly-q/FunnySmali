.class final Lcom/android/systemui/privacy/PrivacyItemController$notifyChanges$1;
.super Ljava/lang/Object;
.source "PrivacyItemController.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/privacy/PrivacyItemController;-><init>(Landroid/content/Context;Lcom/android/systemui/appops/AppOpsController;Landroid/os/Handler;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPrivacyItemController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PrivacyItemController.kt\ncom/android/systemui/privacy/PrivacyItemController$notifyChanges$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,294:1\n1574#2,2:295\n*E\n*S KotlinDebug\n*F\n+ 1 PrivacyItemController.kt\ncom/android/systemui/privacy/PrivacyItemController$notifyChanges$1\n*L\n88#1,2:295\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/privacy/PrivacyItemController;


# direct methods
.method constructor <init>(Lcom/android/systemui/privacy/PrivacyItemController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController$notifyChanges$1;->this$0:Lcom/android/systemui/privacy/PrivacyItemController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController$notifyChanges$1;->this$0:Lcom/android/systemui/privacy/PrivacyItemController;

    invoke-virtual {v0}, Lcom/android/systemui/privacy/PrivacyItemController;->getPrivacyList$name()Ljava/util/List;

    move-result-object v0

    .line 88
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController$notifyChanges$1;->this$0:Lcom/android/systemui/privacy/PrivacyItemController;

    invoke-static {p0}, Lcom/android/systemui/privacy/PrivacyItemController;->access$getCallbacks$p(Lcom/android/systemui/privacy/PrivacyItemController;)Ljava/util/List;

    move-result-object p0

    .line 295
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 88
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/privacy/PrivacyItemController$Callback;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/android/systemui/privacy/PrivacyItemController$Callback;->privacyChanged(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    return-void
.end method
