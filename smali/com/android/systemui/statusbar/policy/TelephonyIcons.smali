.class Lcom/android/systemui/statusbar/policy/TelephonyIcons;
.super Ljava/lang/Object;
.source "TelephonyIcons.java"


# static fields
.field static final CARRIER_NETWORK_CHANGE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final DATA_DISABLED:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FLIGHT_MODE_ICON:I

.field static final FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FOUR_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final H:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final H_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final ICON_1X:I

.field static final ICON_3G:I

.field static final ICON_4G:I

.field static final ICON_4G_PLUS:I

.field static final ICON_5G:I

.field static final ICON_5G_E:I

.field static final ICON_5G_PLUS:I

.field static final ICON_E:I

.field static final ICON_G:I

.field static final ICON_H:I

.field static final ICON_H_PLUS:I

.field static final ICON_LTE:I

.field static final ICON_LTE_PLUS:I

.field static final ICON_NAME_TO_ICON:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;",
            ">;"
        }
    .end annotation
.end field

.field static final LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final LTE_CA_5G_E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final LTE_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final NOT_DEFAULT_DATA:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final NR_5G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final NR_5G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final ONE_X:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final WFC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 28

    .line 27
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_airplane_mode:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FLIGHT_MODE_ICON:I

    .line 29
    sget v0, Lcom/android/systemui/R$drawable;->ic_lte_mobiledata:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_LTE:I

    .line 30
    sget v0, Lcom/android/systemui/R$drawable;->ic_lte_plus_mobiledata:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_LTE_PLUS:I

    .line 31
    sget v0, Lcom/android/systemui/R$drawable;->ic_g_mobiledata:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_G:I

    .line 32
    sget v0, Lcom/android/systemui/R$drawable;->ic_e_mobiledata:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_E:I

    .line 33
    sget v0, Lcom/android/systemui/R$drawable;->ic_h_mobiledata:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_H:I

    .line 34
    sget v0, Lcom/android/systemui/R$drawable;->ic_h_plus_mobiledata:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_H_PLUS:I

    .line 35
    sget v0, Lcom/android/systemui/R$drawable;->ic_3g_mobiledata:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_3G:I

    .line 36
    sget v0, Lcom/android/systemui/R$drawable;->ic_4g_mobiledata:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_4G:I

    .line 37
    sget v0, Lcom/android/systemui/R$drawable;->ic_4g_plus_mobiledata:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_4G_PLUS:I

    .line 38
    sget v0, Lcom/android/systemui/R$drawable;->ic_5g_e_mobiledata:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_5G_E:I

    .line 39
    sget v0, Lcom/android/systemui/R$drawable;->ic_1x_mobiledata:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_1X:I

    .line 40
    sget v0, Lcom/android/systemui/R$drawable;->ic_5g_mobiledata:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_5G:I

    .line 41
    sget v0, Lcom/android/systemui/R$drawable;->ic_5g_plus_mobiledata:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_5G_PLUS:I

    .line 43
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v14, 0x0

    aget v10, v5, v14

    sget v11, Lcom/android/systemui/R$string;->carrier_network_change_mode:I

    const-string v2, "CARRIER_NETWORK_CHANGE"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->CARRIER_NETWORK_CHANGE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 56
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v19, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v24, v19, v14

    sget v25, Lcom/android/systemui/R$string;->data_connection_3g:I

    sget v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_3G:I

    const-string v16, "3G"

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v27, 0x1

    move-object v15, v0

    invoke-direct/range {v15 .. v27}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 69
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v10, v5, v14

    const-string v2, "WFC"

    const/4 v11, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->WFC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 80
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v19, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v24, v19, v14

    const-string v16, "Unknown"

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object v15, v0

    invoke-direct/range {v15 .. v27}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 91
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v10, v5, v14

    sget v11, Lcom/android/systemui/R$string;->data_connection_edge:I

    sget v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_E:I

    const-string v2, "E"

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 104
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v19, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v24, v19, v14

    sget v25, Lcom/android/systemui/R$string;->data_connection_cdma:I

    sget v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_1X:I

    const-string v16, "1X"

    const/16 v27, 0x1

    move-object v15, v0

    invoke-direct/range {v15 .. v27}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONE_X:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 117
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v10, v5, v14

    sget v11, Lcom/android/systemui/R$string;->data_connection_gprs:I

    sget v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_G:I

    const-string v2, "G"

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 130
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v19, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v24, v19, v14

    sget v25, Lcom/android/systemui/R$string;->data_connection_3_5g:I

    sget v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_H:I

    const-string v16, "H"

    const/16 v27, 0x0

    move-object v15, v0

    invoke-direct/range {v15 .. v27}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 143
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v10, v5, v14

    sget v11, Lcom/android/systemui/R$string;->data_connection_3_5g_plus:I

    sget v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_H_PLUS:I

    const-string v2, "H+"

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 156
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v19, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v24, v19, v14

    sget v25, Lcom/android/systemui/R$string;->data_connection_4g:I

    sget v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_4G:I

    const-string v16, "4G"

    const/16 v27, 0x1

    move-object v15, v0

    invoke-direct/range {v15 .. v27}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 169
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v10, v5, v14

    sget v11, Lcom/android/systemui/R$string;->data_connection_4g_plus:I

    sget v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_4G_PLUS:I

    const-string v2, "4G+"

    const/4 v13, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 182
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v19, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v24, v19, v14

    sget v25, Lcom/android/systemui/R$string;->data_connection_lte:I

    sget v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_LTE:I

    const-string v16, "LTE"

    move-object v15, v0

    invoke-direct/range {v15 .. v27}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 195
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v10, v5, v14

    sget v11, Lcom/android/systemui/R$string;->data_connection_lte_plus:I

    sget v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_LTE_PLUS:I

    const-string v2, "LTE+"

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 208
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v19, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v24, v19, v14

    sget v25, Lcom/android/systemui/R$string;->data_connection_5ge_html:I

    sget v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_5G_E:I

    const-string v16, "5Ge"

    move-object v15, v0

    invoke-direct/range {v15 .. v27}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_CA_5G_E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 221
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v10, v5, v14

    sget v11, Lcom/android/systemui/R$string;->data_connection_5g:I

    sget v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_5G:I

    const-string v2, "5G"

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->NR_5G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 235
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v19, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v24, v19, v14

    sget v25, Lcom/android/systemui/R$string;->data_connection_5g_plus:I

    sget v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_5G_PLUS:I

    const-string v16, "5G_PLUS"

    move-object v15, v0

    invoke-direct/range {v15 .. v27}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->NR_5G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 249
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v10, v5, v14

    sget v11, Lcom/android/systemui/R$string;->cell_data_off_content_description:I

    const-string v2, "DataDisabled"

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DISABLED:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 262
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v19, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v24, v19, v14

    sget v25, Lcom/android/systemui/R$string;->not_default_data_content_description:I

    const-string v16, "NotDefaultData"

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object v15, v0

    invoke-direct/range {v15 .. v27}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->NOT_DEFAULT_DATA:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 281
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    .line 282
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->CARRIER_NETWORK_CHANGE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v2, "carrier_network_change"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v2, "3g"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->WFC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v2, "wfc"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v2, "unknown"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v2, "e"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONE_X:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v2, "1x"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v2, "g"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v2, "h"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v2, "h+"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v2, "4g"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v2, "4g+"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_CA_5G_E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v2, "5ge"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v2, "lte"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v2, "lte+"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->NR_5G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v2, "5g"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->NR_5G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v2, "5g_plus"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DISABLED:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v2, "datadisable"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->NOT_DEFAULT_DATA:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v2, "notdefaultdata"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
