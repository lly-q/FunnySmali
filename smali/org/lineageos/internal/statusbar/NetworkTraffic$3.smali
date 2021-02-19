.class Lorg/lineageos/internal/statusbar/NetworkTraffic$3;
.super Landroid/os/Handler;
.source "NetworkTraffic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lineageos/internal/statusbar/NetworkTraffic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;


# direct methods
.method constructor <init>(Lorg/lineageos/internal/statusbar/NetworkTraffic;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic$3;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private displayStatsAndReschedule()V
    .locals 9

    .line 267
    iget-object v0, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic$3;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    invoke-static {v0}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->access$1400(Lorg/lineageos/internal/statusbar/NetworkTraffic;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic$3;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    invoke-static {v0}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->access$1500(Lorg/lineageos/internal/statusbar/NetworkTraffic;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 268
    :goto_0
    iget-object v3, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic$3;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    .line 269
    invoke-static {v3}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->access$1400(Lorg/lineageos/internal/statusbar/NetworkTraffic;)I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v1, :cond_2

    iget-object v3, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic$3;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    invoke-static {v3}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->access$1400(Lorg/lineageos/internal/statusbar/NetworkTraffic;)I

    move-result v3

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    move v3, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v3, v1

    .line 270
    :goto_2
    iget-object v5, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic$3;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    .line 271
    invoke-static {v5}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->access$1400(Lorg/lineageos/internal/statusbar/NetworkTraffic;)I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_4

    iget-object v5, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic$3;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    invoke-static {v5}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->access$1400(Lorg/lineageos/internal/statusbar/NetworkTraffic;)I

    move-result v5

    if-ne v5, v4, :cond_3

    goto :goto_3

    :cond_3
    move v4, v2

    goto :goto_4

    :cond_4
    :goto_3
    move v4, v1

    .line 272
    :goto_4
    iget-object v5, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic$3;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    invoke-static {v5}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->access$1600(Lorg/lineageos/internal/statusbar/NetworkTraffic;)Z

    move-result v5

    if-eqz v5, :cond_6

    if-eqz v3, :cond_5

    iget-object v5, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic$3;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    invoke-static {v5}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->access$1200(Lorg/lineageos/internal/statusbar/NetworkTraffic;)J

    move-result-wide v5

    iget-object v7, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic$3;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    invoke-static {v7}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->access$1700(Lorg/lineageos/internal/statusbar/NetworkTraffic;)J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_6

    :cond_5
    if-eqz v4, :cond_7

    iget-object v5, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic$3;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    .line 273
    invoke-static {v5}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->access$1300(Lorg/lineageos/internal/statusbar/NetworkTraffic;)J

    move-result-wide v5

    iget-object v7, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic$3;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    invoke-static {v7}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->access$1700(Lorg/lineageos/internal/statusbar/NetworkTraffic;)J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_6

    goto :goto_5

    :cond_6
    move v1, v2

    :cond_7
    :goto_5
    if-eqz v0, :cond_d

    if-eqz v1, :cond_8

    goto :goto_7

    .line 280
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v3, :cond_9

    .line 282
    iget-object v5, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic$3;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    invoke-static {v5}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->access$1200(Lorg/lineageos/internal/statusbar/NetworkTraffic;)J

    move-result-wide v5

    invoke-direct {p0, v5, v6}, Lorg/lineageos/internal/statusbar/NetworkTraffic$3;->formatOutput(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    if-eqz v3, :cond_a

    if-eqz v4, :cond_a

    const-string v3, "\n"

    .line 288
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    iget-object v3, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic$3;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    invoke-static {v3}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->access$1800(Lorg/lineageos/internal/statusbar/NetworkTraffic;)I

    move-result v3

    goto :goto_6

    .line 291
    :cond_a
    iget-object v3, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic$3;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    invoke-static {v3}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->access$1900(Lorg/lineageos/internal/statusbar/NetworkTraffic;)I

    move-result v3

    :goto_6
    if-eqz v4, :cond_b

    .line 296
    iget-object v4, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic$3;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    invoke-static {v4}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->access$1300(Lorg/lineageos/internal/statusbar/NetworkTraffic;)J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lorg/lineageos/internal/statusbar/NetworkTraffic$3;->formatOutput(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    :cond_b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic$3;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 301
    iget-object v4, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic$3;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    int-to-float v3, v3

    invoke-virtual {v4, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 302
    iget-object v3, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic$3;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    :cond_c
    iget-object v1, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic$3;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_8

    .line 276
    :cond_d
    :goto_7
    iget-object v1, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic$3;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v1, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic$3;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 308
    :goto_8
    iget-object v1, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic$3;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    invoke-static {v1}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->access$2000(Lorg/lineageos/internal/statusbar/NetworkTraffic;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz v0, :cond_e

    .line 309
    iget-object v0, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic$3;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    invoke-static {v0}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->access$400(Lorg/lineageos/internal/statusbar/NetworkTraffic;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 310
    iget-object p0, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic$3;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    invoke-static {p0}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->access$2000(Lorg/lineageos/internal/statusbar/NetworkTraffic;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_e
    return-void
.end method

.method private formatOutput(J)Ljava/lang/String;
    .locals 6

    .line 318
    iget-object v0, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic$3;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    invoke-static {v0}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->access$2100(Lorg/lineageos/internal/statusbar/NetworkTraffic;)I

    move-result v0

    const-string v1, "%d"

    const-string v2, "unknown"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v4, :cond_2

    const/4 v5, 0x2

    if-eq v0, v5, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    move-object p1, v2

    goto :goto_0

    :cond_0
    new-array v0, v4, [Ljava/lang/Object;

    long-to-float p1, p1

    const/high16 p2, 0x45fa0000    # 8000.0f

    div-float/2addr p1, p2

    .line 332
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v0, v3

    const-string p1, "%.2f"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 333
    iget-object p1, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic$3;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    invoke-static {p1}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->access$2500(Lorg/lineageos/internal/statusbar/NetworkTraffic;)Landroid/content/Context;

    move-result-object p1

    const p2, 0x3f090021

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-array v0, v4, [Ljava/lang/Object;

    const-wide/16 v4, 0x8

    .line 328
    div-long/2addr p1, v4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 329
    iget-object p1, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic$3;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    invoke-static {p1}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->access$2400(Lorg/lineageos/internal/statusbar/NetworkTraffic;)Landroid/content/Context;

    move-result-object p1

    const p2, 0x3f09000e

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    new-array v0, v4, [Ljava/lang/Object;

    long-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    .line 324
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v0, v3

    const-string p1, "%.1f"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 325
    iget-object p1, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic$3;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    invoke-static {p1}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->access$2300(Lorg/lineageos/internal/statusbar/NetworkTraffic;)Landroid/content/Context;

    move-result-object p1

    const p2, 0x3f090020

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    new-array v0, v4, [Ljava/lang/Object;

    .line 320
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 321
    iget-object p1, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic$3;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    invoke-static {p1}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->access$2200(Lorg/lineageos/internal/statusbar/NetworkTraffic;)Landroid/content/Context;

    move-result-object p1

    const p2, 0x3f09000d

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 341
    :goto_0
    iget-object p0, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic$3;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    invoke-static {p0}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->access$2600(Lorg/lineageos/internal/statusbar/NetworkTraffic;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 342
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v2
.end method

.method private recalculateStats()V
    .locals 18

    move-object/from16 v0, p0

    .line 214
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 215
    iget-object v3, v0, Lorg/lineageos/internal/statusbar/NetworkTraffic$3;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    invoke-static {v3}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->access$800(Lorg/lineageos/internal/statusbar/NetworkTraffic;)J

    move-result-wide v3

    sub-long v3, v1, v3

    long-to-float v5, v3

    const v6, 0x44ed8000    # 1900.0f

    cmpg-float v6, v5, v6

    if-gez v6, :cond_0

    return-void

    .line 223
    :cond_0
    iget-object v6, v0, Lorg/lineageos/internal/statusbar/NetworkTraffic$3;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    invoke-static {v6}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->access$600(Lorg/lineageos/internal/statusbar/NetworkTraffic;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/LinkProperties;

    .line 224
    invoke-virtual {v13}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_1

    goto :goto_0

    .line 228
    :cond_1
    invoke-static {v13}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v14

    .line 229
    invoke-static {v13}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v16

    add-long/2addr v9, v14

    add-long v11, v11, v16

    goto :goto_0

    .line 240
    :cond_2
    iget-object v6, v0, Lorg/lineageos/internal/statusbar/NetworkTraffic$3;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    invoke-static {v6}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->access$900(Lorg/lineageos/internal/statusbar/NetworkTraffic;)Lorg/lineageos/internal/statusbar/NetworkTraffic$TetheringStats;

    move-result-object v6

    .line 241
    iget-wide v13, v6, Lorg/lineageos/internal/statusbar/NetworkTraffic$TetheringStats;->txBytes:J

    add-long/2addr v9, v13

    .line 242
    iget-wide v13, v6, Lorg/lineageos/internal/statusbar/NetworkTraffic$TetheringStats;->rxBytes:J

    add-long/2addr v11, v13

    .line 250
    iget-object v6, v0, Lorg/lineageos/internal/statusbar/NetworkTraffic$3;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    invoke-static {v6}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->access$1000(Lorg/lineageos/internal/statusbar/NetworkTraffic;)J

    move-result-wide v13

    sub-long v13, v9, v13

    .line 251
    iget-object v6, v0, Lorg/lineageos/internal/statusbar/NetworkTraffic$3;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    invoke-static {v6}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->access$1100(Lorg/lineageos/internal/statusbar/NetworkTraffic;)J

    move-result-wide v15

    sub-long v7, v11, v15

    .line 253
    iget-object v6, v0, Lorg/lineageos/internal/statusbar/NetworkTraffic$3;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    invoke-static {v6}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->access$700(Lorg/lineageos/internal/statusbar/NetworkTraffic;)Z

    move-result v6

    if-nez v6, :cond_3

    const-wide/16 v15, 0x0

    cmp-long v3, v3, v15

    if-lez v3, :cond_3

    cmp-long v3, v13, v15

    if-ltz v3, :cond_3

    cmp-long v3, v7, v15

    if-ltz v3, :cond_3

    .line 254
    iget-object v3, v0, Lorg/lineageos/internal/statusbar/NetworkTraffic$3;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    long-to-float v4, v13

    const/high16 v6, 0x41000000    # 8.0f

    mul-float/2addr v4, v6

    const/high16 v13, 0x447a0000    # 1000.0f

    div-float/2addr v4, v13

    div-float/2addr v5, v13

    div-float/2addr v4, v5

    float-to-long v14, v4

    invoke-static {v3, v14, v15}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->access$1202(Lorg/lineageos/internal/statusbar/NetworkTraffic;J)J

    .line 255
    iget-object v3, v0, Lorg/lineageos/internal/statusbar/NetworkTraffic$3;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    long-to-float v4, v7

    mul-float/2addr v4, v6

    div-float/2addr v4, v13

    div-float/2addr v4, v5

    float-to-long v4, v4

    invoke-static {v3, v4, v5}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->access$1302(Lorg/lineageos/internal/statusbar/NetworkTraffic;J)J

    goto :goto_1

    .line 256
    :cond_3
    iget-object v3, v0, Lorg/lineageos/internal/statusbar/NetworkTraffic$3;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    invoke-static {v3}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->access$700(Lorg/lineageos/internal/statusbar/NetworkTraffic;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 257
    iget-object v3, v0, Lorg/lineageos/internal/statusbar/NetworkTraffic$3;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->access$1202(Lorg/lineageos/internal/statusbar/NetworkTraffic;J)J

    .line 258
    iget-object v3, v0, Lorg/lineageos/internal/statusbar/NetworkTraffic$3;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    invoke-static {v3, v4, v5}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->access$1302(Lorg/lineageos/internal/statusbar/NetworkTraffic;J)J

    .line 259
    iget-object v3, v0, Lorg/lineageos/internal/statusbar/NetworkTraffic$3;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->access$702(Lorg/lineageos/internal/statusbar/NetworkTraffic;Z)Z

    .line 261
    :cond_4
    :goto_1
    iget-object v3, v0, Lorg/lineageos/internal/statusbar/NetworkTraffic$3;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    invoke-static {v3, v9, v10}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->access$1002(Lorg/lineageos/internal/statusbar/NetworkTraffic;J)J

    .line 262
    iget-object v3, v0, Lorg/lineageos/internal/statusbar/NetworkTraffic$3;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    invoke-static {v3, v11, v12}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->access$1102(Lorg/lineageos/internal/statusbar/NetworkTraffic;J)J

    .line 263
    iget-object v0, v0, Lorg/lineageos/internal/statusbar/NetworkTraffic$3;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    invoke-static {v0, v1, v2}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->access$802(Lorg/lineageos/internal/statusbar/NetworkTraffic;J)J

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 190
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 207
    :cond_0
    iget-object v0, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic$3;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    invoke-static {v0}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->access$600(Lorg/lineageos/internal/statusbar/NetworkTraffic;)Ljava/util/HashMap;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/Network;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    iget-object p0, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic$3;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    invoke-static {p0, v1}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->access$702(Lorg/lineageos/internal/statusbar/NetworkTraffic;Z)Z

    goto :goto_0

    .line 201
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/lineageos/internal/statusbar/NetworkTraffic$LinkPropertiesHolder;

    .line 202
    iget-object v0, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic$3;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    invoke-static {v0}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->access$600(Lorg/lineageos/internal/statusbar/NetworkTraffic;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Lorg/lineageos/internal/statusbar/NetworkTraffic$LinkPropertiesHolder;->getNetwork()Landroid/net/Network;

    move-result-object v2

    invoke-virtual {p1}, Lorg/lineageos/internal/statusbar/NetworkTraffic$LinkPropertiesHolder;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    iget-object p0, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic$3;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    invoke-static {p0, v1}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->access$702(Lorg/lineageos/internal/statusbar/NetworkTraffic;Z)Z

    goto :goto_0

    .line 197
    :cond_2
    invoke-direct {p0}, Lorg/lineageos/internal/statusbar/NetworkTraffic$3;->displayStatsAndReschedule()V

    goto :goto_0

    .line 192
    :cond_3
    invoke-direct {p0}, Lorg/lineageos/internal/statusbar/NetworkTraffic$3;->recalculateStats()V

    .line 193
    invoke-direct {p0}, Lorg/lineageos/internal/statusbar/NetworkTraffic$3;->displayStatsAndReschedule()V

    :goto_0
    return-void
.end method
