.class public Lcom/android/keyguard/clock/JavaClockController;
.super Ljava/lang/Object;
.source "JavaClockController.java"

# interfaces
.implements Lcom/android/systemui/plugins/ClockPlugin;


# instance fields
.field private mClock:Landroid/widget/TextView;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mRenderer:Lcom/android/keyguard/clock/ViewPreviewer;

.field private final mResources:Landroid/content/res/Resources;

.field private mView:Lcom/android/keyguard/clock/ClockLayout;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance p3, Lcom/android/keyguard/clock/ViewPreviewer;

    invoke-direct {p3}, Lcom/android/keyguard/clock/ViewPreviewer;-><init>()V

    iput-object p3, p0, Lcom/android/keyguard/clock/JavaClockController;->mRenderer:Lcom/android/keyguard/clock/ViewPreviewer;

    .line 58
    iput-object p1, p0, Lcom/android/keyguard/clock/JavaClockController;->mResources:Landroid/content/res/Resources;

    .line 59
    iput-object p2, p0, Lcom/android/keyguard/clock/JavaClockController;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private createViews()V
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/android/keyguard/clock/JavaClockController;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/systemui/R$layout;->java_clock:I

    const/4 v2, 0x0

    .line 64
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/clock/ClockLayout;

    iput-object v0, p0, Lcom/android/keyguard/clock/JavaClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    .line 65
    iget-object v0, p0, Lcom/android/keyguard/clock/JavaClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    sget v1, Lcom/android/systemui/R$id;->clock:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/clock/JavaClockController;->mClock:Landroid/widget/TextView;

    .line 66
    iget-object v0, p0, Lcom/android/keyguard/clock/JavaClockController;->mClock:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/keyguard/clock/JavaClockController;->setText(Landroid/widget/TextView;)V

    return-void
.end method

.method private setText(Landroid/widget/TextView;)V
    .locals 4

    .line 115
    new-instance v0, Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "HH:mm"

    goto :goto_0

    :cond_0
    const-string v1, "hh:mm"

    .line 122
    :goto_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 123
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 124
    iget-object p0, p0, Lcom/android/keyguard/clock/JavaClockController;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/systemui/R$string;->java_clock_text:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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

    const-string p0, "javaClock"

    return-object p0
.end method

.method public getPreferredY(I)I
    .locals 0

    .line 87
    div-int/lit8 p1, p1, 0x3

    return p1
.end method

.method public getPreview(II)Landroid/graphics/Bitmap;
    .locals 3

    .line 97
    invoke-virtual {p0}, Lcom/android/keyguard/clock/JavaClockController;->getView()Landroid/view/View;

    move-result-object v0

    .line 98
    sget v1, Lcom/android/systemui/R$id;->clock:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, -0x1

    .line 99
    invoke-virtual {p0, v2}, Lcom/android/keyguard/clock/JavaClockController;->setTextColor(I)V

    .line 100
    invoke-direct {p0, v1}, Lcom/android/keyguard/clock/JavaClockController;->setText(Landroid/widget/TextView;)V

    .line 102
    invoke-virtual {p0}, Lcom/android/keyguard/clock/JavaClockController;->onTimeTick()V

    .line 103
    iget-object p0, p0, Lcom/android/keyguard/clock/JavaClockController;->mRenderer:Lcom/android/keyguard/clock/ViewPreviewer;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/keyguard/clock/ViewPreviewer;->createPreview(Landroid/view/View;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .line 92
    iget-object p0, p0, Lcom/android/keyguard/clock/JavaClockController;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/android/systemui/R$drawable;->java_thumbnail:I

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object p0, p0, Lcom/android/keyguard/clock/JavaClockController;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/android/systemui/R$string;->clock_title_java:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/android/keyguard/clock/JavaClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    if-nez v0, :cond_0

    .line 109
    invoke-direct {p0}, Lcom/android/keyguard/clock/JavaClockController;->createViews()V

    .line 111
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/clock/JavaClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    return-object p0
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lcom/android/keyguard/clock/JavaClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    .line 72
    iput-object v0, p0, Lcom/android/keyguard/clock/JavaClockController;->mClock:Landroid/widget/TextView;

    return-void
.end method

.method public onTimeTick()V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/android/keyguard/clock/JavaClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    invoke-virtual {v0}, Lcom/android/keyguard/clock/ClockLayout;->onTimeChanged()V

    .line 148
    iget-object v0, p0, Lcom/android/keyguard/clock/JavaClockController;->mClock:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/keyguard/clock/JavaClockController;->setText(Landroid/widget/TextView;)V

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
    iget-object p0, p0, Lcom/android/keyguard/clock/JavaClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/clock/ClockLayout;->setDarkAmount(F)V

    return-void
.end method

.method public setStyle(Landroid/graphics/Paint$Style;)V
    .locals 0

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/android/keyguard/clock/JavaClockController;->mClock:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public shouldShowStatusArea()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
