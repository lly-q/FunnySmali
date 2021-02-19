.class public final Llineageos/providers/LineageSettings$Secure;
.super Landroid/provider/Settings$NameValueTable;
.source "LineageSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llineageos/providers/LineageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Secure"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final GESTURE_BACK_EXCLUDE_TOP_VALIDATOR:Llineageos/providers/LineageSettings$Validator;

.field public static final LEGACY_SECURE_SETTINGS:[Ljava/lang/String;

.field protected static final MOVED_TO_GLOBAL:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final NAVIGATION_RING_TARGETS:[Ljava/lang/String;

.field public static final NETWORK_TRAFFIC_AUTOHIDE_VALIDATOR:Llineageos/providers/LineageSettings$Validator;

.field public static final NETWORK_TRAFFIC_MODE_VALIDATOR:Llineageos/providers/LineageSettings$Validator;

.field public static final NETWORK_TRAFFIC_SHOW_UNITS_VALIDATOR:Llineageos/providers/LineageSettings$Validator;

.field public static final NETWORK_TRAFFIC_UNITS_VALIDATOR:Llineageos/providers/LineageSettings$Validator;

.field public static final PROTECTED_COMPONENTS_MANAGER_VALIDATOR:Llineageos/providers/LineageSettings$Validator;

.field public static final PROTECTED_COMPONENTS_VALIDATOR:Llineageos/providers/LineageSettings$Validator;

.field public static final TETHERING_ALLOW_VPN_UPSTREAMS_VALIDATOR:Llineageos/providers/LineageSettings$Validator;

.field public static final TRUST_NOTIFICATIONS_VALIDATOR:Llineageos/providers/LineageSettings$Validator;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TRUST_RESTRICT_USB_KEYGUARD_VALIDATOR:Llineageos/providers/LineageSettings$Validator;

.field public static final TRUST_WARNINGS_VALIDATOR:Llineageos/providers/LineageSettings$Validator;

.field public static final VALIDATORS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Llineageos/providers/LineageSettings$Validator;",
            ">;"
        }
    .end annotation
.end field

.field public static final VOLUME_PANEL_ON_LEFT_VALIDATOR:Llineageos/providers/LineageSettings$Validator;

.field private static final sNameValueCache:Llineageos/providers/LineageSettings$NameValueCache;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "content://lineagesettings/secure"

    .line 2400
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Llineageos/providers/LineageSettings$Secure;->CONTENT_URI:Landroid/net/Uri;

    .line 2404
    new-instance v0, Llineageos/providers/LineageSettings$NameValueCache;

    sget-object v1, Llineageos/providers/LineageSettings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "sys.lineage_settings_secure_version"

    const-string v3, "GET_secure"

    const-string v4, "PUT_secure"

    invoke-direct {v0, v2, v1, v3, v4}, Llineageos/providers/LineageSettings$NameValueCache;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Llineageos/providers/LineageSettings$Secure;->sNameValueCache:Llineageos/providers/LineageSettings$NameValueCache;

    .line 2413
    new-instance v0, Landroid/util/ArraySet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    sput-object v0, Llineageos/providers/LineageSettings$Secure;->MOVED_TO_GLOBAL:Landroid/util/ArraySet;

    const-string v0, "navigation_ring_targets_0"

    const-string v2, "navigation_ring_targets_1"

    const-string v3, "navigation_ring_targets_2"

    .line 2826
    filled-new-array {v0, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Llineageos/providers/LineageSettings$Secure;->NAVIGATION_RING_TARGETS:[Ljava/lang/String;

    .line 2978
    new-instance v0, Llineageos/providers/LineageSettings$InclusiveIntegerRangeValidator;

    const/4 v2, 0x0

    const/16 v3, 0x32

    invoke-direct {v0, v2, v3}, Llineageos/providers/LineageSettings$InclusiveIntegerRangeValidator;-><init>(II)V

    sput-object v0, Llineageos/providers/LineageSettings$Secure;->GESTURE_BACK_EXCLUDE_TOP_VALIDATOR:Llineageos/providers/LineageSettings$Validator;

    .line 3106
    new-instance v0, Llineageos/providers/LineageSettings$InclusiveIntegerRangeValidator;

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3}, Llineageos/providers/LineageSettings$InclusiveIntegerRangeValidator;-><init>(II)V

    sput-object v0, Llineageos/providers/LineageSettings$Secure;->NETWORK_TRAFFIC_MODE_VALIDATOR:Llineageos/providers/LineageSettings$Validator;

    .line 3116
    invoke-static {}, Llineageos/providers/LineageSettings;->access$000()Llineageos/providers/LineageSettings$Validator;

    move-result-object v0

    sput-object v0, Llineageos/providers/LineageSettings$Secure;->NETWORK_TRAFFIC_AUTOHIDE_VALIDATOR:Llineageos/providers/LineageSettings$Validator;

    .line 3125
    new-instance v0, Llineageos/providers/LineageSettings$InclusiveIntegerRangeValidator;

    invoke-direct {v0, v2, v3}, Llineageos/providers/LineageSettings$InclusiveIntegerRangeValidator;-><init>(II)V

    sput-object v0, Llineageos/providers/LineageSettings$Secure;->NETWORK_TRAFFIC_UNITS_VALIDATOR:Llineageos/providers/LineageSettings$Validator;

    .line 3135
    invoke-static {}, Llineageos/providers/LineageSettings;->access$000()Llineageos/providers/LineageSettings$Validator;

    move-result-object v0

    sput-object v0, Llineageos/providers/LineageSettings$Secure;->NETWORK_TRAFFIC_SHOW_UNITS_VALIDATOR:Llineageos/providers/LineageSettings$Validator;

    .line 3148
    invoke-static {}, Llineageos/providers/LineageSettings;->access$000()Llineageos/providers/LineageSettings$Validator;

    move-result-object v0

    sput-object v0, Llineageos/providers/LineageSettings$Secure;->TRUST_NOTIFICATIONS_VALIDATOR:Llineageos/providers/LineageSettings$Validator;

    .line 3160
    invoke-static {}, Llineageos/providers/LineageSettings;->access$000()Llineageos/providers/LineageSettings$Validator;

    move-result-object v0

    sput-object v0, Llineageos/providers/LineageSettings$Secure;->TRUST_RESTRICT_USB_KEYGUARD_VALIDATOR:Llineageos/providers/LineageSettings$Validator;

    .line 3172
    new-instance v0, Llineageos/providers/LineageSettings$InclusiveIntegerRangeValidator;

    const/4 v4, 0x5

    invoke-direct {v0, v2, v4}, Llineageos/providers/LineageSettings$InclusiveIntegerRangeValidator;-><init>(II)V

    sput-object v0, Llineageos/providers/LineageSettings$Secure;->TRUST_WARNINGS_VALIDATOR:Llineageos/providers/LineageSettings$Validator;

    .line 3183
    invoke-static {}, Llineageos/providers/LineageSettings;->access$000()Llineageos/providers/LineageSettings$Validator;

    move-result-object v0

    sput-object v0, Llineageos/providers/LineageSettings$Secure;->VOLUME_PANEL_ON_LEFT_VALIDATOR:Llineageos/providers/LineageSettings$Validator;

    .line 3191
    invoke-static {}, Llineageos/providers/LineageSettings;->access$000()Llineageos/providers/LineageSettings$Validator;

    move-result-object v0

    sput-object v0, Llineageos/providers/LineageSettings$Secure;->TETHERING_ALLOW_VPN_UPSTREAMS_VALIDATOR:Llineageos/providers/LineageSettings$Validator;

    const/16 v0, 0x1d

    new-array v0, v0, [Ljava/lang/String;

    const-string v5, "advanced_mode"

    aput-object v5, v0, v2

    const-string v5, "button_backlight_timeout"

    aput-object v5, v0, v1

    const/4 v5, 0x2

    const-string v6, "button_brightness"

    aput-object v6, v0, v5

    const-string v6, "dev_force_show_navbar"

    aput-object v6, v0, v3

    const/4 v3, 0x4

    const-string v6, "keyboard_brightness"

    aput-object v6, v0, v3

    const-string v3, "power_menu_actions"

    aput-object v3, v0, v4

    const/4 v3, 0x6

    const-string v4, "stats_collection"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string v4, "qs_show_brightness_slider"

    aput-object v4, v0, v3

    .line 3205
    sget-object v3, Llineageos/providers/LineageSettings$Secure;->NAVIGATION_RING_TARGETS:[Ljava/lang/String;

    aget-object v2, v3, v2

    const/16 v4, 0x8

    aput-object v2, v0, v4

    aget-object v1, v3, v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    aget-object v1, v3, v5

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const/16 v1, 0xb

    const-string v2, "recents_long_press_activity"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "adb_notify"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "adb_port"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "device_hostname"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "kill_app_longpress_back"

    aput-object v2, v0, v1

    const-string v1, "protected_components"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const/16 v2, 0x11

    const-string v3, "live_display_color_matrix"

    aput-object v3, v0, v2

    const/16 v2, 0x12

    const-string v3, "advanced_reboot"

    aput-object v3, v0, v2

    const/16 v2, 0x13

    const-string v3, "lockscreen_target_actions"

    aput-object v3, v0, v2

    const/16 v2, 0x14

    const-string v3, "ring_home_button_behavior"

    aput-object v3, v0, v2

    const/16 v2, 0x15

    const-string v3, "privacy_guard_default"

    aput-object v3, v0, v2

    const/16 v2, 0x16

    const-string v3, "privacy_guard_notification"

    aput-object v3, v0, v2

    const/16 v2, 0x17

    const-string v3, "development_shortcut"

    aput-object v3, v0, v2

    const/16 v2, 0x18

    const-string v3, "performance_profile"

    aput-object v3, v0, v2

    const/16 v2, 0x19

    const-string v3, "app_perf_profiles_enabled"

    aput-object v3, v0, v2

    const/16 v2, 0x1a

    const-string v3, "qs_location_advanced"

    aput-object v3, v0, v2

    const/16 v2, 0x1b

    const-string v3, "lockscreen_visualizer"

    aput-object v3, v0, v2

    const/16 v2, 0x1c

    const-string v3, "lock_screen_pass_to_security_view"

    aput-object v3, v0, v2

    sput-object v0, Llineageos/providers/LineageSettings$Secure;->LEGACY_SECURE_SETTINGS:[Ljava/lang/String;

    .line 3247
    new-instance v0, Llineageos/providers/LineageSettings$Secure$1;

    invoke-direct {v0}, Llineageos/providers/LineageSettings$Secure$1;-><init>()V

    sput-object v0, Llineageos/providers/LineageSettings$Secure;->PROTECTED_COMPONENTS_VALIDATOR:Llineageos/providers/LineageSettings$Validator;

    .line 3267
    new-instance v0, Llineageos/providers/LineageSettings$Secure$2;

    invoke-direct {v0}, Llineageos/providers/LineageSettings$Secure$2;-><init>()V

    sput-object v0, Llineageos/providers/LineageSettings$Secure;->PROTECTED_COMPONENTS_MANAGER_VALIDATOR:Llineageos/providers/LineageSettings$Validator;

    .line 3293
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Llineageos/providers/LineageSettings$Secure;->VALIDATORS:Ljava/util/Map;

    .line 3296
    sget-object v0, Llineageos/providers/LineageSettings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v2, Llineageos/providers/LineageSettings$Secure;->GESTURE_BACK_EXCLUDE_TOP_VALIDATOR:Llineageos/providers/LineageSettings$Validator;

    const-string v3, "gesture_back_exclude_top"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3297
    sget-object v0, Llineageos/providers/LineageSettings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v2, Llineageos/providers/LineageSettings$Secure;->PROTECTED_COMPONENTS_VALIDATOR:Llineageos/providers/LineageSettings$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3298
    sget-object v0, Llineageos/providers/LineageSettings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Llineageos/providers/LineageSettings$Secure;->PROTECTED_COMPONENTS_MANAGER_VALIDATOR:Llineageos/providers/LineageSettings$Validator;

    const-string v2, "protected_component_managers"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3299
    sget-object v0, Llineageos/providers/LineageSettings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Llineageos/providers/LineageSettings$Secure;->NETWORK_TRAFFIC_MODE_VALIDATOR:Llineageos/providers/LineageSettings$Validator;

    const-string v2, "network_traffic_mode"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3300
    sget-object v0, Llineageos/providers/LineageSettings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Llineageos/providers/LineageSettings$Secure;->NETWORK_TRAFFIC_AUTOHIDE_VALIDATOR:Llineageos/providers/LineageSettings$Validator;

    const-string v2, "network_traffic_autohide"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3301
    sget-object v0, Llineageos/providers/LineageSettings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Llineageos/providers/LineageSettings$Secure;->NETWORK_TRAFFIC_UNITS_VALIDATOR:Llineageos/providers/LineageSettings$Validator;

    const-string v2, "network_traffic_units"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3302
    sget-object v0, Llineageos/providers/LineageSettings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Llineageos/providers/LineageSettings$Secure;->NETWORK_TRAFFIC_SHOW_UNITS_VALIDATOR:Llineageos/providers/LineageSettings$Validator;

    const-string v2, "network_traffic_show_units"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3303
    sget-object v0, Llineageos/providers/LineageSettings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Llineageos/providers/LineageSettings$Secure;->TETHERING_ALLOW_VPN_UPSTREAMS_VALIDATOR:Llineageos/providers/LineageSettings$Validator;

    const-string v2, "tethering_allow_vpn_upstreams"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3304
    sget-object v0, Llineageos/providers/LineageSettings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Llineageos/providers/LineageSettings$Secure;->TRUST_NOTIFICATIONS_VALIDATOR:Llineageos/providers/LineageSettings$Validator;

    const-string v2, "trust_notifications"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3305
    sget-object v0, Llineageos/providers/LineageSettings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Llineageos/providers/LineageSettings$Secure;->TRUST_RESTRICT_USB_KEYGUARD_VALIDATOR:Llineageos/providers/LineageSettings$Validator;

    const-string v2, "trust_restrict_usb"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3306
    sget-object v0, Llineageos/providers/LineageSettings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Llineageos/providers/LineageSettings$Secure;->TRUST_WARNINGS_VALIDATOR:Llineageos/providers/LineageSettings$Validator;

    const-string v2, "trust_warnings"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3307
    sget-object v0, Llineageos/providers/LineageSettings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Llineageos/providers/LineageSettings$Secure;->VOLUME_PANEL_ON_LEFT_VALIDATOR:Llineageos/providers/LineageSettings$Validator;

    const-string v2, "volume_panel_on_left"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 1

    .line 2536
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Llineageos/providers/LineageSettings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public static getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    .locals 0

    .line 2541
    invoke-static {p0, p1, p3}, Llineageos/providers/LineageSettings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2543
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :catch_0
    :cond_0
    return p2
.end method

.method public static getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2473
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Llineageos/providers/LineageSettings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2484
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Llineageos/providers/LineageSettings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    move-object p0, p2

    :cond_0
    return-object p0
.end method

.method public static getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 2491
    sget-object v0, Llineageos/providers/LineageSettings$Secure;->MOVED_TO_GLOBAL:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " has moved from LineageSettings.Secure to LineageSettings.Global, value is unchanged."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LineageSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2494
    invoke-static {p0, p1, p2}, Llineageos/providers/LineageSettings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2496
    :cond_0
    sget-object v0, Llineageos/providers/LineageSettings$Secure;->sNameValueCache:Llineageos/providers/LineageSettings$NameValueCache;

    invoke-virtual {v0, p0, p1, p2}, Llineageos/providers/LineageSettings$NameValueCache;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUriFor(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .line 2463
    sget-object v0, Llineageos/providers/LineageSettings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/provider/Settings$NameValueTable;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 1

    .line 2597
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Llineageos/providers/LineageSettings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public static putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    .locals 0

    .line 2603
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2, p3}, Llineageos/providers/LineageSettings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 2507
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Llineageos/providers/LineageSettings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1

    .line 2513
    sget-object v0, Llineageos/providers/LineageSettings$Secure;->MOVED_TO_GLOBAL:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2514
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Setting "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has moved from LineageSettings.Secure to LineageSettings.Global, value is unchanged."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LineageSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 2518
    :cond_0
    sget-object v0, Llineageos/providers/LineageSettings$Secure;->sNameValueCache:Llineageos/providers/LineageSettings$NameValueCache;

    invoke-virtual {v0, p0, p1, p2, p3}, Llineageos/providers/LineageSettings$NameValueCache;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method
