.class public Lcom/android/systemui/statusbar/LineageStatusBarItemHolder;
.super Landroid/widget/RelativeLayout;
.source "LineageStatusBarItemHolder.java"

# interfaces
.implements Lorg/lineageos/internal/statusbar/LineageStatusBarItem$Manager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDarkReceiver:Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;

.field private mDarkReceivers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/lineageos/internal/statusbar/LineageStatusBarItem$DarkReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private mItemHolderIsVisible:Z

.field private mLastArea:Landroid/graphics/Rect;

.field private mLastDarkIntensity:F

.field private mLastTint:I

.field private mSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;

.field private mVisibilityReceivers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/lineageos/internal/statusbar/LineageStatusBarItem$VisibilityReceiver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/LineageStatusBarItemHolder;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/LineageStatusBarItemHolder;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/LineageStatusBarItemHolder;->mDarkReceivers:Ljava/util/ArrayList;

    .line 41
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/LineageStatusBarItemHolder;->mVisibilityReceivers:Ljava/util/ArrayList;

    .line 85
    new-instance p2, Lcom/android/systemui/statusbar/LineageStatusBarItemHolder$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/LineageStatusBarItemHolder$1;-><init>(Lcom/android/systemui/statusbar/LineageStatusBarItemHolder;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/LineageStatusBarItemHolder;->mDarkReceiver:Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;

    .line 110
    new-instance p2, Lcom/android/systemui/statusbar/LineageStatusBarItemHolder$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/LineageStatusBarItemHolder$2;-><init>(Lcom/android/systemui/statusbar/LineageStatusBarItemHolder;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/LineageStatusBarItemHolder;->mSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;

    .line 62
    iput-object p1, p0, Lcom/android/systemui/statusbar/LineageStatusBarItemHolder;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    .line 63
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/LineageStatusBarItemHolder;->mItemHolderIsVisible:Z

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/LineageStatusBarItemHolder;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/android/systemui/statusbar/LineageStatusBarItemHolder;->mLastArea:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/LineageStatusBarItemHolder;F)F
    .locals 0

    .line 35
    iput p1, p0, Lcom/android/systemui/statusbar/LineageStatusBarItemHolder;->mLastDarkIntensity:F

    return p1
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/LineageStatusBarItemHolder;I)I
    .locals 0

    .line 35
    iput p1, p0, Lcom/android/systemui/statusbar/LineageStatusBarItemHolder;->mLastTint:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/LineageStatusBarItemHolder;)Ljava/util/ArrayList;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/systemui/statusbar/LineageStatusBarItemHolder;->mDarkReceivers:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/LineageStatusBarItemHolder;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/LineageStatusBarItemHolder;->updateStatusBarVisibility(I)V

    return-void
.end method

.method private updateStatusBarVisibility(I)V
    .locals 2

    and-int/lit8 v0, p1, 0x4

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    and-int/2addr p1, v1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 122
    :cond_1
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/LineageStatusBarItemHolder;->updateVisibilityReceivers(Z)V

    return-void
.end method

.method private updateVisibilityReceivers(Z)V
    .locals 2

    .line 126
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/LineageStatusBarItemHolder;->mItemHolderIsVisible:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 129
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/LineageStatusBarItemHolder;->mItemHolderIsVisible:Z

    .line 130
    iget-object p1, p0, Lcom/android/systemui/statusbar/LineageStatusBarItemHolder;->mVisibilityReceivers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/lineageos/internal/statusbar/LineageStatusBarItem$VisibilityReceiver;

    .line 131
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/LineageStatusBarItemHolder;->mItemHolderIsVisible:Z

    invoke-interface {v0, v1}, Lorg/lineageos/internal/statusbar/LineageStatusBarItem$VisibilityReceiver;->onVisibilityChanged(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addDarkReceiver(Lorg/lineageos/internal/statusbar/LineageStatusBarItem$DarkReceiver;)V
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/android/systemui/statusbar/LineageStatusBarItemHolder;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$color;->dark_mode_icon_color_dual_tone_fill:I

    .line 139
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/LineageStatusBarItemHolder;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$color;->light_mode_icon_color_dual_tone_fill:I

    .line 140
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 138
    invoke-interface {p1, v0, v1}, Lorg/lineageos/internal/statusbar/LineageStatusBarItem$DarkReceiver;->setFillColors(II)V

    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/LineageStatusBarItemHolder;->mDarkReceivers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v0, p0, Lcom/android/systemui/statusbar/LineageStatusBarItemHolder;->mLastArea:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/statusbar/LineageStatusBarItemHolder;->mLastDarkIntensity:F

    iget p0, p0, Lcom/android/systemui/statusbar/LineageStatusBarItemHolder;->mLastTint:I

    invoke-interface {p1, v0, v1, p0}, Lorg/lineageos/internal/statusbar/LineageStatusBarItem$DarkReceiver;->onDarkChanged(Landroid/graphics/Rect;FI)V

    return-void
.end method

.method public addVisibilityReceiver(Lorg/lineageos/internal/statusbar/LineageStatusBarItem$VisibilityReceiver;)V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/LineageStatusBarItemHolder;->mVisibilityReceivers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/LineageStatusBarItemHolder;->mItemHolderIsVisible:Z

    invoke-interface {p1, p0}, Lorg/lineageos/internal/statusbar/LineageStatusBarItem$VisibilityReceiver;->onVisibilityChanged(Z)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 68
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 70
    iget-object v0, p0, Lcom/android/systemui/statusbar/LineageStatusBarItemHolder;->mSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 71
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getSystemUiVisibility()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/LineageStatusBarItemHolder;->updateStatusBarVisibility(I)V

    .line 73
    const-class v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    iget-object p0, p0, Lcom/android/systemui/statusbar/LineageStatusBarItemHolder;->mDarkReceiver:Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 78
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 79
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 80
    const-class v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    iget-object p0, p0, Lcom/android/systemui/statusbar/LineageStatusBarItemHolder;->mDarkReceiver:Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    return-void
.end method

.method public onVisibilityAggregated(Z)V
    .locals 0

    .line 106
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onVisibilityAggregated(Z)V

    .line 107
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/LineageStatusBarItemHolder;->updateVisibilityReceivers(Z)V

    return-void
.end method
