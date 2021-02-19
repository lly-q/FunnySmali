.class public final Lcom/android/systemui/privacy/PrivacyItemControllerKt;
.super Ljava/lang/Object;
.source "PrivacyItemController.kt"


# direct methods
.method public static final isPermissionsHubEnabled()Z
    .locals 3

    const-string v0, "privacy"

    const-string v1, "permissions_hub_enabled"

    const/4 v2, 0x1

    .line 46
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
