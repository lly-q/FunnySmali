.class public Lcom/android/keyguard/clock/LineageClockController;
.super Ljava/lang/Object;
.source "LineageClockController.java"

# interfaces
.implements Lcom/android/systemui/plugins/ClockPlugin;


# instance fields
.field private mClock:Landroid/widget/TextClock;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mRenderer:Lcom/android/keyguard/clock/ViewPreviewer;

.field private final mResources:Landroid/content/res/Resources;

.field private mView:Lcom/android/keyguard/clock/ClockLayout;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance p3, Lcom/android/keyguard/clock/ViewPreviewer;

    invoke-direct {p3}, Lcom/android/keyguard/clock/ViewPreviewer;-><init>()V

    iput-object p3, p0, Lcom/android/keyguard/clock/LineageClockController;->mRenderer:Lcom/android/keyguard/clock/ViewPreviewer;

    .line 72
    iput-object p1, p0, Lcom/android/keyguard/clock/LineageClockController;->mResources:Landroid/content/res/Resources;

    .line 73
    iput-object p2, p0, Lcom/android/keyguard/clock/LineageClockController;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private createViews()V
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/android/keyguard/clock/LineageClockController;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/systemui/R$layout;->lineage_clock:I

    const/4 v2, 0x0

    .line 78
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/clock/ClockLayout;

    iput-object v0, p0, Lcom/android/keyguard/clock/LineageClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    .line 79
    iget-object v0, p0, Lcom/android/keyguard/clock/LineageClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    sget v1, Lcom/android/systemui/R$id;->clock:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/keyguard/clock/LineageClockController;->mClock:Landroid/widget/TextClock;

    .line 80
    iget-object v0, p0, Lcom/android/keyguard/clock/LineageClockController;->mClock:Landroid/widget/TextClock;

    const-string v1, "hh\nmm"

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 81
    iget-object p0, p0, Lcom/android/keyguard/clock/LineageClockController;->mClock:Landroid/widget/TextClock;

    const-string v0, "kk\nmm"

    invoke-virtual {p0, v0}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getBigClockView()Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "lineageos"

    return-object p0
.end method

.method public getPreferredY(I)I
    .locals 0

    .line 102
    div-int/lit8 p1, p1, 0x3

    return p1
.end method

.method public getPreview(II)Landroid/graphics/Bitmap;
    .locals 3

    .line 113
    invoke-virtual {p0}, Lcom/android/keyguard/clock/LineageClockController;->getView()Landroid/view/View;

    move-result-object v0

    .line 114
    sget v1, Lcom/android/systemui/R$id;->clock:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextClock;

    const-string v2, "hh\nmm"

    .line 115
    invoke-virtual {v1, v2}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    const-string v2, "kk\nmm"

    .line 116
    invoke-virtual {v1, v2}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 117
    invoke-virtual {p0}, Lcom/android/keyguard/clock/LineageClockController;->onTimeTick()V

    .line 118
    iget-object p0, p0, Lcom/android/keyguard/clock/LineageClockController;->mRenderer:Lcom/android/keyguard/clock/ViewPreviewer;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/keyguard/clock/ViewPreviewer;->createPreview(Landroid/view/View;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .line 107
    iget-object p0, p0, Lcom/android/keyguard/clock/LineageClockController;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/android/systemui/R$drawable;->lineage_thumbnail:I

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object p0, p0, Lcom/android/keyguard/clock/LineageClockController;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/android/systemui/R$string;->clock_title_lineage:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/android/keyguard/clock/LineageClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    if-nez v0, :cond_0

    .line 124
    invoke-direct {p0}, Lcom/android/keyguard/clock/LineageClockController;->createViews()V

    .line 126
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/clock/LineageClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    return-object p0
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcom/android/keyguard/clock/LineageClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    .line 87
    iput-object v0, p0, Lcom/android/keyguard/clock/LineageClockController;->mClock:Landroid/widget/TextClock;

    return-void
.end method

.method public onTimeTick()V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/android/keyguard/clock/LineageClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    invoke-virtual {v0}, Lcom/android/keyguard/clock/ClockLayout;->onTimeChanged()V

    .line 148
    iget-object p0, p0, Lcom/android/keyguard/clock/LineageClockController;->mClock:Landroid/widget/TextClock;

    invoke-virtual {p0}, Landroid/widget/TextClock;->refresh()V

    return-void
.end method

.method public onTimeZoneChanged(Ljava/util/TimeZone;)V
    .locals 0

    return-void
.end method

.method public setColorPalette(Z[I)V
    .locals 0

    return-void
.end method

.method public setDarkAmount(F)V
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/android/keyguard/clock/LineageClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/clock/ClockLayout;->setDarkAmount(F)V

    return-void
.end method

.method public setStyle(Landroid/graphics/Paint$Style;)V
    .locals 0

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/android/keyguard/clock/LineageClockController;->mClock:Landroid/widget/TextClock;

    invoke-virtual {p0, p1}, Landroid/widget/TextClock;->setTextColor(I)V

    return-void
.end method

.method public shouldShowStatusArea()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
