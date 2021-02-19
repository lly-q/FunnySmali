.class final Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;
.super Ljava/lang/Object;
.source "CellularTile.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/CellularTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CellularDetailAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/CellularTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/CellularTile;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/CellularTile;Lcom/android/systemui/qs/tiles/CellularTile$1;)V
    .locals 0

    .line 328
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/CellularTile;)V

    return-void
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    goto :goto_0

    .line 362
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-static {p2}, Lcom/android/systemui/qs/tiles/CellularTile;->access$1200(Lcom/android/systemui/qs/tiles/CellularTile;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$layout;->data_usage:I

    invoke-virtual {p2, v0, p3, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :goto_0
    check-cast p2, Lcom/android/systemui/qs/tiles/DataUsageDetailView;

    .line 363
    iget-object p3, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-static {p3}, Lcom/android/systemui/qs/tiles/CellularTile;->access$1000(Lcom/android/systemui/qs/tiles/CellularTile;)Lcom/android/settingslib/net/DataUsageController;

    move-result-object p3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    .line 364
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/CellularTile;->access$1300(Lcom/android/systemui/qs/tiles/CellularTile;)Landroid/content/Context;

    move-result-object v0

    .line 365
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    .line 364
    invoke-static {v0, v1}, Lcom/android/settingslib/net/DataUsageUtils;->getMobileTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;

    move-result-object v0

    .line 363
    invoke-virtual {p3, v0}, Lcom/android/settingslib/net/DataUsageController;->getDataUsageInfo(Landroid/net/NetworkTemplate;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object p3

    if-nez p3, :cond_1

    return-object p2

    .line 367
    :cond_1
    invoke-virtual {p2, p3}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->bind(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)V

    .line 368
    sget p3, Lcom/android/systemui/R$id;->roaming_text:I

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/CellularTile;->access$1400(Lcom/android/systemui/qs/tiles/CellularTile;)Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->access$200(Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;)Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->roaming:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x4

    :goto_1
    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    .line 370
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/CellularTile;->access$1500(Lcom/android/systemui/qs/tiles/CellularTile;)Landroid/telephony/SubscriptionManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/SubscriptionManager;->getAvailableSubscriptionInfoList()Ljava/util/List;

    move-result-object p1

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result p3

    invoke-virtual {p2, p1, p3}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->setSubInfoList(Ljava/util/List;I)V

    .line 371
    new-instance p1, Lcom/android/systemui/qs/tiles/-$$Lambda$KoJy9rGO8bn7m7COeqZaqYUoUkk;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/-$$Lambda$KoJy9rGO8bn7m7COeqZaqYUoUkk;-><init>(Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;)V

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->setDataSimSwitchListener(Lcom/android/systemui/qs/tiles/DataUsageDetailView$DataSimSwitchListener;)V

    return-object p2
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x75

    return p0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 0

    .line 344
    invoke-static {}, Lcom/android/systemui/qs/tiles/CellularTile;->getCellularSettingIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 332
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/CellularTile;->access$900(Lcom/android/systemui/qs/tiles/CellularTile;)Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->quick_settings_cellular_detail_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/CellularTile;->access$1000(Lcom/android/systemui/qs/tiles/CellularTile;)Lcom/android/settingslib/net/DataUsageController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/CellularTile;->access$1000(Lcom/android/systemui/qs/tiles/CellularTile;)Lcom/android/settingslib/net/DataUsageController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataEnabled()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public setMobileDataEnabled(Z)V
    .locals 0

    .line 384
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->fireToggleStateChanged(Z)V

    return-void
.end method

.method public setToggleState(Z)V
    .locals 2

    .line 349
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/CellularTile;->access$1100(Lcom/android/systemui/qs/tiles/CellularTile;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x9b

    invoke-static {v0, v1, p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 350
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/CellularTile;->access$1000(Lcom/android/systemui/qs/tiles/CellularTile;)Lcom/android/settingslib/net/DataUsageController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/settingslib/net/DataUsageController;->setMobileDataEnabled(Z)V

    return-void
.end method

.method public switchDataSim(I)V
    .locals 3

    .line 376
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/CellularTile;->access$1000(Lcom/android/systemui/qs/tiles/CellularTile;)Lcom/android/settingslib/net/DataUsageController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataEnabled()Z

    move-result v0

    .line 377
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/CellularTile;->access$1600(Lcom/android/systemui/qs/tiles/CellularTile;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 378
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/CellularTile;->access$1500(Lcom/android/systemui/qs/tiles/CellularTile;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    .line 379
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/CellularTile;->access$1000(Lcom/android/systemui/qs/tiles/CellularTile;)Lcom/android/settingslib/net/DataUsageController;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/settingslib/net/DataUsageController;->setMobileDataEnabled(Z)V

    .line 380
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    return-void
.end method
