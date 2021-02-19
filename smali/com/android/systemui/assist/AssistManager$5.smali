.class Lcom/android/systemui/assist/AssistManager$5;
.super Lcom/android/internal/app/IVoiceInteractionSessionListener$Stub;
.source "AssistManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/assist/AssistManager;->registerVoiceInteractionSessionListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/assist/AssistManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/assist/AssistManager;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/android/systemui/assist/AssistManager$5;->this$0:Lcom/android/systemui/assist/AssistManager;

    invoke-direct {p0}, Lcom/android/internal/app/IVoiceInteractionSessionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onSetUiHints(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "action"

    .line 256
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "show_assist_handles"

    .line 257
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager$5;->this$0:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistManager;->requestAssistHandles()V

    goto :goto_0

    :cond_0
    const-string v1, "set_assist_gesture_constrained"

    .line 259
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager$5;->this$0:Lcom/android/systemui/assist/AssistManager;

    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    const/16 v0, 0x1000

    const/4 v1, 0x0

    const-string v2, "should_constrain"

    .line 262
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 260
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/systemui/recents/OverviewProxyService;->setSystemUiStateFlag(IZI)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onVoiceSessionHidden()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onVoiceSessionShown()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
