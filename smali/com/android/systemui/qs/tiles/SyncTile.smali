.class public Lcom/android/systemui/qs/tiles/SyncTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "SyncTile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# instance fields
.field private final mIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private mListening:Z

.field private mSyncObserver:Landroid/content/SyncStatusObserver;

.field private mSyncObserverHandle:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 37
    sget p1, Lcom/android/systemui/R$drawable;->ic_qs_sync:I

    invoke-static {p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SyncTile;->mIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    const/4 p1, 0x0

    .line 39
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SyncTile;->mSyncObserverHandle:Ljava/lang/Object;

    .line 114
    new-instance p1, Lcom/android/systemui/qs/tiles/SyncTile$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/SyncTile$1;-><init>(Lcom/android/systemui/qs/tiles/SyncTile;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SyncTile;->mSyncObserver:Landroid/content/SyncStatusObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/SyncTile;)Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    return-object p0
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_0

    .line 94
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->accessibility_quick_settings_sync_changed_on:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 96
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->accessibility_quick_settings_sync_changed_off:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 1

    .line 60
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.settings.SYNC_SETTINGS"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.DEFAULT"

    .line 61
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const p0, -0x7fffffdb

    return p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 83
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->quick_settings_sync_label:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public handleClick()V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 55
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    return-void
.end method

.method public handleSetListening(Z)V
    .locals 1

    .line 102
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/SyncTile;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 103
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/SyncTile;->mListening:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 106
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SyncTile;->mSyncObserver:Landroid/content/SyncStatusObserver;

    invoke-static {p1, v0}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SyncTile;->mSyncObserverHandle:Ljava/lang/Object;

    goto :goto_0

    .line 109
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SyncTile;->mSyncObserverHandle:Ljava/lang/Object;

    invoke-static {p1}, Landroid/content/ContentResolver;->removeStatusChangeListener(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 110
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SyncTile;->mSyncObserverHandle:Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 1

    .line 67
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result p2

    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 68
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->quick_settings_sync_label:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 69
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/SyncTile;->mIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 70
    iget-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz p2, :cond_0

    .line 71
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$string;->accessibility_quick_settings_sync_on:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    const/4 p0, 0x2

    .line 73
    iput p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    goto :goto_0

    .line 75
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$string;->accessibility_quick_settings_sync_off:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    const/4 p0, 0x1

    .line 77
    iput p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    :goto_0
    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .line 35
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/SyncTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 0

    .line 49
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 35
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SyncTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object p0

    return-object p0
.end method
