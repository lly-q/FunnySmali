.class public Lcom/android/systemui/volume/VolumeDialogImpl;
.super Ljava/lang/Object;
.source "VolumeDialogImpl.java"

# interfaces
.implements Lcom/android/systemui/plugins/VolumeDialog;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;,
        Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;,
        Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;,
        Lcom/android/systemui/volume/VolumeDialogImpl$H;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAccessibility:Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;

.field private final mAccessibilityMgr:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

.field private mActiveStream:I

.field private final mActivityManager:Landroid/app/ActivityManager;

.field private mAllyStream:I

.field private final mAppIconMuteColorFilter:Landroid/graphics/ColorFilter;

.field private final mAppRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;",
            ">;"
        }
    .end annotation
.end field

.field private mAutomute:Z

.field private mConfigChanged:Z

.field private mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/android/systemui/plugins/VolumeDialogController;

.field private final mControllerCallbackH:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

.field private final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field private mDialog:Landroid/view/View;

.field private mDialogMainView:Landroid/view/ViewGroup;

.field private mDialogRowsView:Landroid/view/ViewGroup;

.field private mDialogView:Landroid/view/ViewGroup;

.field private final mDynamic:Landroid/util/SparseBooleanArray;

.field private mExpandRows:Lcom/android/systemui/statusbar/phone/ExpandableIndicator;

.field private mExpandRowsView:Landroid/view/View;

.field private mExpanded:Z

.field private final mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

.field private mHasSeenODICaptionsTooltip:Z

.field private mHovering:Z

.field private final mInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

.field private final mKeyguard:Landroid/app/KeyguardManager;

.field private mMediaOutputIcon:Landroid/widget/ImageButton;

.field private mMediaOutputView:Landroid/view/View;

.field private mMusicHidden:Z

.field private mODICaptionsIcon:Lcom/android/systemui/volume/CaptionsToggleImageButton;

.field private mODICaptionsTooltipView:Landroid/view/View;

.field private mODICaptionsTooltipViewStub:Landroid/view/ViewStub;

.field private mODICaptionsView:Landroid/view/ViewGroup;

.field private mPrevActiveStream:I

.field private mRinger:Landroid/view/ViewGroup;

.field private mRingerIcon:Landroid/widget/ImageButton;

.field private final mRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;",
            ">;"
        }
    .end annotation
.end field

.field private mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

.field private final mSafetyWarningLock:Ljava/lang/Object;

.field private mShowA11yStream:Z

.field private mShowActiveStreamOnly:Z

.field private mShowAppVolume:Z

.field private mShowing:Z

.field private mSilentMode:Z

.field private mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

.field private final mTunable:Lcom/android/systemui/tuner/TunerService$Tunable;

.field private mVolumePanelOnLeft:Z

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;

.field private mZenIcon:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 136
    const-class v0, Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/Util;->logTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogImpl$H;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$H;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAppRows:Ljava/util/List;

    .line 177
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    .line 181
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarningLock:Ljava/lang/Object;

    .line 182
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/VolumeDialogImpl$1;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccessibility:Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;

    const/4 v0, 0x1

    .line 192
    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAutomute:Z

    .line 194
    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSilentMode:Z

    const/4 v0, 0x0

    .line 197
    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHovering:Z

    .line 199
    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mConfigChanged:Z

    .line 202
    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    .line 384
    new-instance v1, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$E8FlNXKTHFI85JE7dJwFQNARuhU;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$E8FlNXKTHFI85JE7dJwFQNARuhU;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    .line 416
    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$1;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mTunable:Lcom/android/systemui/tuner/TunerService$Tunable;

    .line 1582
    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$6;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mControllerCallbackH:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    .line 212
    new-instance v1, Landroid/view/ContextThemeWrapper;

    sget v2, Lcom/android/systemui/R$style;->qs_theme:I

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 214
    const-class v1, Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/VolumeDialogController;

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    .line 215
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mKeyguard:Landroid/app/KeyguardManager;

    .line 216
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActivityManager:Landroid/app/ActivityManager;

    .line 217
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindowManager:Landroid/view/WindowManager;

    .line 218
    const-class v1, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccessibilityMgr:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    .line 219
    const-class v1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 220
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->showActiveStreamOnly()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowActiveStreamOnly:Z

    const-string v1, "HasSeenODICaptionsTooltip"

    .line 222
    invoke-static {p1, v1, v0}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHasSeenODICaptionsTooltip:Z

    .line 223
    const-class p1, Lcom/android/systemui/tuner/TunerService;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/tuner/TunerService;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mTunable:Lcom/android/systemui/tuner/TunerService$Tunable;

    const-string v1, "lineagesecure:volume_panel_on_left"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 224
    const-class p1, Lcom/android/systemui/tuner/TunerService;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/tuner/TunerService;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mTunable:Lcom/android/systemui/tuner/TunerService$Tunable;

    const-string v1, "system:show_app_volume"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 226
    new-instance p1, Landroid/graphics/ColorMatrix;

    invoke-direct {p1}, Landroid/graphics/ColorMatrix;-><init>()V

    const/4 v0, 0x0

    .line 227
    invoke-virtual {p1, v0}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 228
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v0, p1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAppIconMuteColorFilter:Landroid/graphics/ColorFilter;

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/volume/VolumeDialogImpl;)Z
    .locals 0

    .line 134
    iget-boolean p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mVolumePanelOnLeft:Z

    return p0
.end method

.method static synthetic access$102(Lcom/android/systemui/volume/VolumeDialogImpl;Z)Z
    .locals 0

    .line 134
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mVolumePanelOnLeft:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/volume/VolumeDialogImpl$H;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/systemui/volume/VolumeDialogImpl;)Landroid/view/ViewGroup;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowsView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/systemui/volume/VolumeDialogImpl;Z)V
    .locals 0

    .line 134
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateExpandedRows(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/volume/VolumeDialogImpl;)Z
    .locals 0

    .line 134
    iget-boolean p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowAppVolume:Z

    return p0
.end method

.method static synthetic access$302(Lcom/android/systemui/volume/VolumeDialogImpl;Z)Z
    .locals 0

    .line 134
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowAppVolume:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/systemui/volume/VolumeDialogImpl;)Ljava/lang/Object;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarningLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$3202(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/SafetyWarningDialog;)Lcom/android/systemui/volume/SafetyWarningDialog;
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V
    .locals 0

    .line 134
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->recheckH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/systemui/volume/VolumeDialogImpl;I)V
    .locals 0

    .line 134
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->showH(I)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/systemui/volume/VolumeDialogImpl;)Landroid/view/ViewGroup;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/android/systemui/volume/VolumeDialogImpl;)Landroid/view/View;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/android/systemui/volume/VolumeDialogImpl;)Landroid/view/WindowManager;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/android/systemui/volume/VolumeDialogImpl;)Z
    .locals 0

    .line 134
    iget-boolean p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSilentMode:Z

    return p0
.end method

.method static synthetic access$3900(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/android/systemui/volume/VolumeDialogImpl;I)V
    .locals 0

    .line 134
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->showSafetyWarningH(I)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/systemui/volume/VolumeDialogImpl;Z)Z
    .locals 0

    .line 134
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mConfigChanged:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/systemui/volume/VolumeDialogImpl;)Z
    .locals 0

    .line 134
    iget-boolean p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowA11yStream:Z

    return p0
.end method

.method static synthetic access$4102(Lcom/android/systemui/volume/VolumeDialogImpl;Z)Z
    .locals 0

    .line 134
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowA11yStream:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .locals 0

    .line 134
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getActiveRow()Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4300(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V
    .locals 0

    .line 134
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateRowsH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/systemui/volume/VolumeDialogImpl;ZZ)V
    .locals 0

    .line 134
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateODICaptionsH(ZZ)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/systemui/volume/VolumeDialogImpl;IZ)V
    .locals 0

    .line 134
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogImpl;->setStreamImportantH(IZ)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController$State;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    return-object p0
.end method

.method static synthetic access$4700()Ljava/lang/String;
    .locals 1

    .line 134
    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4800(Landroid/widget/SeekBar;I)I
    .locals 0

    .line 134
    invoke-static {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->getImpliedLevel(Landroid/widget/SeekBar;I)I

    move-result p0

    return p0
.end method

.method static synthetic access$4900(Lcom/android/systemui/volume/VolumeDialogImpl;)Landroid/content/Context;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private addAccessibilityDescription(Landroid/view/View;ILjava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    .line 1196
    sget p2, Lcom/android/systemui/R$string;->volume_ringer_status_normal:I

    goto :goto_0

    .line 1192
    :cond_0
    sget p2, Lcom/android/systemui/R$string;->volume_ringer_status_vibrate:I

    goto :goto_0

    .line 1189
    :cond_1
    sget p2, Lcom/android/systemui/R$string;->volume_ringer_status_silent:I

    .line 1199
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1200
    new-instance p2, Lcom/android/systemui/volume/VolumeDialogImpl$4;

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/volume/VolumeDialogImpl$4;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method private addAppRow(Landroid/media/AppTrackData;)V
    .locals 2

    .line 488
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl$1;)V

    .line 489
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->initAppRow(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Landroid/media/AppTrackData;)V

    .line 490
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowsView:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$600(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 491
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAppRows:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addExistingRows()V
    .locals 10

    .line 533
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 535
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 536
    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v5

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1500(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v6

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1600(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v7

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1700(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Z

    move-result v8

    .line 537
    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1800(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Z

    move-result v9

    move-object v3, p0

    move-object v4, v2

    .line 536
    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/volume/VolumeDialogImpl;->initRow(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;IIIZZ)V

    .line 538
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowsView:Landroid/view/ViewGroup;

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$600(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 539
    invoke-direct {p0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addRow(IIIZZ)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 475
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZZZ)V

    return-void
.end method

.method private addRow(IIIZZZ)V
    .locals 8

    .line 480
    sget-boolean p6, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz p6, :cond_0

    sget-object p6, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding row for stream "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_0
    new-instance p6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    const/4 v0, 0x0

    invoke-direct {p6, v0}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl$1;)V

    move-object v1, p0

    move-object v2, p6

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    .line 482
    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/volume/VolumeDialogImpl;->initRow(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;IIIZZ)V

    .line 483
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowsView:Landroid/view/ViewGroup;

    invoke-static {p6}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$600(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 484
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {p0, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private animateExpandedRowsChange(Z)V
    .locals 4

    .line 668
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowsView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eqz p1, :cond_0

    .line 672
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateExpandedRows(Z)V

    .line 673
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowsView:Landroid/view/ViewGroup;

    const/4 v2, -0x2

    invoke-virtual {v1, v2, v2}, Landroid/view/ViewGroup;->measure(II)V

    .line 674
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowsView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    goto :goto_0

    .line 676
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->volume_dialog_panel_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    .line 680
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 681
    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$2;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 689
    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl$3;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz p1, :cond_1

    .line 697
    new-instance p0, Lcom/android/systemui/volume/SystemUIInterpolators$LogDecelerateInterpolator;

    invoke-direct {p0}, Lcom/android/systemui/volume/SystemUIInterpolators$LogDecelerateInterpolator;-><init>()V

    goto :goto_1

    .line 698
    :cond_1
    new-instance p0, Lcom/android/systemui/volume/SystemUIInterpolators$LogAccelerateInterpolator;

    invoke-direct {p0}, Lcom/android/systemui/volume/SystemUIInterpolators$LogAccelerateInterpolator;-><init>()V

    .line 697
    :goto_1
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 p0, 0x50

    .line 699
    invoke-virtual {v0, p0, p1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 700
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private checkODICaptionsTooltip(Z)V
    .locals 1

    .line 798
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHasSeenODICaptionsTooltip:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 799
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/VolumeDialogController;->getCaptionsComponentState(Z)V

    goto :goto_0

    .line 801
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHasSeenODICaptionsTooltip:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 802
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->hideCaptionsTooltip()V

    :cond_1
    :goto_0
    return-void
.end method

.method private computeTimeoutH()I
    .locals 4

    .line 1009
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHovering:Z

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    .line 1010
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccessibilityMgr:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    const/16 v0, 0x3e80

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;->getRecommendedTimeoutMillis(II)I

    move-result p0

    return p0

    .line 1013
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    const/4 v2, 0x6

    const/16 v3, 0x1388

    if-eqz v0, :cond_1

    .line 1014
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccessibilityMgr:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;->getRecommendedTimeoutMillis(II)I

    move-result p0

    return p0

    .line 1019
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHasSeenODICaptionsTooltip:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1020
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccessibilityMgr:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;->getRecommendedTimeoutMillis(II)I

    move-result p0

    return p0

    .line 1025
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccessibilityMgr:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    const/16 v0, 0xbb8

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;->getRecommendedTimeoutMillis(II)I

    move-result p0

    return p0
.end method

.method private enableRingerViewsH(Z)V
    .locals 1

    .line 1225
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 1226
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1228
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mZenIcon:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1229
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private enableVolumeRowViewsH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Z)V
    .locals 0

    xor-int/lit8 p0, p2, 0x1

    .line 1216
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1200(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/FrameLayout;

    move-result-object p1

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method private findRow(I)Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .locals 2

    .line 558
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 559
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getActiveRow()Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .locals 4

    .line 544
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 545
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v2

    iget v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActiveStream:I

    if-ne v2, v3, :cond_0

    return-object v1

    .line 549
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 550
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    return-object v1

    .line 554
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    return-object p0
.end method

.method private getAlphaAttr(I)I
    .locals 2

    .line 446
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    .line 447
    invoke-virtual {p0, v1, p1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    .line 448
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    const/high16 p0, 0x437f0000    # 255.0f

    mul-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private getAnimatorX()F
    .locals 2

    .line 412
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 413
    iget-boolean p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mVolumePanelOnLeft:Z

    if-eqz p0, :cond_0

    neg-float v0, v0

    :cond_0
    return v0
.end method

.method private static getImpliedLevel(Landroid/widget/SeekBar;I)I
    .locals 2

    .line 574
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result p0

    .line 575
    div-int/lit8 v0, p0, 0x64

    add-int/lit8 v1, v0, -0x1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    if-ne p1, p0, :cond_1

    goto :goto_0

    :cond_1
    int-to-float p1, p1

    int-to-float p0, p0

    div-float/2addr p1, p0

    int-to-float p0, v1

    mul-float/2addr p1, p0

    float-to-int p0, p1

    add-int/lit8 v0, p0, 0x1

    :goto_0
    return v0
.end method

.method private getSinglePressFor(Landroid/widget/ImageButton;)Ljava/lang/Runnable;
    .locals 1

    .line 1566
    new-instance v0, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$2hlMXa2snauzujb24G7uGSZqOaQ;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$2hlMXa2snauzujb24G7uGSZqOaQ;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Landroid/widget/ImageButton;)V

    return-object v0
.end method

.method private getSingleUnpressFor(Landroid/widget/ImageButton;)Ljava/lang/Runnable;
    .locals 0

    .line 1575
    new-instance p0, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$8BXg6qnVP0GSrRwWeH5o53dnW_0;

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$8BXg6qnVP0GSrRwWeH5o53dnW_0;-><init>(Landroid/widget/ImageButton;)V

    return-object p0
.end method

.method private getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    .line 1554
    :cond_0
    iget-object v1, p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->remoteLabel:Ljava/lang/String;

    if-eqz v1, :cond_1

    return-object v1

    .line 1558
    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    iget v1, p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->name:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 1560
    :catch_0
    sget-object p0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find translation for stream "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private hideCaptionsTooltip()V
    .locals 3

    .line 838
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 839
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 840
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 841
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 842
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 843
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    .line 844
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$HQZQQHyqzaaDRwzq4QDSaDmJINY;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$HQZQQHyqzaaDRwzq4QDSaDmJINY;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    .line 845
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 846
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method private incrementManualToggleCount()V
    .locals 2

    .line 888
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "manual_ringer_toggle_count"

    const/4 v1, 0x0

    .line 889
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 890
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private initAppRow(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Landroid/media/AppTrackData;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .line 496
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->volume_dialog_row:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$602(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Landroid/view/View;)Landroid/view/View;

    .line 498
    invoke-virtual {p2}, Landroid/media/AppTrackData;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$702(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x1

    .line 499
    invoke-static {p1, v0}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$802(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Z)Z

    .line 501
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$600(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 502
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$600(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$id;->volume_row_slider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    invoke-static {p1, v0}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$902(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Landroid/widget/SeekBar;)Landroid/widget/SeekBar;

    .line 503
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$900(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;

    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Lcom/android/systemui/volume/VolumeDialogImpl$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 505
    invoke-virtual {p2}, Landroid/media/AppTrackData;->isMuted()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1102(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Z)Z

    .line 506
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$900(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {p2}, Landroid/media/AppTrackData;->getVolume()F

    move-result p2

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr p2, v1

    float-to-int p2, p2

    invoke-virtual {v0, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 508
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$600(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$id;->dnd_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    invoke-static {p1, p2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1202(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    .line 509
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1200(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/FrameLayout;

    move-result-object p2

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 511
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$600(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$id;->volume_row_app_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    invoke-static {p1, p2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1302(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;

    .line 512
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 513
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    .line 515
    :try_start_0
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$700(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 517
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 518
    sget-object p2, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get icon of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$700(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 521
    :goto_0
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object p2

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1100(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAppIconMuteColorFilter:Landroid/graphics/ColorFilter;

    :cond_0
    invoke-virtual {p2, v2}, Landroid/widget/ImageButton;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 523
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object p2

    new-instance v0, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$OzemYdH6uBz3AWGTF0HM14cYNNM;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$OzemYdH6uBz3AWGTF0HM14cYNNM;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initDialog()V
    .locals 8

    .line 256
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mVolumePanelOnLeft:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    .line 258
    :goto_0
    new-instance v1, Lcom/android/systemui/volume/ConfigurableTexts;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/volume/ConfigurableTexts;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    const/4 v6, 0x0

    .line 259
    iput-boolean v6, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHovering:Z

    .line 260
    iput-boolean v6, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    .line 261
    iput-boolean v6, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpanded:Z

    .line 262
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 263
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v3, -0x3

    and-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 264
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v4, -0x10001

    and-int/2addr v2, v4

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 265
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v4, 0x10c0128

    or-int/2addr v2, v4

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v2, 0x7e4

    .line 271
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 272
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v7, -0x1

    .line 273
    iput v7, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 274
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$layout;->volume_dialog:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Landroid/view/View;

    .line 277
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Landroid/view/View;

    new-instance v2, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$TvafH85yBS-7Xmo7xm19RbOTGls;

    invoke-direct {v2, p0}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$TvafH85yBS-7Xmo7xm19RbOTGls;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 289
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->volume_dialog:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    .line 290
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 291
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    iget-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mVolumePanelOnLeft:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 294
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    new-instance v2, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$A4E7gf7X6coM6TrkLtOBGUNO4i8;

    invoke-direct {v2, p0}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$A4E7gf7X6coM6TrkLtOBGUNO4i8;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 302
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    .line 303
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x10

    .line 304
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 305
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 307
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->main:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogMainView:Landroid/view/ViewGroup;

    .line 308
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogMainView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 309
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->setLayoutGravity(Ljava/lang/Object;I)V

    .line 312
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->volume_dialog_rows:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowsView:Landroid/view/ViewGroup;

    .line 313
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->ringer:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRinger:Landroid/view/ViewGroup;

    .line 314
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRinger:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 315
    sget v2, Lcom/android/systemui/R$id;->ringer_icon:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    .line 316
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRinger:Landroid/view/ViewGroup;

    sget v2, Lcom/android/systemui/R$id;->dnd_icon:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mZenIcon:Landroid/widget/FrameLayout;

    .line 319
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRinger:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->setLayoutGravity(Ljava/lang/Object;I)V

    .line 322
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->odi_captions:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsView:Landroid/view/ViewGroup;

    .line 323
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    .line 324
    sget v2, Lcom/android/systemui/R$id;->odi_captions_icon:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/CaptionsToggleImageButton;

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsIcon:Lcom/android/systemui/volume/CaptionsToggleImageButton;

    .line 325
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->setLayoutGravity(Ljava/lang/Object;I)V

    .line 327
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->odi_captions_tooltip_stub:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipViewStub:Landroid/view/ViewStub;

    .line 328
    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHasSeenODICaptionsTooltip:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipViewStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_4

    .line 329
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 330
    iput-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipViewStub:Landroid/view/ViewStub;

    .line 333
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->media_output_container:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mMediaOutputView:Landroid/view/View;

    .line 334
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->media_output:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mMediaOutputIcon:Landroid/widget/ImageButton;

    .line 335
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mMediaOutputIcon:Landroid/widget/ImageButton;

    if-eqz v1, :cond_5

    .line 336
    invoke-virtual {v1}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->setLayoutGravity(Ljava/lang/Object;I)V

    .line 339
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->expandable_indicator_container:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpandRowsView:Landroid/view/View;

    .line 340
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->expandable_indicator:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpandRows:Lcom/android/systemui/statusbar/phone/ExpandableIndicator;

    .line 341
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpandRows:Lcom/android/systemui/statusbar/phone/ExpandableIndicator;

    if-eqz v1, :cond_7

    .line 342
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->setLayoutGravity(Ljava/lang/Object;I)V

    .line 343
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpandRows:Lcom/android/systemui/statusbar/phone/ExpandableIndicator;

    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mVolumePanelOnLeft:Z

    if-eqz v1, :cond_6

    const/high16 v1, -0x3d4c0000    # -90.0f

    goto :goto_1

    :cond_6
    const/high16 v1, 0x42b40000    # 90.0f

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 346
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 347
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/AudioSystem;->isSingleVolume(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    const/16 v1, 0xa

    .line 348
    sget v3, Lcom/android/systemui/R$drawable;->ic_volume_accessibility:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v2, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZZ)V

    :cond_8
    const/4 v1, 0x3

    .line 351
    sget v2, Lcom/android/systemui/R$drawable;->ic_volume_media:I

    sget v3, Lcom/android/systemui/R$drawable;->ic_volume_media_mute:I

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZZ)V

    .line 353
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/AudioSystem;->isSingleVolume(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 354
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/volume/Util;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v1, 0x2

    .line 355
    sget v2, Lcom/android/systemui/R$drawable;->ic_volume_ringer:I

    sget v3, Lcom/android/systemui/R$drawable;->ic_volume_ringer_mute:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZZ)V

    goto :goto_2

    :cond_9
    const/4 v1, 0x2

    .line 358
    sget v2, Lcom/android/systemui/R$drawable;->ic_volume_notification:I

    sget v3, Lcom/android/systemui/R$drawable;->ic_volume_notification_mute:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZZ)V

    :goto_2
    const/4 v1, 0x4

    .line 361
    sget v2, Lcom/android/systemui/R$drawable;->ic_volume_alarm:I

    sget v3, Lcom/android/systemui/R$drawable;->ic_volume_alarm_mute:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZZ)V

    const/4 v1, 0x0

    const v2, 0x108050a

    const v3, 0x108050a

    const/4 v4, 0x0

    .line 363
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZZ)V

    const/4 v1, 0x6

    .line 366
    sget v3, Lcom/android/systemui/R$drawable;->ic_volume_bt_sco:I

    move v2, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZZ)V

    const/4 v1, 0x1

    .line 368
    sget v2, Lcom/android/systemui/R$drawable;->ic_volume_system:I

    sget v3, Lcom/android/systemui/R$drawable;->ic_volume_system_mute:I

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZZ)V

    goto :goto_3

    .line 372
    :cond_a
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->addExistingRows()V

    .line 375
    :cond_b
    :goto_3
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getActiveRow()Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateRowsH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    .line 376
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->initRingerH()V

    .line 377
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->initSettingsH()V

    .line 378
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->initODICaptionsH()V

    .line 380
    iput v7, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAllyStream:I

    .line 381
    iput-boolean v6, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mMusicHidden:Z

    return-void
.end method

.method private initODICaptionsH()V
    .locals 3

    .line 787
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsIcon:Lcom/android/systemui/volume/CaptionsToggleImageButton;

    if-eqz v0, :cond_0

    .line 788
    new-instance v1, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$eEn-BNs1q20EL2mOh79Wt4V5owU;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$eEn-BNs1q20EL2mOh79Wt4V5owU;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/volume/CaptionsToggleImageButton;->setOnConfirmedTapListener(Lcom/android/systemui/volume/CaptionsToggleImageButton$ConfirmedTapListener;Landroid/os/Handler;)V

    .line 794
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/VolumeDialogController;->getCaptionsComponentState(Z)V

    return-void
.end method

.method private initRow(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;IIIZZ)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .line 584
    invoke-static {p1, p2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1402(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)I

    .line 585
    invoke-static {p1, p3}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1502(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)I

    .line 586
    invoke-static {p1, p4}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1602(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)I

    .line 587
    invoke-static {p1, p5}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1702(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Z)Z

    .line 588
    invoke-static {p1, p6}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1802(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Z)Z

    .line 589
    iget-object p4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {p4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p4

    sget p5, Lcom/android/systemui/R$layout;->volume_dialog_row:I

    const/4 p6, 0x0

    invoke-virtual {p4, p5, p6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    invoke-static {p1, p4}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$602(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Landroid/view/View;)Landroid/view/View;

    .line 590
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$600(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object p4

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result p5

    invoke-virtual {p4, p5}, Landroid/view/View;->setId(I)V

    .line 591
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$600(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 592
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$600(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object p4

    sget p5, Lcom/android/systemui/R$id;->volume_row_header:I

    invoke-virtual {p4, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    invoke-static {p1, p4}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1902(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 593
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1900(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/TextView;

    move-result-object p4

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result p5

    mul-int/lit8 p5, p5, 0x14

    invoke-virtual {p4, p5}, Landroid/widget/TextView;->setId(I)V

    const/4 p4, 0x0

    const/16 p5, 0xa

    if-ne p2, p5, :cond_0

    .line 595
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1900(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0xd

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, p4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 597
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$600(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$id;->dnd_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-static {p1, v0}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1202(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    .line 598
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$600(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$id;->volume_row_slider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    invoke-static {p1, v0}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$902(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Landroid/widget/SeekBar;)Landroid/widget/SeekBar;

    .line 599
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$900(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;

    invoke-direct {v1, p0, p1, p6}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Lcom/android/systemui/volume/VolumeDialogImpl$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 601
    invoke-static {p1, p6}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2002(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 603
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$600(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object p6

    sget v0, Lcom/android/systemui/R$id;->volume_row_icon:I

    invoke-virtual {p6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p6

    check-cast p6, Landroid/widget/ImageButton;

    invoke-static {p1, p6}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1302(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;

    .line 604
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object p6

    invoke-virtual {p6, p3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 605
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object p3

    invoke-virtual {p3, p4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 606
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result p3

    if-eq p3, p5, :cond_1

    .line 607
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object p3

    new-instance p4, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$H97_dVYF8wOG2DPTLekrGcsLjAY;

    invoke-direct {p4, p0, p1, p2}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$H97_dVYF8wOG2DPTLekrGcsLjAY;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)V

    invoke-virtual {p3, p4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 617
    :cond_1
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setImportantForAccessibility(I)V

    :goto_0
    return-void
.end method

.method private static isBluetoothA2dpConnected()Z
    .locals 2

    .line 627
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 628
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    .line 629
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isLandscape()Z
    .locals 1

    .line 453
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isNotificationVolumeLinked()Z
    .locals 2

    .line 622
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "volume_link_notification"

    .line 623
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$getSingleUnpressFor$18(Landroid/widget/ImageButton;)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 1577
    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setPressed(Z)V

    :cond_0
    return-void
.end method

.method private maybeShowToastH(I)V
    .locals 11

    .line 912
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    const-string v1, "RingerGuidanceCount"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/16 v3, 0xc

    if-le v0, v3, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_2

    const/4 v5, 0x2

    if-eq p1, v5, :cond_1

    .line 933
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    const v3, 0x1040740

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 920
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-object p1, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {p1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    if-eqz p1, :cond_3

    .line 922
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->volume_dialog_ringer_guidance_ring:I

    new-array v6, v4, [Ljava/lang/Object;

    iget v7, p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    int-to-long v7, v7

    iget p1, p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMax:I

    int-to-long v9, p1

    .line 924
    invoke-static {v7, v8, v9, v10}, Lcom/android/settingslib/Utils;->formatPercentage(JJ)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v2

    .line 922
    invoke-virtual {v3, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 928
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    const v3, 0x104073f

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 937
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {p1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    add-int/2addr v0, v4

    .line 939
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {p0, v1, v0}, Lcom/android/systemui/Prefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private onCaptionIconClicked()V
    .locals 2

    .line 882
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/VolumeDialogController;->areCaptionsEnabled()Z

    move-result v0

    .line 883
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {v1, v0}, Lcom/android/systemui/plugins/VolumeDialogController;->setCaptionsEnabled(Z)V

    .line 884
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateCaptionsIcon()V

    return-void
.end method

.method private provideTouchFeedbackH(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    .line 904
    invoke-static {p1}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object p1

    goto :goto_0

    .line 897
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p1}, Lcom/android/systemui/plugins/VolumeDialogController;->scheduleTouchFeedback()V

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 900
    invoke-static {p1}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    .line 907
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/VolumeDialogController;->vibrate(Landroid/os/VibrationEffect;)V

    :cond_2
    return-void
.end method

.method private recheckH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V
    .locals 3

    if-nez p1, :cond_1

    .line 1507
    sget-boolean p1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string v0, "recheckH ALL"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->trimObsoleteH()V

    .line 1509
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 1510
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    goto :goto_0

    .line 1513
    :cond_1
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recheckH "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    :cond_3
    return-void
.end method

.method private removeAppRow(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V
    .locals 1

    .line 1250
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAppRows:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1251
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowsView:Landroid/view/ViewGroup;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$600(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method private removeRow(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V
    .locals 1

    .line 1245
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1246
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowsView:Landroid/view/ViewGroup;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$600(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method private setLayoutGravity(Ljava/lang/Object;I)V
    .locals 0

    .line 404
    instance-of p0, p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p0, :cond_0

    .line 405
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 406
    :cond_0
    instance-of p0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p0, :cond_1

    .line 407
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :cond_1
    :goto_0
    return-void
.end method

.method private setStreamImportantH(IZ)V
    .locals 2

    .line 1519
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 1520
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 1521
    invoke-static {v0, p2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1702(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Z)Z

    :cond_1
    return-void
.end method

.method private setVisOrGone(IZ)V
    .locals 1

    if-nez p2, :cond_0

    .line 634
    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAllyStream:I

    if-ne p1, v0, :cond_0

    return-void

    .line 637
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->findRow(I)Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$600(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    return-void
.end method

.method private shouldBeVisibleH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Z
    .locals 5

    .line 1083
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v0

    invoke-static {p2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1085
    :goto_0
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_1

    .line 1086
    invoke-static {p2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v1

    if-eq v1, v4, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpanded:Z

    if-nez v1, :cond_1

    .line 1087
    iput-boolean v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mMusicHidden:Z

    return v2

    :cond_1
    if-eqz v0, :cond_2

    return v3

    .line 1095
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowActiveStreamOnly:Z

    if-nez v0, :cond_6

    .line 1096
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    .line 1097
    iget-boolean p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowA11yStream:Z

    return p0

    .line 1102
    :cond_3
    invoke-static {p2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 1103
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v0

    iget v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mPrevActiveStream:I

    if-ne v0, v4, :cond_4

    return v3

    .line 1107
    :cond_4
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1800(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1108
    invoke-static {p2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    .line 1109
    invoke-static {p2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result p1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_5

    .line 1110
    invoke-static {p2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_5

    .line 1111
    invoke-static {p2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result p1

    if-eqz p1, :cond_5

    .line 1112
    invoke-static {p2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result p1

    if-eq p1, v1, :cond_5

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    .line 1113
    invoke-static {p2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_5
    move v2, v3

    :cond_6
    return v2
.end method

.method private showActiveStreamOnly()Z
    .locals 2

    .line 1078
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 1079
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.type.television"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private showH(I)V
    .locals 6

    .line 951
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showH r="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/systemui/volume/Events;->SHOW_REASONS:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 953
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 954
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->rescheduleTimeoutH()V

    .line 956
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mConfigChanged:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 957
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->initDialog()V

    .line 958
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    invoke-virtual {v0}, Lcom/android/systemui/volume/ConfigurableTexts;->update()V

    .line 959
    iput-boolean v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mConfigChanged:Z

    .line 962
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->initSettingsH()V

    .line 963
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v4}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 965
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_4

    .line 966
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->isLandscape()Z

    move-result v0

    if-nez v0, :cond_3

    .line 967
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    .line 968
    iget-boolean v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mVolumePanelOnLeft:Z

    if-eqz v4, :cond_2

    const/4 v4, -0x1

    goto :goto_0

    :cond_2
    move v4, v1

    :goto_0
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    mul-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 967
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 970
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 971
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 972
    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 973
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v4, 0x12c

    .line 974
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v4, Lcom/android/systemui/volume/SystemUIInterpolators$LogDecelerateInterpolator;

    invoke-direct {v4}, Lcom/android/systemui/volume/SystemUIInterpolators$LogDecelerateInterpolator;-><init>()V

    .line 975
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v4, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$pnL_EamB5Z8d5UgUAnd1bOtblS8;

    invoke-direct {v4, p0}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$pnL_EamB5Z8d5UgUAnd1bOtblS8;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    .line 976
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v4, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$yKwEX9kRcPuFXY0xrVWYSvwGOdE;

    invoke-direct {v4, p0}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$yKwEX9kRcPuFXY0xrVWYSvwGOdE;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    .line 981
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 990
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 993
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mKeyguard:Landroid/app/KeyguardManager;

    invoke-virtual {p1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {v0, v3, v2}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 994
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p1, v1}, Lcom/android/systemui/plugins/VolumeDialogController;->notifyVisible(Z)V

    .line 995
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p1, v3}, Lcom/android/systemui/plugins/VolumeDialogController;->getCaptionsComponentState(Z)V

    .line 996
    invoke-direct {p0, v3}, Lcom/android/systemui/volume/VolumeDialogImpl;->checkODICaptionsTooltip(Z)V

    return-void
.end method

.method private showSafetyWarningH(I)V
    .locals 3

    and-int/lit16 p1, p1, 0x401

    if-nez p1, :cond_0

    .line 1528
    iget-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    if-eqz p1, :cond_2

    .line 1530
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1531
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-eqz v0, :cond_1

    .line 1532
    monitor-exit p1

    return-void

    .line 1534
    :cond_1
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogImpl$5;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v2}, Lcom/android/systemui/plugins/VolumeDialogController;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl$5;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Landroid/content/Context;Landroid/media/AudioManager;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    .line 1543
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1544
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 1545
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->recheckH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    .line 1547
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->rescheduleTimeoutH()V

    return-void

    :catchall_0
    move-exception p0

    .line 1544
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private trimObsoleteH()V
    .locals 4

    .line 1234
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string v1, "trimObsoleteH"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 1236
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 1237
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->dynamic:Z

    if-nez v2, :cond_1

    goto :goto_1

    .line 1238
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1239
    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->removeRow(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private updateAppRows(Z)V
    .locals 2

    .line 654
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAppRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 655
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAppRows:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 656
    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->removeAppRow(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 658
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowAppVolume:Z

    if-eqz v0, :cond_3

    if-nez p1, :cond_1

    goto :goto_2

    .line 659
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p1}, Lcom/android/systemui/plugins/VolumeDialogController;->getAudioManager()Landroid/media/AudioManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioManager;->listAppTrackDatas()Ljava/util/ArrayList;

    move-result-object p1

    .line 660
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AppTrackData;

    .line 661
    invoke-virtual {v0}, Landroid/media/AppTrackData;->isActive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 662
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->addAppRow(Landroid/media/AppTrackData;)V

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method private updateCaptionsIcon()V
    .locals 3

    .line 870
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/VolumeDialogController;->areCaptionsEnabled()Z

    move-result v0

    .line 871
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsIcon:Lcom/android/systemui/volume/CaptionsToggleImageButton;

    invoke-virtual {v1}, Lcom/android/systemui/volume/CaptionsToggleImageButton;->getCaptionsEnabled()Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 872
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsIcon:Lcom/android/systemui/volume/CaptionsToggleImageButton;

    invoke-virtual {v2, v0}, Lcom/android/systemui/volume/CaptionsToggleImageButton;->setCaptionsEnabled(Z)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 875
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/VolumeDialogController;->isCaptionStreamOptedOut()Z

    move-result v0

    .line 876
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsIcon:Lcom/android/systemui/volume/CaptionsToggleImageButton;

    invoke-virtual {v1}, Lcom/android/systemui/volume/CaptionsToggleImageButton;->getOptedOut()Z

    move-result v1

    if-eq v1, v0, :cond_1

    .line 877
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    new-instance v2, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$bmPUQQPUnX09fETo3DnngnG6m84;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$bmPUQQPUnX09fETo3DnngnG6m84;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private updateExpandedRows(Z)V
    .locals 2

    if-nez p1, :cond_0

    .line 641
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAllyStream:I

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/VolumeDialogController;->setActiveStream(I)V

    .line 642
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mMusicHidden:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    .line 643
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->setVisOrGone(IZ)V

    :cond_1
    const/4 v0, 0x2

    .line 645
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->setVisOrGone(IZ)V

    const/4 v0, 0x4

    .line 646
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->setVisOrGone(IZ)V

    .line 647
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->isNotificationVolumeLinked()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x5

    .line 648
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->setVisOrGone(IZ)V

    .line 650
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateAppRows(Z)V

    return-void
.end method

.method private updateNotificationRowH()V
    .locals 7

    const/4 v0, 0x5

    .line 1298
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->findRow(I)Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1299
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-boolean v1, v1, Lcom/android/systemui/plugins/VolumeDialogController$State;->linkedNotification:Z

    if-eqz v1, :cond_0

    .line 1300
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->removeRow(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 1301
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->linkedNotification:Z

    if-nez v0, :cond_1

    const/4 v2, 0x5

    .line 1302
    sget v3, Lcom/android/systemui/R$drawable;->ic_volume_notification:I

    sget v4, Lcom/android/systemui/R$drawable;->ic_volume_notification_mute:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateODICaptionsH(ZZ)V
    .locals 2

    .line 859
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 860
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    if-nez p1, :cond_2

    return-void

    .line 865
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateCaptionsIcon()V

    if-eqz p2, :cond_3

    .line 866
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->showCaptionsTooltip()V

    :cond_3
    return-void
.end method

.method private updateRowsH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V
    .locals 5

    .line 1121
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string v1, "updateRowsH"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    if-nez v0, :cond_1

    .line 1123
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->trimObsoleteH()V

    .line 1126
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    if-ne v1, p1, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 1128
    :goto_1
    invoke-direct {p0, v1, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->shouldBeVisibleH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Z

    move-result v3

    .line 1129
    iget-boolean v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpanded:Z

    if-nez v4, :cond_4

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$600(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 1130
    :cond_4
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$600(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->isShown()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1131
    invoke-direct {p0, v1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowTintH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Z)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method private updateVolumeRowH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1308
    sget-boolean v2, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateVolumeRowH s="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    :cond_0
    iget-object v2, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    if-nez v2, :cond_1

    return-void

    .line 1310
    :cond_1
    iget-object v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    if-nez v2, :cond_2

    return-void

    .line 1312
    :cond_2
    invoke-static {v1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2302(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .line 1313
    iget v3, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    iget v4, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMin:I

    if-le v3, v4, :cond_3

    .line 1314
    invoke-static {v1, v3}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2402(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)I

    .line 1316
    :cond_3
    iget v3, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2500(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v4

    if-ne v3, v4, :cond_4

    const/4 v3, -0x1

    .line 1317
    invoke-static {v1, v3}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2502(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)I

    .line 1319
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v3

    const/16 v4, 0xa

    const/4 v6, 0x1

    if-ne v3, v4, :cond_5

    move v3, v6

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    .line 1320
    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v4

    const/4 v7, 0x2

    if-ne v4, v7, :cond_6

    move v4, v6

    goto :goto_1

    :cond_6
    const/4 v4, 0x0

    .line 1321
    :goto_1
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v8

    if-ne v8, v6, :cond_7

    move v8, v6

    goto :goto_2

    :cond_7
    const/4 v8, 0x0

    .line 1322
    :goto_2
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_8

    move v9, v6

    goto :goto_3

    :cond_8
    const/4 v9, 0x0

    .line 1323
    :goto_3
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_9

    move v10, v6

    goto :goto_4

    :cond_9
    const/4 v10, 0x0

    .line 1324
    :goto_4
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v12

    const/4 v13, 0x5

    if-ne v12, v13, :cond_a

    move v12, v6

    goto :goto_5

    :cond_a
    const/4 v12, 0x0

    .line 1325
    :goto_5
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v13

    iget v13, v13, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v14

    iget v14, v14, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMin:I

    if-ne v13, v14, :cond_b

    move v13, v6

    goto :goto_6

    :cond_b
    const/4 v13, 0x0

    .line 1326
    :goto_6
    iget-object v14, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v14, v14, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    if-ne v14, v6, :cond_c

    move v14, v6

    goto :goto_7

    :cond_c
    const/4 v14, 0x0

    :goto_7
    if-eqz v4, :cond_d

    if-eqz v14, :cond_d

    move v15, v6

    goto :goto_8

    :cond_d
    const/4 v15, 0x0

    :goto_8
    if-eqz v4, :cond_e

    .line 1328
    iget-object v5, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v5, v5, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    if-nez v5, :cond_e

    move v5, v6

    goto :goto_9

    :cond_e
    const/4 v5, 0x0

    .line 1330
    :goto_9
    iget-object v7, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v7, v7, Lcom/android/systemui/plugins/VolumeDialogController$State;->zenMode:I

    if-ne v7, v6, :cond_f

    move v7, v6

    goto :goto_a

    :cond_f
    const/4 v7, 0x0

    .line 1331
    :goto_a
    iget-object v6, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v6, v6, Lcom/android/systemui/plugins/VolumeDialogController$State;->zenMode:I

    if-ne v6, v11, :cond_10

    const/4 v6, 0x1

    goto :goto_b

    :cond_10
    const/4 v6, 0x0

    .line 1332
    :goto_b
    iget-object v11, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v11, v11, Lcom/android/systemui/plugins/VolumeDialogController$State;->zenMode:I

    move/from16 v16, v3

    const/4 v3, 0x2

    if-ne v11, v3, :cond_11

    const/4 v11, 0x1

    goto :goto_c

    :cond_11
    const/4 v11, 0x0

    :goto_c
    if-eqz v6, :cond_13

    if-nez v4, :cond_12

    if-nez v8, :cond_12

    if-eqz v12, :cond_19

    :cond_12
    :goto_d
    const/4 v12, 0x1

    goto :goto_e

    :cond_13
    if-eqz v11, :cond_14

    if-nez v4, :cond_12

    if-nez v8, :cond_12

    if-nez v9, :cond_12

    if-nez v10, :cond_12

    if-eqz v12, :cond_19

    goto :goto_d

    :cond_14
    if-eqz v7, :cond_18

    if-eqz v9, :cond_15

    .line 1336
    iget-object v6, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-boolean v6, v6, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowAlarms:Z

    if-nez v6, :cond_12

    :cond_15
    if-eqz v10, :cond_16

    iget-object v6, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-boolean v6, v6, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowMedia:Z

    if-nez v6, :cond_12

    :cond_16
    if-eqz v4, :cond_17

    iget-object v6, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-boolean v6, v6, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowRinger:Z

    if-nez v6, :cond_12

    :cond_17
    if-eqz v8, :cond_19

    iget-object v6, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-boolean v6, v6, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowSystem:Z

    if-eqz v6, :cond_19

    goto :goto_d

    :cond_18
    if-eqz v14, :cond_19

    goto :goto_e

    :cond_19
    const/4 v12, 0x0

    .line 1344
    :goto_e
    iget v6, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMax:I

    mul-int/lit8 v6, v6, 0x64

    .line 1345
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$900(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/SeekBar;->getMax()I

    move-result v7

    if-eq v6, v7, :cond_1a

    .line 1346
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$900(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1349
    :cond_1a
    iget v6, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMin:I

    mul-int/lit8 v6, v6, 0x64

    .line 1350
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$900(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/SeekBar;->getMin()I

    move-result v7

    if-eq v6, v7, :cond_1b

    .line 1351
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$900(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/widget/SeekBar;->setMin(I)V

    .line 1355
    :cond_1b
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1900(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/TextView;

    move-result-object v6

    invoke-direct {v0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/settingslib/volume/Util;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    .line 1356
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$900(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v6

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1900(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1357
    iget-object v6, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1900(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/TextView;

    move-result-object v7

    iget v8, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->name:I

    invoke-virtual {v6, v7, v8}, Lcom/android/systemui/volume/ConfigurableTexts;->add(Landroid/widget/TextView;I)I

    .line 1360
    iget-boolean v6, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAutomute:Z

    if-nez v6, :cond_1c

    iget-boolean v6, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muteSupported:Z

    if-eqz v6, :cond_1d

    :cond_1c
    if-nez v12, :cond_1d

    const/4 v6, 0x1

    goto :goto_f

    :cond_1d
    const/4 v6, 0x0

    .line 1361
    :goto_f
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1362
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v7

    if-eqz v6, :cond_1e

    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_10

    :cond_1e
    const/high16 v8, 0x3f000000    # 0.5f

    :goto_10
    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setAlpha(F)V

    if-eqz v15, :cond_1f

    .line 1364
    sget v5, Lcom/android/systemui/R$drawable;->ic_volume_ringer_vibrate:I

    goto :goto_12

    :cond_1f
    if-nez v5, :cond_25

    if-eqz v12, :cond_20

    goto :goto_11

    .line 1366
    :cond_20
    iget-boolean v5, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToBluetooth:Z

    if-eqz v5, :cond_22

    .line 1367
    iget-boolean v5, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    if-eqz v5, :cond_21

    sget v5, Lcom/android/systemui/R$drawable;->ic_volume_media_bt_mute:I

    goto :goto_12

    .line 1368
    :cond_21
    sget v5, Lcom/android/systemui/R$drawable;->ic_volume_media_bt:I

    goto :goto_12

    .line 1369
    :cond_22
    iget-boolean v5, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAutomute:Z

    if-eqz v5, :cond_23

    iget v5, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-nez v5, :cond_23

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1600(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v5

    goto :goto_12

    :cond_23
    if-eqz v13, :cond_24

    .line 1370
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1600(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v5

    goto :goto_12

    :cond_24
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1500(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v5

    goto :goto_12

    .line 1365
    :cond_25
    :goto_11
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1600(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v5

    .line 1371
    :goto_12
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1373
    sget v7, Lcom/android/systemui/R$drawable;->ic_volume_ringer_vibrate:I

    if-ne v5, v7, :cond_26

    const/4 v3, 0x3

    goto :goto_14

    .line 1374
    :cond_26
    sget v7, Lcom/android/systemui/R$drawable;->ic_volume_media_bt_mute:I

    if-eq v5, v7, :cond_2a

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1600(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v7

    if-ne v5, v7, :cond_27

    goto :goto_14

    .line 1376
    :cond_27
    sget v3, Lcom/android/systemui/R$drawable;->ic_volume_media_bt:I

    if-eq v5, v3, :cond_29

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1500(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v3

    if-ne v5, v3, :cond_28

    goto :goto_13

    :cond_28
    const/4 v3, 0x0

    goto :goto_14

    :cond_29
    :goto_13
    const/4 v3, 0x1

    .line 1372
    :cond_2a
    :goto_14
    invoke-static {v1, v3}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2602(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)I

    if-eqz v6, :cond_34

    if-eqz v4, :cond_2f

    if-eqz v15, :cond_2b

    .line 1382
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v3

    iget-object v5, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/systemui/R$string;->volume_stream_content_description_unmute:I

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    .line 1384
    invoke-direct {v0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    aput-object v2, v7, v8

    .line 1382
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_17

    .line 1386
    :cond_2b
    iget-object v3, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v3}, Lcom/android/systemui/plugins/VolumeDialogController;->hasVibrator()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 1387
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v3

    iget-object v5, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 1388
    iget-boolean v6, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowA11yStream:Z

    if-eqz v6, :cond_2c

    .line 1389
    sget v6, Lcom/android/systemui/R$string;->volume_stream_content_description_vibrate_a11y:I

    goto :goto_15

    .line 1390
    :cond_2c
    sget v6, Lcom/android/systemui/R$string;->volume_stream_content_description_vibrate:I

    :goto_15
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    .line 1391
    invoke-direct {v0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    aput-object v2, v7, v8

    .line 1387
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_17

    .line 1393
    :cond_2d
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v3

    iget-object v5, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 1394
    iget-boolean v6, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowA11yStream:Z

    if-eqz v6, :cond_2e

    .line 1395
    sget v6, Lcom/android/systemui/R$string;->volume_stream_content_description_mute_a11y:I

    goto :goto_16

    .line 1396
    :cond_2e
    sget v6, Lcom/android/systemui/R$string;->volume_stream_content_description_mute:I

    :goto_16
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    .line 1397
    invoke-direct {v0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    aput-object v2, v7, v8

    .line 1393
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_17

    :cond_2f
    if-eqz v16, :cond_30

    .line 1401
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v3

    invoke-direct {v0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_17
    const/4 v8, 0x0

    goto :goto_1a

    .line 1403
    :cond_30
    iget-boolean v3, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    if-nez v3, :cond_33

    iget-boolean v3, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAutomute:Z

    if-eqz v3, :cond_31

    iget v3, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-nez v3, :cond_31

    goto :goto_19

    .line 1408
    :cond_31
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v3

    iget-object v5, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 1409
    iget-boolean v6, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowA11yStream:Z

    if-eqz v6, :cond_32

    .line 1410
    sget v6, Lcom/android/systemui/R$string;->volume_stream_content_description_mute_a11y:I

    goto :goto_18

    .line 1411
    :cond_32
    sget v6, Lcom/android/systemui/R$string;->volume_stream_content_description_mute:I

    :goto_18
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    .line 1412
    invoke-direct {v0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    aput-object v2, v7, v8

    .line 1408
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1a

    :cond_33
    :goto_19
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1404
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v3

    iget-object v5, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/systemui/R$string;->volume_stream_content_description_unmute:I

    new-array v7, v7, [Ljava/lang/Object;

    .line 1406
    invoke-direct {v0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v8

    .line 1404
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1a

    :cond_34
    const/4 v8, 0x0

    .line 1416
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v3

    invoke-direct {v0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1a
    if-eqz v12, :cond_35

    .line 1421
    invoke-static {v1, v8}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2702(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Z)Z

    :cond_35
    xor-int/lit8 v2, v12, 0x1

    .line 1423
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->enableVolumeRowViewsH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Z)V

    xor-int/lit8 v2, v12, 0x1

    .line 1427
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    if-eqz v3, :cond_36

    if-nez v4, :cond_36

    if-nez v12, :cond_36

    move v5, v8

    goto :goto_1b

    .line 1428
    :cond_36
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v3

    iget v5, v3, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    .line 1429
    :goto_1b
    invoke-direct {v0, v1, v2, v5}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowSliderH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;ZI)V

    return-void
.end method

.method private updateVolumeRowSliderH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;ZI)V
    .locals 9

    .line 1454
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$900(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 1455
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result p2

    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActiveStream:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_0

    move p2, v2

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowTintH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Z)V

    .line 1456
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2700(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 1459
    :cond_1
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$900(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/SeekBar;->getProgress()I

    move-result p2

    .line 1460
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$900(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getImpliedLevel(Landroid/widget/SeekBar;I)I

    move-result v0

    .line 1461
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$600(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    .line 1462
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2900(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    cmp-long v4, v4, v6

    if-gez v4, :cond_3

    move v4, v2

    goto :goto_2

    :cond_3
    move v4, v1

    .line 1464
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v8, 0x3

    invoke-virtual {v5, v8, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1465
    iget-boolean v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    if-eqz v5, :cond_5

    if-eqz v3, :cond_5

    if-eqz v4, :cond_5

    .line 1466
    sget-boolean p2, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz p2, :cond_4

    sget-object p2, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string p3, "inGracePeriod"

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1467
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    invoke-virtual {p0, v8, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 1468
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2900(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)J

    move-result-wide v0

    add-long/2addr v0, v6

    .line 1467
    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void

    :cond_5
    if-ne p3, v0, :cond_6

    .line 1472
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    if-eqz v0, :cond_6

    if-eqz v3, :cond_6

    return-void

    :cond_6
    mul-int/lit8 p3, p3, 0x64

    if-eq p2, p3, :cond_b

    .line 1478
    iget-boolean p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    if-eqz p0, :cond_9

    if-eqz v3, :cond_9

    .line 1480
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2000(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2000(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 1481
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$3000(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result p0

    if-ne p0, p3, :cond_7

    return-void

    .line 1485
    :cond_7
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2000(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const/4 v0, 0x2

    if-nez p0, :cond_8

    .line 1486
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$900(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object p0

    new-array v0, v0, [I

    aput p2, v0, v1

    aput p3, v0, v2

    const-string p2, "progress"

    invoke-static {p0, p2, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2002(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 1487
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2000(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_3

    .line 1489
    :cond_8
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2000(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1490
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2000(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    new-array v0, v0, [I

    aput p2, v0, v1

    aput p3, v0, v2

    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    .line 1492
    :goto_3
    invoke-static {p1, p3}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$3002(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)I

    .line 1493
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2000(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 p2, 0x50

    invoke-virtual {p0, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1494
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2000(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_4

    .line 1497
    :cond_9
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2000(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    if-eqz p0, :cond_a

    .line 1498
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2000(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1500
    :cond_a
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$900(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object p0

    invoke-virtual {p0, p3, v2}, Landroid/widget/SeekBar;->setProgress(IZ)V

    :cond_b
    :goto_4
    return-void
.end method

.method private updateVolumeRowTintH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Z)V
    .locals 3

    if-eqz p2, :cond_0

    .line 1434
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$900(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->requestFocus()Z

    :cond_0
    if-eqz p2, :cond_1

    .line 1436
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$900(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_2

    .line 1438
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/Utils;->getColorAccent(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_1

    .line 1439
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    const v1, 0x1010030

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_1
    if-eqz p2, :cond_3

    .line 1441
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p2

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result p2

    goto :goto_2

    :cond_3
    const p2, 0x1010553

    .line 1442
    invoke-direct {p0, p2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getAlphaAttr(I)I

    move-result p2

    .line 1443
    :goto_2
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2800(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-ne v0, v1, :cond_4

    iget-boolean p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpanded:Z

    if-eqz p0, :cond_4

    return-void

    .line 1444
    :cond_4
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$900(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 1445
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$900(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 1446
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$900(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 1447
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$900(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object p0

    int-to-float v1, p2

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/SeekBar;->setAlpha(F)V

    .line 1448
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 1449
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/widget/ImageButton;->setImageAlpha(I)V

    .line 1450
    invoke-static {p1, v0}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2802(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    return-void
.end method


# virtual methods
.method composeWindowTitle()Ljava/lang/CharSequence;
    .locals 4

    .line 1294
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->volume_dialog_title:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getActiveRow()Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public destroy()V
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mControllerCallbackH:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/VolumeDialogController;->removeCallback(Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;)V

    .line 250
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 251
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method protected dismissH(I)V
    .locals 4

    .line 1030
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    .line 1031
    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDialog.dismiss() reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/systemui/volume/Events;->DISMISS_REASONS:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1032
    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1031
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    if-nez v0, :cond_1

    return-void

    .line 1038
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1039
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1040
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1041
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 1042
    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    .line 1044
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v0

    invoke-static {v2, v1, v3}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1046
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 1047
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 1048
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1049
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v2, 0xfa

    .line 1050
    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/volume/SystemUIInterpolators$LogAccelerateInterpolator;

    invoke-direct {v0}, Lcom/android/systemui/volume/SystemUIInterpolators$LogAccelerateInterpolator;-><init>()V

    .line 1051
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$qQACcNQ8kwZz1WhZ7N5t4QWDxhA;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$qQACcNQ8kwZz1WhZ7N5t4QWDxhA;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    .line 1052
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1066
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getAnimatorX()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 1067
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1068
    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->checkODICaptionsTooltip(Z)V

    .line 1069
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1070
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-eqz v0, :cond_4

    .line 1071
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string v1, "SafetyWarning dismissed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1074
    :cond_4
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public init(ILcom/android/systemui/plugins/VolumeDialog$Callback;)V
    .locals 1

    .line 237
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->initDialog()V

    .line 239
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccessibility:Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;

    invoke-virtual {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;->init()V

    .line 241
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    iget-object p2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mControllerCallbackH:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    invoke-interface {p1, p2, v0}, Lcom/android/systemui/plugins/VolumeDialogController;->addCallback(Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;Landroid/os/Handler;)V

    .line 242
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p1}, Lcom/android/systemui/plugins/VolumeDialogController;->getState()V

    .line 244
    const-class p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public initRingerH()V
    .locals 2

    .line 748
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 749
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAccessibilityLiveRegion(I)V

    .line 750
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$pB0jp_m-jnDxZysxjytJyjd2hhM;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$pB0jp_m-jnDxZysxjytJyjd2hhM;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 783
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateRingerH()V

    return-void
.end method

.method public initSettingsH()V
    .locals 2

    .line 723
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateMediaOutputH()V

    .line 724
    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAllyStream:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 725
    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActiveStream:I

    iput v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAllyStream:I

    .line 728
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpandRowsView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 730
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isCurrentUserSetup()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActivityManager:Landroid/app/ActivityManager;

    .line 731
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    .line 729
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 734
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpandRows:Lcom/android/systemui/statusbar/phone/ExpandableIndicator;

    if-eqz v0, :cond_3

    .line 735
    new-instance v1, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$HK81O8FNLcNlbDofhH9NJIhlaZg;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$HK81O8FNLcNlbDofhH9NJIhlaZg;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method

.method public synthetic lambda$dismissH$15$VolumeDialogImpl()V
    .locals 4

    .line 1053
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1054
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    .line 1056
    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpanded:Z

    .line 1057
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowsView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->volume_dialog_panel_width:I

    .line 1058
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1059
    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpanded:Z

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateExpandedRows(Z)V

    .line 1060
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpandRows:Lcom/android/systemui/statusbar/phone/ExpandableIndicator;

    iget-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpanded:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->setExpanded(Z)V

    const/4 v1, -0x1

    .line 1061
    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAllyStream:I

    .line 1062
    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mMusicHidden:Z

    .line 1063
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->tryToRemoveCaptionsTooltip()V

    .line 1064
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/VolumeDialogController;->notifyVisible(Z)V

    return-void
.end method

.method public synthetic lambda$dismissH$16$VolumeDialogImpl()V
    .locals 4

    .line 1052
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    new-instance v1, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$VwurgAqcM0pf0FlYl8sLU2fuslA;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$VwurgAqcM0pf0FlYl8sLU2fuslA;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public synthetic lambda$getSinglePressFor$17$VolumeDialogImpl(Landroid/widget/ImageButton;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 1568
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setPressed(Z)V

    .line 1569
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->getSingleUnpressFor(Landroid/widget/ImageButton;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p0, v0, v1}, Landroid/widget/ImageButton;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$hideCaptionsTooltip$11$VolumeDialogImpl()V
    .locals 1

    .line 845
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public synthetic lambda$initAppRow$3$VolumeDialogImpl(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Landroid/view/View;)V
    .locals 2

    .line 524
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->rescheduleTimeoutH()V

    .line 525
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p2}, Lcom/android/systemui/plugins/VolumeDialogController;->getAudioManager()Landroid/media/AudioManager;

    move-result-object p2

    .line 526
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1100(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1102(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Z)Z

    .line 527
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$700(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1100(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Z

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/media/AudioManager;->setAppMute(Ljava/lang/String;Z)I

    .line 528
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object p2

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1100(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAppIconMuteColorFilter:Landroid/graphics/ColorFilter;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p2, p0}, Landroid/widget/ImageButton;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public synthetic lambda$initDialog$0$VolumeDialogImpl(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 278
    iget-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    if-eqz p1, :cond_1

    .line 279
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 282
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->dismissH(I)V

    return p1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$initDialog$1$VolumeDialogImpl(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 295
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 p2, 0x1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move p1, p2

    .line 296
    :goto_1
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHovering:Z

    .line 298
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->rescheduleTimeoutH()V

    return p2
.end method

.method public synthetic lambda$initODICaptionsH$8$VolumeDialogImpl()V
    .locals 2

    .line 789
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->onCaptionIconClicked()V

    .line 790
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, 0x15

    invoke-static {p0, v1, v0}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$initRingerH$7$VolumeDialogImpl(Landroid/view/View;)V
    .locals 5

    .line 751
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->rescheduleTimeoutH()V

    .line 752
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    const-string v1, "TouchedRingerToggle"

    invoke-static {p1, v1, v0}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 753
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-object p1, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    if-nez p1, :cond_0

    return-void

    .line 760
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v2}, Lcom/android/systemui/plugins/VolumeDialogController;->hasVibrator()Z

    move-result v2

    .line 761
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v3, v3, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    const/4 v4, 0x0

    if-ne v3, v1, :cond_1

    if-eqz v2, :cond_2

    move v1, v0

    goto :goto_0

    :cond_1
    if-ne v3, v0, :cond_3

    :cond_2
    move v1, v4

    goto :goto_0

    .line 771
    :cond_3
    iget p1, p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-nez p1, :cond_4

    .line 772
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p1, v1, v0}, Lcom/android/systemui/plugins/VolumeDialogController;->setStreamVolume(II)V

    .line 775
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    const/16 v2, 0x12

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v4

    invoke-static {p1, v2, v0}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 776
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->incrementManualToggleCount()V

    .line 777
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateRingerH()V

    .line 778
    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->provideTouchFeedbackH(I)V

    .line 779
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p1, v1, v4}, Lcom/android/systemui/plugins/VolumeDialogController;->setRingerMode(IZ)V

    .line 780
    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->maybeShowToastH(I)V

    return-void
.end method

.method public synthetic lambda$initRow$4$VolumeDialogImpl(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;ILandroid/view/View;)V
    .locals 4

    .line 608
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->rescheduleTimeoutH()V

    .line 609
    iget-object p3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2600(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x7

    invoke-static {p3, v1, v0}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 610
    iget-object p3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v0

    invoke-interface {p3, v0}, Lcom/android/systemui/plugins/VolumeDialogController;->setActiveStream(I)V

    .line 611
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object p3

    iget p3, p3, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMin:I

    if-ne p3, v0, :cond_0

    move v2, v3

    .line 612
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    if-eqz v2, :cond_1

    .line 613
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result p3

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object p3

    iget p3, p3, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMin:I

    .line 612
    :goto_0
    invoke-interface {p0, p2, p3}, Lcom/android/systemui/plugins/VolumeDialogController;->setStreamVolume(II)V

    const-wide/16 p2, 0x0

    .line 614
    invoke-static {p1, p2, p3}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2902(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;J)J

    return-void
.end method

.method public synthetic lambda$initSettingsH$6$VolumeDialogImpl(Landroid/view/View;)V
    .locals 1

    .line 736
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->rescheduleTimeoutH()V

    .line 737
    iget-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpanded:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->animateExpandedRowsChange(Z)V

    .line 739
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpandRows:Lcom/android/systemui/statusbar/phone/ExpandableIndicator;

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpanded:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->setExpanded(Z)V

    .line 740
    iget-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpanded:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpanded:Z

    .line 742
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateMediaOutputH()V

    return-void
.end method

.method public synthetic lambda$new$2$VolumeDialogImpl(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 8

    .line 385
    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    const/4 v0, 0x3

    .line 386
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    .line 387
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->main:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 389
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    new-array v1, v1, [I

    .line 391
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 392
    iget-object p1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    new-instance v3, Landroid/graphics/Region;

    const/4 v4, 0x0

    aget v5, v2, v4

    const/4 v6, 0x1

    aget v7, v1, v6

    aget v2, v2, v4

    .line 395
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v2, v0

    aget v0, v1, v6

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    .line 396
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p0

    add-int/2addr v0, p0

    invoke-direct {v3, v5, v7, v2, v0}, Landroid/graphics/Region;-><init>(IIII)V

    .line 392
    invoke-virtual {p1, v3}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    return-void
.end method

.method public synthetic lambda$showCaptionsTooltip$10$VolumeDialogImpl()V
    .locals 3

    .line 824
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string v1, "tool:checkODICaptionsTooltip() putBoolean true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    const-string v2, "HasSeenODICaptionsTooltip"

    invoke-static {v0, v2, v1}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 827
    iput-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHasSeenODICaptionsTooltip:Z

    .line 828
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsIcon:Lcom/android/systemui/volume/CaptionsToggleImageButton;

    if-eqz v0, :cond_1

    .line 830
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getSinglePressFor(Landroid/widget/ImageButton;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$showCaptionsTooltip$9$VolumeDialogImpl(Landroid/view/View;)V
    .locals 1

    .line 811
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->rescheduleTimeoutH()V

    .line 812
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->hideCaptionsTooltip()V

    .line 813
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const/16 v0, 0x16

    invoke-static {p0, v0, p1}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$showH$13$VolumeDialogImpl()V
    .locals 2

    .line 977
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 978
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Landroid/view/View;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$showH$14$VolumeDialogImpl()V
    .locals 4

    .line 982
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    const-string v1, "TouchedRingerToggle"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 983
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 985
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getSinglePressFor(Landroid/widget/ImageButton;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x5dc

    .line 984
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ImageButton;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    :cond_0
    const/4 v0, 0x1

    .line 988
    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    return-void
.end method

.method public synthetic lambda$updateCaptionsIcon$12$VolumeDialogImpl(Z)V
    .locals 0

    .line 877
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsIcon:Lcom/android/systemui/volume/CaptionsToggleImageButton;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/CaptionsToggleImageButton;->setOptedOut(Z)V

    return-void
.end method

.method public synthetic lambda$updateMediaOutputH$5$VolumeDialogImpl(Landroid/view/View;)V
    .locals 2

    .line 712
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->rescheduleTimeoutH()V

    .line 713
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, 0x8

    invoke-static {p1, v1, v0}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 714
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.android.settings.panel.action.MEDIA_OUTPUT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x5

    .line 715
    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->dismissH(I)V

    .line 716
    const-class p0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    return-void
.end method

.method protected onStateChangedH(Lcom/android/systemui/plugins/VolumeDialogController$State;)V
    .locals 10

    .line 1255
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStateChangedH() state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/plugins/VolumeDialogController$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    iget v2, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    if-eq v0, v2, :cond_1

    if-ne v2, v1, :cond_1

    .line 1259
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    const/4 v2, 0x5

    invoke-static {v2}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/systemui/plugins/VolumeDialogController;->vibrate(Landroid/os/VibrationEffect;)V

    .line 1262
    :cond_1
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 1263
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    const/4 v0, 0x0

    .line 1265
    :goto_0
    iget-object v2, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 1266
    iget-object v2, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 1267
    iget-object v2, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .line 1268
    iget-boolean v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->dynamic:Z

    if-nez v2, :cond_2

    goto :goto_1

    .line 1269
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1270
    invoke-direct {p0, v4}, Lcom/android/systemui/volume/VolumeDialogImpl;->findRow(I)Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    move-result-object v2

    if-nez v2, :cond_3

    .line 1271
    sget v5, Lcom/android/systemui/R$drawable;->ic_volume_remote:I

    sget v6, Lcom/android/systemui/R$drawable;->ic_volume_remote_mute:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZZZ)V

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1276
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/volume/Util;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1277
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateNotificationRowH()V

    .line 1280
    :cond_5
    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActiveStream:I

    iget p1, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->activeStream:I

    if-eq v0, p1, :cond_6

    .line 1281
    iput v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mPrevActiveStream:I

    .line 1282
    iput p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActiveStream:I

    .line 1283
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getActiveRow()Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    move-result-object p1

    .line 1284
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateRowsH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    .line 1285
    iget-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->rescheduleTimeoutH()V

    .line 1287
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 1288
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    goto :goto_2

    .line 1290
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateRingerH()V

    return-void
.end method

.method public onUiModeChanged()V
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getThemeResId()I

    move-result p0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    return-void
.end method

.method protected rescheduleTimeoutH()V
    .locals 5

    .line 1000
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1001
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->computeTimeoutH()I

    move-result v0

    .line 1002
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v3, 0x3

    const/4 v4, 0x0

    .line 1003
    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    int-to-long v3, v0

    .line 1002
    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1004
    sget-boolean v1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rescheduleTimeout "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p0}, Lcom/android/systemui/plugins/VolumeDialogController;->userActivity()V

    return-void
.end method

.method public setAutomute(Z)V
    .locals 1

    .line 462
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAutomute:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 463
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAutomute:Z

    .line 464
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setSilentMode(Z)V
    .locals 1

    .line 468
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSilentMode:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 469
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSilentMode:Z

    .line 470
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setStreamImportant(IZ)V
    .locals 1

    .line 458
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected showCaptionsTooltip()V
    .locals 3

    .line 808
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHasSeenODICaptionsTooltip:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 809
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    .line 810
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->dismiss:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$gP1ziIKir0_7Zal5Mz9DtZvMYKE;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$gP1ziIKir0_7Zal5Mz9DtZvMYKE;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    .line 815
    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipViewStub:Landroid/view/ViewStub;

    .line 818
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 819
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 820
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 821
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 822
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$-uEc5gQy3KJvn9k7LvfufNur2nY;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$-uEc5gQy3KJvn9k7LvfufNur2nY;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    .line 823
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 833
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    return-void
.end method

.method protected tryToRemoveCaptionsTooltip()V
    .locals 2

    .line 851
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHasSeenODICaptionsTooltip:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 852
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->volume_dialog_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 853
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 854
    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public updateMediaOutputH()V
    .locals 2

    .line 704
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mMediaOutputView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 708
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 706
    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isCurrentUserSetup()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActivityManager:Landroid/app/ActivityManager;

    .line 707
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result v1

    if-nez v1, :cond_0

    .line 708
    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogImpl;->isBluetoothA2dpConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpanded:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 705
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 710
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mMediaOutputIcon:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 711
    new-instance v1, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$cYbWRE_L-DDLcqgam_Ed3sdL1Pc;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$cYbWRE_L-DDLcqgam_Ed3sdL1Pc;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method protected updateRingerH()V
    .locals 7

    .line 1137
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    if-eqz v0, :cond_a

    .line 1138
    iget-object v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    if-nez v0, :cond_0

    return-void

    .line 1143
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v3, v2, Lcom/android/systemui/plugins/VolumeDialogController$State;->zenMode:I

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v3, v4, :cond_2

    if-eq v3, v1, :cond_2

    if-ne v3, v6, :cond_1

    iget-boolean v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowRinger:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v5

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v6

    :goto_1
    xor-int/lit8 v3, v2, 0x1

    .line 1147
    invoke-direct {p0, v3}, Lcom/android/systemui/volume/VolumeDialogImpl;->enableRingerViewsH(Z)V

    .line 1148
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v3, v3, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    if-eqz v3, :cond_9

    if-eq v3, v6, :cond_8

    .line 1163
    iget-boolean v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAutomute:Z

    if-eqz v3, :cond_3

    iget v3, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-eqz v3, :cond_4

    :cond_3
    iget-boolean v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    if-eqz v0, :cond_5

    :cond_4
    move v5, v6

    :cond_5
    if-nez v2, :cond_6

    if-eqz v5, :cond_6

    .line 1165
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    sget v2, Lcom/android/systemui/R$drawable;->ic_volume_ringer_mute:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1166
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->volume_ringer_hint_unmute:I

    .line 1167
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1166
    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->addAccessibilityDescription(Landroid/view/View;ILjava/lang/String;)V

    .line 1168
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    goto :goto_3

    .line 1170
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    sget v2, Lcom/android/systemui/R$drawable;->ic_volume_ringer:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1171
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/VolumeDialogController;->hasVibrator()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1172
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->volume_ringer_hint_vibrate:I

    .line 1173
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1172
    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->addAccessibilityDescription(Landroid/view/View;ILjava/lang/String;)V

    goto :goto_2

    .line 1175
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->volume_ringer_hint_mute:I

    .line 1176
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1175
    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->addAccessibilityDescription(Landroid/view/View;ILjava/lang/String;)V

    .line 1178
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    goto :goto_3

    .line 1150
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    sget v1, Lcom/android/systemui/R$drawable;->ic_volume_ringer_vibrate:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1151
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->volume_ringer_hint_mute:I

    .line 1152
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1151
    invoke-direct {p0, v0, v6, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->addAccessibilityDescription(Landroid/view/View;ILjava/lang/String;)V

    .line 1153
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    goto :goto_3

    .line 1156
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    sget v2, Lcom/android/systemui/R$drawable;->ic_volume_ringer_mute:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1157
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 1158
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->volume_ringer_hint_unmute:I

    .line 1159
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1158
    invoke-direct {p0, v0, v5, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->addAccessibilityDescription(Landroid/view/View;ILjava/lang/String;)V

    :cond_a
    :goto_3
    return-void
.end method
