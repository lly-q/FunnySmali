.class final Lcom/android/systemui/privacy/PrivacyItemController$H;
.super Landroid/os/Handler;
.source "PrivacyItemController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/privacy/PrivacyItemController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "H"
.end annotation


# instance fields
.field private final outerClass:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/privacy/PrivacyItemController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Landroid/os/Looper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/privacy/PrivacyItemController;",
            ">;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    const-string v0, "outerClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "looper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController$H;->outerClass:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 276
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "null cannot be cast to non-null type com.android.systemui.privacy.PrivacyItemController.Callback"

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 277
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController$H;->outerClass:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/privacy/PrivacyItemController;

    if-eqz p0, :cond_7

    invoke-static {p0}, Lcom/android/systemui/privacy/PrivacyItemController;->access$setListeningState(Lcom/android/systemui/privacy/PrivacyItemController;)V

    goto :goto_0

    .line 286
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/systemui/privacy/PrivacyItemController$Callback;

    if-nez v0, :cond_2

    return-void

    .line 287
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController$H;->outerClass:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/privacy/PrivacyItemController;

    if-eqz p0, :cond_7

    .line 288
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_3

    check-cast p1, Lcom/android/systemui/privacy/PrivacyItemController$Callback;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 287
    invoke-static {p0, v0}, Lcom/android/systemui/privacy/PrivacyItemController;->access$removeCallback(Lcom/android/systemui/privacy/PrivacyItemController;Ljava/lang/ref/WeakReference;)V

    goto :goto_0

    .line 288
    :cond_3
    new-instance p0, Lkotlin/TypeCastException;

    invoke-direct {p0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 280
    :cond_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/systemui/privacy/PrivacyItemController$Callback;

    if-nez v0, :cond_5

    return-void

    .line 281
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController$H;->outerClass:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/privacy/PrivacyItemController;

    if-eqz p0, :cond_7

    .line 282
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_6

    check-cast p1, Lcom/android/systemui/privacy/PrivacyItemController$Callback;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 281
    invoke-static {p0, v0}, Lcom/android/systemui/privacy/PrivacyItemController;->access$addCallback(Lcom/android/systemui/privacy/PrivacyItemController;Ljava/lang/ref/WeakReference;)V

    goto :goto_0

    .line 282
    :cond_6
    new-instance p0, Lkotlin/TypeCastException;

    invoke-direct {p0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_0
    return-void
.end method
