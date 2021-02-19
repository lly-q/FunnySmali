.class Lcom/android/systemui/biometrics/FODCircleView$BurnInProtectionTask;
.super Ljava/util/TimerTask;
.source "FODCircleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/biometrics/FODCircleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BurnInProtectionTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/biometrics/FODCircleView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/biometrics/FODCircleView;)V
    .locals 0

    .line 444
    iput-object p1, p0, Lcom/android/systemui/biometrics/FODCircleView$BurnInProtectionTask;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/biometrics/FODCircleView;Lcom/android/systemui/biometrics/FODCircleView$1;)V
    .locals 0

    .line 444
    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/FODCircleView$BurnInProtectionTask;-><init>(Lcom/android/systemui/biometrics/FODCircleView;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$run$0$FODCircleView$BurnInProtectionTask()V
    .locals 0

    .line 463
    iget-object p0, p0, Lcom/android/systemui/biometrics/FODCircleView$BurnInProtectionTask;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {p0}, Lcom/android/systemui/biometrics/FODCircleView;->access$1400(Lcom/android/systemui/biometrics/FODCircleView;)V

    return-void
.end method

.method public run()V
    .locals 5

    .line 447
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    .line 449
    iget-object v2, p0, Lcom/android/systemui/biometrics/FODCircleView$BurnInProtectionTask;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {v2}, Lcom/android/systemui/biometrics/FODCircleView;->access$1200(Lcom/android/systemui/biometrics/FODCircleView;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    int-to-long v3, v3

    rem-long v3, v0, v3

    long-to-int v3, v3

    invoke-static {v2, v3}, Lcom/android/systemui/biometrics/FODCircleView;->access$1102(Lcom/android/systemui/biometrics/FODCircleView;I)I

    .line 450
    iget-object v2, p0, Lcom/android/systemui/biometrics/FODCircleView$BurnInProtectionTask;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {v2}, Lcom/android/systemui/biometrics/FODCircleView;->access$1100(Lcom/android/systemui/biometrics/FODCircleView;)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/biometrics/FODCircleView$BurnInProtectionTask;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {v3}, Lcom/android/systemui/biometrics/FODCircleView;->access$1200(Lcom/android/systemui/biometrics/FODCircleView;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    if-le v2, v3, :cond_0

    .line 451
    iget-object v2, p0, Lcom/android/systemui/biometrics/FODCircleView$BurnInProtectionTask;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {v2}, Lcom/android/systemui/biometrics/FODCircleView;->access$1200(Lcom/android/systemui/biometrics/FODCircleView;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    iget-object v4, p0, Lcom/android/systemui/biometrics/FODCircleView$BurnInProtectionTask;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {v4}, Lcom/android/systemui/biometrics/FODCircleView;->access$1100(Lcom/android/systemui/biometrics/FODCircleView;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Lcom/android/systemui/biometrics/FODCircleView;->access$1102(Lcom/android/systemui/biometrics/FODCircleView;I)I

    .line 455
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/biometrics/FODCircleView$BurnInProtectionTask;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {v2}, Lcom/android/systemui/biometrics/FODCircleView;->access$1200(Lcom/android/systemui/biometrics/FODCircleView;)I

    move-result v3

    div-int/lit8 v3, v3, 0x3

    int-to-long v3, v3

    add-long/2addr v0, v3

    iget-object v3, p0, Lcom/android/systemui/biometrics/FODCircleView$BurnInProtectionTask;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {v3}, Lcom/android/systemui/biometrics/FODCircleView;->access$1200(Lcom/android/systemui/biometrics/FODCircleView;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    int-to-long v3, v3

    rem-long/2addr v0, v3

    long-to-int v0, v0

    invoke-static {v2, v0}, Lcom/android/systemui/biometrics/FODCircleView;->access$1302(Lcom/android/systemui/biometrics/FODCircleView;I)I

    .line 456
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView$BurnInProtectionTask;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {v0}, Lcom/android/systemui/biometrics/FODCircleView;->access$1300(Lcom/android/systemui/biometrics/FODCircleView;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/biometrics/FODCircleView$BurnInProtectionTask;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {v1}, Lcom/android/systemui/biometrics/FODCircleView;->access$1200(Lcom/android/systemui/biometrics/FODCircleView;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_1

    .line 457
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView$BurnInProtectionTask;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {v0}, Lcom/android/systemui/biometrics/FODCircleView;->access$1200(Lcom/android/systemui/biometrics/FODCircleView;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lcom/android/systemui/biometrics/FODCircleView$BurnInProtectionTask;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {v2}, Lcom/android/systemui/biometrics/FODCircleView;->access$1300(Lcom/android/systemui/biometrics/FODCircleView;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/systemui/biometrics/FODCircleView;->access$1302(Lcom/android/systemui/biometrics/FODCircleView;I)I

    .line 460
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView$BurnInProtectionTask;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {v0}, Lcom/android/systemui/biometrics/FODCircleView;->access$1200(Lcom/android/systemui/biometrics/FODCircleView;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/biometrics/FODCircleView;->access$1120(Lcom/android/systemui/biometrics/FODCircleView;I)I

    .line 461
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView$BurnInProtectionTask;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {v0}, Lcom/android/systemui/biometrics/FODCircleView;->access$1200(Lcom/android/systemui/biometrics/FODCircleView;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/biometrics/FODCircleView;->access$1320(Lcom/android/systemui/biometrics/FODCircleView;I)I

    .line 463
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView$BurnInProtectionTask;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {v0}, Lcom/android/systemui/biometrics/FODCircleView;->access$000(Lcom/android/systemui/biometrics/FODCircleView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/biometrics/-$$Lambda$FODCircleView$BurnInProtectionTask$rB8mibInJWwZux8jWz0AMc_9e5Y;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/-$$Lambda$FODCircleView$BurnInProtectionTask$rB8mibInJWwZux8jWz0AMc_9e5Y;-><init>(Lcom/android/systemui/biometrics/FODCircleView$BurnInProtectionTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
