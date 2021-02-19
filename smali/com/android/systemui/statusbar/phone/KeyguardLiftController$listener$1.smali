.class public final Lcom/android/systemui/statusbar/phone/KeyguardLiftController$listener$1;
.super Landroid/hardware/TriggerEventListener;
.source "KeyguardLiftController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardLiftController;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/util/AsyncSensorManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardLiftController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardLiftController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController$listener$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardLiftController;

    invoke-direct {p0}, Landroid/hardware/TriggerEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTrigger(Landroid/hardware/TriggerEvent;)V
    .locals 1

    .line 48
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 50
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController$listener$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardLiftController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->access$setListening$p(Lcom/android/systemui/statusbar/phone/KeyguardLiftController;Z)V

    .line 51
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController$listener$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardLiftController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->access$updateListeningState(Lcom/android/systemui/statusbar/phone/KeyguardLiftController;)V

    .line 52
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController$listener$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardLiftController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->access$getKeyguardUpdateMonitor$p(Lcom/android/systemui/statusbar/phone/KeyguardLiftController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->requestFaceAuth()V

    return-void
.end method
