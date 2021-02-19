.class public Lcom/android/systemui/globalactions/GlobalActionsImpl;
.super Ljava/lang/Object;
.source "GlobalActionsImpl.java"

# interfaces
.implements Lcom/android/systemui/plugins/GlobalActions;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field private mDisabled:Z

.field private mGlobalActions:Lcom/android/systemui/globalactions/GlobalActionsDialog;

.field private final mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private final mPanelExtension:Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/statusbar/policy/ExtensionController$Extension<",
            "Lcom/android/systemui/plugins/GlobalActionsPanelPlugin;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mContext:Landroid/content/Context;

    .line 59
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 60
    const-class v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 61
    const-class v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1, v0}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 62
    const-class p1, Lcom/android/systemui/statusbar/policy/ExtensionController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/ExtensionController;

    const-class v0, Lcom/android/systemui/plugins/GlobalActionsPanelPlugin;

    .line 63
    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/ExtensionController;->newExtension(Ljava/lang/Class;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    move-result-object p1

    const-class v0, Lcom/android/systemui/plugins/GlobalActionsPanelPlugin;

    .line 64
    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;->withPlugin(Ljava/lang/Class;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    .line 65
    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;->build()Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mPanelExtension:Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 71
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mGlobalActions:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->destroy()V

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mGlobalActions:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    :cond_0
    return-void
.end method

.method public disable(IIIZ)V
    .locals 0

    and-int/lit8 p2, p3, 0x8

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 164
    :goto_0
    iget-object p3, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getDisplayId()I

    move-result p3

    if-ne p1, p3, :cond_2

    iget-boolean p1, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mDisabled:Z

    if-ne p2, p1, :cond_1

    goto :goto_1

    .line 165
    :cond_1
    iput-boolean p2, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mDisabled:Z

    if-eqz p2, :cond_2

    .line 166
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mGlobalActions:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    if-eqz p0, :cond_2

    .line 167
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->dismissDialog()V

    :cond_2
    :goto_1
    return-void
.end method

.method public showGlobalActions(Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;)V
    .locals 3

    .line 79
    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mDisabled:Z

    if-eqz v0, :cond_0

    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mGlobalActions:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    if-nez v0, :cond_1

    .line 81
    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;)V

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mGlobalActions:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    .line 83
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mGlobalActions:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 84
    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mPanelExtension:Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;

    .line 85
    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/GlobalActionsPanelPlugin;

    .line 83
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->showDialog(ZZLcom/android/systemui/plugins/GlobalActionsPanelPlugin;)V

    .line 86
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->requestFaceAuth()V

    return-void
.end method

.method public showShutdownUi(ZLjava/lang/String;Z)V
    .locals 6

    .line 91
    new-instance v0, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;

    invoke-direct {v0}, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;-><init>()V

    const/16 v1, 0xf2

    .line 92
    invoke-virtual {v0, v1}, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;->setAlpha(I)V

    .line 94
    new-instance v1, Landroid/app/Dialog;

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$style;->Theme_SystemUI_Dialog_GlobalActions:I

    invoke-direct {v1, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 97
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x1

    .line 98
    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 99
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    or-int/lit16 v5, v5, 0x700

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 103
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 104
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    const/4 v5, -0x1

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 105
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 106
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/16 v3, 0x7e4

    .line 107
    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    const/4 v3, 0x2

    .line 108
    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    const v3, 0x10d0120

    .line 109
    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 116
    invoke-virtual {v2, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v3, 0x1030004

    .line 117
    invoke-virtual {v2, v3}, Landroid/view/Window;->setWindowAnimations(I)V

    const v2, 0x10900fd

    .line 119
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setContentView(I)V

    const/4 v2, 0x0

    .line 120
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 122
    iget-object v3, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$attr;->wallpaperTextColor:I

    invoke-static {v3, v4}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v3

    .line 124
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    .line 125
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    const p0, 0x102000d

    .line 127
    invoke-virtual {v1, p0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ProgressBar;

    .line 128
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    const p0, 0x1020014

    .line 129
    invoke-virtual {v1, p0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 130
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz p3, :cond_4

    if-eqz p2, :cond_3

    const-string p1, "recovery"

    .line 133
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 134
    sget p1, Lcom/android/systemui/R$string;->global_action_restart_recovery_progress:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    const-string p1, "bootloader"

    .line 136
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 137
    sget p1, Lcom/android/systemui/R$string;->global_action_restart_bootloader_progress:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    const-string p1, "download"

    .line 139
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 140
    sget p1, Lcom/android/systemui/R$string;->global_action_restart_download_progress:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    const-string p1, "fastboot"

    .line 142
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 143
    sget p1, Lcom/android/systemui/R$string;->global_action_restart_fastboot_progress:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 147
    :cond_3
    sget p1, Lcom/android/systemui/R$string;->global_action_restart_progress:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    const p1, 0x1040612

    .line 151
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 155
    :cond_5
    :goto_0
    const-class p0, Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-virtual {p0}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->getNeutralColors()Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object p0

    .line 156
    invoke-virtual {p0}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->getMainColor()I

    move-result p0

    invoke-virtual {v0, p0, v2}, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;->setColor(IZ)V

    .line 158
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method
