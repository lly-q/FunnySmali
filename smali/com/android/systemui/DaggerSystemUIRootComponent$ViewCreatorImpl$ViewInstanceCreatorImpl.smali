.class final Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;
.super Ljava/lang/Object;
.source "DaggerSystemUIRootComponent.java"

# interfaces
.implements Lcom/android/systemui/util/InjectionInflationController$ViewInstanceCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ViewInstanceCreatorImpl"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

.field private viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;


# direct methods
.method private constructor <init>(Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)V
    .locals 0

    .line 1778
    iput-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1779
    invoke-direct {p0, p2}, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->initialize(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;Lcom/android/systemui/DaggerSystemUIRootComponent$1;)V
    .locals 0

    .line 1773
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;-><init>(Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)V

    return-void
.end method

.method private initialize(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)V
    .locals 0

    .line 1785
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    iput-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    return-void
.end method


# virtual methods
.method public creatNotificationShelf()Lcom/android/systemui/statusbar/NotificationShelf;
    .locals 3

    .line 1860
    new-instance v0, Lcom/android/systemui/statusbar/NotificationShelf;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 1862
    invoke-static {v1}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideContextFactory;->proxyProvideContext(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 1864
    invoke-static {v2}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;->proxyProvideAttributeSet(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/util/AttributeSet;

    move-result-object v2

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1865
    invoke-static {p0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$11100(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/systemui/statusbar/NotificationShelf;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;)V

    return-object v0
.end method

.method public createKeyguardClockSwitch()Lcom/android/keyguard/KeyguardClockSwitch;
    .locals 7

    .line 1870
    new-instance v6, Lcom/android/keyguard/KeyguardClockSwitch;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 1872
    invoke-static {v0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideContextFactory;->proxyProvideContext(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 1874
    invoke-static {v0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;->proxyProvideAttributeSet(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/util/AttributeSet;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1875
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$6800(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1876
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$4800(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1877
    invoke-static {p0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$9800(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lcom/android/keyguard/clock/ClockManager;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/KeyguardClockSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/colorextraction/SysuiColorExtractor;Lcom/android/keyguard/clock/ClockManager;)V

    return-object v6
.end method

.method public createKeyguardMessageArea()Lcom/android/keyguard/KeyguardMessageArea;
    .locals 3

    .line 1893
    new-instance v0, Lcom/android/keyguard/KeyguardMessageArea;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 1895
    invoke-static {v1}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideContextFactory;->proxyProvideContext(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 1897
    invoke-static {v2}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;->proxyProvideAttributeSet(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/util/AttributeSet;

    move-result-object v2

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1898
    invoke-static {p0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$3700(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/keyguard/KeyguardMessageArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V

    return-object v0
.end method

.method public createKeyguardSliceView()Lcom/android/keyguard/KeyguardSliceView;
    .locals 4

    .line 1882
    new-instance v0, Lcom/android/keyguard/KeyguardSliceView;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 1884
    invoke-static {v1}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideContextFactory;->proxyProvideContext(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 1886
    invoke-static {v2}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;->proxyProvideAttributeSet(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/util/AttributeSet;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v3, v3, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1887
    invoke-static {v3}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$800(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v3

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/plugins/ActivityStarter;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1888
    invoke-static {p0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$3700(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/keyguard/KeyguardSliceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V

    return-object v0
.end method

.method public createLockIcon()Lcom/android/systemui/statusbar/phone/LockIcon;
    .locals 12

    .line 1903
    new-instance v11, Lcom/android/systemui/statusbar/phone/LockIcon;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 1905
    invoke-static {v0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideContextFactory;->proxyProvideContext(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 1907
    invoke-static {v0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;->proxyProvideAttributeSet(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/util/AttributeSet;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1908
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$6800(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1909
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$3700(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1910
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$2600(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/statusbar/policy/AccessibilityController;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1911
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$11100(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1912
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$11000(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1913
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$2000(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1914
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$10400(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/systemui/dock/DockManager;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1915
    invoke-static {p0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$11200(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v10, p0

    check-cast v10, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/statusbar/phone/LockIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/policy/AccessibilityController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)V

    return-object v11
.end method

.method public createNotificationStackScrollLayout()Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;
    .locals 13

    .line 1816
    new-instance v12, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 1818
    invoke-static {v0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideContextFactory;->proxyProvideContext(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 1820
    invoke-static {v0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;->proxyProvideAttributeSet(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/util/AttributeSet;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1821
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$11600(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1822
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$12000(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1823
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$11300(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1824
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$3700(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1825
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$800(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/systemui/plugins/ActivityStarter;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1826
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$6800(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1827
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$11200(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1828
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$11100(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1829
    invoke-static {p0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$10700(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v11, p0

    check-cast v11, Lcom/android/systemui/plugins/FalsingManager;

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ZLcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/plugins/FalsingManager;)V

    return-object v12
.end method

.method public createPanelView()Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .locals 10

    .line 1834
    new-instance v9, Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 1836
    invoke-static {v0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideContextFactory;->proxyProvideContext(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 1838
    invoke-static {v0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;->proxyProvideAttributeSet(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/util/AttributeSet;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1839
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$10800(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/util/InjectionInflationController;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1840
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$11000(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1841
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$10900(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/statusbar/PulseExpansionHandler;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1842
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$11300(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1843
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$11100(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1844
    invoke-static {p0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$10700(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v8, p0

    check-cast v8, Lcom/android/systemui/plugins/FalsingManager;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/util/InjectionInflationController;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/PulseExpansionHandler;Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/plugins/FalsingManager;)V

    return-object v9
.end method

.method public createQSCarrierGroup()Lcom/android/systemui/qs/QSCarrierGroup;
    .locals 4

    .line 1849
    new-instance v0, Lcom/android/systemui/qs/QSCarrierGroup;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 1851
    invoke-static {v1}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideContextFactory;->proxyProvideContext(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 1853
    invoke-static {v2}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;->proxyProvideAttributeSet(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/util/AttributeSet;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v3, v3, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1854
    invoke-static {v3}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$1300(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v3

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1855
    invoke-static {p0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$800(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/systemui/qs/QSCarrierGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/plugins/ActivityStarter;)V

    return-object v0
.end method

.method public createQSCustomizer()Lcom/android/systemui/qs/customize/QSCustomizer;
    .locals 7

    .line 1940
    new-instance v6, Lcom/android/systemui/qs/customize/QSCustomizer;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1942
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$11700(Lcom/android/systemui/DaggerSystemUIRootComponent;)Lcom/android/systemui/SystemUIFactory$ContextHolder;

    move-result-object v0

    .line 1941
    invoke-static {v0}, Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;->proxyProvideContext(Lcom/android/systemui/SystemUIFactory$ContextHolder;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 1944
    invoke-static {v0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;->proxyProvideAttributeSet(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/util/AttributeSet;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1945
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$5300(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/statusbar/phone/LightBarController;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1946
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$2000(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1947
    invoke-static {p0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$3900(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lcom/android/systemui/keyguard/ScreenLifecycle;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/qs/customize/QSCustomizer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/statusbar/phone/LightBarController;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;Lcom/android/systemui/keyguard/ScreenLifecycle;)V

    return-object v6
.end method

.method public createQSPanel()Lcom/android/systemui/qs/QSPanel;
    .locals 3

    .line 1920
    new-instance v0, Lcom/android/systemui/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 1922
    invoke-static {v1}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideContextFactory;->proxyProvideContext(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 1924
    invoke-static {v2}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;->proxyProvideAttributeSet(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/util/AttributeSet;

    move-result-object v2

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1925
    invoke-static {p0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$10300(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/DumpController;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/systemui/qs/QSPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/DumpController;)V

    return-object v0
.end method

.method public createQsFooter()Lcom/android/systemui/qs/QSFooterImpl;
    .locals 7

    .line 1804
    new-instance v6, Lcom/android/systemui/qs/QSFooterImpl;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 1806
    invoke-static {v0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideContextFactory;->proxyProvideContext(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 1808
    invoke-static {v0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;->proxyProvideAttributeSet(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/util/AttributeSet;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1809
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$800(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/plugins/ActivityStarter;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1810
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$1900(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/statusbar/policy/UserInfoController;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1811
    invoke-static {p0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$2700(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/qs/QSFooterImpl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/policy/UserInfoController;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;)V

    return-object v6
.end method

.method public createQsHeader()Lcom/android/systemui/qs/QuickStatusBarHeader;
    .locals 9

    .line 1790
    new-instance v8, Lcom/android/systemui/qs/QuickStatusBarHeader;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 1792
    invoke-static {v0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideContextFactory;->proxyProvideContext(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 1794
    invoke-static {v0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;->proxyProvideAttributeSet(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/util/AttributeSet;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1795
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$2400(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/statusbar/policy/NextAlarmController;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1796
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$1400(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1797
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$3800(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1798
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$800(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/plugins/ActivityStarter;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1799
    invoke-static {p0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$9200(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Lcom/android/systemui/privacy/PrivacyItemController;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/qs/QuickStatusBarHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/statusbar/policy/NextAlarmController;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/statusbar/phone/StatusBarIconController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/privacy/PrivacyItemController;)V

    return-object v8
.end method

.method public createQuickQSPanel()Lcom/android/systemui/qs/QuickQSPanel;
    .locals 3

    .line 1930
    new-instance v0, Lcom/android/systemui/qs/QuickQSPanel;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 1932
    invoke-static {v1}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideContextFactory;->proxyProvideContext(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 1934
    invoke-static {v2}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;->proxyProvideAttributeSet(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/util/AttributeSet;

    move-result-object v2

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1935
    invoke-static {p0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$10300(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/DumpController;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/systemui/qs/QuickQSPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/DumpController;)V

    return-object v0
.end method
