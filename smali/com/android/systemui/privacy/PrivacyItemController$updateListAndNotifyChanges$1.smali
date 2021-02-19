.class final Lcom/android/systemui/privacy/PrivacyItemController$updateListAndNotifyChanges$1;
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


# instance fields
.field final synthetic this$0:Lcom/android/systemui/privacy/PrivacyItemController;


# direct methods
.method constructor <init>(Lcom/android/systemui/privacy/PrivacyItemController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController$updateListAndNotifyChanges$1;->this$0:Lcom/android/systemui/privacy/PrivacyItemController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController$updateListAndNotifyChanges$1;->this$0:Lcom/android/systemui/privacy/PrivacyItemController;

    invoke-static {v0}, Lcom/android/systemui/privacy/PrivacyItemController;->access$updatePrivacyList(Lcom/android/systemui/privacy/PrivacyItemController;)V

    .line 93
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController$updateListAndNotifyChanges$1;->this$0:Lcom/android/systemui/privacy/PrivacyItemController;

    invoke-static {v0}, Lcom/android/systemui/privacy/PrivacyItemController;->access$getUiHandler$p(Lcom/android/systemui/privacy/PrivacyItemController;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController$updateListAndNotifyChanges$1;->this$0:Lcom/android/systemui/privacy/PrivacyItemController;

    invoke-static {p0}, Lcom/android/systemui/privacy/PrivacyItemController;->access$getNotifyChanges$p(Lcom/android/systemui/privacy/PrivacyItemController;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
