.class public final Lcom/android/systemui/statusbar/phone/KeyguardBypassController;
.super Ljava/lang/Object;
.source "KeyguardBypassController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/KeyguardBypassController$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/statusbar/phone/KeyguardBypassController$Companion;


# instance fields
.field private bouncerShowing:Z

.field private bypassEnabled:Z

.field private hasFaceFeature:Z

.field private isPulseExpanding:Z

.field private launchingAffordance:Z

.field private pendingUnlockType:Landroid/hardware/biometrics/BiometricSourceType;

.field private qSExpanded:Z

.field private final statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public unlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

.field private final unlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->Companion:Lcom/android/systemui/statusbar/phone/KeyguardBypassController$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tunerService"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statusBarStateController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lockscreenUserManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v0

    const-string v1, "UnlockMethodCache.getInstance(context)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->unlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 72
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.biometrics.face"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->hasFaceFeature:Z

    .line 75
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->hasFaceFeature:Z

    if-nez v0, :cond_0

    return-void

    .line 79
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBypassController;)V

    invoke-interface {p3, v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x1110084

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    .line 89
    new-instance p3, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$2;

    invoke-direct {p3, p0, p2, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/tuner/TunerService;I)V

    const-string p1, "face_unlock_dismisses_keyguard"

    .line 93
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 89
    invoke-virtual {p2, p3, p1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 94
    new-instance p1, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$3;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$3;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBypassController;)V

    invoke-interface {p4, p1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->addUserChangedListener(Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$UserChangedListener;)V

    return-void
.end method

.method public static final synthetic access$setBypassEnabled$p(Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Z)V
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->bypassEnabled:Z

    return-void
.end method

.method public static final synthetic access$setPendingUnlockType$p(Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->pendingUnlockType:Landroid/hardware/biometrics/BiometricSourceType;

    return-void
.end method


# virtual methods
.method public final canBypass()Z
    .locals 3

    .line 126
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 128
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->bouncerShowing:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    if-eq v0, v2, :cond_2

    goto :goto_0

    .line 130
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->launchingAffordance:Z

    if-eqz v0, :cond_3

    goto :goto_0

    .line 131
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->isPulseExpanding:Z

    if-nez v0, :cond_4

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->qSExpanded:Z

    if-eqz p0, :cond_0

    :cond_4
    :goto_0
    return v1
.end method

.method public final canPlaySubtleWindowAnimations()Z
    .locals 3

    .line 142
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->qSExpanded:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :cond_2
    :goto_0
    return v1
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "pw"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "KeyguardBypassController:"

    .line 157
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  pendingUnlockType: "

    .line 158
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->pendingUnlockType:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "  bypassEnabled: "

    .line 159
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  canBypass: "

    .line 160
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->canBypass()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  bouncerShowing: "

    .line 161
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->bouncerShowing:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  isPulseExpanding: "

    .line 162
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->isPulseExpanding:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  launchingAffordance: "

    .line 163
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->launchingAffordance:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  qSExpanded: "

    .line 164
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->qSExpanded:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  hasFaceFeature: "

    .line 165
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->hasFaceFeature:Z

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public final getBypassEnabled()Z
    .locals 1

    .line 50
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->bypassEnabled:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->unlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isFaceAuthEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final maybePerformPendingUnlock()V
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->pendingUnlockType:Landroid/hardware/biometrics/BiometricSourceType;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 115
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->onBiometricAuthenticated(Landroid/hardware/biometrics/BiometricSourceType;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->unlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->pendingUnlockType:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->startWakeAndUnlock(Landroid/hardware/biometrics/BiometricSourceType;)V

    .line 117
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->pendingUnlockType:Landroid/hardware/biometrics/BiometricSourceType;

    goto :goto_0

    :cond_0
    const-string p0, "unlockController"

    .line 116
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 115
    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    :cond_2
    :goto_0
    return-void
.end method

.method public final onBiometricAuthenticated(Landroid/hardware/biometrics/BiometricSourceType;)Z
    .locals 2

    const-string v0, "biometricSourceType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 104
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->canBypass()Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->isPulseExpanding:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->qSExpanded:Z

    if-eqz v1, :cond_1

    .line 106
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->pendingUnlockType:Landroid/hardware/biometrics/BiometricSourceType;

    :cond_1
    return v0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public final onStartedGoingToSleep()V
    .locals 1

    const/4 v0, 0x0

    .line 153
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->pendingUnlockType:Landroid/hardware/biometrics/BiometricSourceType;

    return-void
.end method

.method public final setBouncerShowing(Z)V
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->bouncerShowing:Z

    return-void
.end method

.method public final setLaunchingAffordance(Z)V
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->launchingAffordance:Z

    return-void
.end method

.method public final setPulseExpanding(Z)V
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->isPulseExpanding:Z

    return-void
.end method

.method public final setQSExpanded(Z)V
    .locals 1

    .line 57
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->qSExpanded:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 58
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->qSExpanded:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 60
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->maybePerformPendingUnlock()V

    :cond_1
    return-void
.end method

.method public final setUnlockController(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->unlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    return-void
.end method
