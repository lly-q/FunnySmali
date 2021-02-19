.class Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;
.super Ljava/lang/Object;
.source "NetworkControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onConfigChanged$0$NetworkControllerImpl$1()V
    .locals 0

    .line 172
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->handleConfigurationChanged()V

    return-void
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 171
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->readConfig(Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$002(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    .line 172
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$200(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/statusbar/policy/-$$Lambda$NetworkControllerImpl$1$01lGAVJF_U01trPIzR0_SCXgKnc;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/-$$Lambda$NetworkControllerImpl$1$01lGAVJF_U01trPIzR0_SCXgKnc;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
