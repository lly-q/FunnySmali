.class public Lcom/android/systemui/statusbar/phone/ClockController;
.super Ljava/lang/Object;
.source "ClockController.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# instance fields
.field private mActiveClock:Lcom/android/systemui/statusbar/policy/Clock;

.field private mBlackListed:Z

.field private mCenterClock:Lcom/android/systemui/statusbar/policy/Clock;

.field private mClockPosition:I

.field private mLeftClock:Lcom/android/systemui/statusbar/policy/Clock;

.field private mRightClock:Lcom/android/systemui/statusbar/policy/Clock;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 40
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mClockPosition:I

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mBlackListed:Z

    .line 44
    sget v0, Lcom/android/systemui/R$id;->clock_center:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/Clock;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mCenterClock:Lcom/android/systemui/statusbar/policy/Clock;

    .line 45
    sget v0, Lcom/android/systemui/R$id;->clock:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/Clock;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mLeftClock:Lcom/android/systemui/statusbar/policy/Clock;

    .line 46
    sget v0, Lcom/android/systemui/R$id;->clock_right:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/Clock;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mRightClock:Lcom/android/systemui/statusbar/policy/Clock;

    .line 48
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mLeftClock:Lcom/android/systemui/statusbar/policy/Clock;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mActiveClock:Lcom/android/systemui/statusbar/policy/Clock;

    .line 50
    const-class p1, Lcom/android/systemui/tuner/TunerService;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/tuner/TunerService;

    const-string v0, "icon_blacklist"

    const-string v1, "lineagesystem:status_bar_clock"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    return-void
.end method

.method private updateActiveClock()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mActiveClock:Lcom/android/systemui/statusbar/policy/Clock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/Clock;->setClockVisibleByUser(Z)V

    .line 68
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ClockController;->getClock()Lcom/android/systemui/statusbar/policy/Clock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mActiveClock:Lcom/android/systemui/statusbar/policy/Clock;

    .line 69
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mActiveClock:Lcom/android/systemui/statusbar/policy/Clock;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/Clock;->setClockVisibleByUser(Z)V

    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mActiveClock:Lcom/android/systemui/statusbar/policy/Clock;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mBlackListed:Z

    xor-int/2addr p0, v1

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/Clock;->setClockVisibleByUser(Z)V

    return-void
.end method


# virtual methods
.method public getClock()Lcom/android/systemui/statusbar/policy/Clock;
    .locals 2

    .line 55
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mClockPosition:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 62
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mLeftClock:Lcom/android/systemui/statusbar/policy/Clock;

    return-object p0

    .line 59
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mCenterClock:Lcom/android/systemui/statusbar/policy/Clock;

    return-object p0

    .line 57
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mRightClock:Lcom/android/systemui/statusbar/policy/Clock;

    return-object p0
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTuningChanged key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ClockController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "lineagesystem:status_bar_clock"

    .line 79
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 81
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mClockPosition:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x2

    .line 83
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mClockPosition:I

    goto :goto_0

    .line 86
    :cond_0
    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getIconBlacklist(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object p1

    const-string p2, "clock"

    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mBlackListed:Z

    .line 88
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ClockController;->updateActiveClock()V

    return-void
.end method
