.class public Lcom/android/systemui/statusbar/policy/WifiIcons;
.super Ljava/lang/Object;
.source "WifiIcons.java"


# static fields
.field static final QS_WIFI_FULL_ICONS:[I

.field public static final QS_WIFI_SIGNAL_STRENGTH:[[I

.field static final WIFI_FULL_ICONS:[I

.field static final WIFI_LEVEL_COUNT:I

.field private static final WIFI_NO_INTERNET_ICONS:[I

.field static final WIFI_SIGNAL_STRENGTH:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x5

    new-array v1, v0, [I

    .line 23
    sget v2, Lcom/android/systemui/R$drawable;->ic_wifi_signal_0:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/R$drawable;->ic_wifi_signal_1:I

    const/4 v4, 0x1

    aput v2, v1, v4

    sget v2, Lcom/android/systemui/R$drawable;->ic_wifi_signal_2:I

    const/4 v5, 0x2

    aput v2, v1, v5

    sget v2, Lcom/android/systemui/R$drawable;->ic_wifi_signal_3:I

    const/4 v6, 0x3

    aput v2, v1, v6

    sget v2, Lcom/android/systemui/R$drawable;->ic_wifi_signal_4:I

    const/4 v7, 0x4

    aput v2, v1, v7

    sput-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_FULL_ICONS:[I

    new-array v1, v0, [I

    .line 31
    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_FULL_ICONS:[I

    new-array v0, v0, [I

    .line 39
    sget v1, Lcom/android/systemui/R$drawable;->ic_qs_wifi_0:I

    aput v1, v0, v3

    sget v1, Lcom/android/systemui/R$drawable;->ic_qs_wifi_1:I

    aput v1, v0, v4

    sget v1, Lcom/android/systemui/R$drawable;->ic_qs_wifi_2:I

    aput v1, v0, v5

    sget v1, Lcom/android/systemui/R$drawable;->ic_qs_wifi_3:I

    aput v1, v0, v6

    sget v1, Lcom/android/systemui/R$drawable;->ic_qs_wifi_4:I

    aput v1, v0, v7

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_NO_INTERNET_ICONS:[I

    new-array v0, v5, [[I

    .line 47
    sget-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_NO_INTERNET_ICONS:[I

    aput-object v1, v0, v3

    sget-object v2, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_FULL_ICONS:[I

    aput-object v2, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH:[[I

    new-array v0, v5, [[I

    aput-object v1, v0, v3

    .line 51
    sget-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_FULL_ICONS:[I

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    .line 60
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    aget-object v0, v0, v3

    array-length v0, v0

    sput v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_LEVEL_COUNT:I

    return-void

    nop

    :array_0
    .array-data 4
        0x1080559
        0x108055a
        0x108055b
        0x108055c
        0x108055d
    .end array-data
.end method
