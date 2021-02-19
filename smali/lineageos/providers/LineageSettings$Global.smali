.class public final Llineageos/providers/LineageSettings$Global;
.super Landroid/provider/Settings$NameValueTable;
.source "LineageSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llineageos/providers/LineageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Global"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final LEGACY_GLOBAL_SETTINGS:[Ljava/lang/String;

.field private static final sNameValueCache:Llineageos/providers/LineageSettings$NameValueCache;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "content://lineagesettings/global"

    .line 3317
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Llineageos/providers/LineageSettings$Global;->CONTENT_URI:Landroid/net/Uri;

    .line 3321
    new-instance v0, Llineageos/providers/LineageSettings$NameValueCache;

    sget-object v1, Llineageos/providers/LineageSettings$Global;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "sys.lineage_settings_global_version"

    const-string v3, "GET_global"

    const-string v4, "PUT_global"

    invoke-direct {v0, v2, v1, v3, v4}, Llineageos/providers/LineageSettings$NameValueCache;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Llineageos/providers/LineageSettings$Global;->sNameValueCache:Llineageos/providers/LineageSettings$NameValueCache;

    const-string v0, "wake_when_plugged_or_unplugged"

    const-string v1, "power_notifications_vibrate"

    const-string v2, "power_notifications_ringtone"

    const-string v3, "zen_disable_ducking_during_media_playback"

    const-string v4, "wifi_auto_priority"

    .line 3755
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Llineageos/providers/LineageSettings$Global;->LEGACY_GLOBAL_SETTINGS:[Ljava/lang/String;

    return-void
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 1

    .line 3438
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Llineageos/providers/LineageSettings$Global;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public static getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    .locals 0

    .line 3443
    invoke-static {p0, p1, p3}, Llineageos/providers/LineageSettings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3445
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

    .line 3385
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Llineageos/providers/LineageSettings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 3403
    sget-object v0, Llineageos/providers/LineageSettings$Global;->sNameValueCache:Llineageos/providers/LineageSettings$NameValueCache;

    invoke-virtual {v0, p0, p1, p2}, Llineageos/providers/LineageSettings$NameValueCache;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUriFor(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .line 3375
    sget-object v0, Llineageos/providers/LineageSettings$Global;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/provider/Settings$NameValueTable;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 1

    .line 3499
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Llineageos/providers/LineageSettings$Global;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public static putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    .locals 0

    .line 3505
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2, p3}, Llineageos/providers/LineageSettings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 3414
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Llineageos/providers/LineageSettings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1

    .line 3420
    sget-object v0, Llineageos/providers/LineageSettings$Global;->sNameValueCache:Llineageos/providers/LineageSettings$NameValueCache;

    invoke-virtual {v0, p0, p1, p2, p3}, Llineageos/providers/LineageSettings$NameValueCache;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method
