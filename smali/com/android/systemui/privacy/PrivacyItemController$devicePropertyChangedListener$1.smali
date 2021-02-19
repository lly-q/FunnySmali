.class public final Lcom/android/systemui/privacy/PrivacyItemController$devicePropertyChangedListener$1;
.super Ljava/lang/Object;
.source "PrivacyItemController.kt"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertyChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/privacy/PrivacyItemController;-><init>(Landroid/content/Context;Lcom/android/systemui/appops/AppOpsController;Landroid/os/Handler;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/privacy/PrivacyItemController;


# direct methods
.method constructor <init>(Lcom/android/systemui/privacy/PrivacyItemController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 99
    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController$devicePropertyChangedListener$1;->this$0:Lcom/android/systemui/privacy/PrivacyItemController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "namespace"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "privacy"

    .line 101
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "permissions_hub_enabled"

    .line 102
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 103
    iget-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController$devicePropertyChangedListener$1;->this$0:Lcom/android/systemui/privacy/PrivacyItemController;

    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/android/systemui/privacy/PrivacyItemController;->access$setIndicatorsAvailable$p(Lcom/android/systemui/privacy/PrivacyItemController;Z)V

    .line 104
    iget-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController$devicePropertyChangedListener$1;->this$0:Lcom/android/systemui/privacy/PrivacyItemController;

    invoke-static {p1}, Lcom/android/systemui/privacy/PrivacyItemController;->access$getMessageHandler$p(Lcom/android/systemui/privacy/PrivacyItemController;)Lcom/android/systemui/privacy/PrivacyItemController$H;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 105
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController$devicePropertyChangedListener$1;->this$0:Lcom/android/systemui/privacy/PrivacyItemController;

    invoke-static {p0}, Lcom/android/systemui/privacy/PrivacyItemController;->access$getMessageHandler$p(Lcom/android/systemui/privacy/PrivacyItemController;)Lcom/android/systemui/privacy/PrivacyItemController$H;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
