.class public final Lcom/android/systemui/privacy/PrivacyItemController$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "PrivacyItemController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/privacy/PrivacyItemController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/privacy/PrivacyItemController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/privacy/PrivacyItemController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 235
    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController$Receiver;->this$0:Lcom/android/systemui/privacy/PrivacyItemController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 237
    sget-object p1, Lcom/android/systemui/privacy/PrivacyItemController;->Companion:Lcom/android/systemui/privacy/PrivacyItemController$Companion;

    invoke-virtual {p1}, Lcom/android/systemui/privacy/PrivacyItemController$Companion;->getIntents()Ljava/util/List;

    move-result-object p1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 238
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController$Receiver;->this$0:Lcom/android/systemui/privacy/PrivacyItemController;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/systemui/privacy/PrivacyItemController;->access$update(Lcom/android/systemui/privacy/PrivacyItemController;Z)V

    :cond_1
    return-void
.end method
