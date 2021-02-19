.class final Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartRecoveryAction;
.super Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;
.source "GlobalActionsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RestartRecoveryAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;


# direct methods
.method private constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V
    .locals 1

    .line 758
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartRecoveryAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    .line 759
    sget p1, Lcom/android/systemui/R$drawable;->ic_lock_restart_recovery:I

    sget v0, Lcom/android/systemui/R$string;->global_action_restart_recovery:I

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;-><init>(II)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$1;)V
    .locals 0

    .line 757
    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartRecoveryAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    return-void
.end method


# virtual methods
.method public onPress()V
    .locals 2

    .line 775
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartRecoveryAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$1800(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "recovery"

    invoke-interface {p0, v0, v1}, Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;->reboot(ZLjava/lang/String;)V

    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public showDuringKeyguard()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
