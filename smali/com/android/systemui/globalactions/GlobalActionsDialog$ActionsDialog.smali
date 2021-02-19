.class final Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;
.super Landroid/app/Dialog;
.source "GlobalActionsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface;
.implements Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ActionsDialog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$ResetOrientationData;
    }
.end annotation


# instance fields
.field private final mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private final mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

.field private final mContext:Landroid/content/Context;

.field private mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

.field private mHadTopUi:Z

.field private mKeyguardShowing:Z

.field private final mPanelController:Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$PanelViewController;

.field private mResetOrientationData:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$ResetOrientationData;

.field private mScrimAlpha:F

.field private mShowing:Z

.field private final mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private final mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

.field private final mToken:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$PanelViewController;)V
    .locals 1

    .line 1813
    sget v0, Lcom/android/systemui/R$style;->Theme_SystemUI_Dialog_GlobalActions:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1799
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mToken:Landroid/os/IBinder;

    .line 1814
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mContext:Landroid/content/Context;

    .line 1815
    iput-object p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    .line 1816
    const-class p1, Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    .line 1817
    const-class p1, Lcom/android/internal/statusbar/IStatusBarService;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/statusbar/IStatusBarService;

    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 1818
    const-class p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    .line 1821
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 p2, 0x1

    .line 1822
    invoke-virtual {p1, p2}, Landroid/view/Window;->requestFeature(I)Z

    .line 1824
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 1825
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    or-int/lit16 v0, v0, 0x700

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    const/4 p2, -0x1

    .line 1828
    invoke-virtual {p1, p2, p2}, Landroid/view/Window;->setLayout(II)V

    const/4 p2, 0x2

    .line 1829
    invoke-virtual {p1, p2}, Landroid/view/Window;->clearFlags(I)V

    const p2, 0x10d0120

    .line 1830
    invoke-virtual {p1, p2}, Landroid/view/Window;->addFlags(I)V

    const/16 p2, 0x7e4

    .line 1837
    invoke-virtual {p1, p2}, Landroid/view/Window;->setType(I)V

    const p1, 0x10402cc

    .line 1838
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setTitle(I)V

    .line 1840
    iput-object p3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mPanelController:Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$PanelViewController;

    .line 1841
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->initializeLayout()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)Landroid/content/Context;
    .locals 0

    .line 1793
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$PanelViewController;
    .locals 0

    .line 1793
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mPanelController:Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$PanelViewController;

    return-object p0
.end method

.method private completeDismiss()V
    .locals 2

    .line 2048
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    iget-boolean v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mHadTopUi:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setForceHasTopUi(Z)V

    .line 2049
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private dismissPanel()V
    .locals 0

    .line 2053
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mPanelController:Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$PanelViewController;

    if-eqz p0, :cond_0

    .line 2054
    invoke-interface {p0}, Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$PanelViewController;->onDismissed()V

    :cond_0
    return-void
.end method

.method private fixNavBarClipping()V
    .locals 1

    const v0, 0x1020002

    .line 1925
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 1926
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 1927
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 1928
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 1929
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 1930
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    return-void
.end method

.method private getGlobalActionsLayoutId(Landroid/content/Context;)I
    .locals 1

    .line 1934
    invoke-static {p1}, Lcom/android/systemui/util/leak/RotationUtils;->getRotation(Landroid/content/Context;)I

    move-result v0

    .line 1935
    invoke-static {p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$4000(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1936
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->shouldUsePanel()Z

    move-result p0

    if-eqz p0, :cond_0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    const/4 p1, 0x2

    if-ne v0, p1, :cond_3

    if-eqz p0, :cond_2

    .line 1939
    sget p0, Lcom/android/systemui/R$layout;->global_actions_grid_seascape:I

    return p0

    .line 1941
    :cond_2
    sget p0, Lcom/android/systemui/R$layout;->global_actions_column_seascape:I

    return p0

    :cond_3
    if-eqz p0, :cond_4

    .line 1945
    sget p0, Lcom/android/systemui/R$layout;->global_actions_grid:I

    return p0

    .line 1947
    :cond_4
    sget p0, Lcom/android/systemui/R$layout;->global_actions_column:I

    return p0
.end method

.method private initializeLayout()V
    .locals 2

    .line 1897
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->getGlobalActionsLayoutId(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 1898
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->fixNavBarClipping()V

    .line 1899
    sget v0, Lcom/android/systemui/R$id;->global_actions_view:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/MultiListLayout;

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    .line 1900
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    new-instance v1, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$dNZefhFQEiKyxgSvmP1LBM0gtx4;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$dNZefhFQEiKyxgSvmP1LBM0gtx4;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/MultiListLayout;->setOutsideTouchListener(Landroid/view/View$OnClickListener;)V

    .line 1901
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$qLnbwfmuMw-GJ7JUyo3Qt6_cEh4;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$qLnbwfmuMw-GJ7JUyo3Qt6_cEh4;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1902
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    new-instance v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$1;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/MultiListLayout;->setListViewAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 1911
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    new-instance v1, Lcom/android/systemui/globalactions/-$$Lambda$yTIuIImgAFK3eAYSmNsa3QUABJI;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/-$$Lambda$yTIuIImgAFK3eAYSmNsa3QUABJI;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/MultiListLayout;->setRotationListener(Lcom/android/systemui/MultiListLayout$RotationListener;)V

    .line 1912
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    invoke-virtual {v0, v1}, Lcom/android/systemui/MultiListLayout;->setAdapter(Lcom/android/systemui/MultiListLayout$MultiListAdapter;)V

    .line 1914
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->shouldUsePanel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1915
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->initializePanel()V

    .line 1917
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 1918
    new-instance v0, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;

    invoke-direct {v0}, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    const v0, 0x3e4ccccd    # 0.2f

    .line 1919
    iput v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mScrimAlpha:F

    .line 1921
    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private initializePanel()V
    .locals 3

    .line 1849
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/leak/RotationUtils;->getRotation(Landroid/content/Context;)I

    move-result v0

    .line 1850
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_4

    .line 1853
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mResetOrientationData:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$ResetOrientationData;

    if-nez v1, :cond_0

    .line 1854
    new-instance v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$ResetOrientationData;

    invoke-direct {v1, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$ResetOrientationData;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$1;)V

    iput-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mResetOrientationData:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$ResetOrientationData;

    .line 1855
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mResetOrientationData:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$ResetOrientationData;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$ResetOrientationData;->locked:Z

    .line 1856
    iput v0, v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$ResetOrientationData;->rotation:I

    .line 1862
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    new-instance v1, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$KOOsXb68KZ6uVivL8nC_5NKKiBk;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$KOOsXb68KZ6uVivL8nC_5NKKiBk;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    if-nez v1, :cond_3

    .line 1868
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mResetOrientationData:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$ResetOrientationData;

    if-nez v1, :cond_2

    .line 1869
    new-instance v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$ResetOrientationData;

    invoke-direct {v1, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$ResetOrientationData;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$1;)V

    iput-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mResetOrientationData:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$ResetOrientationData;

    .line 1870
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mResetOrientationData:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$ResetOrientationData;

    iput-boolean v0, v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$ResetOrientationData;->locked:Z

    .line 1876
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    new-instance v2, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$RJgtbpfP8gfKx4bDDYXf9gg3qxs;

    invoke-direct {v2, p0}, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$RJgtbpfP8gfKx4bDDYXf9gg3qxs;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 1882
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->setRotationSuggestionsEnabled(Z)V

    .line 1884
    sget v0, Lcom/android/systemui/R$id;->global_actions_panel_container:I

    .line 1885
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1886
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1890
    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mPanelController:Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$PanelViewController;

    invoke-interface {v2}, Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$PanelViewController;->getPanelContent()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1891
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mPanelController:Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$PanelViewController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$PanelViewController;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1892
    iput v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mScrimAlpha:F

    :cond_4
    :goto_0
    return-void
.end method

.method public static synthetic lambda$b7BjyiDlA1YYZd2S_4WLEfoJbac(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->completeDismiss()V

    return-void
.end method

.method private resetOrientation()V
    .locals 3

    .line 2071
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mResetOrientationData:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$ResetOrientationData;

    if-eqz v0, :cond_0

    .line 2072
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mContext:Landroid/content/Context;

    iget-boolean v2, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$ResetOrientationData;->locked:Z

    iget v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$ResetOrientationData;->rotation:I

    invoke-static {v1, v2, v0}, Lcom/android/internal/view/RotationPolicy;->setRotationLockAtAngle(Landroid/content/Context;ZI)V

    :cond_0
    const/4 v0, 0x1

    .line 2075
    invoke-direct {p0, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->setRotationSuggestionsEnabled(Z)V

    return-void
.end method

.method private setRotationSuggestionsEnabled(Z)V
    .locals 3

    .line 2060
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x10

    .line 2064
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mToken:Landroid/os/IBinder;

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p1, v2, p0, v0}, Lcom/android/internal/statusbar/IStatusBarService;->disable2ForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 2066
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private shouldUsePanel()Z
    .locals 0

    .line 1845
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mPanelController:Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$PanelViewController;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$PanelViewController;->getPanelContent()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private updateColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V
    .locals 2

    .line 1971
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;

    if-nez v1, :cond_0

    return-void

    .line 1974
    :cond_0
    check-cast v0, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;

    invoke-virtual {p1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->getMainColor()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;->setColor(IZ)V

    .line 1975
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    .line 1976
    invoke-virtual {p1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->supportsDarkText()Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x2010

    .line 1977
    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1980
    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .line 2016
    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mShowing:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2019
    iput-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mShowing:Z

    .line 2020
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 2021
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 2022
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 2023
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 2024
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    .line 2025
    invoke-virtual {v1}, Lcom/android/systemui/MultiListLayout;->getAnimationOffsetX()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    .line 2026
    invoke-virtual {v1}, Lcom/android/systemui/MultiListLayout;->getAnimationOffsetY()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 2027
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$b7BjyiDlA1YYZd2S_4WLEfoJbac;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$b7BjyiDlA1YYZd2S_4WLEfoJbac;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V

    .line 2028
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/SystemUIInterpolators$LogAccelerateInterpolator;

    invoke-direct {v1}, Lcom/android/systemui/volume/SystemUIInterpolators$LogAccelerateInterpolator;-><init>()V

    .line 2029
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$fCJNrp-FfqPrZqs-Y0ogCK3Vd_w;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$fCJNrp-FfqPrZqs-Y0ogCK3Vd_w;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V

    .line 2030
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 2035
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2036
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->dismissPanel()V

    .line 2037
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->resetOrientation()V

    return-void
.end method

.method dismissImmediately()V
    .locals 1

    const/4 v0, 0x0

    .line 2041
    iput-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mShowing:Z

    .line 2042
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->dismissPanel()V

    .line 2043
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->resetOrientation()V

    .line 2044
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->completeDismiss()V

    return-void
.end method

.method public synthetic lambda$dismiss$5$GlobalActionsDialog$ActionsDialog(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 2031
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    iget p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mScrimAlpha:F

    mul-float/2addr v0, p1

    const/high16 p1, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int p1, v0

    .line 2033
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public synthetic lambda$initializeLayout$2$GlobalActionsDialog$ActionsDialog(Landroid/view/View;)V
    .locals 0

    .line 1900
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->dismiss()V

    return-void
.end method

.method public synthetic lambda$initializeLayout$3$GlobalActionsDialog$ActionsDialog(Landroid/view/View;)V
    .locals 0

    .line 1901
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->dismiss()V

    return-void
.end method

.method public synthetic lambda$initializePanel$0$GlobalActionsDialog$ActionsDialog()V
    .locals 1

    .line 1863
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/android/internal/view/RotationPolicy;->setRotationLockAtAngle(Landroid/content/Context;ZI)V

    return-void
.end method

.method public synthetic lambda$initializePanel$1$GlobalActionsDialog$ActionsDialog()V
    .locals 2

    .line 1877
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/internal/view/RotationPolicy;->setRotationLockAtAngle(Landroid/content/Context;ZI)V

    return-void
.end method

.method public synthetic lambda$show$4$GlobalActionsDialog$ActionsDialog(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 2007
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mScrimAlpha:F

    mul-float/2addr p1, v0

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 2009
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public onColorsChanged(Lcom/android/internal/colorextraction/ColorExtractor;I)V
    .locals 2

    .line 2080
    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mKeyguardShowing:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    and-int/2addr p2, v0

    if-eqz p2, :cond_1

    .line 2082
    invoke-virtual {p1, v0}, Lcom/android/internal/colorextraction/ColorExtractor;->getColors(I)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->updateColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V

    goto :goto_0

    :cond_0
    and-int/2addr p2, v1

    if-eqz p2, :cond_1

    .line 2087
    invoke-virtual {p1, v1}, Lcom/android/internal/colorextraction/ColorExtractor;->getColors(I)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->updateColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onRotate(II)V
    .locals 0

    .line 2103
    iget-boolean p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mShowing:Z

    if-eqz p1, :cond_0

    .line 2104
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->refreshDialog()V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    const/4 v0, 0x1

    .line 1954
    invoke-super {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1955
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 1956
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    invoke-virtual {v0}, Lcom/android/systemui/MultiListLayout;->updateList()V

    .line 1958
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;

    if-eqz v0, :cond_0

    .line 1959
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-virtual {v0, p0}, Lcom/android/internal/colorextraction/ColorExtractor;->addOnColorsChangedListener(Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;)V

    .line 1960
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-virtual {v0}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->getNeutralColors()Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object v0

    const/4 v1, 0x0

    .line 1961
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->updateColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 1986
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 1987
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-virtual {v0, p0}, Lcom/android/internal/colorextraction/ColorExtractor;->removeOnColorsChangedListener(Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;)V

    return-void
.end method

.method public refreshDialog()V
    .locals 0

    .line 2098
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->initializeLayout()V

    .line 2099
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    invoke-virtual {p0}, Lcom/android/systemui/MultiListLayout;->updateList()V

    return-void
.end method

.method public setKeyguardShowing(Z)V
    .locals 0

    .line 2094
    iput-boolean p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mKeyguardShowing:Z

    return-void
.end method

.method public show()V
    .locals 3

    .line 1992
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    const/4 v0, 0x1

    .line 1993
    iput-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mShowing:Z

    .line 1994
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->getForceHasTopUi()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mHadTopUi:Z

    .line 1995
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setForceHasTopUi(Z)V

    .line 1996
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1997
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    invoke-virtual {v0}, Lcom/android/systemui/MultiListLayout;->getAnimationOffsetX()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 1998
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    invoke-virtual {v0}, Lcom/android/systemui/MultiListLayout;->getAnimationOffsetY()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 1999
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 2000
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 2001
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 2002
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 2003
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 2004
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 2005
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$5VTsKfzFediL_BcyTcZsABCvLU0;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$5VTsKfzFediL_BcyTcZsABCvLU0;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V

    .line 2006
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 2011
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
