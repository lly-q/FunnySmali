.class final Lcom/android/systemui/statusbar/phone/KeyguardBypassController$3;
.super Ljava/lang/Object;
.source "KeyguardBypassController.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$UserChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBypassController;-><init>(Landroid/content/Context;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBypassController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUserChanged(I)V
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->access$setPendingUnlockType$p(Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Landroid/hardware/biometrics/BiometricSourceType;)V

    return-void
.end method
