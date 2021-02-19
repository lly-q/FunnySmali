.class public Lcom/android/systemui/qs/tiles/DataUsageDetailView;
.super Landroid/widget/LinearLayout;
.source "DataUsageDetailView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/DataUsageDetailView$DataSimSwitchListener;
    }
.end annotation


# instance fields
.field private final FORMAT:Ljava/text/DecimalFormat;

.field private mDataSimSwitchListener:Lcom/android/systemui/qs/tiles/DataUsageDetailView$DataSimSwitchListener;

.field private mSubsGroupListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    new-instance p1, Ljava/text/DecimalFormat;

    const-string p2, "#.##"

    invoke-direct {p1, p2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->FORMAT:Ljava/text/DecimalFormat;

    .line 50
    new-instance p1, Lcom/android/systemui/qs/tiles/DataUsageDetailView$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/DataUsageDetailView$1;-><init>(Lcom/android/systemui/qs/tiles/DataUsageDetailView;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->mSubsGroupListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/DataUsageDetailView;)Lcom/android/systemui/qs/tiles/DataUsageDetailView$DataSimSwitchListener;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->mDataSimSwitchListener:Lcom/android/systemui/qs/tiles/DataUsageDetailView$DataSimSwitchListener;

    return-object p0
.end method

.method private formatDataUsage(J)Ljava/lang/CharSequence;
    .locals 3

    .line 139
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, p1, p2, v1}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object p1

    .line 141
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object p2

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p1, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object p1, p1, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const p1, 0x1040290

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bind(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 78
    iget-object v2, v0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 84
    iget-wide v3, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    iget-wide v5, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    cmp-long v5, v3, v5

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-ltz v5, :cond_2

    iget-wide v11, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    cmp-long v5, v11, v7

    if-gtz v5, :cond_0

    goto :goto_0

    :cond_0
    cmp-long v5, v3, v11

    if-gtz v5, :cond_1

    .line 92
    sget v5, Lcom/android/systemui/R$string;->quick_settings_cellular_detail_remaining_data:I

    sub-long/2addr v11, v3

    .line 94
    sget v13, Lcom/android/systemui/R$string;->quick_settings_cellular_detail_data_used:I

    new-array v14, v9, [Ljava/lang/Object;

    .line 95
    invoke-direct {v0, v3, v4}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->formatDataUsage(J)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v14, v10

    .line 94
    invoke-virtual {v2, v13, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 96
    sget v4, Lcom/android/systemui/R$string;->quick_settings_cellular_detail_data_limit:I

    new-array v13, v9, [Ljava/lang/Object;

    iget-wide v14, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    .line 97
    invoke-direct {v0, v14, v15}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->formatDataUsage(J)Ljava/lang/CharSequence;

    move-result-object v14

    aput-object v14, v13, v10

    .line 96
    invoke-virtual {v2, v4, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 100
    :cond_1
    sget v5, Lcom/android/systemui/R$string;->quick_settings_cellular_detail_over_limit:I

    sub-long v11, v3, v11

    .line 102
    sget v6, Lcom/android/systemui/R$string;->quick_settings_cellular_detail_data_used:I

    new-array v13, v9, [Ljava/lang/Object;

    .line 103
    invoke-direct {v0, v3, v4}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->formatDataUsage(J)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v13, v10

    .line 102
    invoke-virtual {v2, v6, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 104
    sget v4, Lcom/android/systemui/R$string;->quick_settings_cellular_detail_data_limit:I

    new-array v6, v9, [Ljava/lang/Object;

    iget-wide v13, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    .line 105
    invoke-direct {v0, v13, v14}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->formatDataUsage(J)Ljava/lang/CharSequence;

    move-result-object v13

    aput-object v13, v6, v10

    .line 104
    invoke-virtual {v2, v4, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 106
    iget-object v2, v0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settingslib/Utils;->getColorError(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v2

    move-object/from16 v18, v6

    move-object v6, v2

    move-object/from16 v2, v18

    goto :goto_1

    .line 86
    :cond_2
    :goto_0
    sget v5, Lcom/android/systemui/R$string;->quick_settings_cellular_detail_data_usage:I

    .line 87
    iget-wide v11, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    .line 88
    sget v3, Lcom/android/systemui/R$string;->quick_settings_cellular_detail_data_warning:I

    new-array v4, v9, [Ljava/lang/Object;

    iget-wide v13, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    .line 89
    invoke-direct {v0, v13, v14}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->formatDataUsage(J)Ljava/lang/CharSequence;

    move-result-object v13

    aput-object v13, v4, v10

    .line 88
    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v6

    :goto_1
    if-nez v6, :cond_3

    .line 110
    iget-object v4, v0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settingslib/Utils;->getColorAccent(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v6

    :cond_3
    const v4, 0x1020016

    .line 113
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 114
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 115
    sget v4, Lcom/android/systemui/R$id;->usage_text:I

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 116
    invoke-direct {v0, v11, v12}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->formatDataUsage(J)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 118
    sget v4, Lcom/android/systemui/R$id;->usage_graph:I

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/DataUsageGraph;

    .line 119
    iget-wide v12, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    iget-wide v14, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    iget-wide v5, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    move-object v11, v4

    move-wide/from16 v16, v5

    invoke-virtual/range {v11 .. v17}, Lcom/android/systemui/qs/DataUsageGraph;->setLevels(JJJ)V

    .line 120
    sget v5, Lcom/android/systemui/R$id;->usage_carrier_text:I

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 121
    iget-object v6, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->carrier:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    sget v5, Lcom/android/systemui/R$id;->usage_period_text:I

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 123
    iget-object v6, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->period:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    sget v5, Lcom/android/systemui/R$id;->usage_info_top_text:I

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const/16 v6, 0x8

    if-eqz v3, :cond_4

    move v11, v10

    goto :goto_2

    :cond_4
    move v11, v6

    .line 125
    :goto_2
    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    sget v3, Lcom/android/systemui/R$id;->usage_info_bottom_text:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v2, :cond_5

    move v3, v10

    goto :goto_3

    :cond_5
    move v3, v6

    .line 128
    :goto_3
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-wide v2, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    cmp-long v0, v2, v7

    if-gtz v0, :cond_7

    iget-wide v0, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    cmp-long v0, v0, v7

    if-lez v0, :cond_6

    goto :goto_4

    :cond_6
    move v9, v10

    :cond_7
    :goto_4
    if-eqz v9, :cond_8

    goto :goto_5

    :cond_8
    move v10, v6

    .line 131
    :goto_5
    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    if-nez v9, :cond_9

    .line 133
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_9
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 64
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 65
    sget p1, Lcom/android/systemui/R$dimen;->qs_data_usage_text_size:I

    const v0, 0x1020016

    invoke-static {p0, v0, p1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    .line 66
    sget p1, Lcom/android/systemui/R$id;->usage_text:I

    sget v0, Lcom/android/systemui/R$dimen;->qs_data_usage_usage_text_size:I

    invoke-static {p0, p1, v0}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    .line 67
    sget p1, Lcom/android/systemui/R$id;->usage_carrier_text:I

    sget v0, Lcom/android/systemui/R$dimen;->qs_data_usage_text_size:I

    invoke-static {p0, p1, v0}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    .line 69
    sget p1, Lcom/android/systemui/R$id;->usage_info_top_text:I

    sget v0, Lcom/android/systemui/R$dimen;->qs_data_usage_text_size:I

    invoke-static {p0, p1, v0}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    .line 71
    sget p1, Lcom/android/systemui/R$id;->usage_period_text:I

    sget v0, Lcom/android/systemui/R$dimen;->qs_data_usage_text_size:I

    invoke-static {p0, p1, v0}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    .line 72
    sget p1, Lcom/android/systemui/R$id;->usage_info_bottom_text:I

    sget v0, Lcom/android/systemui/R$dimen;->qs_data_usage_text_size:I

    invoke-static {p0, p1, v0}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    .line 74
    sget p1, Lcom/android/systemui/R$id;->data_sim_title:I

    sget v0, Lcom/android/systemui/R$dimen;->qs_data_usage_text_size:I

    invoke-static {p0, p1, v0}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    return-void
.end method

.method public setDataSimSwitchListener(Lcom/android/systemui/qs/tiles/DataUsageDetailView$DataSimSwitchListener;)V
    .locals 2

    .line 165
    sget v0, Lcom/android/systemui/R$id;->data_sim_group:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 166
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->mSubsGroupListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 167
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->mDataSimSwitchListener:Lcom/android/systemui/qs/tiles/DataUsageDetailView$DataSimSwitchListener;

    return-void
.end method

.method public setSubInfoList(Ljava/util/List;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;I)V"
        }
    .end annotation

    .line 146
    sget v0, Lcom/android/systemui/R$id;->data_sim_switch:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 147
    sget v1, Lcom/android/systemui/R$id;->data_sim_group:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    if-eqz p1, :cond_2

    .line 149
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 150
    invoke-virtual {v1}, Landroid/widget/RadioGroup;->removeAllViews()V

    .line 151
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 152
    new-instance v5, Landroid/widget/RadioButton;

    iget-object v6, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 153
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setId(I)V

    .line 154
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 155
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    if-ne p2, v2, :cond_0

    move v4, v3

    :cond_0
    invoke-virtual {v5, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 156
    invoke-virtual {v1, v5}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 158
    :cond_1
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    :cond_2
    const/16 p0, 0x8

    .line 160
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    return-void
.end method
