.class public final Lcom/android/systemui/privacy/PrivacyItemController;
.super Ljava/lang/Object;
.source "PrivacyItemController.kt"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/privacy/PrivacyItemController$Callback;,
        Lcom/android/systemui/privacy/PrivacyItemController$Receiver;,
        Lcom/android/systemui/privacy/PrivacyItemController$NotifyChangesToCallback;,
        Lcom/android/systemui/privacy/PrivacyItemController$H;,
        Lcom/android/systemui/privacy/PrivacyItemController$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPrivacyItemController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PrivacyItemController.kt\ncom/android/systemui/privacy/PrivacyItemController\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,294:1\n1574#2,2:295\n1301#2:297\n1370#2,3:298\n1208#2,12:301\n1353#2,9:313\n1574#2,2:322\n1362#2:324\n1574#2,2:325\n1574#2,2:327\n*E\n*S KotlinDebug\n*F\n+ 1 PrivacyItemController.kt\ncom/android/systemui/privacy/PrivacyItemController\n*L\n142#1,2:295\n152#1:297\n152#1,3:298\n212#1,12:301\n213#1,9:313\n213#1,2:322\n213#1:324\n257#1,2:325\n262#1,2:327\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/privacy/PrivacyItemController$Companion;

.field private static final OPS:[I

.field private static final intents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final appOpsController:Lcom/android/systemui/appops/AppOpsController;

.field private final bgHandler:Landroid/os/Handler;

.field private final callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/privacy/PrivacyItemController$Callback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final cb:Lcom/android/systemui/privacy/PrivacyItemController$cb$1;

.field private final context:Landroid/content/Context;

.field private currentUserIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final devicePropertyChangedListener:Landroid/provider/DeviceConfig$OnPropertyChangedListener;

.field private indicatorsAvailable:Z

.field private listening:Z

.field private final messageHandler:Lcom/android/systemui/privacy/PrivacyItemController$H;

.field private final notifyChanges:Ljava/lang/Runnable;

.field private privacyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/privacy/PrivacyItem;",
            ">;"
        }
    .end annotation
.end field

.field private final systemApp:Lcom/android/systemui/privacy/PrivacyApplication;

.field private final uiHandler:Landroid/os/Handler;

.field private final updateListAndNotifyChanges:Ljava/lang/Runnable;

.field private final userManager:Landroid/os/UserManager;

.field private userSwitcherReceiver:Lcom/android/systemui/privacy/PrivacyItemController$Receiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/systemui/privacy/PrivacyItemController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/privacy/PrivacyItemController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/privacy/PrivacyItemController;->Companion:Lcom/android/systemui/privacy/PrivacyItemController$Companion;

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 59
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/privacy/PrivacyItemController;->OPS:[I

    const-string v0, "android.intent.action.USER_FOREGROUND"

    const-string v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    const-string v2, "android.intent.action.MANAGED_PROFILE_REMOVED"

    .line 65
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/privacy/PrivacyItemController;->intents:Ljava/util/List;

    return-void

    nop

    :array_0
    .array-data 4
        0x1a
        0x1b
        0x0
        0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/appops/AppOpsController;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appOpsController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiHandler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bgHandler"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/privacy/PrivacyItemController;->appOpsController:Lcom/android/systemui/appops/AppOpsController;

    iput-object p3, p0, Lcom/android/systemui/privacy/PrivacyItemController;->uiHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/android/systemui/privacy/PrivacyItemController;->bgHandler:Landroid/os/Handler;

    .line 74
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->privacyList:Ljava/util/List;

    .line 78
    iget-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->context:Landroid/content/Context;

    const-class p2, Landroid/os/UserManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->userManager:Landroid/os/UserManager;

    .line 79
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->currentUserIds:Ljava/util/List;

    .line 82
    new-instance p1, Lcom/android/systemui/privacy/PrivacyApplication;

    iget-object p2, p0, Lcom/android/systemui/privacy/PrivacyItemController;->context:Landroid/content/Context;

    sget p3, Lcom/android/systemui/R$string;->device_services:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "context.getString(R.string.device_services)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/systemui/privacy/PrivacyItemController;->context:Landroid/content/Context;

    const/16 p4, 0x3e8

    invoke-direct {p1, p2, p4, p3}, Lcom/android/systemui/privacy/PrivacyApplication;-><init>(Ljava/lang/String;ILandroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->systemApp:Lcom/android/systemui/privacy/PrivacyApplication;

    .line 83
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->callbacks:Ljava/util/List;

    .line 84
    new-instance p1, Lcom/android/systemui/privacy/PrivacyItemController$H;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/android/systemui/privacy/PrivacyItemController;->uiHandler:Landroid/os/Handler;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p3

    const-string p4, "uiHandler.looper"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p2, p3}, Lcom/android/systemui/privacy/PrivacyItemController$H;-><init>(Ljava/lang/ref/WeakReference;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->messageHandler:Lcom/android/systemui/privacy/PrivacyItemController$H;

    .line 86
    new-instance p1, Lcom/android/systemui/privacy/PrivacyItemController$notifyChanges$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/privacy/PrivacyItemController$notifyChanges$1;-><init>(Lcom/android/systemui/privacy/PrivacyItemController;)V

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->notifyChanges:Ljava/lang/Runnable;

    .line 91
    new-instance p1, Lcom/android/systemui/privacy/PrivacyItemController$updateListAndNotifyChanges$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/privacy/PrivacyItemController$updateListAndNotifyChanges$1;-><init>(Lcom/android/systemui/privacy/PrivacyItemController;)V

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->updateListAndNotifyChanges:Ljava/lang/Runnable;

    .line 96
    invoke-static {}, Lcom/android/systemui/privacy/PrivacyItemControllerKt;->isPermissionsHubEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->indicatorsAvailable:Z

    .line 99
    new-instance p1, Lcom/android/systemui/privacy/PrivacyItemController$devicePropertyChangedListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/privacy/PrivacyItemController$devicePropertyChangedListener$1;-><init>(Lcom/android/systemui/privacy/PrivacyItemController;)V

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->devicePropertyChangedListener:Landroid/provider/DeviceConfig$OnPropertyChangedListener;

    .line 110
    new-instance p1, Lcom/android/systemui/privacy/PrivacyItemController$cb$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/privacy/PrivacyItemController$cb$1;-><init>(Lcom/android/systemui/privacy/PrivacyItemController;)V

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->cb:Lcom/android/systemui/privacy/PrivacyItemController$cb$1;

    .line 125
    new-instance p1, Lcom/android/systemui/privacy/PrivacyItemController$Receiver;

    invoke-direct {p1, p0}, Lcom/android/systemui/privacy/PrivacyItemController$Receiver;-><init>(Lcom/android/systemui/privacy/PrivacyItemController;)V

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->userSwitcherReceiver:Lcom/android/systemui/privacy/PrivacyItemController$Receiver;

    .line 134
    iget-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->devicePropertyChangedListener:Landroid/provider/DeviceConfig$OnPropertyChangedListener;

    const-string p2, "privacy"

    .line 133
    invoke-static {p2, p1, p0}, Landroid/provider/DeviceConfig;->addOnPropertyChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertyChangedListener;)V

    return-void
.end method

.method public static final synthetic access$addCallback(Lcom/android/systemui/privacy/PrivacyItemController;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/android/systemui/privacy/PrivacyItemController;->addCallback(Ljava/lang/ref/WeakReference;)V

    return-void
.end method

.method public static final synthetic access$getCallbacks$p(Lcom/android/systemui/privacy/PrivacyItemController;)Ljava/util/List;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->callbacks:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getCurrentUserIds$p(Lcom/android/systemui/privacy/PrivacyItemController;)Ljava/util/List;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->currentUserIds:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getIntents$cp()Ljava/util/List;
    .locals 1

    .line 50
    sget-object v0, Lcom/android/systemui/privacy/PrivacyItemController;->intents:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getMessageHandler$p(Lcom/android/systemui/privacy/PrivacyItemController;)Lcom/android/systemui/privacy/PrivacyItemController$H;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->messageHandler:Lcom/android/systemui/privacy/PrivacyItemController$H;

    return-object p0
.end method

.method public static final synthetic access$getNotifyChanges$p(Lcom/android/systemui/privacy/PrivacyItemController;)Ljava/lang/Runnable;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->notifyChanges:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic access$getUiHandler$p(Lcom/android/systemui/privacy/PrivacyItemController;)Landroid/os/Handler;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->uiHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$removeCallback(Lcom/android/systemui/privacy/PrivacyItemController;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/android/systemui/privacy/PrivacyItemController;->removeCallback(Ljava/lang/ref/WeakReference;)V

    return-void
.end method

.method public static final synthetic access$setIndicatorsAvailable$p(Lcom/android/systemui/privacy/PrivacyItemController;Z)V
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->indicatorsAvailable:Z

    return-void
.end method

.method public static final synthetic access$setListeningState(Lcom/android/systemui/privacy/PrivacyItemController;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/android/systemui/privacy/PrivacyItemController;->setListeningState()V

    return-void
.end method

.method public static final synthetic access$update(Lcom/android/systemui/privacy/PrivacyItemController;Z)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/android/systemui/privacy/PrivacyItemController;->update(Z)V

    return-void
.end method

.method public static final synthetic access$updatePrivacyList(Lcom/android/systemui/privacy/PrivacyItemController;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/android/systemui/privacy/PrivacyItemController;->updatePrivacyList()V

    return-void
.end method

.method private final addCallback(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/privacy/PrivacyItemController$Callback;",
            ">;)V"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->callbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->listening:Z

    if-nez v0, :cond_0

    .line 183
    iget-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->messageHandler:Lcom/android/systemui/privacy/PrivacyItemController$H;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 184
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->messageHandler:Lcom/android/systemui/privacy/PrivacyItemController$H;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 187
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->listening:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/privacy/PrivacyItemController$NotifyChangesToCallback;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/privacy/PrivacyItemController$Callback;

    invoke-virtual {p0}, Lcom/android/systemui/privacy/PrivacyItemController;->getPrivacyList$name()Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, p1, p0}, Lcom/android/systemui/privacy/PrivacyItemController$NotifyChangesToCallback;-><init>(Lcom/android/systemui/privacy/PrivacyItemController$Callback;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic devicePropertyChangedListener$annotations()V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static synthetic privacyList$annotations()V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    return-void
.end method

.method private final registerReceiver()V
    .locals 6

    .line 142
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->userSwitcherReceiver:Lcom/android/systemui/privacy/PrivacyItemController$Receiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 143
    sget-object p0, Lcom/android/systemui/privacy/PrivacyItemController;->intents:Ljava/util/List;

    .line 295
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 144
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 142
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private final removeCallback(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/privacy/PrivacyItemController$Callback;",
            ">;)V"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->callbacks:Ljava/util/List;

    new-instance v1, Lcom/android/systemui/privacy/PrivacyItemController$removeCallback$1;

    invoke-direct {v1, p1}, Lcom/android/systemui/privacy/PrivacyItemController$removeCallback$1;-><init>(Ljava/lang/ref/WeakReference;)V

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 193
    iget-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->callbacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 194
    iget-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->messageHandler:Lcom/android/systemui/privacy/PrivacyItemController$H;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 195
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->messageHandler:Lcom/android/systemui/privacy/PrivacyItemController$H;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method private final setListeningState()V
    .locals 4

    .line 164
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->callbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/android/systemui/privacy/PrivacyItemController;->indicatorsAvailable:Z

    and-int/2addr v0, v2

    .line 165
    iget-boolean v2, p0, Lcom/android/systemui/privacy/PrivacyItemController;->listening:Z

    if-ne v2, v0, :cond_0

    return-void

    .line 166
    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->listening:Z

    .line 167
    iget-boolean v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->listening:Z

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->appOpsController:Lcom/android/systemui/appops/AppOpsController;

    sget-object v2, Lcom/android/systemui/privacy/PrivacyItemController;->OPS:[I

    iget-object v3, p0, Lcom/android/systemui/privacy/PrivacyItemController;->cb:Lcom/android/systemui/privacy/PrivacyItemController$cb$1;

    invoke-interface {v0, v2, v3}, Lcom/android/systemui/appops/AppOpsController;->addCallback([ILcom/android/systemui/appops/AppOpsController$Callback;)V

    .line 169
    invoke-direct {p0}, Lcom/android/systemui/privacy/PrivacyItemController;->registerReceiver()V

    .line 170
    invoke-direct {p0, v1}, Lcom/android/systemui/privacy/PrivacyItemController;->update(Z)V

    goto :goto_0

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->appOpsController:Lcom/android/systemui/appops/AppOpsController;

    sget-object v1, Lcom/android/systemui/privacy/PrivacyItemController;->OPS:[I

    iget-object v2, p0, Lcom/android/systemui/privacy/PrivacyItemController;->cb:Lcom/android/systemui/privacy/PrivacyItemController$cb$1;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/appops/AppOpsController;->removeCallback([ILcom/android/systemui/appops/AppOpsController$Callback;)V

    .line 173
    invoke-direct {p0}, Lcom/android/systemui/privacy/PrivacyItemController;->unregisterReceiver()V

    const/4 v0, 0x0

    .line 176
    invoke-direct {p0, v0}, Lcom/android/systemui/privacy/PrivacyItemController;->update(Z)V

    :goto_0
    return-void
.end method

.method private final toPrivacyItem(Lcom/android/systemui/appops/AppOpItem;)Lcom/android/systemui/privacy/PrivacyItem;
    .locals 4

    .line 218
    invoke-virtual {p1}, Lcom/android/systemui/appops/AppOpItem;->getCode()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 222
    :cond_0
    sget-object v0, Lcom/android/systemui/privacy/PrivacyType;->TYPE_MICROPHONE:Lcom/android/systemui/privacy/PrivacyType;

    goto :goto_0

    .line 219
    :cond_1
    sget-object v0, Lcom/android/systemui/privacy/PrivacyType;->TYPE_CAMERA:Lcom/android/systemui/privacy/PrivacyType;

    goto :goto_0

    .line 221
    :cond_2
    sget-object v0, Lcom/android/systemui/privacy/PrivacyType;->TYPE_LOCATION:Lcom/android/systemui/privacy/PrivacyType;

    goto :goto_0

    .line 220
    :cond_3
    sget-object v0, Lcom/android/systemui/privacy/PrivacyType;->TYPE_LOCATION:Lcom/android/systemui/privacy/PrivacyType;

    .line 225
    :goto_0
    invoke-virtual {p1}, Lcom/android/systemui/appops/AppOpItem;->getUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_4

    new-instance p1, Lcom/android/systemui/privacy/PrivacyItem;

    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->systemApp:Lcom/android/systemui/privacy/PrivacyApplication;

    invoke-direct {p1, v0, p0}, Lcom/android/systemui/privacy/PrivacyItem;-><init>(Lcom/android/systemui/privacy/PrivacyType;Lcom/android/systemui/privacy/PrivacyApplication;)V

    return-object p1

    .line 226
    :cond_4
    new-instance v1, Lcom/android/systemui/privacy/PrivacyApplication;

    invoke-virtual {p1}, Lcom/android/systemui/appops/AppOpItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "appOpItem.packageName"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/systemui/appops/AppOpItem;->getUid()I

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->context:Landroid/content/Context;

    invoke-direct {v1, v2, p1, p0}, Lcom/android/systemui/privacy/PrivacyApplication;-><init>(Ljava/lang/String;ILandroid/content/Context;)V

    .line 227
    new-instance p0, Lcom/android/systemui/privacy/PrivacyItem;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/privacy/PrivacyItem;-><init>(Lcom/android/systemui/privacy/PrivacyType;Lcom/android/systemui/privacy/PrivacyApplication;)V

    return-object p0
.end method

.method private final unregisterReceiver()V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->context:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->userSwitcherReceiver:Lcom/android/systemui/privacy/PrivacyItemController$Receiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private final update(Z)V
    .locals 2

    if-eqz p1, :cond_1

    .line 151
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    .line 152
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->userManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object p1

    const-string v0, "userManager.getProfiles(currentUser)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 298
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 299
    check-cast v1, Landroid/content/pm/UserInfo;

    .line 152
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 300
    :cond_0
    iput-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->currentUserIds:Ljava/util/List;

    .line 154
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->bgHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->updateListAndNotifyChanges:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final updatePrivacyList()V
    .locals 4

    .line 208
    iget-boolean v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->listening:Z

    if-nez v0, :cond_0

    .line 209
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->privacyList:Ljava/util/List;

    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->currentUserIds:Ljava/util/List;

    .line 301
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 308
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 309
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 212
    iget-object v3, p0, Lcom/android/systemui/privacy/PrivacyItemController;->appOpsController:Lcom/android/systemui/appops/AppOpsController;

    invoke-interface {v3, v2}, Lcom/android/systemui/appops/AppOpsController;->getActiveAppOpsForUser(I)Ljava/util/List;

    move-result-object v2

    .line 310
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 313
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 322
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 321
    check-cast v2, Lcom/android/systemui/appops/AppOpItem;

    const-string v3, "it"

    .line 213
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/android/systemui/privacy/PrivacyItemController;->toPrivacyItem(Lcom/android/systemui/appops/AppOpItem;)Lcom/android/systemui/privacy/PrivacyItem;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 321
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 213
    :cond_3
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 214
    iput-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->privacyList:Ljava/util/List;

    return-void
.end method

.method public static synthetic userSwitcherReceiver$annotations()V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    return-void
.end method


# virtual methods
.method public final addCallback(Lcom/android/systemui/privacy/PrivacyItemController$Callback;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->messageHandler:Lcom/android/systemui/privacy/PrivacyItemController$H;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    const-string p1, "PrivacyItemController state:"

    .line 253
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 254
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  Listening: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/privacy/PrivacyItemController;->listening:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 255
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  Current user ids: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/privacy/PrivacyItemController;->currentUserIds:Ljava/util/List;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    if-eqz p2, :cond_3

    const-string p1, "  Privacy Items:"

    .line 256
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 257
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/privacy/PrivacyItemController;->getPrivacyList$name()Ljava/util/List;

    move-result-object p1

    .line 325
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    const-string v0, "    "

    if-eqz p3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/privacy/PrivacyItem;

    if-eqz p2, :cond_5

    .line 258
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_5
    if-eqz p2, :cond_4

    .line 259
    invoke-virtual {p3}, Lcom/android/systemui/privacy/PrivacyItem;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    if-eqz p2, :cond_7

    const-string p1, "  Callbacks:"

    .line 261
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 262
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->callbacks:Ljava/util/List;

    .line 327
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 263
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/privacy/PrivacyItemController$Callback;

    if-eqz p1, :cond_8

    if-eqz p2, :cond_9

    .line 264
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_9
    if-eqz p2, :cond_8

    .line 265
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_a
    return-void
.end method

.method public final declared-synchronized getPrivacyList$name()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/privacy/PrivacyItem;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->privacyList:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final removeCallback(Lcom/android/systemui/privacy/PrivacyItemController$Callback;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->messageHandler:Lcom/android/systemui/privacy/PrivacyItemController$H;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
