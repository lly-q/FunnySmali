.class final Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;
.super Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;
.source "GlobalActionsDialog.java"

# interfaces
.implements Lcom/android/systemui/globalactions/GlobalActionsDialog$LongPressAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RestartAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;


# direct methods
.method private constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V
    .locals 2

    .line 706
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    const v0, 0x10402c5

    const v1, 0x108051e

    .line 707
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;-><init>(II)V

    .line 708
    invoke-static {p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$2100(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 709
    sget p1, Lcom/android/systemui/R$string;->global_action_restart_system:I

    iput p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;->mMessageResId:I

    goto :goto_0

    .line 710
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$2200(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 711
    iput v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;->mMessageResId:I

    :cond_1
    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$1;)V
    .locals 0

    .line 705
    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    return-void
.end method


# virtual methods
.method public onLongPress()Z
    .locals 2

    .line 717
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$1100(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    const-string v1, "no_safe_boot"

    .line 718
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 719
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$1800(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p0, v1, v0}, Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;->reboot(ZLjava/lang/String;)V

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onPress()V
    .locals 3

    .line 737
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$2100(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$2200(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 738
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$2102(Lcom/android/systemui/globalactions/GlobalActionsDialog;Z)Z

    .line 739
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$2400(Lcom/android/systemui/globalactions/GlobalActionsDialog;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$2302(Lcom/android/systemui/globalactions/GlobalActionsDialog;[Ljava/lang/String;)[Ljava/lang/String;

    .line 740
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$2500(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$2500(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->dismiss()V

    .line 742
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$2502(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    .line 744
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$2600(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x2

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 746
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$2700(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    goto :goto_0

    .line 749
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$2600(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 750
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$2100(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$1100(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/lineageos/internal/util/PowerMenuUtils;->isAdvancedRestartPossible(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 751
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$1800(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;

    move-result-object p0

    invoke-interface {p0, v2, v1}, Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;->reboot(ZLjava/lang/String;)V

    :cond_3
    :goto_0
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
