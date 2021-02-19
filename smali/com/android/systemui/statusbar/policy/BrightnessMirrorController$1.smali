.class Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$1;
.super Ljava/lang/Object;
.source "BrightnessMirrorController.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$1;->this$0:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "lineagesecure:qs_show_auto_brightness"

    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 61
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$1;->this$0:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/android/systemui/tuner/TunerService;->parseIntegerSwitch(Ljava/lang/String;Z)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->access$002(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;Z)Z

    .line 62
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$1;->this$0:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->access$100(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V

    :cond_0
    return-void
.end method
