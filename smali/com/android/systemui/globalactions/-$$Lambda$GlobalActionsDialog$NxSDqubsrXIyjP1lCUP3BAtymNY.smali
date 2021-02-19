.class public final synthetic Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$NxSDqubsrXIyjP1lCUP3BAtymNY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

.field private final synthetic f$1:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

.field private final synthetic f$2:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/statusbar/phone/UnlockMethodCache;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$NxSDqubsrXIyjP1lCUP3BAtymNY;->f$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    iput-object p2, p0, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$NxSDqubsrXIyjP1lCUP3BAtymNY;->f$1:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    iput-object p3, p0, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$NxSDqubsrXIyjP1lCUP3BAtymNY;->f$2:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-void
.end method


# virtual methods
.method public final onUnlockMethodStateChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$NxSDqubsrXIyjP1lCUP3BAtymNY;->f$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    iget-object v1, p0, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$NxSDqubsrXIyjP1lCUP3BAtymNY;->f$1:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    iget-object p0, p0, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$NxSDqubsrXIyjP1lCUP3BAtymNY;->f$2:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->lambda$new$0$GlobalActionsDialog(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    return-void
.end method
