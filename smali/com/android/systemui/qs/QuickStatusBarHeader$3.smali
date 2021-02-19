.class Lcom/android/systemui/qs/QuickStatusBarHeader$3;
.super Ljava/lang/Object;
.source "QuickStatusBarHeader.java"

# interfaces
.implements Lcom/android/systemui/privacy/PrivacyItemController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QuickStatusBarHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QuickStatusBarHeader;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QuickStatusBarHeader;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader$3;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public privacyChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/privacy/PrivacyItem;",
            ">;)V"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader$3;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-static {v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->access$400(Lcom/android/systemui/qs/QuickStatusBarHeader;)Lcom/android/systemui/privacy/OngoingPrivacyChip;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/privacy/OngoingPrivacyChip;->setPrivacyList(Ljava/util/List;)V

    .line 196
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader$3;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->access$500(Lcom/android/systemui/qs/QuickStatusBarHeader;Z)V

    return-void
.end method
