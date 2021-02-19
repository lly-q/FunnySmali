.class public interface abstract Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
.super Ljava/lang/Object;
.source "KeyguardMonitor.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/statusbar/policy/CallbackController<",
        "Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract calculateGoingToFullShadeDelay()J
.end method

.method public abstract getKeyguardFadingAwayDelay()J
.end method

.method public abstract getKeyguardFadingAwayDuration()J
.end method

.method public getShortenedFadingAwayDuration()J
    .locals 4

    .line 37
    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isBypassFadingAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->getKeyguardFadingAwayDuration()J

    move-result-wide v0

    return-wide v0

    .line 40
    :cond_0
    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->getKeyguardFadingAwayDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public isBypassFadingAnimation()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isDeviceInteractive()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract isKeyguardFadingAway()Z
.end method

.method public abstract isKeyguardGoingAway()Z
.end method

.method public abstract isLaunchTransitionFadingAway()Z
.end method

.method public abstract isOccluded()Z
.end method

.method public abstract isSecure()Z
.end method

.method public abstract isShowing()Z
.end method

.method public notifyKeyguardDoneFading()V
    .locals 0

    return-void
.end method

.method public notifyKeyguardFadingAway(JJZ)V
    .locals 0

    return-void
.end method

.method public notifyKeyguardGoingAway(Z)V
    .locals 0

    return-void
.end method

.method public notifyKeyguardState(ZZZ)V
    .locals 0

    return-void
.end method

.method public setLaunchTransitionFadingAway(Z)V
    .locals 0

    return-void
.end method
