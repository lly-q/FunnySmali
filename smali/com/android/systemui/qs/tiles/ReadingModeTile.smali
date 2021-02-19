.class public Lcom/android/systemui/qs/tiles/ReadingModeTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "ReadingModeTile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# static fields
.field private static final LIVEDISPLAY_SETTINGS:Landroid/content/Intent;


# instance fields
.field private mHardware:Llineageos/hardware/LineageHardwareManager;

.field private final mIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.lineageos.lineageparts.LIVEDISPLAY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/qs/tiles/ReadingModeTile;->LIVEDISPLAY_SETTINGS:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 37
    sget p1, Lcom/android/systemui/R$drawable;->ic_qs_reader:I

    invoke-static {p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ReadingModeTile;->mIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 47
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Llineageos/hardware/LineageHardwareManager;->getInstance(Landroid/content/Context;)Llineageos/hardware/LineageHardwareManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ReadingModeTile;->mHardware:Llineageos/hardware/LineageHardwareManager;

    return-void
.end method

.method private isReadingModeEnabled()Z
    .locals 1

    .line 115
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/ReadingModeTile;->mHardware:Llineageos/hardware/LineageHardwareManager;

    const/16 v0, 0x4000

    invoke-virtual {p0, v0}, Llineageos/hardware/LineageHardwareManager;->get(I)Z

    move-result p0

    return p0
.end method

.method private isWellbeingEnabled()Z
    .locals 1

    .line 119
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v0, 0x104016e

    .line 120
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-static {p0, v0}, Lorg/lineageos/internal/util/PackageManagerUtils;->isAppEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_0

    .line 97
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->accessibility_quick_settings_reading_mode_changed_on:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 100
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->accessibility_quick_settings_reading_mode_changed_off:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 0

    .line 64
    sget-object p0, Lcom/android/systemui/qs/tiles/ReadingModeTile;->LIVEDISPLAY_SETTINGS:Landroid/content/Intent;

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const p0, -0x7fffffd2

    return p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 91
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->quick_settings_reading_mode:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected handleClick()V
    .locals 3

    .line 57
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/ReadingModeTile;->isReadingModeEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 58
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ReadingModeTile;->mHardware:Llineageos/hardware/LineageHardwareManager;

    const/16 v2, 0x4000

    invoke-virtual {v1, v2, v0}, Llineageos/hardware/LineageHardwareManager;->set(IZ)Z

    .line 59
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    return-void
.end method

.method public handleSetListening(Z)V
    .locals 0

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/ReadingModeTile;->isReadingModeEnabled()Z

    move-result p2

    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 76
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/ReadingModeTile;->mIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 77
    iget-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz p2, :cond_0

    .line 78
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->accessibility_quick_settings_reading_mode_on:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    const/4 p2, 0x2

    .line 80
    iput p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    goto :goto_0

    .line 82
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->accessibility_quick_settings_reading_mode_off:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    const/4 p2, 0x1

    .line 84
    iput p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 86
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/ReadingModeTile;->getTileLabel()Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .line 35
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/ReadingModeTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 1

    .line 69
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/ReadingModeTile;->isWellbeingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/ReadingModeTile;->mHardware:Llineageos/hardware/LineageHardwareManager;

    const/16 v0, 0x4000

    .line 70
    invoke-virtual {p0, v0}, Llineageos/hardware/LineageHardwareManager;->isSupported(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 0

    .line 52
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 35
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/ReadingModeTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object p0

    return-object p0
.end method
