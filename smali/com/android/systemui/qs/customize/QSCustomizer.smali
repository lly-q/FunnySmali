.class public Lcom/android/systemui/qs/customize/QSCustomizer;
.super Landroid/widget/LinearLayout;
.source "QSCustomizer.java"

# interfaces
.implements Landroid/widget/Toolbar$OnMenuItemClickListener;


# instance fields
.field private isShown:Z

.field private final mClipper:Lcom/android/systemui/qs/QSDetailClipper;

.field private final mCollapseAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field private mCustomizing:Z

.field private final mExpandAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field private mHost:Lcom/android/systemui/qs/QSTileHost;

.field private mIsShowingNavBackdrop:Z

.field private final mKeyguardCallback:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

.field private mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private final mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

.field private mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

.field private mOpening:Z

.field private mQs:Lcom/android/systemui/plugins/qs/QS;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

.field private mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

.field private final mTileQueryHelper:Lcom/android/systemui/qs/customize/TileQueryHelper;

.field private mToolbar:Landroid/widget/Toolbar;

.field private final mTransparentView:Landroid/view/View;

.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/statusbar/phone/LightBarController;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;Lcom/android/systemui/keyguard/ScreenLifecycle;)V
    .locals 4

    .line 94
    new-instance v0, Landroid/view/ContextThemeWrapper;

    sget v1, Lcom/android/systemui/R$style;->edit_theme:I

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 319
    new-instance p2, Lcom/android/systemui/qs/customize/QSCustomizer$3;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/customize/QSCustomizer$3;-><init>(Lcom/android/systemui/qs/customize/QSCustomizer;)V

    iput-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mKeyguardCallback:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    .line 329
    new-instance p2, Lcom/android/systemui/qs/customize/QSCustomizer$4;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/customize/QSCustomizer$4;-><init>(Lcom/android/systemui/qs/customize/QSCustomizer;)V

    iput-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mExpandAnimationListener:Landroid/animation/Animator$AnimatorListener;

    .line 346
    new-instance p2, Lcom/android/systemui/qs/customize/QSCustomizer$5;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/customize/QSCustomizer$5;-><init>(Lcom/android/systemui/qs/customize/QSCustomizer;)V

    iput-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mCollapseAnimationListener:Landroid/animation/Animator$AnimatorListener;

    .line 96
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$layout;->qs_customize_panel_content:I

    invoke-virtual {p2, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 97
    new-instance p2, Lcom/android/systemui/qs/QSDetailClipper;

    sget v0, Lcom/android/systemui/R$id;->customize_container:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/android/systemui/qs/QSDetailClipper;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mClipper:Lcom/android/systemui/qs/QSDetailClipper;

    const p2, 0x102018a

    .line 98
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Toolbar;

    iput-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mToolbar:Landroid/widget/Toolbar;

    .line 99
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 100
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x1

    const v2, 0x101030b

    invoke-virtual {v0, v2, p2, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 101
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mToolbar:Landroid/widget/Toolbar;

    .line 102
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget p2, p2, Landroid/util/TypedValue;->resourceId:I

    iget-object v3, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 101
    invoke-virtual {v0, p2}, Landroid/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 103
    iget-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mToolbar:Landroid/widget/Toolbar;

    new-instance v0, Lcom/android/systemui/qs/customize/QSCustomizer$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/customize/QSCustomizer$1;-><init>(Lcom/android/systemui/qs/customize/QSCustomizer;)V

    invoke-virtual {p2, v0}, Landroid/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {p2, p0}, Landroid/widget/Toolbar;->setOnMenuItemClickListener(Landroid/widget/Toolbar$OnMenuItemClickListener;)V

    .line 110
    iget-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {p2}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object p2

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const v2, 0x104062d

    .line 111
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 110
    invoke-interface {p2, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 112
    iget-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mToolbar:Landroid/widget/Toolbar;

    sget v0, Lcom/android/systemui/R$string;->qs_edit:I

    invoke-virtual {p2, v0}, Landroid/widget/Toolbar;->setTitle(I)V

    const p2, 0x102000a

    .line 113
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 114
    sget p2, Lcom/android/systemui/R$id;->customizer_transparent_view:I

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTransparentView:Landroid/view/View;

    .line 115
    new-instance p2, Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/android/systemui/qs/customize/TileAdapter;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    .line 116
    new-instance p2, Lcom/android/systemui/qs/customize/TileQueryHelper;

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-direct {p2, p1, v0}, Lcom/android/systemui/qs/customize/TileQueryHelper;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;)V

    iput-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileQueryHelper:Lcom/android/systemui/qs/customize/TileQueryHelper;

    .line 117
    iget-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 118
    iget-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/TileAdapter;->getItemTouchHelper()Landroidx/recyclerview/widget/ItemTouchHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 119
    new-instance p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x3

    invoke-direct {p1, p2, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 120
    iget-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {p2}, Lcom/android/systemui/qs/customize/TileAdapter;->getSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 121
    iget-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 122
    iget-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {p2}, Lcom/android/systemui/qs/customize/TileAdapter;->getItemDecoration()Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 123
    new-instance p1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    const-wide/16 v0, 0x96

    .line 124
    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveDuration(J)V

    .line 125
    iget-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 126
    iput-object p3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    .line 127
    iput-object p4, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 128
    iput-object p5, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 129
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/QSCustomizer;->updateNavBackDrop(Landroid/content/res/Configuration;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/customize/QSCustomizer;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/customize/QSCustomizer;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mOpening:Z

    return p0
.end method

.method static synthetic access$102(Lcom/android/systemui/qs/customize/QSCustomizer;Z)Z
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mOpening:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/customize/QSCustomizer;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/customize/QSCustomizer;Z)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/QSCustomizer;->setCustomizing(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/customize/QSCustomizer;)Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/customize/QSCustomizer;)Lcom/android/systemui/qs/customize/TileAdapter;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/customize/QSCustomizer;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method private queryTiles()V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileQueryHelper:Lcom/android/systemui/qs/customize/TileQueryHelper;

    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/customize/TileQueryHelper;->queryTiles(Lcom/android/systemui/qs/QSTileHost;)V

    return-void
.end method

.method private reset()V
    .locals 5

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 266
    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->quick_settings_tiles_default:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    .line 267
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 268
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 270
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v1, p0, v0}, Lcom/android/systemui/qs/customize/TileAdapter;->resetTileSpecs(Lcom/android/systemui/qs/QSTileHost;Ljava/util/List;)V

    return-void
.end method

.method private save()V
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileQueryHelper:Lcom/android/systemui/qs/customize/TileQueryHelper;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/TileQueryHelper;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/customize/TileAdapter;->saveSpecs(Lcom/android/systemui/qs/QSTileHost;)V

    :cond_0
    return-void
.end method

.method private setCustomizing(Z)V
    .locals 0

    .line 245
    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mCustomizing:Z

    .line 246
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QS;->notifyCustomizeChanged()V

    return-void
.end method

.method private setTileSpecs()V
    .locals 3

    .line 274
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 275
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/qs/QSTile;

    .line 276
    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 278
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/customize/TileAdapter;->setTileSpecs(Ljava/util/List;)V

    .line 279
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private updateNavBackDrop(Landroid/content/res/Configuration;)V
    .locals 4

    .line 152
    sget v0, Lcom/android/systemui/R$id;->nav_bar_background:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 153
    iget v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/4 v2, 0x0

    const/16 v3, 0x258

    if-ge v1, v3, :cond_1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mIsShowingNavBackdrop:Z

    if-eqz v0, :cond_3

    .line 156
    iget-boolean p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mIsShowingNavBackdrop:Z

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/16 v2, 0x8

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 158
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->updateNavColors()V

    return-void
.end method

.method private updateNavColors()V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    iget-boolean v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mIsShowingNavBackdrop:Z

    if-eqz v1, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->setQsCustomizing(Z)V

    return-void
.end method

.method private updateResources()V
    .locals 4

    .line 140
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTransparentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 141
    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10501f5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 144
    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$bool;->qs_custom_header:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->qs_header_image_offset:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 148
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTransparentView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 6

    .line 221
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/ScreenLifecycle;->getScreenState()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 222
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    if-eqz v2, :cond_2

    .line 223
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x166

    invoke-static {v2, v3}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    .line 224
    iput-boolean v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    .line 225
    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v2}, Landroid/widget/Toolbar;->dismissPopupMenus()V

    .line 226
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->setCustomizing(Z)V

    .line 227
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->save()V

    if-eqz v0, :cond_1

    .line 229
    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mClipper:Lcom/android/systemui/qs/QSDetailClipper;

    iget v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mX:I

    iget v4, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mY:I

    iget-object v5, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mCollapseAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/android/systemui/qs/QSDetailClipper;->animateCircularClip(IIZLandroid/animation/Animator$AnimatorListener;)V

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    .line 231
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 233
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerAnimating(Z)V

    .line 234
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerShowing(Z)V

    .line 235
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mKeyguardCallback:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 236
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->updateNavColors()V

    :cond_2
    return-void
.end method

.method public isCustomizing()Z
    .locals 1

    .line 250
    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mCustomizing:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mOpening:Z

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

.method public isShown()Z
    .locals 0

    .line 241
    iget-boolean p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    return p0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 134
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 135
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/QSCustomizer;->updateNavBackDrop(Landroid/content/res/Configuration;)V

    .line 136
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->updateResources()V

    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    .line 255
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 257
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 v0, 0x167

    invoke-static {p1, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 258
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->reset()V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public restoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "qs_customizing"

    .line 297
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 299
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 300
    new-instance p1, Lcom/android/systemui/qs/customize/QSCustomizer$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/customize/QSCustomizer$2;-><init>(Lcom/android/systemui/qs/customize/QSCustomizer;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 290
    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mKeyguardCallback:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 293
    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mCustomizing:Z

    const-string v0, "qs_customizing"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setContainer(Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    return-void
.end method

.method public setEditLocation(II)V
    .locals 2

    .line 314
    sget v0, Lcom/android/systemui/R$id;->customize_container:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v0

    const/4 v1, 0x0

    .line 315
    aget v1, v0, v1

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mX:I

    const/4 p1, 0x1

    .line 316
    aget p1, v0, p1

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mY:I

    return-void
.end method

.method public setHost(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 167
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter;->setHost(Lcom/android/systemui/qs/QSTileHost;)V

    return-void
.end method

.method public setQs(Lcom/android/systemui/plugins/qs/QS;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mQs:Lcom/android/systemui/plugins/qs/QS;

    return-void
.end method

.method public show(II)V
    .locals 3

    .line 182
    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    if-nez v0, :cond_0

    .line 183
    sget v0, Lcom/android/systemui/R$id;->customize_container:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v0

    const/4 v1, 0x0

    .line 184
    aget v2, v0, v1

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mX:I

    const/4 p1, 0x1

    .line 185
    aget v0, v0, p1

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mY:I

    .line 186
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const/16 v0, 0x166

    invoke-static {p2, v0}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    .line 187
    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    .line 188
    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mOpening:Z

    .line 189
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->setTileSpecs()V

    .line 190
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 191
    iget-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mClipper:Lcom/android/systemui/qs/QSDetailClipper;

    iget v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mX:I

    iget v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mY:I

    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mExpandAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p2, v0, v1, p1, v2}, Lcom/android/systemui/qs/QSDetailClipper;->animateCircularClip(IIZLandroid/animation/Animator$AnimatorListener;)V

    .line 192
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->queryTiles()V

    .line 193
    iget-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerAnimating(Z)V

    .line 194
    iget-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerShowing(Z)V

    .line 195
    iget-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mKeyguardCallback:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    invoke-interface {p1, p2}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 196
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->updateNavColors()V

    :cond_0
    return-void
.end method

.method public showImmediately()V
    .locals 3

    .line 202
    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 203
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 204
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mClipper:Lcom/android/systemui/qs/QSDetailClipper;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSDetailClipper;->showBackground()V

    const/4 v1, 0x1

    .line 205
    iput-boolean v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    .line 206
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->setTileSpecs()V

    .line 207
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->setCustomizing(Z)V

    .line 208
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->queryTiles()V

    .line 209
    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerAnimating(Z)V

    .line 210
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerShowing(Z)V

    .line 211
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mKeyguardCallback:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 212
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->updateNavColors()V

    :cond_0
    return-void
.end method
