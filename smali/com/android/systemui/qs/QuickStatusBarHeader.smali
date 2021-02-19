.class public Lcom/android/systemui/qs/QuickStatusBarHeader;
.super Landroid/widget/RelativeLayout;
.source "QuickStatusBarHeader.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;
.implements Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# instance fields
.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private final mAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

.field private mBatteryRemainingIcon:Lcom/android/systemui/BatteryMeterView;

.field private mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

.field private mCarrierGroup:Lcom/android/systemui/qs/QSCarrierGroup;

.field private mClockView:Lcom/android/systemui/statusbar/policy/Clock;

.field private mDateView:Lcom/android/systemui/statusbar/policy/DateView;

.field private mDualToneHandler:Lcom/android/systemui/DualToneHandler;

.field private mExpanded:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHasTopCutout:Z

.field protected mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

.field private mHeaderTextContainerAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mHeaderTextContainerView:Landroid/view/View;

.field protected mHost:Lcom/android/systemui/qs/QSTileHost;

.field private mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

.field private mIsQsAutoBrightnessEnabled:Z

.field private mIsQuickQsBrightnessEnabled:Z

.field private mLandscape:Z

.field private mListening:Z

.field private mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

.field private mNextAlarmContainer:Landroid/view/View;

.field private mNextAlarmIcon:Landroid/widget/ImageView;

.field private mNextAlarmTextView:Landroid/widget/TextView;

.field private mPICCallback:Lcom/android/systemui/privacy/PrivacyItemController$Callback;

.field private mPermissionsHubEnabled:Z

.field private mPrivacyChip:Lcom/android/systemui/privacy/OngoingPrivacyChip;

.field private mPrivacyChipAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mPrivacyChipLogged:Z

.field private mPrivacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

.field private final mPropertyListener:Landroid/provider/DeviceConfig$OnPropertyChangedListener;

.field private mQsDisabled:Z

.field private mQsPanel:Lcom/android/systemui/qs/QSPanel;

.field private mQuickQsBrightness:Landroid/view/View;

.field private mQuickQsStatusIcons:Landroid/view/View;

.field private mRingerContainer:Landroid/view/View;

.field private mRingerMode:I

.field private mRingerModeIcon:Landroid/widget/ImageView;

.field private mRingerModeTextView:Landroid/widget/TextView;

.field private final mRingerReceiver:Landroid/content/BroadcastReceiver;

.field private mSpace:Landroid/widget/Space;

.field private final mStatusBarIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

.field private mStatusIconsAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mStatusSeparator:Landroid/view/View;

.field private mSystemIconsView:Landroid/view/View;

.field private final mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/statusbar/policy/NextAlarmController;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/statusbar/phone/StatusBarIconController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/privacy/PrivacyItemController;)V
    .locals 0

    .line 205
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 116
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x2

    .line 141
    iput p2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerMode:I

    .line 168
    new-instance p2, Lcom/android/systemui/qs/QuickStatusBarHeader$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/QuickStatusBarHeader$1;-><init>(Lcom/android/systemui/qs/QuickStatusBarHeader;)V

    iput-object p2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerReceiver:Landroid/content/BroadcastReceiver;

    const/4 p2, 0x0

    .line 175
    iput-boolean p2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHasTopCutout:Z

    .line 176
    iput-boolean p2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mPrivacyChipLogged:Z

    .line 178
    new-instance p2, Lcom/android/systemui/qs/QuickStatusBarHeader$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/QuickStatusBarHeader$2;-><init>(Lcom/android/systemui/qs/QuickStatusBarHeader;)V

    iput-object p2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mPropertyListener:Landroid/provider/DeviceConfig$OnPropertyChangedListener;

    .line 192
    new-instance p2, Lcom/android/systemui/qs/QuickStatusBarHeader$3;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/QuickStatusBarHeader$3;-><init>(Lcom/android/systemui/qs/QuickStatusBarHeader;)V

    iput-object p2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mPICCallback:Lcom/android/systemui/privacy/PrivacyItemController$Callback;

    .line 206
    iput-object p3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    .line 207
    iput-object p4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 208
    iput-object p5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 209
    iput-object p6, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 210
    iput-object p7, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mPrivacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

    .line 211
    new-instance p2, Lcom/android/systemui/DualToneHandler;

    new-instance p3, Landroid/view/ContextThemeWrapper;

    sget p4, Lcom/android/systemui/R$style;->QSHeaderTheme:I

    invoke-direct {p3, p1, p4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p2, p3}, Lcom/android/systemui/DualToneHandler;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDualToneHandler:Lcom/android/systemui/DualToneHandler;

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/qs/QuickStatusBarHeader;I)I
    .locals 0

    .line 99
    iput p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerMode:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/QuickStatusBarHeader;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateStatusText()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/systemui/qs/QuickStatusBarHeader;Z)Z
    .locals 0

    .line 99
    iput-boolean p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mPermissionsHubEnabled:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/QuickStatusBarHeader;)Ljava/util/List;
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getIgnoredIconSlots()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/QuickStatusBarHeader;)Lcom/android/systemui/privacy/OngoingPrivacyChip;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mPrivacyChip:Lcom/android/systemui/privacy/OngoingPrivacyChip;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/QuickStatusBarHeader;Z)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setChipVisibility(Z)V

    return-void
.end method

.method private applyDarkness(ILandroid/graphics/Rect;FI)V
    .locals 0

    .line 370
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 371
    instance-of p1, p0, Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;

    if-eqz p1, :cond_0

    .line 372
    check-cast p0, Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;

    invoke-interface {p0, p2, p3, p4}, Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;->onDarkChanged(Landroid/graphics/Rect;FI)V

    :cond_0
    return-void
.end method

.method private formatNextAlarm(Landroid/app/AlarmManager$AlarmClockInfo;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const-string p0, ""

    return-object p0

    .line 708
    :cond_0
    iget-object p0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "EHm"

    goto :goto_0

    :cond_1
    const-string p0, "Ehma"

    .line 710
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 711
    invoke-virtual {p1}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getColorIntensity(I)F
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    return p0
.end method

.method private getIgnoredIconSlots()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 288
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 289
    iget-object v1, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10406bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    iget-object v1, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10406c8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    iget-boolean v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mPermissionsHubEnabled:Z

    if-eqz v1, :cond_0

    .line 294
    iget-object p0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x10406c6

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method private setChipVisibility(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 313
    iget-boolean p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mPermissionsHubEnabled:Z

    if-eqz p1, :cond_0

    .line 314
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mPrivacyChip:Lcom/android/systemui/privacy/OngoingPrivacyChip;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 317
    iget-boolean p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mPrivacyChipLogged:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mListening:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 318
    iput-boolean p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mPrivacyChipLogged:Z

    const/16 p0, 0xb4

    .line 319
    invoke-static {p0, p1}, Landroid/util/StatsLog;->write(II)I

    goto :goto_0

    .line 323
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mPrivacyChip:Lcom/android/systemui/privacy/OngoingPrivacyChip;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateAlarmStatus()Z
    .locals 8

    .line 353
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 354
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 357
    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v4, :cond_1

    .line 359
    iget-object v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmTextView:Landroid/widget/TextView;

    invoke-direct {p0, v4}, Lcom/android/systemui/qs/QuickStatusBarHeader;->formatNextAlarm(Landroid/app/AlarmManager$AlarmClockInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v2

    .line 361
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmIcon:Landroid/widget/ImageView;

    const/16 v6, 0x8

    if-eqz v4, :cond_2

    move v7, v2

    goto :goto_2

    :cond_2
    move v7, v6

    :goto_2
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 362
    iget-object v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    move v7, v2

    goto :goto_3

    :cond_3
    move v7, v6

    :goto_3
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 363
    iget-object v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmContainer:Landroid/view/View;

    if-eqz v4, :cond_4

    move v6, v2

    :cond_4
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    if-ne v0, v4, :cond_6

    .line 365
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmTextView:Landroid/widget/TextView;

    .line 366
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {v3, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_4

    :cond_5
    move v1, v2

    :cond_6
    :goto_4
    return v1
.end method

.method private updateHeaderTextContainerAlphaAnimator()V
    .locals 4

    .line 471
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderTextContainerView:Landroid/view/View;

    const/4 v2, 0x3

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    const-string v3, "alpha"

    .line 472
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 473
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderTextContainerAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateMinimumHeight()V
    .locals 5

    .line 394
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105021c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 396
    iget-object v1, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->qs_quick_header_panel_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 399
    iget-boolean v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mIsQuickQsBrightnessEnabled:Z

    if-eqz v2, :cond_0

    .line 400
    iget-object v2, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->brightness_mirror_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    .line 402
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$dimen;->qs_tile_margin_top:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    :cond_0
    add-int/2addr v0, v1

    .line 406
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setMinimumHeight(I)V

    return-void
.end method

.method private updatePrivacyChipAlphaAnimator()V
    .locals 4

    .line 477
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mPrivacyChip:Lcom/android/systemui/privacy/OngoingPrivacyChip;

    const/4 v2, 0x3

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    const-string v3, "alpha"

    .line 478
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 479
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mPrivacyChipAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateResources()V
    .locals 7

    .line 410
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 411
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateMinimumHeight()V

    .line 413
    sget v1, Lcom/android/systemui/R$bool;->qs_custom_header:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 416
    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderTextContainerView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->qs_header_tooltip_height:I

    .line 417
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 418
    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderTextContainerView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v2, 0x10501f5

    .line 420
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 422
    sget v4, Lcom/android/systemui/R$dimen;->qs_header_image_offset:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    add-int/2addr v2, v4

    .line 424
    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSystemIconsView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v2, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 425
    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSystemIconsView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 427
    iget-boolean v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mIsQuickQsBrightnessEnabled:Z

    const/16 v5, 0x8

    if-eqz v4, :cond_2

    .line 428
    iget-boolean v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mIsQsAutoBrightnessEnabled:Z

    if-eqz v4, :cond_1

    const v4, 0x1110028

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 430
    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQuickQsBrightness:Landroid/view/View;

    sget v5, Lcom/android/systemui/R$id;->brightness_icon:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 432
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQuickQsBrightness:Landroid/view/View;

    sget v6, Lcom/android/systemui/R$id;->brightness_icon:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 434
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQuickQsBrightness:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 436
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQuickQsBrightness:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 439
    :goto_2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 440
    iget-boolean v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQsDisabled:Z

    if-eqz v5, :cond_3

    .line 441
    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_3

    :cond_3
    const v2, 0x10501f6

    .line 443
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    if-eqz v1, :cond_4

    .line 447
    sget v5, Lcom/android/systemui/R$dimen;->qs_header_image_offset:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v2, v0

    .line 451
    :cond_4
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getMinimumHeight()I

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 454
    :goto_3
    invoke-virtual {p0, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 456
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateStatusIconAlphaAnimator()V

    .line 457
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateHeaderTextContainerAlphaAnimator()V

    .line 458
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updatePrivacyChipAlphaAnimator()V

    .line 460
    iget-boolean v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mLandscape:Z

    if-eqz v0, :cond_5

    if-nez v1, :cond_5

    const/4 v3, 0x1

    .line 461
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockView:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/Clock;->useWallpaperTextColor(Z)V

    return-void
.end method

.method private updateRingerStatus()Z
    .locals 8

    .line 328
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 329
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 332
    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getZen()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 333
    invoke-interface {v5}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getConsolidatedPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v5

    .line 332
    invoke-static {v4, v5}, Landroid/service/notification/ZenModeConfig;->isZenOverridingRinger(ILandroid/app/NotificationManager$Policy;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 334
    iget v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerMode:I

    if-ne v4, v1, :cond_1

    .line 335
    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeIcon:Landroid/widget/ImageView;

    sget v5, Lcom/android/systemui/R$drawable;->ic_volume_ringer_vibrate:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 336
    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeTextView:Landroid/widget/TextView;

    sget v5, Lcom/android/systemui/R$string;->qs_status_phone_vibrate:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    move v4, v1

    goto :goto_2

    :cond_1
    if-nez v4, :cond_2

    .line 339
    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeIcon:Landroid/widget/ImageView;

    sget v5, Lcom/android/systemui/R$drawable;->ic_volume_ringer_mute:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 340
    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeTextView:Landroid/widget/TextView;

    sget v5, Lcom/android/systemui/R$string;->qs_status_phone_muted:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_2
    move v4, v2

    .line 344
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeIcon:Landroid/widget/ImageView;

    const/16 v6, 0x8

    if-eqz v4, :cond_3

    move v7, v2

    goto :goto_3

    :cond_3
    move v7, v6

    :goto_3
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 345
    iget-object v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_4

    move v7, v2

    goto :goto_4

    :cond_4
    move v7, v6

    :goto_4
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 346
    iget-object v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerContainer:Landroid/view/View;

    if-eqz v4, :cond_5

    move v6, v2

    :cond_5
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    if-ne v0, v4, :cond_7

    .line 348
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeTextView:Landroid/widget/TextView;

    .line 349
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {v3, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_5

    :cond_6
    move v1, v2

    :cond_7
    :goto_5
    return v1
.end method

.method private updateStatusIconAlphaAnimator()V
    .locals 4

    .line 465
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQuickQsStatusIcons:Landroid/view/View;

    const/4 v2, 0x3

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    const-string v3, "alpha"

    .line 466
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 467
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mStatusIconsAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data
.end method

.method private updateStatusText()V
    .locals 4

    .line 302
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateRingerStatus()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateAlarmStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_5

    .line 305
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    .line 306
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    .line 307
    :goto_3
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mStatusSeparator:Landroid/view/View;

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    const/16 v2, 0x8

    :goto_4
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    return-void
.end method


# virtual methods
.method public disable(IIZ)V
    .locals 1

    const/4 p1, 0x1

    and-int/2addr p2, p1

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move p1, p3

    .line 536
    :goto_0
    iget-boolean p2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQsDisabled:Z

    if-ne p1, p2, :cond_1

    return-void

    .line 537
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQsDisabled:Z

    .line 538
    iget-object p2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/QuickQSPanel;->setDisabledByPolicy(Z)V

    .line 539
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderTextContainerView:Landroid/view/View;

    iget-boolean p2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQsDisabled:Z

    const/16 v0, 0x8

    if-eqz p2, :cond_2

    move p2, v0

    goto :goto_1

    :cond_2
    move p2, p3

    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 540
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQuickQsStatusIcons:Landroid/view/View;

    iget-boolean p2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQsDisabled:Z

    if-eqz p2, :cond_3

    move p2, v0

    goto :goto_2

    :cond_3
    move p2, p3

    :goto_2
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 541
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQuickQsBrightness:Landroid/view/View;

    iget-boolean p2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQsDisabled:Z

    if-eqz p2, :cond_4

    move p3, v0

    :cond_4
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 542
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateResources()V

    return-void
.end method

.method public synthetic lambda$onClick$0$QuickStatusBarHeader()V
    .locals 3

    .line 649
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.REVIEW_ONGOING_PERMISSION_USAGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    .line 651
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileHost;->collapsePanels()V

    return-void
.end method

.method public synthetic lambda$updateEverything$1$QuickStatusBarHeader()V
    .locals 1

    .line 676
    iget-boolean v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mExpanded:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 7

    .line 554
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    .line 556
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getDisplay()Landroid/view/Display;

    move-result-object v1

    .line 555
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->cornerCutoutMargins(Landroid/view/DisplayCutout;Landroid/view/Display;)Landroid/util/Pair;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 558
    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSystemIconsView:Landroid/view/View;

    .line 559
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$dimen;->status_bar_padding_start:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 560
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$dimen;->status_bar_padding_top:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 561
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/systemui/R$dimen;->status_bar_padding_end:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 558
    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_0

    .line 564
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSystemIconsView:Landroid/view/View;

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    .line 565
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 566
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/systemui/R$dimen;->status_bar_padding_top:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 567
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 564
    invoke-virtual {v3, v4, v5, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 570
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSpace:Landroid/widget/Space;

    invoke-virtual {v1}, Landroid/widget/Space;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 572
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    move-result-object v0

    .line 573
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 574
    iput-boolean v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHasTopCutout:Z

    .line 575
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 576
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSpace:Landroid/widget/Space;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/Space;->setVisibility(I)V

    goto :goto_1

    .line 578
    :cond_1
    iput-boolean v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHasTopCutout:Z

    .line 579
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 580
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSpace:Landroid/widget/Space;

    invoke-virtual {v0, v2}, Landroid/widget/Space;->setVisibility(I)V

    .line 583
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSpace:Landroid/widget/Space;

    invoke-virtual {v0, v1}, Landroid/widget/Space;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 584
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mPrivacyChip:Lcom/android/systemui/privacy/OngoingPrivacyChip;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    move v3, v2

    :goto_2
    invoke-direct {p0, v3}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setChipVisibility(Z)V

    .line 586
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->notification_side_paddings:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 587
    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQuickQsBrightness:Landroid/view/View;

    .line 588
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 589
    iget v3, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    sub-int v3, v0, v3

    iget v4, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    sub-int/2addr v0, v4

    invoke-virtual {v1, v3, v2, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 590
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQuickQsBrightness:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 591
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 547
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 548
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->addIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    .line 549
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestApplyInsets()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 629
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockView:Lcom/android/systemui/statusbar/policy/Clock;

    const-string v1, "android.intent.action.SHOW_ALARMS"

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    .line 630
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1, v2}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 632
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmContainer:Landroid/view/View;

    if-ne p1, v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->isVisibleToUser()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 633
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {p1}, Landroid/app/AlarmManager$AlarmClockInfo;->getShowIntent()Landroid/app/PendingIntent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 634
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    .line 635
    invoke-virtual {p0}, Landroid/app/AlarmManager$AlarmClockInfo;->getShowIntent()Landroid/app/PendingIntent;

    move-result-object p0

    .line 634
    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;)V

    goto :goto_0

    :cond_1
    const-string p1, "QuickStatusBarHeader"

    const-string v0, "No PendingIntent for next alarm. Using default intent"

    .line 637
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1, v2}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    goto :goto_0

    .line 641
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mPrivacyChip:Lcom/android/systemui/privacy/OngoingPrivacyChip;

    if-ne p1, v0, :cond_4

    .line 643
    invoke-virtual {v0}, Lcom/android/systemui/privacy/OngoingPrivacyChip;->getBuilder()Lcom/android/systemui/privacy/PrivacyDialogBuilder;

    move-result-object p1

    .line 644
    invoke-virtual {p1}, Lcom/android/systemui/privacy/PrivacyDialogBuilder;->getAppsAndTypes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_3

    return-void

    .line 645
    :cond_3
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/16 v0, 0xb4

    const/4 v1, 0x2

    .line 646
    invoke-static {v0, v1}, Landroid/util/StatsLog;->write(II)I

    .line 648
    new-instance v0, Lcom/android/systemui/qs/-$$Lambda$QuickStatusBarHeader$Cn7nnVkskYIMgsCRZGAkFC0IGJU;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/-$$Lambda$QuickStatusBarHeader$Cn7nnVkskYIMgsCRZGAkFC0IGJU;-><init>(Lcom/android/systemui/qs/QuickStatusBarHeader;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 653
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerContainer:Landroid/view/View;

    if-ne p1, v0, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->isVisibleToUser()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 654
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.SOUND_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1, v2}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onConfigChanged(Landroid/service/notification/ZenModeConfig;)V
    .locals 0

    .line 672
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateStatusText()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 378
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 379
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mLandscape:Z

    .line 380
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateResources()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    const/4 v0, 0x0

    .line 597
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setListening(Z)V

    .line 598
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->removeIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    .line 599
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    .line 217
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 219
    sget v0, Lcom/android/systemui/R$id;->quick_qs_panel:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QuickQSPanel;

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    .line 220
    sget v0, Lcom/android/systemui/R$id;->quick_status_bar_system_icons:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSystemIconsView:Landroid/view/View;

    .line 221
    sget v0, Lcom/android/systemui/R$id;->quick_qs_status_icons:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQuickQsStatusIcons:Landroid/view/View;

    .line 222
    sget v0, Lcom/android/systemui/R$id;->statusIcons:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    .line 224
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getIgnoredIconSlots()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->addIgnoredSlots(Ljava/util/List;)V

    const/4 v1, 0x0

    .line 225
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->setShouldRestrictIcons(Z)V

    .line 226
    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    invoke-direct {v2, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;-><init>(Landroid/view/ViewGroup;)V

    iput-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    .line 228
    sget v0, Lcom/android/systemui/R$id;->quick_qs_brightness_bar:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQuickQsBrightness:Landroid/view/View;

    .line 229
    new-instance v0, Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQuickQsBrightness:Landroid/view/View;

    sget v4, Lcom/android/systemui/R$id;->brightness_icon:I

    .line 230
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQuickQsBrightness:Landroid/view/View;

    sget v5, Lcom/android/systemui/R$id;->brightness_slider:I

    .line 231
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/settings/ToggleSlider;

    invoke-direct {v0, v2, v3, v4}, Lcom/android/systemui/settings/BrightnessController;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Lcom/android/systemui/settings/ToggleSlider;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    .line 234
    sget v0, Lcom/android/systemui/R$id;->header_text_container:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderTextContainerView:Landroid/view/View;

    .line 235
    sget v0, Lcom/android/systemui/R$id;->status_separator:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mStatusSeparator:Landroid/view/View;

    .line 236
    sget v0, Lcom/android/systemui/R$id;->next_alarm_icon:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmIcon:Landroid/widget/ImageView;

    .line 237
    sget v0, Lcom/android/systemui/R$id;->next_alarm_text:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmTextView:Landroid/widget/TextView;

    .line 238
    sget v0, Lcom/android/systemui/R$id;->alarm_container:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmContainer:Landroid/view/View;

    .line 239
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmContainer:Landroid/view/View;

    new-instance v2, Lcom/android/systemui/qs/-$$Lambda$p8TkVReSUo0LsQ3y-9iKja9mJXE;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/-$$Lambda$p8TkVReSUo0LsQ3y-9iKja9mJXE;-><init>(Lcom/android/systemui/qs/QuickStatusBarHeader;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    sget v0, Lcom/android/systemui/R$id;->ringer_mode_icon:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeIcon:Landroid/widget/ImageView;

    .line 241
    sget v0, Lcom/android/systemui/R$id;->ringer_mode_text:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeTextView:Landroid/widget/TextView;

    .line 242
    sget v0, Lcom/android/systemui/R$id;->ringer_container:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerContainer:Landroid/view/View;

    .line 243
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerContainer:Landroid/view/View;

    new-instance v2, Lcom/android/systemui/qs/-$$Lambda$p8TkVReSUo0LsQ3y-9iKja9mJXE;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/-$$Lambda$p8TkVReSUo0LsQ3y-9iKja9mJXE;-><init>(Lcom/android/systemui/qs/QuickStatusBarHeader;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    sget v0, Lcom/android/systemui/R$id;->privacy_chip:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/privacy/OngoingPrivacyChip;

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mPrivacyChip:Lcom/android/systemui/privacy/OngoingPrivacyChip;

    .line 245
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mPrivacyChip:Lcom/android/systemui/privacy/OngoingPrivacyChip;

    new-instance v2, Lcom/android/systemui/qs/-$$Lambda$p8TkVReSUo0LsQ3y-9iKja9mJXE;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/-$$Lambda$p8TkVReSUo0LsQ3y-9iKja9mJXE;-><init>(Lcom/android/systemui/qs/QuickStatusBarHeader;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    sget v0, Lcom/android/systemui/R$id;->carrier_group:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSCarrierGroup;

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mCarrierGroup:Lcom/android/systemui/qs/QSCarrierGroup;

    .line 248
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 249
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1010030

    invoke-static {v1, v2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v1

    .line 251
    invoke-static {v1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getColorIntensity(I)F

    move-result v1

    .line 252
    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDualToneHandler:Lcom/android/systemui/DualToneHandler;

    invoke-virtual {v2, v1}, Lcom/android/systemui/DualToneHandler;->getSingleColor(F)I

    move-result v1

    .line 255
    sget v2, Lcom/android/systemui/R$id;->clock:I

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-direct {p0, v2, v0, v3, v4}, Lcom/android/systemui/qs/QuickStatusBarHeader;->applyDarkness(ILandroid/graphics/Rect;FI)V

    .line 258
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->setTint(I)V

    .line 259
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmIcon:Landroid/widget/ImageView;

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 260
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeIcon:Landroid/widget/ImageView;

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 262
    sget v0, Lcom/android/systemui/R$id;->clock:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/Clock;

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockView:Lcom/android/systemui/statusbar/policy/Clock;

    .line 263
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockView:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    sget v0, Lcom/android/systemui/R$id;->date:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DateView;

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDateView:Lcom/android/systemui/statusbar/policy/DateView;

    .line 265
    sget v0, Lcom/android/systemui/R$id;->space:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Space;

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSpace:Landroid/widget/Space;

    .line 268
    sget v0, Lcom/android/systemui/R$id;->batteryRemainingIcon:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/BatteryMeterView;

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mBatteryRemainingIcon:Lcom/android/systemui/BatteryMeterView;

    .line 271
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mBatteryRemainingIcon:Lcom/android/systemui/BatteryMeterView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/systemui/BatteryMeterView;->setPercentShowMode(I)V

    .line 272
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 273
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 275
    invoke-static {}, Lcom/android/systemui/privacy/PrivacyItemControllerKt;->isPermissionsHubEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mPermissionsHubEnabled:Z

    .line 276
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateResources()V

    .line 279
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    .line 280
    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mPropertyListener:Landroid/provider/DeviceConfig$OnPropertyChangedListener;

    const-string v2, "privacy"

    .line 279
    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->addOnPropertyChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertyChangedListener;)V

    .line 282
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string v1, "icon_blacklist"

    const-string v2, "lineagesecure:qs_show_auto_brightness"

    const-string v3, "lineagesecure:qs_show_brightness_slider"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    return-void
.end method

.method public onNextAlarmChanged(Landroid/app/AlarmManager$AlarmClockInfo;)V
    .locals 0

    .line 661
    iput-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    .line 662
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateStatusText()V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0

    .line 385
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onRtlPropertiesChanged(I)V

    .line 386
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateResources()V

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "lineagesecure:qs_show_brightness_slider"

    .line 735
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    .line 737
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    if-le p2, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mIsQuickQsBrightnessEnabled:Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 740
    :catch_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mIsQuickQsBrightnessEnabled:Z

    .line 742
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateResources()V

    goto :goto_2

    :cond_1
    const-string v0, "lineagesecure:qs_show_auto_brightness"

    .line 743
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 744
    invoke-static {p2, v1}, Lcom/android/systemui/tuner/TunerService;->parseIntegerSwitch(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mIsQsAutoBrightnessEnabled:Z

    .line 745
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateResources()V

    goto :goto_2

    :cond_2
    const-string v0, "icon_blacklist"

    .line 746
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 747
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockView:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getIconBlacklist(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object p1

    const-string p2, "clock"

    .line 748
    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    .line 747
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/Clock;->setClockVisibleByUser(Z)V

    :cond_3
    :goto_2
    return-void
.end method

.method public onZenChanged(I)V
    .locals 0

    .line 667
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateStatusText()V

    return-void
.end method

.method public setCallback(Lcom/android/systemui/qs/QSDetail$Callback;)V
    .locals 0

    .line 700
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSPanel;->setCallback(Lcom/android/systemui/qs/QSDetail$Callback;)V

    return-void
.end method

.method public setExpanded(Z)V
    .locals 1

    .line 483
    iget-boolean v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mExpanded:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 484
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mExpanded:Z

    .line 485
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSPanel;->setExpanded(Z)V

    .line 486
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateEverything()V

    return-void
.end method

.method public setExpansion(ZFF)V
    .locals 7

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    move v0, p2

    .line 500
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mStatusIconsAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v1, :cond_1

    .line 501
    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_1
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 507
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderTextContainerView:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 509
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderTextContainerView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 512
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderTextContainerAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    const/4 p3, 0x4

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    .line 513
    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    cmpl-float p1, v0, v1

    if-lez p1, :cond_3

    .line 515
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderTextContainerView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 517
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderTextContainerView:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 520
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mPrivacyChipAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz p1, :cond_6

    .line 521
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mPrivacyChip:Lcom/android/systemui/privacy/OngoingPrivacyChip;

    float-to-double v3, p2

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    cmpl-double p2, v3, v5

    if-lez p2, :cond_5

    const/4 p2, 0x1

    goto :goto_3

    :cond_5
    move p2, v2

    :goto_3
    invoke-virtual {p1, p2}, Lcom/android/systemui/privacy/OngoingPrivacyChip;->setExpanded(Z)V

    .line 522
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mPrivacyChipAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 525
    :cond_6
    iget-boolean p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mIsQuickQsBrightnessEnabled:Z

    if-eqz p1, :cond_8

    cmpl-float p1, v0, v1

    if-lez p1, :cond_7

    .line 527
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQuickQsBrightness:Landroid/view/View;

    invoke-virtual {p0, p3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 529
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQuickQsBrightness:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    :goto_4
    return-void
.end method

.method public setListening(Z)V
    .locals 3

    .line 603
    iget-boolean v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mListening:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSPanel;->setListening(Z)V

    .line 607
    iput-boolean p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mListening:Z

    .line 608
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mCarrierGroup:Lcom/android/systemui/qs/QSCarrierGroup;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mListening:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSCarrierGroup;->setListening(Z)V

    if-eqz p1, :cond_1

    .line 611
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 612
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 613
    iget-object p1, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 615
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mPrivacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mPICCallback:Lcom/android/systemui/privacy/PrivacyItemController$Callback;

    invoke-virtual {p1, v0}, Lcom/android/systemui/privacy/PrivacyItemController;->addCallback(Lcom/android/systemui/privacy/PrivacyItemController$Callback;)V

    .line 616
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {p0}, Lcom/android/systemui/settings/BrightnessController;->registerCallbacks()V

    goto :goto_0

    .line 618
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 619
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 620
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mPrivacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mPICCallback:Lcom/android/systemui/privacy/PrivacyItemController$Callback;

    invoke-virtual {p1, v0}, Lcom/android/systemui/privacy/PrivacyItemController;->removeCallback(Lcom/android/systemui/privacy/PrivacyItemController$Callback;)V

    .line 621
    iget-object p1, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 622
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {p1}, Lcom/android/systemui/settings/BrightnessController;->unregisterCallbacks()V

    const/4 p1, 0x0

    .line 623
    iput-boolean p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mPrivacyChipLogged:Z

    :goto_0
    return-void
.end method

.method public setMargins(I)V
    .locals 3

    const/4 v0, 0x0

    .line 719
    :goto_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 720
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 723
    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSystemIconsView:Landroid/view/View;

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQuickQsStatusIcons:Landroid/view/View;

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderTextContainerView:Landroid/view/View;

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 727
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 728
    iput p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 729
    iput p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setQSPanel(Lcom/android/systemui/qs/QSPanel;)V
    .locals 0

    .line 680
    iput-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    .line 681
    invoke-virtual {p1}, Lcom/android/systemui/qs/QSPanel;->getHost()Lcom/android/systemui/qs/QSTileHost;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setupHost(Lcom/android/systemui/qs/QSTileHost;)V

    return-void
.end method

.method public setupHost(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 2

    .line 685
    iput-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 687
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/qs/QuickQSPanel;->setQSPanelAndHeader(Lcom/android/systemui/qs/QSPanel;Landroid/view/View;)V

    .line 688
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/qs/QuickQSPanel;->setHost(Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/qs/customize/QSCustomizer;)V

    .line 691
    new-instance p1, Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 692
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1010030

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v0

    .line 694
    invoke-static {v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getColorIntensity(I)F

    move-result v0

    .line 695
    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDualToneHandler:Lcom/android/systemui/DualToneHandler;

    invoke-virtual {v1, v0}, Lcom/android/systemui/DualToneHandler;->getSingleColor(F)I

    move-result v1

    .line 696
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mBatteryRemainingIcon:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/BatteryMeterView;->onDarkChanged(Landroid/graphics/Rect;FI)V

    return-void
.end method

.method public updateEverything()V
    .locals 1

    .line 676
    new-instance v0, Lcom/android/systemui/qs/-$$Lambda$QuickStatusBarHeader$94nU_9dHjWxAQAVsvLqnp7oGOsY;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/-$$Lambda$QuickStatusBarHeader$94nU_9dHjWxAQAVsvLqnp7oGOsY;-><init>(Lcom/android/systemui/qs/QuickStatusBarHeader;)V

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
