.class Lcom/android/systemui/biometrics/FODCircleView$1;
.super Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreenCallback$Stub;
.source "FODCircleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/biometrics/FODCircleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/biometrics/FODCircleView;


# direct methods
.method constructor <init>(Lcom/android/systemui/biometrics/FODCircleView;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/android/systemui/biometrics/FODCircleView$1;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-direct {p0}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreenCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onFingerDown$0$FODCircleView$1()V
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/android/systemui/biometrics/FODCircleView$1;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/FODCircleView;->showCircle()V

    return-void
.end method

.method public synthetic lambda$onFingerUp$1$FODCircleView$1()V
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/systemui/biometrics/FODCircleView$1;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/FODCircleView;->hideCircle()V

    return-void
.end method

.method public onFingerDown()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView$1;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {v0}, Lcom/android/systemui/biometrics/FODCircleView;->access$000(Lcom/android/systemui/biometrics/FODCircleView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/biometrics/-$$Lambda$FODCircleView$1$1oBGPjMhaICSRcOmvD0xjoxGHME;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/-$$Lambda$FODCircleView$1$1oBGPjMhaICSRcOmvD0xjoxGHME;-><init>(Lcom/android/systemui/biometrics/FODCircleView$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onFingerUp()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView$1;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {v0}, Lcom/android/systemui/biometrics/FODCircleView;->access$000(Lcom/android/systemui/biometrics/FODCircleView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/biometrics/-$$Lambda$FODCircleView$1$iAoOWL5UQsadaQ0gQbP5frgRkKM;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/-$$Lambda$FODCircleView$1$iAoOWL5UQsadaQ0gQbP5frgRkKM;-><init>(Lcom/android/systemui/biometrics/FODCircleView$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
