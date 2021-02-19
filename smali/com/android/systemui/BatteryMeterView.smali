.class public Lcom/android/systemui/BatteryMeterView;
.super Landroid/widget/LinearLayout;
.source "BatteryMeterView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/BatteryMeterView$SettingObserver;
    }
.end annotation


# instance fields
.field private mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private mBatteryHidden:Z

.field private final mBatteryIconView:Landroid/widget/ImageView;

.field private mBatteryPercentView:Landroid/widget/TextView;

.field private mBatteryStyle:I

.field private mCharging:Z

.field private final mCircleDrawable:Lcom/android/settingslib/graph/CircleBatteryDrawable;

.field private final mCustomChargingDrawable:[Landroid/graphics/drawable/Drawable;

.field private final mCustomNormalDrawable:[Landroid/graphics/drawable/Drawable;

.field private final mCustomPowersaveDrawable:[Landroid/graphics/drawable/Drawable;

.field private mDualToneHandler:Lcom/android/systemui/DualToneHandler;

.field private mIgnoreTunerUpdates:Z

.field private mIsDark:Z

.field private mIsSubscribedForTunerUpdates:Z

.field private mLevel:I

.field private mNonAdaptedBackgroundColor:I

.field private mNonAdaptedForegroundColor:I

.field private mNonAdaptedSingleToneColor:I

.field private final mPercentageStyleId:I

.field private mSettingObserver:Lcom/android/systemui/BatteryMeterView$SettingObserver;

.field private mShowPercentMode:I

.field private final mSlotBattery:Ljava/lang/String;

.field private mTextColor:I

.field private final mThemedDrawable:Lcom/android/settingslib/graph/ThemedBatteryDrawable;

.field private mUseCustomDrawable:Z

.field private mUseWallpaperTextColors:Z

.field private mUser:I

.field private final mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 136
    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 140
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 144
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mIsDark:Z

    const/4 v1, 0x2

    new-array v2, v1, [Landroid/graphics/drawable/Drawable;

    .line 100
    iput-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mCustomNormalDrawable:[Landroid/graphics/drawable/Drawable;

    new-array v2, v1, [Landroid/graphics/drawable/Drawable;

    .line 101
    iput-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mCustomChargingDrawable:[Landroid/graphics/drawable/Drawable;

    new-array v2, v1, [Landroid/graphics/drawable/Drawable;

    .line 102
    iput-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mCustomPowersaveDrawable:[Landroid/graphics/drawable/Drawable;

    .line 114
    iput v0, p0, Lcom/android/systemui/BatteryMeterView;->mShowPercentMode:I

    .line 121
    iput v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryStyle:I

    .line 146
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v2, 0x800013

    .line 147
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 149
    sget-object v2, Lcom/android/systemui/R$styleable;->BatteryMeterView:[I

    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 151
    sget p3, Lcom/android/systemui/R$styleable;->BatteryMeterView_frameColor:I

    sget v2, Lcom/android/systemui/R$color;->meter_background_color:I

    .line 152
    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    .line 151
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    .line 153
    sget v2, Lcom/android/systemui/R$styleable;->BatteryMeterView_textAppearance:I

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/BatteryMeterView;->mPercentageStyleId:I

    .line 154
    new-instance v2, Lcom/android/settingslib/graph/CircleBatteryDrawable;

    invoke-direct {v2, p1, p3}, Lcom/android/settingslib/graph/CircleBatteryDrawable;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mCircleDrawable:Lcom/android/settingslib/graph/CircleBatteryDrawable;

    .line 155
    new-instance v2, Lcom/android/settingslib/graph/ThemedBatteryDrawable;

    invoke-direct {v2, p1, p3}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mThemedDrawable:Lcom/android/settingslib/graph/ThemedBatteryDrawable;

    .line 156
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 158
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/systemui/R$bool;->exthm_use_custom_battery:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/BatteryMeterView;->mUseCustomDrawable:Z

    .line 159
    iget-boolean p2, p0, Lcom/android/systemui/BatteryMeterView;->mUseCustomDrawable:Z

    if-eqz p2, :cond_0

    .line 161
    :try_start_0
    iget-object p2, p0, Lcom/android/systemui/BatteryMeterView;->mCustomNormalDrawable:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v2, Lcom/android/systemui/R$drawable;->exthm_stat_sys_battery_normal:I

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    aput-object p3, p2, v0

    .line 162
    iget-object p2, p0, Lcom/android/systemui/BatteryMeterView;->mCustomNormalDrawable:[Landroid/graphics/drawable/Drawable;

    sget p3, Lcom/android/systemui/R$drawable;->exthm_stat_sys_battery_normal:I

    invoke-static {p1, p3}, Lcom/android/systemui/util/DarkIconUtil;->getCustomDarkDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    const/4 v2, 0x1

    aput-object p3, p2, v2

    .line 163
    iget-object p2, p0, Lcom/android/systemui/BatteryMeterView;->mCustomChargingDrawable:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v3, Lcom/android/systemui/R$drawable;->exthm_stat_sys_battery_charging:I

    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    aput-object p3, p2, v0

    .line 164
    iget-object p2, p0, Lcom/android/systemui/BatteryMeterView;->mCustomChargingDrawable:[Landroid/graphics/drawable/Drawable;

    sget p3, Lcom/android/systemui/R$drawable;->exthm_stat_sys_battery_charging:I

    invoke-static {p1, p3}, Lcom/android/systemui/util/DarkIconUtil;->getCustomDarkDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    aput-object p3, p2, v2

    .line 165
    iget-object p2, p0, Lcom/android/systemui/BatteryMeterView;->mCustomPowersaveDrawable:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v3, Lcom/android/systemui/R$drawable;->exthm_stat_sys_battery_powersave:I

    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    aput-object p3, p2, v0

    .line 166
    iget-object p2, p0, Lcom/android/systemui/BatteryMeterView;->mCustomPowersaveDrawable:[Landroid/graphics/drawable/Drawable;

    sget p3, Lcom/android/systemui/R$drawable;->exthm_stat_sys_battery_powersave:I

    invoke-static {p1, p3}, Lcom/android/systemui/util/DarkIconUtil;->getCustomDarkDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    aput-object p3, p2, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 168
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 169
    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mUseCustomDrawable:Z

    .line 173
    :cond_0
    :goto_0
    new-instance p2, Lcom/android/systemui/BatteryMeterView$SettingObserver;

    new-instance p3, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {p3, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/BatteryMeterView$SettingObserver;-><init>(Lcom/android/systemui/BatteryMeterView;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/systemui/BatteryMeterView;->mSettingObserver:Lcom/android/systemui/BatteryMeterView$SettingObserver;

    .line 175
    new-instance p2, Lcom/android/systemui/util/Utils$DisableStateTracker;

    invoke-direct {p2, v0, v1}, Lcom/android/systemui/util/Utils$DisableStateTracker;-><init>(II)V

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 178
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->setupLayoutTransition()V

    const p2, 0x10406ba

    .line 180
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/BatteryMeterView;->mSlotBattery:Ljava/lang/String;

    .line 182
    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    .line 183
    iget-boolean p2, p0, Lcom/android/systemui/BatteryMeterView;->mUseCustomDrawable:Z

    if-eqz p2, :cond_1

    .line 184
    iget-object p2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/android/systemui/BatteryMeterView;->mCustomNormalDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object p3, p3, v0

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 186
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/android/systemui/BatteryMeterView;->mThemedDrawable:Lcom/android/settingslib/graph/ThemedBatteryDrawable;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 188
    :goto_1
    new-instance p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 189
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcom/android/systemui/R$dimen;->status_bar_battery_icon_width:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 190
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->status_bar_battery_icon_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p2, p3, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 192
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcom/android/systemui/R$dimen;->battery_margin_bottom:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    .line 191
    invoke-virtual {p2, v0, v0, v0, p3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 193
    iget-object p3, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, p3, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateShowPercent()V

    .line 196
    new-instance p2, Lcom/android/systemui/DualToneHandler;

    invoke-direct {p2, p1}, Lcom/android/systemui/DualToneHandler;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/BatteryMeterView;->mDualToneHandler:Lcom/android/systemui/DualToneHandler;

    .line 198
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    const/4 p2, 0x0

    const/4 p3, -0x1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/BatteryMeterView;->onDarkChanged(Landroid/graphics/Rect;FI)V

    .line 200
    new-instance p1, Lcom/android/systemui/BatteryMeterView$1;

    iget-object p2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/BatteryMeterView$1;-><init>(Lcom/android/systemui/BatteryMeterView;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/BatteryMeterView;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    .line 212
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 213
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 214
    const-class p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {p0}, Lcom/android/systemui/util/SysuiLifecycle;->viewAttachLifecycle(Landroid/view/View;)Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    invoke-interface {p1, p2, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/BatteryMeterView;I)I
    .locals 0

    .line 77
    iput p1, p0, Lcom/android/systemui/BatteryMeterView;->mUser:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/BatteryMeterView;)Lcom/android/systemui/BatteryMeterView$SettingObserver;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/systemui/BatteryMeterView;->mSettingObserver:Lcom/android/systemui/BatteryMeterView$SettingObserver;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/BatteryMeterView;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateShowPercent()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/BatteryMeterView;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updatePercentText()V

    return-void
.end method

.method private loadPercentView()Landroid/widget/TextView;
    .locals 2

    .line 402
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$layout;->battery_percentage_view:I

    const/4 v1, 0x0

    .line 403
    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method private scaleBatteryMeterViews()V
    .locals 5

    .line 502
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 503
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 505
    sget v2, Lcom/android/systemui/R$dimen;->status_bar_icon_scale_factor:I

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 506
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    .line 508
    sget v2, Lcom/android/systemui/R$dimen;->status_bar_battery_icon_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 509
    iget v4, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryStyle:I

    if-ne v4, v3, :cond_0

    .line 510
    sget v3, Lcom/android/systemui/R$dimen;->status_bar_battery_icon_circle_width:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_0

    .line 511
    :cond_0
    sget v3, Lcom/android/systemui/R$dimen;->status_bar_battery_icon_width:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 512
    :goto_0
    sget v4, Lcom/android/systemui/R$dimen;->battery_margin_bottom:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 514
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    invoke-direct {v4, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    .line 516
    invoke-virtual {v4, v1, v1, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 518
    iget-object p0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setPercentTextAtCurrentLevel()V
    .locals 5

    .line 445
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    .line 446
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    .line 445
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 448
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/BatteryMeterView;->mCharging:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/android/systemui/R$string;->accessibility_battery_level_charging:I

    goto :goto_0

    .line 449
    :cond_0
    sget v1, Lcom/android/systemui/R$string;->accessibility_battery_level:I

    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 448
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 447
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setupLayoutTransition()V
    .locals 5

    .line 218
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    const-wide/16 v1, 0xc8

    .line 219
    invoke-virtual {v0, v1, v2}, Landroid/animation/LayoutTransition;->setDuration(J)V

    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 221
    fill-array-data v2, :array_0

    const-string v3, "alpha"

    const/4 v4, 0x0

    invoke-static {v4, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 222
    invoke-virtual {v0, v1, v2}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 223
    sget-object v2, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1, v2}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    new-array v1, v1, [F

    .line 225
    fill-array-data v1, :array_1

    invoke-static {v4, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 226
    sget-object v2, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v2}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 227
    invoke-virtual {v0, v3, v1}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 229
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private subscribeForTunerUpdates()V
    .locals 3

    .line 269
    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mIsSubscribedForTunerUpdates:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mIgnoreTunerUpdates:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 273
    :cond_0
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string v1, "icon_blacklist"

    const-string v2, "lineagesystem:status_bar_battery_style"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 274
    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 275
    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mIsSubscribedForTunerUpdates:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private unsubscribeFromTunerUpdates()V
    .locals 1

    .line 279
    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mIsSubscribedForTunerUpdates:Z

    if-nez v0, :cond_0

    return-void

    .line 283
    :cond_0
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    const/4 v0, 0x0

    .line 284
    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mIsSubscribedForTunerUpdates:Z

    return-void
.end method

.method private updateBatteryStyle()V
    .locals 4

    .line 522
    iget v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryStyle:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto :goto_1

    .line 538
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 539
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 533
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mCircleDrawable:Lcom/android/settingslib/graph/CircleBatteryDrawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 534
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 535
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->scaleBatteryMeterViews()V

    goto :goto_1

    .line 524
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mUseCustomDrawable:Z

    if-eqz v0, :cond_3

    .line 525
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateCustomizeBatteryView()V

    goto :goto_0

    .line 527
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mThemedDrawable:Lcom/android/settingslib/graph/ThemedBatteryDrawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 529
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 530
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->scaleBatteryMeterViews()V

    .line 542
    :goto_1
    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryHidden:Z

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private updateColors(III)V
    .locals 2

    .line 565
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mCircleDrawable:Lcom/android/settingslib/graph/CircleBatteryDrawable;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settingslib/graph/CircleBatteryDrawable;->setColors(III)V

    .line 566
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mThemedDrawable:Lcom/android/settingslib/graph/ThemedBatteryDrawable;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->setColors(III)V

    .line 567
    iget-boolean p1, p0, Lcom/android/systemui/BatteryMeterView;->mUseCustomDrawable:Z

    if-eqz p1, :cond_2

    .line 568
    iget-object p1, p0, Lcom/android/systemui/BatteryMeterView;->mCustomNormalDrawable:[Landroid/graphics/drawable/Drawable;

    const/4 p2, 0x1

    aget-object v0, p1, p2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 569
    aget-object p1, p1, v1

    invoke-virtual {p1, p3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 571
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/BatteryMeterView;->mCustomChargingDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v0, p1, p2

    if-nez v0, :cond_1

    .line 572
    aget-object p1, p1, v1

    invoke-virtual {p1, p3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 574
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/BatteryMeterView;->mCustomPowersaveDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object p2, p1, p2

    if-nez p2, :cond_2

    .line 575
    aget-object p1, p1, v1

    invoke-virtual {p1, p3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 578
    :cond_2
    iput p3, p0, Lcom/android/systemui/BatteryMeterView;->mTextColor:I

    .line 579
    iget-object p0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    if-eqz p0, :cond_3

    .line 580
    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    return-void
.end method

.method private updateCustomizeBatteryView()V
    .locals 5

    .line 391
    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mCharging:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 392
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/android/systemui/BatteryMeterView;->mIsDark:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mCustomChargingDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v3, v2

    if-eqz v4, :cond_0

    aget-object v1, v3, v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mCustomChargingDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v2, v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 393
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mThemedDrawable:Lcom/android/settingslib/graph/ThemedBatteryDrawable;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->getPowerSaveEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 394
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/android/systemui/BatteryMeterView;->mIsDark:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mCustomPowersaveDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v3, v2

    if-eqz v4, :cond_2

    aget-object v1, v3, v2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mCustomPowersaveDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v2, v1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 396
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/android/systemui/BatteryMeterView;->mIsDark:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mCustomNormalDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v3, v2

    if-eqz v4, :cond_4

    aget-object v1, v3, v2

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mCustomNormalDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v2, v1

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 398
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    iget p0, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageLevel(I)V

    return-void
.end method

.method private updatePercentText()V
    .locals 5

    .line 418
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    if-nez v0, :cond_0

    return-void

    .line 422
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 423
    iget v1, p0, Lcom/android/systemui/BatteryMeterView;->mShowPercentMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/BatteryMeterView;->mCharging:Z

    if-nez v1, :cond_1

    .line 424
    new-instance v1, Lcom/android/systemui/-$$Lambda$BatteryMeterView$yZDQalqWJG2q_49RDLUqR8bhWwM;

    invoke-direct {v1, p0}, Lcom/android/systemui/-$$Lambda$BatteryMeterView$yZDQalqWJG2q_49RDLUqR8bhWwM;-><init>(Lcom/android/systemui/BatteryMeterView;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/BatteryController;->getEstimatedTimeRemainingString(Lcom/android/systemui/statusbar/policy/BatteryController$EstimateFetchCompletion;)V

    goto :goto_1

    .line 435
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->setPercentTextAtCurrentLevel()V

    goto :goto_1

    .line 439
    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/BatteryMeterView;->mCharging:Z

    if-eqz v1, :cond_3

    sget v1, Lcom/android/systemui/R$string;->accessibility_battery_level_charging:I

    goto :goto_0

    .line 440
    :cond_3
    sget v1, Lcom/android/systemui/R$string;->accessibility_battery_level:I

    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 439
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 438
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method private updateShowPercent()V
    .locals 8

    .line 453
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 455
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/BatteryMeterView;->mUser:I

    const-string v5, "status_bar_show_battery_percent"

    .line 454
    invoke-static {v3, v5, v2, v4}, Llineageos/providers/LineageSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 456
    iget v4, p0, Lcom/android/systemui/BatteryMeterView;->mShowPercentMode:I

    if-nez v4, :cond_1

    if-ne v3, v1, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v2

    .line 458
    :goto_1
    iget v5, p0, Lcom/android/systemui/BatteryMeterView;->mShowPercentMode:I

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-eq v5, v6, :cond_3

    if-ne v3, v7, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    if-eqz v4, :cond_5

    .line 460
    iget-boolean v1, p0, Lcom/android/systemui/BatteryMeterView;->mCharging:Z

    if-nez v1, :cond_5

    :cond_4
    iget v1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryStyle:I

    if-ne v1, v7, :cond_a

    .line 462
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mCircleDrawable:Lcom/android/settingslib/graph/CircleBatteryDrawable;

    invoke-virtual {v1, v2}, Lcom/android/settingslib/graph/CircleBatteryDrawable;->setShowPercent(Z)V

    .line 463
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mThemedDrawable:Lcom/android/settingslib/graph/ThemedBatteryDrawable;

    invoke-virtual {v1, v2}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->setShowPercent(Z)V

    if-nez v0, :cond_8

    .line 465
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->loadPercentView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    .line 466
    iget v0, p0, Lcom/android/systemui/BatteryMeterView;->mPercentageStyleId:I

    if-eqz v0, :cond_6

    .line 467
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 469
    :cond_6
    iget v0, p0, Lcom/android/systemui/BatteryMeterView;->mTextColor:I

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 470
    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updatePercentText()V

    .line 471
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v1, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 476
    :cond_8
    iget v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryStyle:I

    if-ne v0, v7, :cond_9

    .line 477
    iget-object p0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v2, v2, v2}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    goto :goto_3

    .line 479
    :cond_9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 480
    iget-object p0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    sget v1, Lcom/android/systemui/R$dimen;->battery_level_padding_start:I

    .line 481
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 480
    invoke-virtual {p0, v0, v2, v2, v2}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    goto :goto_3

    .line 484
    :cond_a
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mCircleDrawable:Lcom/android/settingslib/graph/CircleBatteryDrawable;

    invoke-virtual {v1, v4}, Lcom/android/settingslib/graph/CircleBatteryDrawable;->setShowPercent(Z)V

    .line 485
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mThemedDrawable:Lcom/android/settingslib/graph/ThemedBatteryDrawable;

    invoke-virtual {v1, v4}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->setShowPercent(Z)V

    if-eqz v0, :cond_b

    .line 487
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 488
    iput-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    :cond_b
    :goto_3
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 585
    iget-object p1, p0, Lcom/android/systemui/BatteryMeterView;->mThemedDrawable:Lcom/android/settingslib/graph/ThemedBatteryDrawable;

    const/4 p3, 0x0

    if-nez p1, :cond_0

    move-object p1, p3

    goto :goto_0

    .line 586
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mThemedDrawable:Lcom/android/settingslib/graph/ThemedBatteryDrawable;

    invoke-virtual {v0}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->getPowerSaveEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 587
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    :goto_1
    const-string v0, "  BatteryMeterView:"

    .line 588
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    getPowerSave: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 590
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    mBatteryPercentView.getText(): "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 591
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mTextColor: #"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/BatteryMeterView;->mTextColor:I

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 592
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mLevel: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$updatePercentText$0$BatteryMeterView(Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 426
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->accessibility_battery_level_with_estimate:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    .line 429
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 427
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 431
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->setPercentTextAtCurrentLevel()V

    :goto_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 5

    .line 340
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 341
    const-class v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    iput-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 342
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 343
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/BatteryMeterView;->mUser:I

    .line 344
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "status_bar_show_battery_percent"

    .line 345
    invoke-static {v1}, Llineageos/providers/LineageSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mSettingObserver:Lcom/android/systemui/BatteryMeterView$SettingObserver;

    iget v3, p0, Lcom/android/systemui/BatteryMeterView;->mUser:I

    const/4 v4, 0x0

    .line 344
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 347
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "battery_estimates_last_update_time"

    .line 348
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mSettingObserver:Lcom/android/systemui/BatteryMeterView$SettingObserver;

    .line 347
    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 350
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateShowPercent()V

    .line 351
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->subscribeForTunerUpdates()V

    .line 352
    iget-object p0, p0, Lcom/android/systemui/BatteryMeterView;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {p0}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V

    return-void
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 0

    .line 366
    iget-object p3, p0, Lcom/android/systemui/BatteryMeterView;->mCircleDrawable:Lcom/android/settingslib/graph/CircleBatteryDrawable;

    invoke-virtual {p3, p2}, Lcom/android/settingslib/graph/CircleBatteryDrawable;->setCharging(Z)V

    .line 367
    iget-object p3, p0, Lcom/android/systemui/BatteryMeterView;->mThemedDrawable:Lcom/android/settingslib/graph/ThemedBatteryDrawable;

    invoke-virtual {p3, p2}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->setCharging(Z)V

    .line 368
    iget-object p3, p0, Lcom/android/systemui/BatteryMeterView;->mCircleDrawable:Lcom/android/settingslib/graph/CircleBatteryDrawable;

    invoke-virtual {p3, p1}, Lcom/android/settingslib/graph/CircleBatteryDrawable;->setBatteryLevel(I)V

    .line 369
    iget-object p3, p0, Lcom/android/systemui/BatteryMeterView;->mThemedDrawable:Lcom/android/settingslib/graph/ThemedBatteryDrawable;

    invoke-virtual {p3, p1}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->setBatteryLevel(I)V

    .line 370
    iput-boolean p2, p0, Lcom/android/systemui/BatteryMeterView;->mCharging:Z

    .line 371
    iput p1, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    .line 372
    iget-boolean p1, p0, Lcom/android/systemui/BatteryMeterView;->mUseCustomDrawable:Z

    if-eqz p1, :cond_0

    .line 373
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateCustomizeBatteryView()V

    .line 375
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updatePercentText()V

    if-eqz p2, :cond_1

    .line 377
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateShowPercent()V

    :cond_1
    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 0

    .line 547
    invoke-static {p1, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->isInArea(Landroid/graphics/Rect;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 548
    :goto_0
    iget-object p3, p0, Lcom/android/systemui/BatteryMeterView;->mDualToneHandler:Lcom/android/systemui/DualToneHandler;

    invoke-virtual {p3, p1}, Lcom/android/systemui/DualToneHandler;->getSingleColor(F)I

    move-result p3

    iput p3, p0, Lcom/android/systemui/BatteryMeterView;->mNonAdaptedSingleToneColor:I

    .line 549
    iget-object p3, p0, Lcom/android/systemui/BatteryMeterView;->mDualToneHandler:Lcom/android/systemui/DualToneHandler;

    invoke-virtual {p3, p1}, Lcom/android/systemui/DualToneHandler;->getFillColor(F)I

    move-result p3

    iput p3, p0, Lcom/android/systemui/BatteryMeterView;->mNonAdaptedForegroundColor:I

    .line 550
    iget-object p3, p0, Lcom/android/systemui/BatteryMeterView;->mDualToneHandler:Lcom/android/systemui/DualToneHandler;

    invoke-virtual {p3, p1}, Lcom/android/systemui/DualToneHandler;->getBackgroundColor(F)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/BatteryMeterView;->mNonAdaptedBackgroundColor:I

    const/high16 p1, 0x3f000000    # 0.5f

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 552
    :goto_1
    iput-boolean p1, p0, Lcom/android/systemui/BatteryMeterView;->mIsDark:Z

    .line 554
    iget-boolean p1, p0, Lcom/android/systemui/BatteryMeterView;->mUseWallpaperTextColors:Z

    if-nez p1, :cond_2

    .line 555
    iget p1, p0, Lcom/android/systemui/BatteryMeterView;->mNonAdaptedForegroundColor:I

    iget p2, p0, Lcom/android/systemui/BatteryMeterView;->mNonAdaptedBackgroundColor:I

    iget p3, p0, Lcom/android/systemui/BatteryMeterView;->mNonAdaptedSingleToneColor:I

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/BatteryMeterView;->updateColors(III)V

    .line 559
    :cond_2
    iget-boolean p1, p0, Lcom/android/systemui/BatteryMeterView;->mUseCustomDrawable:Z

    if-eqz p1, :cond_3

    .line 560
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateCustomizeBatteryView()V

    :cond_3
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 0

    .line 495
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->scaleBatteryMeterViews()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 357
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 358
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserTracker;->stopTracking()V

    .line 359
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 360
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mSettingObserver:Lcom/android/systemui/BatteryMeterView$SettingObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 361
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->unsubscribeFromTunerUpdates()V

    return-void
.end method

.method public onPowerSaveChanged(Z)V
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mCircleDrawable:Lcom/android/settingslib/graph/CircleBatteryDrawable;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/graph/CircleBatteryDrawable;->setPowerSaveEnabled(Z)V

    .line 384
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mThemedDrawable:Lcom/android/settingslib/graph/ThemedBatteryDrawable;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->setPowerSaveEnabled(Z)V

    .line 385
    iget-boolean p1, p0, Lcom/android/systemui/BatteryMeterView;->mUseCustomDrawable:Z

    if-eqz p1, :cond_0

    .line 386
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateCustomizeBatteryView()V

    :cond_0
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "icon_blacklist"

    .line 327
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 328
    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getIconBlacklist(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object p1

    .line 329
    iget-object p2, p0, Lcom/android/systemui/BatteryMeterView;->mSlotBattery:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryHidden:Z

    .line 330
    iget-boolean p1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryHidden:Z

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    :cond_1
    const-string v0, "lineagesystem:status_bar_battery_style"

    .line 331
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 332
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryStyle:I

    .line 333
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateBatteryStyle()V

    .line 334
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateShowPercent()V

    :cond_2
    :goto_1
    return-void
.end method

.method public setColorsFromContext(Landroid/content/Context;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 317
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/BatteryMeterView;->mDualToneHandler:Lcom/android/systemui/DualToneHandler;

    invoke-virtual {p0, p1}, Lcom/android/systemui/DualToneHandler;->setColorsFromContext(Landroid/content/Context;)V

    return-void
.end method

.method public setForceShowPercent(Z)V
    .locals 0

    .line 233
    invoke-virtual {p0, p1}, Lcom/android/systemui/BatteryMeterView;->setPercentShowMode(I)V

    return-void
.end method

.method public setPercentShowMode(I)V
    .locals 0

    .line 245
    iput p1, p0, Lcom/android/systemui/BatteryMeterView;->mShowPercentMode:I

    .line 246
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateShowPercent()V

    return-void
.end method

.method public updatePercentView()V
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 411
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 412
    iput-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    .line 414
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateShowPercent()V

    return-void
.end method
