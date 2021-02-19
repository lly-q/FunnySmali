.class Lcom/android/systemui/volume/VolumeDialogImpl$1;
.super Ljava/lang/Object;
.source "VolumeDialogImpl.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V
    .locals 0

    .line 416
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onTuningChanged$0$VolumeDialogImpl$1()V
    .locals 1

    .line 425
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$402(Lcom/android/systemui/volume/VolumeDialogImpl;Z)Z

    return-void
.end method

.method public synthetic lambda$onTuningChanged$1$VolumeDialogImpl$1()V
    .locals 1

    .line 434
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$402(Lcom/android/systemui/volume/VolumeDialogImpl;Z)Z

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "lineagesecure:volume_panel_on_left"

    .line 419
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 420
    invoke-static {p2, v1}, Lcom/android/systemui/tuner/TunerService;->parseIntegerSwitch(Ljava/lang/String;Z)Z

    move-result p1

    .line 421
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {p2}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$100(Lcom/android/systemui/volume/VolumeDialogImpl;)Z

    move-result p2

    if-eq p2, p1, :cond_1

    .line 422
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {p2, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$102(Lcom/android/systemui/volume/VolumeDialogImpl;Z)Z

    .line 423
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$200(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/volume/VolumeDialogImpl$H;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$1$8BjUZbJp-lWJSJuO3sqH4VCQu2M;

    invoke-direct {p2, p0}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$1$8BjUZbJp-lWJSJuO3sqH4VCQu2M;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const-string v0, "system:show_app_volume"

    .line 428
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 429
    invoke-static {p2, v1}, Lcom/android/systemui/tuner/TunerService;->parseIntegerSwitch(Ljava/lang/String;Z)Z

    move-result p1

    .line 430
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {p2}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl;)Z

    move-result p2

    if-eq p2, p1, :cond_1

    .line 431
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {p2, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$302(Lcom/android/systemui/volume/VolumeDialogImpl;Z)Z

    .line 432
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$200(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/volume/VolumeDialogImpl$H;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$1$TLWX5Z1xQc3I5XooUOH0WDh_vf4;

    invoke-direct {p2, p0}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$1$TLWX5Z1xQc3I5XooUOH0WDh_vf4;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method
