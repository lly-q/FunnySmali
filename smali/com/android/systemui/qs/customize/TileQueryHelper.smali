.class public Lcom/android/systemui/qs/customize/TileQueryHelper;
.super Ljava/lang/Object;
.source "TileQueryHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;,
        Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    }
.end annotation


# instance fields
.field private final mBgHandler:Landroid/os/Handler;

.field private final mContext:Landroid/content/Context;

.field private mFinished:Z

.field private final mListener:Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;

.field private final mMainHandler:Landroid/os/Handler;

.field private final mSpecs:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mTiles:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mSpecs:Landroid/util/ArraySet;

    .line 63
    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mContext:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mListener:Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;

    .line 65
    new-instance p1, Landroid/os/Handler;

    sget-object p2, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Looper;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mBgHandler:Landroid/os/Handler;

    .line 66
    sget-object p1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method private addCurrentAndStockTiles(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 8

    .line 84
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->quick_settings_tiles_stock:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sysui_qs_tiles"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, ","

    if-eqz v1, :cond_0

    .line 90
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 94
    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 95
    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_2

    aget-object v6, v0, v5

    .line 96
    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 97
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 100
    :cond_2
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_3

    const-string v0, "dbg:mem"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 101
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 105
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "custom("

    .line 108
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    .line 109
    :cond_4
    invoke-virtual {p1, v2}, Lcom/android/systemui/qs/QSTileHost;->createTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;

    move-result-object v3

    if-nez v3, :cond_5

    goto :goto_2

    .line 112
    :cond_5
    invoke-interface {v3}, Lcom/android/systemui/plugins/qs/QSTile;->isAvailable()Z

    move-result v5

    if-nez v5, :cond_6

    .line 113
    invoke-interface {v3}, Lcom/android/systemui/plugins/qs/QSTile;->destroy()V

    goto :goto_2

    :cond_6
    const/4 v5, 0x1

    .line 116
    invoke-interface {v3, p0, v5}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    .line 117
    invoke-interface {v3}, Lcom/android/systemui/plugins/qs/QSTile;->refreshState()V

    .line 118
    invoke-interface {v3, p0, v4}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    .line 119
    invoke-interface {v3, v2}, Lcom/android/systemui/plugins/qs/QSTile;->setTileSpec(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 123
    :cond_7
    iget-object p1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/qs/customize/-$$Lambda$TileQueryHelper$sMzDfkcNEMwHLLe95kLdEn4WPkc;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/qs/customize/-$$Lambda$TileQueryHelper$sMzDfkcNEMwHLLe95kLdEn4WPkc;-><init>(Lcom/android/systemui/qs/customize/TileQueryHelper;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private addPackageTiles(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/qs/customize/-$$Lambda$TileQueryHelper$-7aqDrq4N73id-i9gI_WE72bklw;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/customize/-$$Lambda$TileQueryHelper$-7aqDrq4N73id-i9gI_WE72bklw;-><init>(Lcom/android/systemui/qs/customize/TileQueryHelper;Lcom/android/systemui/qs/QSTileHost;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private addTile(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V
    .locals 3

    .line 198
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mSpecs:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 201
    :cond_0
    new-instance v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    invoke-direct {v0}, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;-><init>()V

    .line 202
    iput-object p3, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 203
    iget-object v1, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    .line 204
    const-class v2, Landroid/widget/Button;

    .line 205
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 206
    iput-object p1, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    .line 207
    iget-object v1, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    if-nez p4, :cond_1

    iget-object p3, p3, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-static {p3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_2

    :cond_1
    const/4 p2, 0x0

    .line 208
    :cond_2
    iput-object p2, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 209
    iput-boolean p4, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->isSystem:Z

    .line 210
    iget-object p2, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    iget-object p0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mSpecs:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private createStateAndAddTile(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2

    .line 216
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$State;-><init>()V

    const/4 v1, 0x1

    .line 217
    iput v1, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 218
    iput-object p3, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 219
    iput-object p3, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 220
    new-instance p3, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;

    invoke-direct {p3, p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object p3, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    const/4 p2, 0x0

    .line 221
    invoke-direct {p0, p1, p4, v0, p2}, Lcom/android/systemui/qs/customize/TileQueryHelper;->addTile(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V

    return-void
.end method

.method private getState(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/systemui/plugins/qs/QSTile;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/systemui/plugins/qs/QSTile$State;"
        }
    .end annotation

    .line 189
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile;

    .line 190
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/QSTile;->getState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/plugins/qs/QSTile$State;->copy()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private notifyTilesChanged(Z)V
    .locals 3

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mTiles:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 182
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mMainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/qs/customize/-$$Lambda$TileQueryHelper$td1yVFso44MefBPUi6jpDHx3Yoc;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/systemui/qs/customize/-$$Lambda$TileQueryHelper$td1yVFso44MefBPUi6jpDHx3Yoc;-><init>(Lcom/android/systemui/qs/customize/TileQueryHelper;Ljava/util/ArrayList;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public isFinished()Z
    .locals 0

    .line 80
    iget-boolean p0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mFinished:Z

    return p0
.end method

.method public synthetic lambda$addCurrentAndStockTiles$0$TileQueryHelper(Ljava/util/ArrayList;)V
    .locals 4

    .line 124
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile;

    .line 125
    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QSTile;->getState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/plugins/qs/QSTile$State;->copy()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v1

    .line 127
    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QSTile;->getTileLabel()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 128
    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QSTile;->destroy()V

    .line 129
    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/android/systemui/qs/customize/TileQueryHelper;->addTile(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 131
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/TileQueryHelper;->notifyTilesChanged(Z)V

    return-void
.end method

.method public synthetic lambda$addPackageTiles$1$TileQueryHelper(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 10

    .line 137
    invoke-virtual {p1}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object p1

    .line 138
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 139
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.service.quicksettings.action.QS_TILE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 140
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    const/4 v3, 0x0

    .line 139
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    .line 141
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$string;->quick_settings_tiles_stock:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 143
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 144
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 145
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v5, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 153
    invoke-static {v6}, Lcom/android/systemui/qs/external/CustomTile;->toSpec(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v6

    .line 154
    invoke-direct {p0, p1, v6}, Lcom/android/systemui/qs/customize/TileQueryHelper;->getState(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 156
    invoke-direct {p0, v6, v5, v7, v3}, Lcom/android/systemui/qs/customize/TileQueryHelper;->addTile(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V

    goto :goto_0

    .line 159
    :cond_1
    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v7, v7, Landroid/content/pm/ServiceInfo;->icon:I

    if-nez v7, :cond_2

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->icon:I

    if-nez v7, :cond_2

    goto :goto_0

    .line 162
    :cond_2
    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v7, v0}, Landroid/content/pm/ServiceInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 163
    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v9, "android.permission.BIND_QUICK_SETTINGS_TILE"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_0

    :cond_3
    if-nez v7, :cond_4

    goto :goto_0

    .line 169
    :cond_4
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 170
    iget-object v8, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mContext:Landroid/content/Context;

    const v9, 0x106000b

    invoke-virtual {v8, v9}, Landroid/content/Context;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 171
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v4, v0}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 172
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_5
    const-string v4, "null"

    :goto_1
    invoke-direct {p0, v6, v7, v4, v5}, Lcom/android/systemui/qs/customize/TileQueryHelper;->createStateAndAddTile(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_6
    const/4 p1, 0x1

    .line 176
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/TileQueryHelper;->notifyTilesChanged(Z)V

    return-void
.end method

.method public synthetic lambda$notifyTilesChanged$2$TileQueryHelper(Ljava/util/ArrayList;Z)V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mListener:Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;->onTilesChanged(Ljava/util/List;)V

    .line 184
    iput-boolean p2, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mFinished:Z

    return-void
.end method

.method public queryTiles(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 71
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mSpecs:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mFinished:Z

    .line 74
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/TileQueryHelper;->addCurrentAndStockTiles(Lcom/android/systemui/qs/QSTileHost;)V

    .line 76
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/TileQueryHelper;->addPackageTiles(Lcom/android/systemui/qs/QSTileHost;)V

    return-void
.end method
