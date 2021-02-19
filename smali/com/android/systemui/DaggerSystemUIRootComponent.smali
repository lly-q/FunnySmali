.class public final Lcom/android/systemui/DaggerSystemUIRootComponent;
.super Ljava/lang/Object;
.source "DaggerSystemUIRootComponent.java"

# interfaces
.implements Lcom/android/systemui/SystemUIRootComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;,
        Lcom/android/systemui/DaggerSystemUIRootComponent$FragmentCreatorImpl;,
        Lcom/android/systemui/DaggerSystemUIRootComponent$StatusBarInjectorImpl;,
        Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;,
        Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;
    }
.end annotation


# instance fields
.field private aODTileProvider:Lcom/android/systemui/qs/tiles/AODTile_Factory;

.field private accessibilityControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/AccessibilityController;",
            ">;"
        }
    .end annotation
.end field

.field private accessibilityManagerWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private activityStarterDelegateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/ActivityStarterDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private adbOverNetworkTileProvider:Lcom/android/systemui/qs/tiles/AdbOverNetworkTile_Factory;

.field private airplaneModeTileProvider:Lcom/android/systemui/qs/tiles/AirplaneModeTile_Factory;

.field private ambientDisplayTileProvider:Lcom/android/systemui/qs/tiles/AmbientDisplayTile_Factory;

.field private appOpsControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/appops/AppOpsControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private assistHandleBehaviorControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/AssistHandleBehaviorController;",
            ">;"
        }
    .end annotation
.end field

.field private assistHandleLikeHomeBehaviorProvider:Ljavax/inject/Provider;

.field private assistHandleOffBehaviorProvider:Ljavax/inject/Provider;

.field private assistHandleReminderExpBehaviorProvider:Ljavax/inject/Provider;

.field private assistManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/AssistManager;",
            ">;"
        }
    .end annotation
.end field

.field private asyncSensorManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/AsyncSensorManager;",
            ">;"
        }
    .end annotation
.end field

.field private autoAddTrackerProvider:Lcom/android/systemui/qs/AutoAddTracker_Factory;

.field private autoTileManagerProvider:Lcom/android/systemui/statusbar/phone/AutoTileManager_Factory;

.field private batteryControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private batterySaverTileProvider:Lcom/android/systemui/qs/tiles/BatterySaverTile_Factory;

.field private bluetoothControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private bluetoothTileProvider:Lcom/android/systemui/qs/tiles/BluetoothTile_Factory;

.field private bubbleControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/bubbles/BubbleController;",
            ">;"
        }
    .end annotation
.end field

.field private bubbleDataProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/bubbles/BubbleData;",
            ">;"
        }
    .end annotation
.end field

.field private bypassHeadsUpNotifierProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;",
            ">;"
        }
    .end annotation
.end field

.field private caffeineTileProvider:Lcom/android/systemui/qs/tiles/CaffeineTile_Factory;

.field private castControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/CastControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private castTileProvider:Lcom/android/systemui/qs/tiles/CastTile_Factory;

.field private cellularTileProvider:Lcom/android/systemui/qs/tiles/CellularTile_Factory;

.field private channelEditorDialogControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;",
            ">;"
        }
    .end annotation
.end field

.field private clockManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/clock/ClockManager;",
            ">;"
        }
    .end annotation
.end field

.field private colorInversionTileProvider:Lcom/android/systemui/qs/tiles/ColorInversionTile_Factory;

.field private contextHolder:Lcom/android/systemui/SystemUIFactory$ContextHolder;

.field private darkIconDispatcherImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;",
            ">;"
        }
    .end annotation
.end field

.field private dataSaverTileProvider:Lcom/android/systemui/qs/tiles/DataSaverTile_Factory;

.field private deviceConfigHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/DeviceConfigHelper;",
            ">;"
        }
    .end annotation
.end field

.field private deviceProvisionedControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private dndTileProvider:Lcom/android/systemui/qs/tiles/DndTile_Factory;

.field private dockManagerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dock/DockManagerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private dumpControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/DumpController;",
            ">;"
        }
    .end annotation
.end field

.field private dynamicPrivacyControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;",
            ">;"
        }
    .end annotation
.end field

.field private enhancedEstimatesImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/power/EnhancedEstimatesImpl;",
            ">;"
        }
    .end annotation
.end field

.field private expansionStateLoggerProvider:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger_ExpansionStateLogger_Factory;

.field private extensionControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private falsingManagerProxyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/classifier/FalsingManagerProxy;",
            ">;"
        }
    .end annotation
.end field

.field private flashlightControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private flashlightTileProvider:Lcom/android/systemui/qs/tiles/FlashlightTile_Factory;

.field private foregroundServiceControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/ForegroundServiceController;",
            ">;"
        }
    .end annotation
.end field

.field private foregroundServiceNotificationListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/ForegroundServiceNotificationListener;",
            ">;"
        }
    .end annotation
.end field

.field private fragmentServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/fragments/FragmentService;",
            ">;"
        }
    .end annotation
.end field

.field private garbageMonitorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/leak/GarbageMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private headsUpManagerPhoneProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;",
            ">;"
        }
    .end annotation
.end field

.field private headsUpTileProvider:Lcom/android/systemui/qs/tiles/HeadsUpTile_Factory;

.field private hotspotControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private hotspotTileProvider:Lcom/android/systemui/qs/tiles/HotspotTile_Factory;

.field private initControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/InitController;",
            ">;"
        }
    .end annotation
.end field

.field private injectionInflationControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/InjectionInflationController;",
            ">;"
        }
    .end annotation
.end field

.field private keyguardBypassControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardBypassController;",
            ">;"
        }
    .end annotation
.end field

.field private keyguardDismissUtilProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;",
            ">;"
        }
    .end annotation
.end field

.field private keyguardEnvironmentImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardEnvironmentImpl;",
            ">;"
        }
    .end annotation
.end field

.field private keyguardMonitorImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;",
            ">;"
        }
    .end annotation
.end field

.field private leakReporterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/leak/LeakReporter;",
            ">;"
        }
    .end annotation
.end field

.field private lightBarControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/LightBarController;",
            ">;"
        }
    .end annotation
.end field

.field private liveDisplayTileProvider:Lcom/android/systemui/qs/tiles/LiveDisplayTile_Factory;

.field private locationControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/LocationControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private locationTileProvider:Lcom/android/systemui/qs/tiles/LocationTile_Factory;

.field private lockscreenGestureLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;",
            ">;"
        }
    .end annotation
.end field

.field private managedProfileControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mediaArtworkProcessorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/MediaArtworkProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private memoryTileProvider:Lcom/android/systemui/util/leak/GarbageMonitor_MemoryTile_Factory;

.field private navigationModeControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NavigationModeController;",
            ">;"
        }
    .end annotation
.end field

.field private networkControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private nextAlarmControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private nfcTileProvider:Lcom/android/systemui/qs/tiles/NfcTile_Factory;

.field private nightDisplayTileProvider:Lcom/android/systemui/qs/tiles/NightDisplayTile_Factory;

.field private notificationAlertingManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;",
            ">;"
        }
    .end annotation
.end field

.field private notificationBlockingHelperManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/NotificationBlockingHelperManager;",
            ">;"
        }
    .end annotation
.end field

.field private notificationEntryManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            ">;"
        }
    .end annotation
.end field

.field private notificationFilterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationFilter;",
            ">;"
        }
    .end annotation
.end field

.field private notificationGroupAlertTransferHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;",
            ">;"
        }
    .end annotation
.end field

.field private notificationGroupManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupManager;",
            ">;"
        }
    .end annotation
.end field

.field private notificationGutsManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;",
            ">;"
        }
    .end annotation
.end field

.field private notificationInterruptionStateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;",
            ">;"
        }
    .end annotation
.end field

.field private notificationListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationListener;",
            ">;"
        }
    .end annotation
.end field

.field private notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private notificationLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;",
            ">;"
        }
    .end annotation
.end field

.field private notificationMediaManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationMediaManager;",
            ">;"
        }
    .end annotation
.end field

.field private notificationRemoteInputManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;",
            ">;"
        }
    .end annotation
.end field

.field private notificationRoundnessManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;",
            ">;"
        }
    .end annotation
.end field

.field private notificationViewHierarchyManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;",
            ">;"
        }
    .end annotation
.end field

.field private notificationWakeUpCoordinatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;",
            ">;"
        }
    .end annotation
.end field

.field private overviewProxyServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/recents/OverviewProxyService;",
            ">;"
        }
    .end annotation
.end field

.field private pluginDependencyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/PluginDependencyProvider;",
            ">;"
        }
    .end annotation
.end field

.field private powerNotificationWarningsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/power/PowerNotificationWarnings;",
            ">;"
        }
    .end annotation
.end field

.field private powerShareTileProvider:Lcom/android/systemui/qs/tiles/PowerShareTile_Factory;

.field private privacyItemControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/privacy/PrivacyItemController;",
            ">;"
        }
    .end annotation
.end field

.field private profilesTileProvider:Lcom/android/systemui/qs/tiles/ProfilesTile_Factory;

.field private provideActivityManagerWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/system/ActivityManagerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private provideAllowNotificationLongPressProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private provideAssistHandleBehaviorControllerMapProvider:Ljavax/inject/Provider;

.field private provideAssistUtilsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/app/AssistUtils;",
            ">;"
        }
    .end annotation
.end field

.field private provideAutoHideControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/AutoHideController;",
            ">;"
        }
    .end annotation
.end field

.field private provideBackgroundHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private provideBgHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private provideBgLooperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;"
        }
    .end annotation
.end field

.field private provideConfigurationControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            ">;"
        }
    .end annotation
.end field

.field private provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

.field private provideDataSaverControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/DataSaverController;",
            ">;"
        }
    .end annotation
.end field

.field private provideDevicePolicyManagerWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/system/DevicePolicyManagerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private provideDisplayMetricsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/util/DisplayMetrics;",
            ">;"
        }
    .end annotation
.end field

.field private provideHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private provideINotificationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/INotificationManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideIStatusBarServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/statusbar/IStatusBarService;",
            ">;"
        }
    .end annotation
.end field

.field private provideIWindowManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/view/IWindowManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideKeyguardLiftControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardLiftController;",
            ">;"
        }
    .end annotation
.end field

.field private provideLeakDetectorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/leak/LeakDetector;",
            ">;"
        }
    .end annotation
.end field

.field private provideLeakReportEmailProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private provideLocalBluetoothControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideMainHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private provideMetricsLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/MetricsLogger;",
            ">;"
        }
    .end annotation
.end field

.field private provideNavigationBarControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NavigationBarController;",
            ">;"
        }
    .end annotation
.end field

.field private provideNightDisplayListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/hardware/display/NightDisplayListener;",
            ">;"
        }
    .end annotation
.end field

.field private providePackageManagerWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/system/PackageManagerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private providePluginManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/plugins/PluginManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideScreenDecorationsProvider:Lcom/android/systemui/assist/AssistModule_ProvideScreenDecorationsFactory;

.field private provideSensorPrivacyManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/hardware/SensorPrivacyManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideShadeControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/ShadeController;",
            ">;"
        }
    .end annotation
.end field

.field private provideSystemClockProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroidx/slice/Clock;",
            ">;"
        }
    .end annotation
.end field

.field private proximitySensorProvider:Lcom/android/systemui/util/ProximitySensor_Factory;

.field private pulseExpansionHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/PulseExpansionHandler;",
            ">;"
        }
    .end annotation
.end field

.field private qSFactoryImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;",
            ">;"
        }
    .end annotation
.end field

.field private qSTileHostProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSTileHost;",
            ">;"
        }
    .end annotation
.end field

.field private readingModeTileProvider:Lcom/android/systemui/qs/tiles/ReadingModeTile_Factory;

.field private remoteInputQuickSettingsDisablerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;",
            ">;"
        }
    .end annotation
.end field

.field private rotationLockControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private rotationLockTileProvider:Lcom/android/systemui/qs/tiles/RotationLockTile_Factory;

.field private screenLifecycleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/ScreenLifecycle;",
            ">;"
        }
    .end annotation
.end field

.field private securityControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private sensorPrivacyControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private smartReplyConstantsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/SmartReplyConstants;",
            ">;"
        }
    .end annotation
.end field

.field private smartReplyControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/SmartReplyController;",
            ">;"
        }
    .end annotation
.end field

.field private statusBarIconControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private statusBarRemoteInputCallbackProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;",
            ">;"
        }
    .end annotation
.end field

.field private statusBarStateControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private statusBarWindowControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarWindowController;",
            ">;"
        }
    .end annotation
.end field

.field private syncTileProvider:Lcom/android/systemui/qs/tiles/SyncTile_Factory;

.field private systemUIRootComponentProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/SystemUIRootComponent;",
            ">;"
        }
    .end annotation
.end field

.field private sysuiColorExtractorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/colorextraction/SysuiColorExtractor;",
            ">;"
        }
    .end annotation
.end field

.field private tunablePaddingServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/tuner/TunablePadding$TunablePaddingService;",
            ">;"
        }
    .end annotation
.end field

.field private tunerServiceImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/tuner/TunerServiceImpl;",
            ">;"
        }
    .end annotation
.end field

.field private uiModeNightTileProvider:Lcom/android/systemui/qs/tiles/UiModeNightTile_Factory;

.field private uiOffloadThreadProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/UiOffloadThread;",
            ">;"
        }
    .end annotation
.end field

.field private usbTetherTileProvider:Lcom/android/systemui/qs/tiles/UsbTetherTile_Factory;

.field private userInfoControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private userSwitcherControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/UserSwitcherController;",
            ">;"
        }
    .end annotation
.end field

.field private userTileProvider:Lcom/android/systemui/qs/tiles/UserTile_Factory;

.field private vibratorHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/VibratorHelper;",
            ">;"
        }
    .end annotation
.end field

.field private visualStabilityManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/VisualStabilityManager;",
            ">;"
        }
    .end annotation
.end field

.field private volumeDialogControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/volume/VolumeDialogControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private volumeTileProvider:Lcom/android/systemui/qs/tiles/VolumeTile_Factory;

.field private vpnTileProvider:Lcom/android/systemui/qs/tiles/VpnTile_Factory;

.field private wakefulnessLifecycleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ">;"
        }
    .end annotation
.end field

.field private wifiTileProvider:Lcom/android/systemui/qs/tiles/WifiTile_Factory;

.field private workModeTileProvider:Lcom/android/systemui/qs/tiles/WorkModeTile_Factory;

.field private zenModeControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;)V
    .locals 0

    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 605
    invoke-direct {p0, p1}, Lcom/android/systemui/DaggerSystemUIRootComponent;->initialize(Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;)V

    .line 606
    invoke-direct {p0, p1}, Lcom/android/systemui/DaggerSystemUIRootComponent;->initialize2(Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;Lcom/android/systemui/DaggerSystemUIRootComponent$1;)V
    .locals 0

    .line 270
    invoke-direct {p0, p1}, Lcom/android/systemui/DaggerSystemUIRootComponent;-><init>(Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->bluetoothControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$10000(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideDevicePolicyManagerWrapperProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$10100(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->providePackageManagerWrapperProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$10200(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->sensorPrivacyControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$10300(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->dumpControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$10400(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->dockManagerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$10500(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->channelEditorDialogControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$10600(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideINotificationManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$10700(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->falsingManagerProxyProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$10800(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->injectionInflationControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$10900(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->pulseExpansionHandlerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->locationControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$11000(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationWakeUpCoordinatorProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$11100(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$11200(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->headsUpManagerPhoneProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$11300(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->dynamicPrivacyControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$11400(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->bypassHeadsUpNotifierProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$11500(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideKeyguardLiftControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$11600(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideAllowNotificationLongPressProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$11700(Lcom/android/systemui/DaggerSystemUIRootComponent;)Lcom/android/systemui/SystemUIFactory$ContextHolder;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->contextHolder:Lcom/android/systemui/SystemUIFactory$ContextHolder;

    return-object p0
.end method

.method static synthetic access$11800(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->rotationLockControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$12000(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationRoundnessManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->networkControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->zenModeControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->hotspotControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->castControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->flashlightControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->userSwitcherControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->userInfoControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->keyguardMonitorImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->batteryControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideNightDisplayListenerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->managedProfileControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->nextAlarmControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideDataSaverControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->accessibilityControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->deviceProvisionedControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->providePluginManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->assistManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->securityControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideLeakDetectorProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->leakReporterProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->garbageMonitorProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->tunerServiceImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->statusBarWindowControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->darkIconDispatcherImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->statusBarIconControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->screenLifecycleProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->fragmentServiceProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->extensionControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->pluginDependencyProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideLocalBluetoothControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->volumeDialogControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$4700(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->accessibilityManagerWrapperProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->sysuiColorExtractorProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$4900(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->tunablePaddingServiceProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->foregroundServiceControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$5100(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->uiOffloadThreadProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$5200(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->powerNotificationWarningsProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$5300(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->lightBarControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$5400(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideIWindowManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$5500(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->overviewProxyServiceProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$5600(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->navigationModeControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$5700(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->enhancedEstimatesImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$5800(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->vibratorHelperProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$5900(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideIStatusBarServiceProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$6000(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideDisplayMetricsProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$6100(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->lockscreenGestureLoggerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$6200(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->keyguardEnvironmentImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$6300(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideShadeControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$6400(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->statusBarRemoteInputCallbackProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$6500(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->initControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$6600(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->appOpsControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$6700(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideNavigationBarControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$6800(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$6900(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$7000(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationGroupAlertTransferHelperProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$7100(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationGroupManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$7200(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->visualStabilityManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$7300(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationGutsManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$7400(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationMediaManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$7500(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationBlockingHelperManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$7600(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationRemoteInputManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$7700(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->smartReplyConstantsProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$7800(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationListenerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$7900(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationLoggerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$8000(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationViewHierarchyManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$8100(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationFilterProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$8200(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationInterruptionStateProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$8300(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->keyguardDismissUtilProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$8400(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->smartReplyControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$8500(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->remoteInputQuickSettingsDisablerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$8600(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->bubbleControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$8700(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationEntryManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$8800(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationAlertingManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$8900(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideSensorPrivacyManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->asyncSensorManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$9000(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideAutoHideControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$9100(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->foregroundServiceNotificationListenerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$9200(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->privacyItemControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$9300(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideBgLooperProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$9400(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideBgHandlerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$9500(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$9600(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideHandlerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$9700(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideLeakReportEmailProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$9800(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->clockManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$9900(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideActivityManagerWrapperProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static builder()Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;
    .locals 2

    .line 610
    new-instance v0, Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;-><init>(Lcom/android/systemui/DaggerSystemUIRootComponent$1;)V

    return-object v0
.end method

.method private getContextComponentResolver()Lcom/android/systemui/ContextComponentResolver;
    .locals 1

    .line 619
    new-instance v0, Lcom/android/systemui/ContextComponentResolver;

    invoke-direct {p0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->getMapOfClassOfAndProviderOfObject()Ljava/util/Map;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/systemui/ContextComponentResolver;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method private getMapOfClassOfAndProviderOfObject()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 614
    const-class p0, Lcom/android/systemui/doze/DozeService;

    .line 615
    invoke-static {}, Lcom/android/systemui/doze/DozeService_Factory;->create()Lcom/android/systemui/doze/DozeService_Factory;

    move-result-object v0

    .line 614
    invoke-static {p0, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private initialize(Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;)V
    .locals 9

    .line 625
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;->access$100(Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;)Lcom/android/systemui/SystemUIFactory$ContextHolder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;->create(Lcom/android/systemui/SystemUIFactory$ContextHolder;)Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 629
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 628
    invoke-static {v0, v1}, Lcom/android/systemui/DependencyProvider_ProvideConfigurationControllerFactory;->create(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/DependencyProvider_ProvideConfigurationControllerFactory;

    move-result-object v0

    .line 627
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    .line 632
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/DependencyProvider_ProvideBgLooperFactory;->create(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/DependencyProvider_ProvideBgLooperFactory;

    move-result-object v0

    .line 631
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideBgLooperProvider:Ljavax/inject/Provider;

    .line 635
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/DependencyProvider_ProvideLeakDetectorFactory;->create(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/DependencyProvider_ProvideLeakDetectorFactory;

    move-result-object v0

    .line 634
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideLeakDetectorProvider:Ljavax/inject/Provider;

    .line 637
    invoke-static {}, Lcom/android/systemui/SystemUIDefaultModule_ProvideLeakReportEmailFactory;->create()Lcom/android/systemui/SystemUIDefaultModule_ProvideLeakReportEmailFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideLeakReportEmailProvider:Ljavax/inject/Provider;

    .line 638
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideLeakDetectorProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideLeakReportEmailProvider:Ljavax/inject/Provider;

    .line 640
    invoke-static {v0, v1, v2}, Lcom/android/systemui/util/leak/LeakReporter_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/util/leak/LeakReporter_Factory;

    move-result-object v0

    .line 639
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->leakReporterProvider:Ljavax/inject/Provider;

    .line 644
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideBgLooperProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideLeakDetectorProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->leakReporterProvider:Ljavax/inject/Provider;

    .line 646
    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/util/leak/GarbageMonitor_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/util/leak/GarbageMonitor_Factory;

    move-result-object v0

    .line 645
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->garbageMonitorProvider:Ljavax/inject/Provider;

    .line 653
    invoke-static {}, Lcom/android/systemui/SystemUIDefaultModule_ProvideAllowNotificationLongPressFactory;->create()Lcom/android/systemui/SystemUIDefaultModule_ProvideAllowNotificationLongPressFactory;

    move-result-object v0

    .line 652
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideAllowNotificationLongPressProvider:Ljavax/inject/Provider;

    .line 655
    invoke-static {}, Lcom/android/systemui/ActivityStarterDelegate_Factory;->create()Lcom/android/systemui/ActivityStarterDelegate_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    .line 659
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 658
    invoke-static {v0, v1}, Lcom/android/systemui/DependencyProvider_ProvidePluginManagerFactory;->create(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/DependencyProvider_ProvidePluginManagerFactory;

    move-result-object v0

    .line 657
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->providePluginManagerProvider:Ljavax/inject/Provider;

    .line 660
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->providePluginManagerProvider:Ljavax/inject/Provider;

    .line 662
    invoke-static {v0, v1}, Lcom/android/systemui/util/AsyncSensorManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/util/AsyncSensorManager_Factory;

    move-result-object v0

    .line 661
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->asyncSensorManagerProvider:Ljavax/inject/Provider;

    .line 667
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideBgLooperProvider:Ljavax/inject/Provider;

    .line 666
    invoke-static {v0, v1}, Lcom/android/systemui/DependencyProvider_ProvideBgHandlerFactory;->create(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/DependencyProvider_ProvideBgHandlerFactory;

    move-result-object v0

    .line 665
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideBgHandlerProvider:Ljavax/inject/Provider;

    .line 671
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideBgHandlerProvider:Ljavax/inject/Provider;

    .line 670
    invoke-static {v0, v1, v2}, Lcom/android/systemui/DependencyProvider_ProvideLocalBluetoothControllerFactory;->create(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/DependencyProvider_ProvideLocalBluetoothControllerFactory;

    move-result-object v0

    .line 669
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideLocalBluetoothControllerProvider:Ljavax/inject/Provider;

    .line 672
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideBgLooperProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideLocalBluetoothControllerProvider:Ljavax/inject/Provider;

    .line 674
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl_Factory;

    move-result-object v0

    .line 673
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->bluetoothControllerImplProvider:Ljavax/inject/Provider;

    .line 678
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideBgLooperProvider:Ljavax/inject/Provider;

    .line 680
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/LocationControllerImpl_Factory;

    move-result-object v0

    .line 679
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->locationControllerImplProvider:Ljavax/inject/Provider;

    .line 681
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 682
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->rotationLockControllerImplProvider:Ljavax/inject/Provider;

    .line 685
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/DependencyProvider_ProvideMainHandlerFactory;->create(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/DependencyProvider_ProvideMainHandlerFactory;

    move-result-object v0

    .line 684
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    .line 686
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    .line 688
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl_Factory;

    move-result-object v0

    .line 687
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->deviceProvisionedControllerImplProvider:Ljavax/inject/Provider;

    .line 690
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideBgLooperProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->deviceProvisionedControllerImplProvider:Ljavax/inject/Provider;

    .line 692
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl_Factory;

    move-result-object v0

    .line 691
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->networkControllerImplProvider:Ljavax/inject/Provider;

    .line 696
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    .line 698
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl_Factory;

    move-result-object v0

    .line 697
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->zenModeControllerImplProvider:Ljavax/inject/Provider;

    .line 700
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    .line 702
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/HotspotControllerImpl_Factory;

    move-result-object v0

    .line 701
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->hotspotControllerImplProvider:Ljavax/inject/Provider;

    .line 704
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 705
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/CastControllerImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/CastControllerImpl_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->castControllerImplProvider:Ljavax/inject/Provider;

    .line 706
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 707
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->flashlightControllerImplProvider:Ljavax/inject/Provider;

    .line 708
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 709
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->keyguardMonitorImplProvider:Ljavax/inject/Provider;

    .line 710
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->keyguardMonitorImplProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    .line 712
    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/UserSwitcherController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/UserSwitcherController_Factory;

    move-result-object v0

    .line 711
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->userSwitcherControllerProvider:Ljavax/inject/Provider;

    .line 717
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 718
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->userInfoControllerImplProvider:Ljavax/inject/Provider;

    .line 720
    invoke-static {}, Lcom/android/systemui/power/EnhancedEstimatesImpl_Factory;->create()Lcom/android/systemui/power/EnhancedEstimatesImpl_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->enhancedEstimatesImplProvider:Ljavax/inject/Provider;

    .line 721
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->enhancedEstimatesImplProvider:Ljavax/inject/Provider;

    .line 723
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/BatteryControllerImpl_Factory;

    move-result-object v0

    .line 722
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->batteryControllerImplProvider:Ljavax/inject/Provider;

    .line 728
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideBgHandlerProvider:Ljavax/inject/Provider;

    .line 727
    invoke-static {v0, v1, v2}, Lcom/android/systemui/DependencyProvider_ProvideNightDisplayListenerFactory;->create(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/DependencyProvider_ProvideNightDisplayListenerFactory;

    move-result-object v0

    .line 726
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideNightDisplayListenerProvider:Ljavax/inject/Provider;

    .line 729
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 730
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->managedProfileControllerImplProvider:Ljavax/inject/Provider;

    .line 731
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 732
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->nextAlarmControllerImplProvider:Ljavax/inject/Provider;

    .line 736
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->networkControllerImplProvider:Ljavax/inject/Provider;

    .line 735
    invoke-static {v0, v1}, Lcom/android/systemui/DependencyProvider_ProvideDataSaverControllerFactory;->create(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/DependencyProvider_ProvideDataSaverControllerFactory;

    move-result-object v0

    .line 734
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideDataSaverControllerProvider:Ljavax/inject/Provider;

    .line 737
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 738
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/AccessibilityController_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/AccessibilityController_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->accessibilityControllerProvider:Ljavax/inject/Provider;

    .line 739
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 740
    invoke-static {v0}, Lcom/android/systemui/assist/AssistModule_ProvideAssistUtilsFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/assist/AssistModule_ProvideAssistUtilsFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideAssistUtilsProvider:Ljavax/inject/Provider;

    .line 742
    invoke-static {}, Lcom/android/systemui/assist/AssistModule_ProvideBackgroundHandlerFactory;->create()Lcom/android/systemui/assist/AssistModule_ProvideBackgroundHandlerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideBackgroundHandlerProvider:Ljavax/inject/Provider;

    .line 743
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 744
    invoke-static {v0}, Lcom/android/systemui/assist/AssistModule_ProvideScreenDecorationsFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/assist/AssistModule_ProvideScreenDecorationsFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideScreenDecorationsProvider:Lcom/android/systemui/assist/AssistModule_ProvideScreenDecorationsFactory;

    .line 745
    invoke-static {}, Lcom/android/systemui/assist/DeviceConfigHelper_Factory;->create()Lcom/android/systemui/assist/DeviceConfigHelper_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->deviceConfigHelperProvider:Ljavax/inject/Provider;

    .line 747
    invoke-static {}, Lcom/android/systemui/assist/AssistHandleOffBehavior_Factory;->create()Lcom/android/systemui/assist/AssistHandleOffBehavior_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->assistHandleOffBehaviorProvider:Ljavax/inject/Provider;

    .line 749
    invoke-static {}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl_Factory;->create()Lcom/android/systemui/statusbar/StatusBarStateControllerImpl_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    .line 750
    invoke-static {}, Lcom/android/systemui/keyguard/WakefulnessLifecycle_Factory;->create()Lcom/android/systemui/keyguard/WakefulnessLifecycle_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    .line 754
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    .line 753
    invoke-static {v0, v1, v2}, Lcom/android/systemui/DependencyProvider_ProvideNavigationBarControllerFactory;->create(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/DependencyProvider_ProvideNavigationBarControllerFactory;

    move-result-object v0

    .line 752
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideNavigationBarControllerProvider:Ljavax/inject/Provider;

    .line 755
    invoke-static {}, Lcom/android/systemui/UiOffloadThread_Factory;->create()Lcom/android/systemui/UiOffloadThread_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->uiOffloadThreadProvider:Ljavax/inject/Provider;

    .line 756
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->deviceProvisionedControllerImplProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->uiOffloadThreadProvider:Ljavax/inject/Provider;

    .line 758
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationModeController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/NavigationModeController_Factory;

    move-result-object v0

    .line 757
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->navigationModeControllerProvider:Ljavax/inject/Provider;

    .line 762
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideLeakDetectorProvider:Ljavax/inject/Provider;

    .line 764
    invoke-static {v0, v1, v2}, Lcom/android/systemui/tuner/TunerServiceImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/tuner/TunerServiceImpl_Factory;

    move-result-object v0

    .line 763
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->tunerServiceImplProvider:Ljavax/inject/Provider;

    .line 766
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 768
    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl_Factory;

    move-result-object v0

    .line 767
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;

    .line 769
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->tunerServiceImplProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;

    .line 771
    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/KeyguardBypassController_Factory;

    move-result-object v0

    .line 770
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    .line 776
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    .line 778
    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/StatusBarWindowController_Factory;

    move-result-object v0

    .line 777
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->statusBarWindowControllerProvider:Ljavax/inject/Provider;

    .line 783
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->deviceProvisionedControllerImplProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideNavigationBarControllerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->navigationModeControllerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->statusBarWindowControllerProvider:Ljavax/inject/Provider;

    .line 785
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/systemui/recents/OverviewProxyService_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/recents/OverviewProxyService_Factory;

    move-result-object v0

    .line 784
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->overviewProxyServiceProvider:Ljavax/inject/Provider;

    .line 791
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->overviewProxyServiceProvider:Ljavax/inject/Provider;

    .line 793
    invoke-static {v0, v1, v2}, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior_Factory;

    move-result-object v0

    .line 792
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->assistHandleLikeHomeBehaviorProvider:Ljavax/inject/Provider;

    .line 798
    invoke-static {}, Lcom/android/systemui/assist/AssistModule_ProvideSystemClockFactory;->create()Lcom/android/systemui/assist/AssistModule_ProvideSystemClockFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideSystemClockProvider:Ljavax/inject/Provider;

    .line 802
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v0

    .line 801
    invoke-static {v0}, Lcom/android/systemui/DependencyProvider_ProvideActivityManagerWrapperFactory;->create(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/DependencyProvider_ProvideActivityManagerWrapperFactory;

    move-result-object v0

    .line 800
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideActivityManagerWrapperProvider:Ljavax/inject/Provider;

    .line 806
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v0

    .line 805
    invoke-static {v0}, Lcom/android/systemui/DependencyProvider_ProvidePackageManagerWrapperFactory;->create(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/DependencyProvider_ProvidePackageManagerWrapperFactory;

    move-result-object v0

    .line 804
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->providePackageManagerWrapperProvider:Ljavax/inject/Provider;

    .line 807
    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideSystemClockProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideBackgroundHandlerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->deviceConfigHelperProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideActivityManagerWrapperProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->overviewProxyServiceProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->providePackageManagerWrapperProvider:Ljavax/inject/Provider;

    .line 809
    invoke-static/range {v1 .. v8}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;

    move-result-object v0

    .line 808
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->assistHandleReminderExpBehaviorProvider:Ljavax/inject/Provider;

    .line 818
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->assistHandleOffBehaviorProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->assistHandleLikeHomeBehaviorProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->assistHandleReminderExpBehaviorProvider:Ljavax/inject/Provider;

    .line 820
    invoke-static {v0, v1, v2}, Lcom/android/systemui/assist/AssistModule_ProvideAssistHandleBehaviorControllerMapFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/assist/AssistModule_ProvideAssistHandleBehaviorControllerMapFactory;

    move-result-object v0

    .line 819
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideAssistHandleBehaviorControllerMapProvider:Ljavax/inject/Provider;

    .line 824
    invoke-static {}, Lcom/android/systemui/DumpController_Factory;->create()Lcom/android/systemui/DumpController_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->dumpControllerProvider:Ljavax/inject/Provider;

    .line 825
    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideAssistUtilsProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideBackgroundHandlerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideScreenDecorationsProvider:Lcom/android/systemui/assist/AssistModule_ProvideScreenDecorationsFactory;

    iget-object v5, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->deviceConfigHelperProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideAssistHandleBehaviorControllerMapProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->navigationModeControllerProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->dumpControllerProvider:Ljavax/inject/Provider;

    .line 827
    invoke-static/range {v1 .. v8}, Lcom/android/systemui/assist/AssistHandleBehaviorController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/assist/AssistHandleBehaviorController_Factory;

    move-result-object v0

    .line 826
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->assistHandleBehaviorControllerProvider:Ljavax/inject/Provider;

    .line 836
    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->deviceProvisionedControllerImplProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v3, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideAssistUtilsProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->assistHandleBehaviorControllerProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->overviewProxyServiceProvider:Ljavax/inject/Provider;

    .line 838
    invoke-static/range {v1 .. v6}, Lcom/android/systemui/assist/AssistManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/assist/AssistManager_Factory;

    move-result-object v0

    .line 837
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->assistManagerProvider:Ljavax/inject/Provider;

    .line 845
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideBgHandlerProvider:Ljavax/inject/Provider;

    .line 847
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/SecurityControllerImpl_Factory;

    move-result-object v0

    .line 846
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->securityControllerImplProvider:Ljavax/inject/Provider;

    .line 849
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 850
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->darkIconDispatcherImplProvider:Ljavax/inject/Provider;

    .line 851
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 852
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->statusBarIconControllerImplProvider:Ljavax/inject/Provider;

    .line 853
    invoke-static {}, Lcom/android/systemui/keyguard/ScreenLifecycle_Factory;->create()Lcom/android/systemui/keyguard/ScreenLifecycle_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->screenLifecycleProvider:Ljavax/inject/Provider;

    .line 854
    invoke-static {p0}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->systemUIRootComponentProvider:Ljavax/inject/Provider;

    .line 855
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->systemUIRootComponentProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    .line 857
    invoke-static {v0, v1}, Lcom/android/systemui/fragments/FragmentService_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/fragments/FragmentService_Factory;

    move-result-object v0

    .line 856
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->fragmentServiceProvider:Ljavax/inject/Provider;

    .line 859
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideLeakDetectorProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->providePluginManagerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->tunerServiceImplProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    .line 861
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl_Factory;

    move-result-object v0

    .line 860
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->extensionControllerImplProvider:Ljavax/inject/Provider;

    .line 867
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->providePluginManagerProvider:Ljavax/inject/Provider;

    .line 868
    invoke-static {v0}, Lcom/android/systemui/plugins/PluginDependencyProvider_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/plugins/PluginDependencyProvider_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->pluginDependencyProvider:Ljavax/inject/Provider;

    .line 869
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 870
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/volume/VolumeDialogControllerImpl_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->volumeDialogControllerImplProvider:Ljavax/inject/Provider;

    .line 873
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/DependencyProvider_ProvideMetricsLoggerFactory;->create(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/DependencyProvider_ProvideMetricsLoggerFactory;

    move-result-object v0

    .line 872
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    .line 874
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 875
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->accessibilityManagerWrapperProvider:Ljavax/inject/Provider;

    .line 876
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    .line 878
    invoke-static {v0, v1}, Lcom/android/systemui/colorextraction/SysuiColorExtractor_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/colorextraction/SysuiColorExtractor_Factory;

    move-result-object v0

    .line 877
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->sysuiColorExtractorProvider:Ljavax/inject/Provider;

    .line 880
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->tunerServiceImplProvider:Ljavax/inject/Provider;

    .line 882
    invoke-static {v0}, Lcom/android/systemui/tuner/TunablePadding_TunablePaddingService_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/tuner/TunablePadding_TunablePaddingService_Factory;

    move-result-object v0

    .line 881
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->tunablePaddingServiceProvider:Ljavax/inject/Provider;

    .line 885
    invoke-static {}, Lcom/android/systemui/ForegroundServiceController_Factory;->create()Lcom/android/systemui/ForegroundServiceController_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->foregroundServiceControllerProvider:Ljavax/inject/Provider;

    .line 886
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    .line 888
    invoke-static {v0, v1}, Lcom/android/systemui/power/PowerNotificationWarnings_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/power/PowerNotificationWarnings_Factory;

    move-result-object v0

    .line 887
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->powerNotificationWarningsProvider:Ljavax/inject/Provider;

    .line 890
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->darkIconDispatcherImplProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->batteryControllerImplProvider:Ljavax/inject/Provider;

    .line 892
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/LightBarController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/LightBarController_Factory;

    move-result-object v0

    .line 891
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->lightBarControllerProvider:Ljavax/inject/Provider;

    .line 898
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/DependencyProvider_ProvideIWindowManagerFactory;->create(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/DependencyProvider_ProvideIWindowManagerFactory;

    move-result-object v0

    .line 897
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideIWindowManagerProvider:Ljavax/inject/Provider;

    .line 899
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 900
    invoke-static {v0}, Lcom/android/systemui/statusbar/VibratorHelper_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/VibratorHelper_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->vibratorHelperProvider:Ljavax/inject/Provider;

    .line 903
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/DependencyProvider_ProvideIStatusBarServiceFactory;->create(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/DependencyProvider_ProvideIStatusBarServiceFactory;

    move-result-object v0

    .line 902
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideIStatusBarServiceProvider:Ljavax/inject/Provider;

    .line 906
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/DependencyProvider_ProvideDisplayMetricsFactory;->create(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/DependencyProvider_ProvideDisplayMetricsFactory;

    move-result-object p1

    .line 905
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideDisplayMetricsProvider:Ljavax/inject/Provider;

    .line 908
    invoke-static {}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger_Factory;->create()Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger_Factory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->lockscreenGestureLoggerProvider:Ljavax/inject/Provider;

    .line 910
    invoke-static {}, Lcom/android/systemui/statusbar/phone/KeyguardEnvironmentImpl_Factory;->create()Lcom/android/systemui/statusbar/phone/KeyguardEnvironmentImpl_Factory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->keyguardEnvironmentImplProvider:Ljavax/inject/Provider;

    .line 911
    iget-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 913
    invoke-static {p1}, Lcom/android/systemui/SystemUIDefaultModule_ProvideShadeControllerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/SystemUIDefaultModule_ProvideShadeControllerFactory;

    move-result-object p1

    .line 912
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideShadeControllerProvider:Ljavax/inject/Provider;

    .line 914
    iget-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    .line 916
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/NotificationGroupManager_Factory;

    move-result-object p1

    .line 915
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationGroupManagerProvider:Ljavax/inject/Provider;

    .line 918
    iget-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationGroupManagerProvider:Ljavax/inject/Provider;

    .line 920
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback_Factory;

    move-result-object p1

    .line 919
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->statusBarRemoteInputCallbackProvider:Ljavax/inject/Provider;

    .line 922
    invoke-static {}, Lcom/android/systemui/InitController_Factory;->create()Lcom/android/systemui/InitController_Factory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->initControllerProvider:Ljavax/inject/Provider;

    .line 923
    iget-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideBgLooperProvider:Ljavax/inject/Provider;

    .line 925
    invoke-static {p1, v0}, Lcom/android/systemui/appops/AppOpsControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/appops/AppOpsControllerImpl_Factory;

    move-result-object p1

    .line 924
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->appOpsControllerImplProvider:Ljavax/inject/Provider;

    .line 927
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper_Factory;->create()Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper_Factory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationGroupAlertTransferHelperProvider:Ljavax/inject/Provider;

    .line 928
    iget-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 929
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/NotificationEntryManager_Factory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationEntryManagerProvider:Ljavax/inject/Provider;

    .line 930
    iget-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    .line 932
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/VisualStabilityManager_Factory;

    move-result-object p1

    .line 931
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->visualStabilityManagerProvider:Ljavax/inject/Provider;

    .line 934
    iget-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->visualStabilityManagerProvider:Ljavax/inject/Provider;

    .line 936
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager_Factory;

    move-result-object p1

    .line 935
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationGutsManagerProvider:Ljavax/inject/Provider;

    .line 939
    invoke-static {}, Lcom/android/systemui/statusbar/MediaArtworkProcessor_Factory;->create()Lcom/android/systemui/statusbar/MediaArtworkProcessor_Factory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->mediaArtworkProcessorProvider:Ljavax/inject/Provider;

    .line 940
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideShadeControllerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->statusBarWindowControllerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->mediaArtworkProcessorProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    .line 942
    invoke-static/range {v0 .. v5}, Lcom/android/systemui/statusbar/NotificationMediaManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/NotificationMediaManager_Factory;

    move-result-object p1

    .line 941
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationMediaManagerProvider:Ljavax/inject/Provider;

    .line 949
    iget-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 951
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBlockingHelperManager_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/NotificationBlockingHelperManager_Factory;

    move-result-object p1

    .line 950
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationBlockingHelperManagerProvider:Ljavax/inject/Provider;

    .line 952
    iget-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideIStatusBarServiceProvider:Ljavax/inject/Provider;

    .line 954
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/SmartReplyController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/SmartReplyController_Factory;

    move-result-object p1

    .line 953
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->smartReplyControllerProvider:Ljavax/inject/Provider;

    .line 956
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->smartReplyControllerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideShadeControllerProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    .line 958
    invoke-static/range {v0 .. v6}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/NotificationRemoteInputManager_Factory;

    move-result-object p1

    .line 957
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationRemoteInputManagerProvider:Ljavax/inject/Provider;

    .line 966
    iget-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 968
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/policy/SmartReplyConstants_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/SmartReplyConstants_Factory;

    move-result-object p1

    .line 967
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->smartReplyConstantsProvider:Ljavax/inject/Provider;

    .line 969
    iget-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 970
    invoke-static {p1}, Lcom/android/systemui/statusbar/NotificationListener_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/NotificationListener_Factory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationListenerProvider:Ljavax/inject/Provider;

    .line 971
    iget-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->uiOffloadThreadProvider:Ljavax/inject/Provider;

    .line 972
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger_ExpansionStateLogger_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/logging/NotificationLogger_ExpansionStateLogger_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->expansionStateLoggerProvider:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger_ExpansionStateLogger_Factory;

    .line 973
    iget-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationListenerProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->uiOffloadThreadProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->expansionStateLoggerProvider:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger_ExpansionStateLogger_Factory;

    .line 975
    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/logging/NotificationLogger_Factory;

    move-result-object p1

    .line 974
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationLoggerProvider:Ljavax/inject/Provider;

    .line 981
    iget-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 982
    invoke-static {p1}, Lcom/android/systemui/bubbles/BubbleData_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/bubbles/BubbleData_Factory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->bubbleDataProvider:Ljavax/inject/Provider;

    .line 983
    invoke-static {}, Lcom/android/systemui/statusbar/notification/NotificationFilter_Factory;->create()Lcom/android/systemui/statusbar/notification/NotificationFilter_Factory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationFilterProvider:Ljavax/inject/Provider;

    .line 984
    iget-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationFilterProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->batteryControllerImplProvider:Ljavax/inject/Provider;

    .line 986
    invoke-static {p1, v0, v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider_Factory;

    move-result-object p1

    .line 985
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationInterruptionStateProvider:Ljavax/inject/Provider;

    return-void
.end method

.method private initialize2(Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;)V
    .locals 34

    move-object/from16 v0, p0

    .line 995
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->statusBarWindowControllerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->bubbleDataProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationInterruptionStateProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->zenModeControllerImplProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationGroupManagerProvider:Ljavax/inject/Provider;

    .line 997
    invoke-static/range {v1 .. v8}, Lcom/android/systemui/bubbles/BubbleController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/bubbles/BubbleController_Factory;

    move-result-object v1

    .line 996
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->bubbleControllerProvider:Ljavax/inject/Provider;

    .line 1006
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->keyguardMonitorImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    .line 1008
    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/DynamicPrivacyController_Factory;

    move-result-object v1

    .line 1007
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->dynamicPrivacyControllerProvider:Ljavax/inject/Provider;

    .line 1013
    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationGroupManagerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->visualStabilityManagerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideShadeControllerProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->bubbleControllerProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->dynamicPrivacyControllerProvider:Ljavax/inject/Provider;

    .line 1015
    invoke-static/range {v2 .. v12}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/NotificationViewHierarchyManager_Factory;

    move-result-object v1

    .line 1014
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationViewHierarchyManagerProvider:Ljavax/inject/Provider;

    .line 1027
    invoke-static {}, Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil_Factory;->create()Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->keyguardDismissUtilProvider:Ljavax/inject/Provider;

    .line 1028
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    .line 1030
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler_Factory;

    move-result-object v1

    .line 1029
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->remoteInputQuickSettingsDisablerProvider:Ljavax/inject/Provider;

    .line 1032
    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationRemoteInputManagerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->visualStabilityManagerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideShadeControllerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationInterruptionStateProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationListenerProvider:Ljavax/inject/Provider;

    .line 1034
    invoke-static/range {v2 .. v7}, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/NotificationAlertingManager_Factory;

    move-result-object v1

    .line 1033
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationAlertingManagerProvider:Ljavax/inject/Provider;

    .line 1044
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 1043
    invoke-static {v1, v2}, Lcom/android/systemui/DependencyProvider_ProvideSensorPrivacyManagerFactory;->create(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/DependencyProvider_ProvideSensorPrivacyManagerFactory;

    move-result-object v1

    .line 1042
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideSensorPrivacyManagerProvider:Ljavax/inject/Provider;

    .line 1048
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    .line 1047
    invoke-static {v1, v2, v3}, Lcom/android/systemui/DependencyProvider_ProvideAutoHideControllerFactory;->create(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/DependencyProvider_ProvideAutoHideControllerFactory;

    move-result-object v1

    .line 1046
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideAutoHideControllerProvider:Ljavax/inject/Provider;

    .line 1049
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->foregroundServiceControllerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationEntryManagerProvider:Ljavax/inject/Provider;

    .line 1051
    invoke-static {v1, v2, v3}, Lcom/android/systemui/ForegroundServiceNotificationListener_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/ForegroundServiceNotificationListener_Factory;

    move-result-object v1

    .line 1050
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->foregroundServiceNotificationListenerProvider:Ljavax/inject/Provider;

    .line 1055
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->appOpsControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideBgHandlerProvider:Ljavax/inject/Provider;

    .line 1057
    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/privacy/PrivacyItemController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/privacy/PrivacyItemController_Factory;

    move-result-object v1

    .line 1056
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->privacyItemControllerProvider:Ljavax/inject/Provider;

    .line 1064
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/DependencyProvider_ProvideHandlerFactory;->create(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/DependencyProvider_ProvideHandlerFactory;

    move-result-object v1

    .line 1063
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideHandlerProvider:Ljavax/inject/Provider;

    .line 1065
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->systemUIRootComponentProvider:Ljavax/inject/Provider;

    .line 1067
    invoke-static {v1}, Lcom/android/systemui/util/InjectionInflationController_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/util/InjectionInflationController_Factory;

    move-result-object v1

    .line 1066
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->injectionInflationControllerProvider:Ljavax/inject/Provider;

    .line 1068
    invoke-static {}, Lcom/android/systemui/dock/DockManagerImpl_Factory;->create()Lcom/android/systemui/dock/DockManagerImpl_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->dockManagerImplProvider:Ljavax/inject/Provider;

    .line 1069
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->injectionInflationControllerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->providePluginManagerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->sysuiColorExtractorProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->dockManagerImplProvider:Ljavax/inject/Provider;

    .line 1071
    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/keyguard/clock/ClockManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/keyguard/clock/ClockManager_Factory;

    move-result-object v1

    .line 1070
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->clockManagerProvider:Ljavax/inject/Provider;

    .line 1080
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v1

    .line 1079
    invoke-static {v1}, Lcom/android/systemui/DependencyProvider_ProvideDevicePolicyManagerWrapperFactory;->create(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/DependencyProvider_ProvideDevicePolicyManagerWrapperFactory;

    move-result-object v1

    .line 1078
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideDevicePolicyManagerWrapperProvider:Ljavax/inject/Provider;

    .line 1081
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 1082
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->sensorPrivacyControllerImplProvider:Ljavax/inject/Provider;

    .line 1086
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v1

    .line 1085
    invoke-static {v1}, Lcom/android/systemui/DependencyProvider_ProvideINotificationManagerFactory;->create(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/DependencyProvider_ProvideINotificationManagerFactory;

    move-result-object v1

    .line 1084
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideINotificationManagerProvider:Ljavax/inject/Provider;

    .line 1087
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideINotificationManagerProvider:Ljavax/inject/Provider;

    .line 1089
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController_Factory;

    move-result-object v1

    .line 1088
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->channelEditorDialogControllerProvider:Ljavax/inject/Provider;

    .line 1091
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->asyncSensorManagerProvider:Ljavax/inject/Provider;

    .line 1092
    invoke-static {v1, v2}, Lcom/android/systemui/util/ProximitySensor_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/util/ProximitySensor_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->proximitySensorProvider:Lcom/android/systemui/util/ProximitySensor_Factory;

    .line 1093
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->providePluginManagerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->proximitySensorProvider:Lcom/android/systemui/util/ProximitySensor_Factory;

    .line 1095
    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/classifier/FalsingManagerProxy_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/classifier/FalsingManagerProxy_Factory;

    move-result-object v1

    .line 1094
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->falsingManagerProxyProvider:Ljavax/inject/Provider;

    .line 1100
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    .line 1102
    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone_Factory;

    move-result-object v1

    .line 1101
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->headsUpManagerPhoneProvider:Ljavax/inject/Provider;

    .line 1106
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->headsUpManagerPhoneProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    .line 1108
    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator_Factory;

    move-result-object v1

    .line 1107
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationWakeUpCoordinatorProvider:Ljavax/inject/Provider;

    .line 1113
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    .line 1115
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager_Factory;

    move-result-object v1

    .line 1114
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationRoundnessManagerProvider:Ljavax/inject/Provider;

    .line 1116
    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationWakeUpCoordinatorProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->headsUpManagerPhoneProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationRoundnessManagerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    .line 1118
    invoke-static/range {v2 .. v7}, Lcom/android/systemui/statusbar/PulseExpansionHandler_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/PulseExpansionHandler_Factory;

    move-result-object v1

    .line 1117
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->pulseExpansionHandlerProvider:Ljavax/inject/Provider;

    .line 1125
    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->headsUpManagerPhoneProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationMediaManagerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->tunerServiceImplProvider:Ljavax/inject/Provider;

    .line 1127
    invoke-static/range {v2 .. v8}, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier_Factory;

    move-result-object v1

    .line 1126
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->bypassHeadsUpNotifierProvider:Ljavax/inject/Provider;

    .line 1135
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->asyncSensorManagerProvider:Ljavax/inject/Provider;

    .line 1137
    invoke-static {v1, v2, v3}, Lcom/android/systemui/SystemUIModule_ProvideKeyguardLiftControllerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/SystemUIModule_ProvideKeyguardLiftControllerFactory;

    move-result-object v1

    .line 1136
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideKeyguardLiftControllerProvider:Ljavax/inject/Provider;

    .line 1141
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;->access$100(Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;)Lcom/android/systemui/SystemUIFactory$ContextHolder;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->contextHolder:Lcom/android/systemui/SystemUIFactory$ContextHolder;

    .line 1142
    new-instance v1, Ldagger/internal/DelegateFactory;

    invoke-direct {v1}, Ldagger/internal/DelegateFactory;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    .line 1143
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->networkControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    .line 1144
    invoke-static {v1, v2, v3}, Lcom/android/systemui/qs/tiles/WifiTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/WifiTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->wifiTileProvider:Lcom/android/systemui/qs/tiles/WifiTile_Factory;

    .line 1148
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->bluetoothControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    .line 1149
    invoke-static {v1, v2, v3}, Lcom/android/systemui/qs/tiles/BluetoothTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/BluetoothTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->bluetoothTileProvider:Lcom/android/systemui/qs/tiles/BluetoothTile_Factory;

    .line 1153
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->networkControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->keyguardMonitorImplProvider:Ljavax/inject/Provider;

    .line 1154
    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/qs/tiles/CellularTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/CellularTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->cellularTileProvider:Lcom/android/systemui/qs/tiles/CellularTile_Factory;

    .line 1159
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->zenModeControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    .line 1160
    invoke-static {v1, v2, v3}, Lcom/android/systemui/qs/tiles/DndTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/DndTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->dndTileProvider:Lcom/android/systemui/qs/tiles/DndTile_Factory;

    .line 1164
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    .line 1165
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/ColorInversionTile_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/ColorInversionTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->colorInversionTileProvider:Lcom/android/systemui/qs/tiles/ColorInversionTile_Factory;

    .line 1166
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    .line 1167
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/AirplaneModeTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/AirplaneModeTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->airplaneModeTileProvider:Lcom/android/systemui/qs/tiles/AirplaneModeTile_Factory;

    .line 1169
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->managedProfileControllerImplProvider:Ljavax/inject/Provider;

    .line 1170
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/WorkModeTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/WorkModeTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->workModeTileProvider:Lcom/android/systemui/qs/tiles/WorkModeTile_Factory;

    .line 1172
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->rotationLockControllerImplProvider:Ljavax/inject/Provider;

    .line 1173
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/RotationLockTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/RotationLockTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->rotationLockTileProvider:Lcom/android/systemui/qs/tiles/RotationLockTile_Factory;

    .line 1175
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->flashlightControllerImplProvider:Ljavax/inject/Provider;

    .line 1176
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/FlashlightTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/FlashlightTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->flashlightTileProvider:Lcom/android/systemui/qs/tiles/FlashlightTile_Factory;

    .line 1178
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->locationControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->keyguardMonitorImplProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    .line 1179
    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/qs/tiles/LocationTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/LocationTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->locationTileProvider:Lcom/android/systemui/qs/tiles/LocationTile_Factory;

    .line 1184
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->castControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->keyguardMonitorImplProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->networkControllerImplProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    .line 1185
    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/systemui/qs/tiles/CastTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/CastTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->castTileProvider:Lcom/android/systemui/qs/tiles/CastTile_Factory;

    .line 1191
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->hotspotControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideDataSaverControllerProvider:Ljavax/inject/Provider;

    .line 1192
    invoke-static {v1, v2, v3}, Lcom/android/systemui/qs/tiles/HotspotTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/HotspotTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->hotspotTileProvider:Lcom/android/systemui/qs/tiles/HotspotTile_Factory;

    .line 1196
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->userSwitcherControllerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->userInfoControllerImplProvider:Ljavax/inject/Provider;

    .line 1197
    invoke-static {v1, v2, v3}, Lcom/android/systemui/qs/tiles/UserTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/UserTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->userTileProvider:Lcom/android/systemui/qs/tiles/UserTile_Factory;

    .line 1201
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->batteryControllerImplProvider:Ljavax/inject/Provider;

    .line 1202
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/BatterySaverTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/BatterySaverTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->batterySaverTileProvider:Lcom/android/systemui/qs/tiles/BatterySaverTile_Factory;

    .line 1204
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->networkControllerImplProvider:Ljavax/inject/Provider;

    .line 1205
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/DataSaverTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/DataSaverTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->dataSaverTileProvider:Lcom/android/systemui/qs/tiles/DataSaverTile_Factory;

    .line 1207
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/NightDisplayTile_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/NightDisplayTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->nightDisplayTileProvider:Lcom/android/systemui/qs/tiles/NightDisplayTile_Factory;

    .line 1208
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/NfcTile_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/NfcTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->nfcTileProvider:Lcom/android/systemui/qs/tiles/NfcTile_Factory;

    .line 1209
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    .line 1210
    invoke-static {v1}, Lcom/android/systemui/util/leak/GarbageMonitor_MemoryTile_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/util/leak/GarbageMonitor_MemoryTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->memoryTileProvider:Lcom/android/systemui/util/leak/GarbageMonitor_MemoryTile_Factory;

    .line 1211
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->batteryControllerImplProvider:Ljavax/inject/Provider;

    .line 1212
    invoke-static {v1, v2, v3}, Lcom/android/systemui/qs/tiles/UiModeNightTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/UiModeNightTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->uiModeNightTileProvider:Lcom/android/systemui/qs/tiles/UiModeNightTile_Factory;

    .line 1216
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    .line 1217
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/AdbOverNetworkTile_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/AdbOverNetworkTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->adbOverNetworkTileProvider:Lcom/android/systemui/qs/tiles/AdbOverNetworkTile_Factory;

    .line 1218
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    .line 1219
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/AmbientDisplayTile_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/AmbientDisplayTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->ambientDisplayTileProvider:Lcom/android/systemui/qs/tiles/AmbientDisplayTile_Factory;

    .line 1220
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/CaffeineTile_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/CaffeineTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->caffeineTileProvider:Lcom/android/systemui/qs/tiles/CaffeineTile_Factory;

    .line 1221
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/HeadsUpTile_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/HeadsUpTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->headsUpTileProvider:Lcom/android/systemui/qs/tiles/HeadsUpTile_Factory;

    .line 1222
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/LiveDisplayTile_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/LiveDisplayTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->liveDisplayTileProvider:Lcom/android/systemui/qs/tiles/LiveDisplayTile_Factory;

    .line 1223
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->batteryControllerImplProvider:Ljavax/inject/Provider;

    .line 1224
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/PowerShareTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/PowerShareTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->powerShareTileProvider:Lcom/android/systemui/qs/tiles/PowerShareTile_Factory;

    .line 1226
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/ProfilesTile_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/ProfilesTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->profilesTileProvider:Lcom/android/systemui/qs/tiles/ProfilesTile_Factory;

    .line 1227
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/ReadingModeTile_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/ReadingModeTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->readingModeTileProvider:Lcom/android/systemui/qs/tiles/ReadingModeTile_Factory;

    .line 1228
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/SyncTile_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/SyncTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->syncTileProvider:Lcom/android/systemui/qs/tiles/SyncTile_Factory;

    .line 1229
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/UsbTetherTile_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/UsbTetherTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->usbTetherTileProvider:Lcom/android/systemui/qs/tiles/UsbTetherTile_Factory;

    .line 1230
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/VolumeTile_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/VolumeTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->volumeTileProvider:Lcom/android/systemui/qs/tiles/VolumeTile_Factory;

    .line 1231
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/VpnTile_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/VpnTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->vpnTileProvider:Lcom/android/systemui/qs/tiles/VpnTile_Factory;

    .line 1232
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->batteryControllerImplProvider:Ljavax/inject/Provider;

    .line 1233
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/AODTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/AODTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->aODTileProvider:Lcom/android/systemui/qs/tiles/AODTile_Factory;

    .line 1235
    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->wifiTileProvider:Lcom/android/systemui/qs/tiles/WifiTile_Factory;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->bluetoothTileProvider:Lcom/android/systemui/qs/tiles/BluetoothTile_Factory;

    iget-object v4, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->cellularTileProvider:Lcom/android/systemui/qs/tiles/CellularTile_Factory;

    iget-object v5, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->dndTileProvider:Lcom/android/systemui/qs/tiles/DndTile_Factory;

    iget-object v6, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->colorInversionTileProvider:Lcom/android/systemui/qs/tiles/ColorInversionTile_Factory;

    iget-object v7, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->airplaneModeTileProvider:Lcom/android/systemui/qs/tiles/AirplaneModeTile_Factory;

    iget-object v8, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->workModeTileProvider:Lcom/android/systemui/qs/tiles/WorkModeTile_Factory;

    iget-object v9, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->rotationLockTileProvider:Lcom/android/systemui/qs/tiles/RotationLockTile_Factory;

    iget-object v10, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->flashlightTileProvider:Lcom/android/systemui/qs/tiles/FlashlightTile_Factory;

    iget-object v11, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->locationTileProvider:Lcom/android/systemui/qs/tiles/LocationTile_Factory;

    iget-object v12, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->castTileProvider:Lcom/android/systemui/qs/tiles/CastTile_Factory;

    iget-object v13, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->hotspotTileProvider:Lcom/android/systemui/qs/tiles/HotspotTile_Factory;

    iget-object v14, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->userTileProvider:Lcom/android/systemui/qs/tiles/UserTile_Factory;

    iget-object v15, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->batterySaverTileProvider:Lcom/android/systemui/qs/tiles/BatterySaverTile_Factory;

    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->dataSaverTileProvider:Lcom/android/systemui/qs/tiles/DataSaverTile_Factory;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->nightDisplayTileProvider:Lcom/android/systemui/qs/tiles/NightDisplayTile_Factory;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->nfcTileProvider:Lcom/android/systemui/qs/tiles/NfcTile_Factory;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->memoryTileProvider:Lcom/android/systemui/util/leak/GarbageMonitor_MemoryTile_Factory;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->uiModeNightTileProvider:Lcom/android/systemui/qs/tiles/UiModeNightTile_Factory;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->adbOverNetworkTileProvider:Lcom/android/systemui/qs/tiles/AdbOverNetworkTile_Factory;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->ambientDisplayTileProvider:Lcom/android/systemui/qs/tiles/AmbientDisplayTile_Factory;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->caffeineTileProvider:Lcom/android/systemui/qs/tiles/CaffeineTile_Factory;

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->headsUpTileProvider:Lcom/android/systemui/qs/tiles/HeadsUpTile_Factory;

    move-object/from16 v24, v1

    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->liveDisplayTileProvider:Lcom/android/systemui/qs/tiles/LiveDisplayTile_Factory;

    move-object/from16 v25, v1

    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->powerShareTileProvider:Lcom/android/systemui/qs/tiles/PowerShareTile_Factory;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->profilesTileProvider:Lcom/android/systemui/qs/tiles/ProfilesTile_Factory;

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->readingModeTileProvider:Lcom/android/systemui/qs/tiles/ReadingModeTile_Factory;

    move-object/from16 v28, v1

    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->syncTileProvider:Lcom/android/systemui/qs/tiles/SyncTile_Factory;

    move-object/from16 v29, v1

    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->usbTetherTileProvider:Lcom/android/systemui/qs/tiles/UsbTetherTile_Factory;

    move-object/from16 v30, v1

    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->volumeTileProvider:Lcom/android/systemui/qs/tiles/VolumeTile_Factory;

    move-object/from16 v31, v1

    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->vpnTileProvider:Lcom/android/systemui/qs/tiles/VpnTile_Factory;

    move-object/from16 v32, v1

    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->aODTileProvider:Lcom/android/systemui/qs/tiles/AODTile_Factory;

    move-object/from16 v33, v1

    .line 1237
    invoke-static/range {v2 .. v33}, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;

    move-result-object v1

    .line 1236
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSFactoryImplProvider:Ljavax/inject/Provider;

    .line 1270
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    invoke-static {v1}, Lcom/android/systemui/qs/AutoAddTracker_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/qs/AutoAddTracker_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->autoAddTrackerProvider:Lcom/android/systemui/qs/AutoAddTracker_Factory;

    .line 1271
    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->autoAddTrackerProvider:Lcom/android/systemui/qs/AutoAddTracker_Factory;

    iget-object v4, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideBgHandlerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->hotspotControllerImplProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideDataSaverControllerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->managedProfileControllerImplProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideNightDisplayListenerProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->castControllerImplProvider:Ljavax/inject/Provider;

    .line 1272
    invoke-static/range {v2 .. v10}, Lcom/android/systemui/statusbar/phone/AutoTileManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/AutoTileManager_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->autoTileManagerProvider:Lcom/android/systemui/statusbar/phone/AutoTileManager_Factory;

    .line 1282
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    check-cast v1, Ldagger/internal/DelegateFactory;

    .line 1283
    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->statusBarIconControllerImplProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSFactoryImplProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideBgLooperProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->providePluginManagerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->tunerServiceImplProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->autoTileManagerProvider:Lcom/android/systemui/statusbar/phone/AutoTileManager_Factory;

    iget-object v10, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->dumpControllerProvider:Ljavax/inject/Provider;

    .line 1285
    invoke-static/range {v2 .. v10}, Lcom/android/systemui/qs/QSTileHost_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/QSTileHost_Factory;

    move-result-object v2

    .line 1284
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    .line 1295
    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    invoke-virtual {v1, v0}, Ldagger/internal/DelegateFactory;->setDelegatedProvider(Ljavax/inject/Provider;)V

    return-void
.end method

.method private injectSystemUIAppComponentFactory(Lcom/android/systemui/SystemUIAppComponentFactory;)Lcom/android/systemui/SystemUIAppComponentFactory;
    .locals 0

    .line 1341
    invoke-direct {p0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->getContextComponentResolver()Lcom/android/systemui/ContextComponentResolver;

    move-result-object p0

    .line 1340
    invoke-static {p1, p0}, Lcom/android/systemui/SystemUIAppComponentFactory_MembersInjector;->injectMComponentHelper(Lcom/android/systemui/SystemUIAppComponentFactory;Lcom/android/systemui/ContextComponentHelper;)V

    return-object p1
.end method


# virtual methods
.method public createDependency()Lcom/android/systemui/Dependency$DependencyInjector;
    .locals 2

    .line 1320
    new-instance v0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;-><init>(Lcom/android/systemui/DaggerSystemUIRootComponent;Lcom/android/systemui/DaggerSystemUIRootComponent$1;)V

    return-object v0
.end method

.method public createFragmentCreator()Lcom/android/systemui/fragments/FragmentService$FragmentCreator;
    .locals 2

    .line 1330
    new-instance v0, Lcom/android/systemui/DaggerSystemUIRootComponent$FragmentCreatorImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/DaggerSystemUIRootComponent$FragmentCreatorImpl;-><init>(Lcom/android/systemui/DaggerSystemUIRootComponent;Lcom/android/systemui/DaggerSystemUIRootComponent$1;)V

    return-object v0
.end method

.method public createGarbageMonitor()Lcom/android/systemui/util/leak/GarbageMonitor;
    .locals 0

    .line 1305
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->garbageMonitorProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/leak/GarbageMonitor;

    return-object p0
.end method

.method public createViewCreator()Lcom/android/systemui/util/InjectionInflationController$ViewCreator;
    .locals 2

    .line 1335
    new-instance v0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;-><init>(Lcom/android/systemui/DaggerSystemUIRootComponent;Lcom/android/systemui/DaggerSystemUIRootComponent$1;)V

    return-object v0
.end method

.method public getConfigurationController()Lcom/android/systemui/statusbar/policy/ConfigurationController;
    .locals 0

    .line 1300
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    return-object p0
.end method

.method public getStatusBarInjector()Lcom/android/systemui/statusbar/phone/StatusBar$StatusBarInjector;
    .locals 2

    .line 1325
    new-instance v0, Lcom/android/systemui/DaggerSystemUIRootComponent$StatusBarInjectorImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/DaggerSystemUIRootComponent$StatusBarInjectorImpl;-><init>(Lcom/android/systemui/DaggerSystemUIRootComponent;Lcom/android/systemui/DaggerSystemUIRootComponent$1;)V

    return-object v0
.end method

.method public inject(Lcom/android/systemui/SystemUIAppComponentFactory;)V
    .locals 0

    .line 1315
    invoke-direct {p0, p1}, Lcom/android/systemui/DaggerSystemUIRootComponent;->injectSystemUIAppComponentFactory(Lcom/android/systemui/SystemUIAppComponentFactory;)Lcom/android/systemui/SystemUIAppComponentFactory;

    return-void
.end method
