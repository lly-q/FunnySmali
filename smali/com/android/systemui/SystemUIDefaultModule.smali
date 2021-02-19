.class abstract Lcom/android/systemui/SystemUIDefaultModule;
.super Ljava/lang/Object;
.source "SystemUIDefaultModule.java"


# direct methods
.method static provideAllowNotificationLongPress()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method static provideLeakReportEmail()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method static provideShadeController(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/ShadeController;
    .locals 1

    .line 76
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p0, v0}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/ShadeController;

    return-object p0
.end method
