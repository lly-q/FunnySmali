.class Lcom/android/systemui/globalactions/GlobalActionsDialog$SilentModeToggleAction;
.super Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;
.source "GlobalActionsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SilentModeToggleAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V
    .locals 6

    .line 1559
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SilentModeToggleAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    const v1, 0x1080336

    const v2, 0x1080335

    const v3, 0x10402ca

    const v4, 0x10402c9

    const v5, 0x10402c8

    move-object v0, p0

    .line 1560
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;-><init>(IIIII)V

    return-void
.end method


# virtual methods
.method onToggle(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1569
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SilentModeToggleAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$3500(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/media/AudioManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 1571
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SilentModeToggleAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$3500(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/media/AudioManager;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setRingerMode(I)V

    :goto_0
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public showDuringKeyguard()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
