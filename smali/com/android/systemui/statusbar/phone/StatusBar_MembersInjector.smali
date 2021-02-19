.class public final Lcom/android/systemui/statusbar/phone/StatusBar_MembersInjector;
.super Ljava/lang/Object;
.source "StatusBar_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/android/systemui/statusbar/phone/StatusBar;",
        ">;"
    }
.end annotation


# direct methods
.method public static injectMAllowNotificationLongPress(Lcom/android/systemui/statusbar/phone/StatusBar;Z)V
    .locals 0

    .line 129
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAllowNotificationLongPress:Z

    return-void
.end method

.method public static injectMBypassHeadsUpNotifier(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBypassHeadsUpNotifier:Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;

    return-void
.end method

.method public static injectMDynamicPrivacyController(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDynamicPrivacyController:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    return-void
.end method

.method public static injectMHeadsUpManager(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    return-void
.end method

.method public static injectMInjectionInflater(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/util/InjectionInflationController;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mInjectionInflater:Lcom/android/systemui/util/InjectionInflationController;

    return-void
.end method

.method public static injectMKeyguardBypassController(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    return-void
.end method

.method public static injectMKeyguardLiftController(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/KeyguardLiftController;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardLiftController:Lcom/android/systemui/statusbar/phone/KeyguardLiftController;

    return-void
.end method

.method public static injectMPulseExpansionHandler(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/PulseExpansionHandler;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    return-void
.end method

.method public static injectMWakeUpCoordinator(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    return-void
.end method
