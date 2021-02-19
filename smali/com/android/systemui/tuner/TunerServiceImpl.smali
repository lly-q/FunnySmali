.class public Lcom/android/systemui/tuner/TunerServiceImpl;
.super Lcom/android/systemui/tuner/TunerService;
.source "TunerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/tuner/TunerServiceImpl$Observer;
    }
.end annotation


# static fields
.field private static final RESET_BLACKLIST:[Ljava/lang/String;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUser:I

.field private final mLeakDetector:Lcom/android/systemui/util/leak/LeakDetector;

.field private final mListeningUris:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mObserver:Lcom/android/systemui/tuner/TunerServiceImpl$Observer;

.field private final mTunableLookup:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/android/systemui/tuner/TunerService$Tunable;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTunables:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/systemui/tuner/TunerService$Tunable;",
            ">;"
        }
    .end annotation
.end field

.field private mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "sysui_qs_tiles"

    const-string v1, "doze_always_on"

    const-string v2, "system:screen_brightness_mode"

    .line 76
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/tuner/TunerServiceImpl;->RESET_BLACKLIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/util/leak/LeakDetector;)V
    .locals 3

    .line 100
    invoke-direct {p0}, Lcom/android/systemui/tuner/TunerService;-><init>()V

    .line 82
    new-instance v0, Lcom/android/systemui/tuner/TunerServiceImpl$Observer;

    invoke-direct {v0, p0}, Lcom/android/systemui/tuner/TunerServiceImpl$Observer;-><init>(Lcom/android/systemui/tuner/TunerServiceImpl;)V

    iput-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mObserver:Lcom/android/systemui/tuner/TunerServiceImpl$Observer;

    .line 84
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mListeningUris:Landroid/util/ArrayMap;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTunableLookup:Ljava/util/HashMap;

    .line 88
    sget-boolean v0, Lcom/android/systemui/util/leak/LeakDetector;->ENABLED:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTunables:Ljava/util/HashSet;

    .line 101
    iput-object p1, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContext:Landroid/content/Context;

    .line 102
    iget-object p1, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 103
    iput-object p3, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mLeakDetector:Lcom/android/systemui/util/leak/LeakDetector;

    .line 105
    iget-object p1, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/UserInfo;

    .line 106
    invoke-virtual {p3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p3

    iput p3, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    const/4 p3, 0x0

    const-string v0, "sysui_tuner_version"

    .line 107
    invoke-virtual {p0, v0, p3}, Lcom/android/systemui/tuner/TunerServiceImpl;->getValue(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 108
    invoke-virtual {p0, v0, p3}, Lcom/android/systemui/tuner/TunerServiceImpl;->getValue(Ljava/lang/String;I)I

    move-result p3

    invoke-direct {p0, p3, v2, p2}, Lcom/android/systemui/tuner/TunerServiceImpl;->upgradeTuner(IILandroid/os/Handler;)V

    goto :goto_1

    .line 112
    :cond_2
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    .line 113
    new-instance p1, Lcom/android/systemui/tuner/TunerServiceImpl$1;

    iget-object p2, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/tuner/TunerServiceImpl$1;-><init>(Lcom/android/systemui/tuner/TunerServiceImpl;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    .line 121
    iget-object p0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {p0}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/tuner/TunerServiceImpl;I)I
    .locals 0

    .line 67
    iput p1, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/tuner/TunerServiceImpl;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/android/systemui/tuner/TunerServiceImpl;->reloadAll()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/tuner/TunerServiceImpl;)Landroid/util/ArrayMap;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mListeningUris:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/tuner/TunerServiceImpl;Ljava/lang/String;)Z
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/android/systemui/tuner/TunerServiceImpl;->isLineageGlobal(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/systemui/tuner/TunerServiceImpl;Landroid/net/Uri;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/android/systemui/tuner/TunerServiceImpl;->reloadSetting(Landroid/net/Uri;)V

    return-void
.end method

.method private addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;Ljava/lang/String;)V
    .locals 5

    .line 281
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTunableLookup:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTunableLookup:Ljava/util/HashMap;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTunableLookup:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 285
    sget-boolean v0, Lcom/android/systemui/util/leak/LeakDetector;->ENABLED:Z

    if-eqz v0, :cond_1

    .line 286
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTunables:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 287
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mLeakDetector:Lcom/android/systemui/util/leak/LeakDetector;

    iget-object v1, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTunables:Ljava/util/HashSet;

    const-string v2, "TunerService.mTunables"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/util/leak/LeakDetector;->trackCollection(Ljava/util/Collection;Ljava/lang/String;)V

    .line 290
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/systemui/tuner/TunerServiceImpl;->isLineageGlobal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 291
    invoke-direct {p0, p2}, Lcom/android/systemui/tuner/TunerServiceImpl;->chomp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llineageos/providers/LineageSettings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 292
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/systemui/tuner/TunerServiceImpl;->isLineageSecure(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 293
    invoke-direct {p0, p2}, Lcom/android/systemui/tuner/TunerServiceImpl;->chomp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llineageos/providers/LineageSettings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 294
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/systemui/tuner/TunerServiceImpl;->isLineageSystem(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 295
    invoke-direct {p0, p2}, Lcom/android/systemui/tuner/TunerServiceImpl;->chomp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llineageos/providers/LineageSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 296
    :cond_4
    invoke-direct {p0, p2}, Lcom/android/systemui/tuner/TunerServiceImpl;->isSystem(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 297
    invoke-direct {p0, p2}, Lcom/android/systemui/tuner/TunerServiceImpl;->chomp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 299
    :cond_5
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 301
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mListeningUris:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 302
    iget-object v1, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mListeningUris:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    iget-object v1, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mObserver:Lcom/android/systemui/tuner/TunerServiceImpl$Observer;

    .line 304
    invoke-direct {p0, p2}, Lcom/android/systemui/tuner/TunerServiceImpl;->isLineageGlobal(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, -0x1

    goto :goto_1

    :cond_6
    iget v4, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    .line 303
    :goto_1
    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 307
    :cond_7
    invoke-virtual {p0, p2}, Lcom/android/systemui/tuner/TunerServiceImpl;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 308
    invoke-interface {p1, p2, p0}, Lcom/android/systemui/tuner/TunerService$Tunable;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private chomp(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string p0, "^(lineageglobal|lineagesecure|lineagesystem|system):"

    const-string v0, ""

    .line 178
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isLineageGlobal(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "lineageglobal:"

    .line 162
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isLineageSecure(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "lineagesecure:"

    .line 170
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isLineageSetting(Ljava/lang/String;)Z
    .locals 1

    .line 158
    invoke-direct {p0, p1}, Lcom/android/systemui/tuner/TunerServiceImpl;->isLineageGlobal(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/systemui/tuner/TunerServiceImpl;->isLineageSystem(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/systemui/tuner/TunerServiceImpl;->isLineageSecure(Ljava/lang/String;)Z

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

.method private isLineageSystem(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "lineagesystem:"

    .line 166
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isSystem(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "system:"

    .line 174
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private reloadAll()V
    .locals 5

    .line 346
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTunableLookup:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 347
    invoke-virtual {p0, v1}, Lcom/android/systemui/tuner/TunerServiceImpl;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 348
    iget-object v3, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTunableLookup:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/tuner/TunerService$Tunable;

    .line 349
    invoke-interface {v4, v1, v2}, Lcom/android/systemui/tuner/TunerService$Tunable;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private reloadSetting(Landroid/net/Uri;)V
    .locals 2

    .line 334
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mListeningUris:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 335
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTunableLookup:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_0

    return-void

    .line 339
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/tuner/TunerServiceImpl;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 340
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/tuner/TunerService$Tunable;

    .line 341
    invoke-interface {v1, p1, p0}, Lcom/android/systemui/tuner/TunerService$Tunable;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private upgradeTuner(IILandroid/os/Handler;)V
    .locals 4

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    const-string v0, "icon_blacklist"

    .line 131
    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/TunerServiceImpl;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 134
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getIconBlacklist(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    const-string v2, "rotate"

    .line 136
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v2, "headset"

    .line 137
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v2, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, ","

    .line 141
    invoke-static {v3, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    .line 139
    invoke-static {v2, v0, v1, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_0
    const/4 v0, 0x2

    if-ge p1, v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/tuner/TunerService;->setTunerEnabled(Landroid/content/Context;Z)V

    :cond_1
    const/4 v0, 0x4

    if-ge p1, v0, :cond_2

    .line 150
    iget p1, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    .line 151
    new-instance v0, Lcom/android/systemui/tuner/-$$Lambda$TunerServiceImpl$SZ83wU1GcnmYXjZCH1hfw7pCVvY;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/tuner/-$$Lambda$TunerServiceImpl$SZ83wU1GcnmYXjZCH1hfw7pCVvY;-><init>(Lcom/android/systemui/tuner/TunerServiceImpl;I)V

    const-wide/16 v1, 0x1388

    invoke-virtual {p3, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    const-string p1, "sysui_tuner_version"

    .line 154
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/tuner/TunerServiceImpl;->setValue(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public varargs addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V
    .locals 3

    .line 275
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 276
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/tuner/TunerServiceImpl;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clearAll()V
    .locals 1

    .line 356
    iget v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/TunerServiceImpl;->clearAllFromUser(I)V

    return-void
.end method

.method public clearAllFromUser(I)V
    .locals 3

    .line 361
    iget-object p1, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v0, 0x0

    const-string v1, "sysui_demo_allowed"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 362
    new-instance p1, Landroid/content/Intent;

    const-string v1, "com.android.systemui.demo"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "command"

    const-string v2, "exit"

    .line 363
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    iget-object v1, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 366
    iget-object p1, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTunableLookup:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 367
    sget-object v2, Lcom/android/systemui/tuner/TunerServiceImpl;->RESET_BLACKLIST:[Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v1}, Lcom/android/systemui/tuner/TunerServiceImpl;->isLineageSetting(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 370
    :cond_1
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/tuner/TunerServiceImpl;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getValue(Ljava/lang/String;I)I
    .locals 1

    .line 219
    invoke-direct {p0, p1}, Lcom/android/systemui/tuner/TunerServiceImpl;->isLineageGlobal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0, p1}, Lcom/android/systemui/tuner/TunerServiceImpl;->chomp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p2}, Llineageos/providers/LineageSettings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 221
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/tuner/TunerServiceImpl;->isLineageSecure(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 223
    invoke-direct {p0, p1}, Lcom/android/systemui/tuner/TunerServiceImpl;->chomp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget p0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    .line 222
    invoke-static {v0, p1, p2, p0}, Llineageos/providers/LineageSettings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0

    .line 224
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/tuner/TunerServiceImpl;->isLineageSystem(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 225
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 226
    invoke-direct {p0, p1}, Lcom/android/systemui/tuner/TunerServiceImpl;->chomp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget p0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    .line 225
    invoke-static {v0, p1, p2, p0}, Llineageos/providers/LineageSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0

    .line 227
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/tuner/TunerServiceImpl;->isSystem(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 228
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 229
    invoke-direct {p0, p1}, Lcom/android/systemui/tuner/TunerServiceImpl;->chomp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget p0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    .line 228
    invoke-static {v0, p1, p2, p0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0

    .line 231
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    iget p0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    invoke-static {v0, p1, p2, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 183
    invoke-direct {p0, p1}, Lcom/android/systemui/tuner/TunerServiceImpl;->isLineageGlobal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0, p1}, Lcom/android/systemui/tuner/TunerServiceImpl;->chomp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Llineageos/providers/LineageSettings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 185
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/tuner/TunerServiceImpl;->isLineageSecure(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 187
    invoke-direct {p0, p1}, Lcom/android/systemui/tuner/TunerServiceImpl;->chomp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget p0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    .line 186
    invoke-static {v0, p1, p0}, Llineageos/providers/LineageSettings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 188
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/tuner/TunerServiceImpl;->isLineageSystem(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 189
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 190
    invoke-direct {p0, p1}, Lcom/android/systemui/tuner/TunerServiceImpl;->chomp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget p0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    .line 189
    invoke-static {v0, p1, p0}, Llineageos/providers/LineageSettings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 191
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/tuner/TunerServiceImpl;->isSystem(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 192
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 193
    invoke-direct {p0, p1}, Lcom/android/systemui/tuner/TunerServiceImpl;->chomp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget p0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    .line 192
    invoke-static {v0, p1, p0}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 195
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    iget p0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    invoke-static {v0, p1, p0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$upgradeTuner$0$TunerServiceImpl(I)V
    .locals 0

    .line 152
    invoke-virtual {p0, p1}, Lcom/android/systemui/tuner/TunerServiceImpl;->clearAllFromUser(I)V

    return-void
.end method

.method public removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V
    .locals 2

    .line 313
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTunableLookup:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 314
    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 316
    :cond_0
    sget-boolean v0, Lcom/android/systemui/util/leak/LeakDetector;->ENABLED:Z

    if-eqz v0, :cond_1

    .line 317
    iget-object p0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTunables:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method protected reregisterAll()V
    .locals 6

    .line 322
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mListeningUris:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mObserver:Lcom/android/systemui/tuner/TunerServiceImpl$Observer;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 326
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mListeningUris:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 327
    iget-object v2, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mListeningUris:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 328
    iget-object v3, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mObserver:Lcom/android/systemui/tuner/TunerServiceImpl$Observer;

    .line 329
    invoke-direct {p0, v2}, Lcom/android/systemui/tuner/TunerServiceImpl;->isLineageGlobal(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    .line 328
    :goto_1
    invoke-virtual {v3, v1, v4, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setValue(Ljava/lang/String;I)V
    .locals 1

    .line 258
    invoke-direct {p0, p1}, Lcom/android/systemui/tuner/TunerServiceImpl;->isLineageGlobal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0, p1}, Lcom/android/systemui/tuner/TunerServiceImpl;->chomp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p2}, Llineageos/providers/LineageSettings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 260
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/tuner/TunerServiceImpl;->isLineageSecure(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 262
    invoke-direct {p0, p1}, Lcom/android/systemui/tuner/TunerServiceImpl;->chomp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget p0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    .line 261
    invoke-static {v0, p1, p2, p0}, Llineageos/providers/LineageSettings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    .line 263
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/tuner/TunerServiceImpl;->isLineageSystem(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 264
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 265
    invoke-direct {p0, p1}, Lcom/android/systemui/tuner/TunerServiceImpl;->chomp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget p0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    .line 264
    invoke-static {v0, p1, p2, p0}, Llineageos/providers/LineageSettings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    .line 266
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/tuner/TunerServiceImpl;->isSystem(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 267
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0, p1}, Lcom/android/systemui/tuner/TunerServiceImpl;->chomp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget p0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    invoke-static {v0, p1, p2, p0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    .line 269
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    iget p0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    invoke-static {v0, p1, p2, p0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :goto_0
    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 201
    invoke-direct {p0, p1}, Lcom/android/systemui/tuner/TunerServiceImpl;->isLineageGlobal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0, p1}, Lcom/android/systemui/tuner/TunerServiceImpl;->chomp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p2}, Llineageos/providers/LineageSettings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 203
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/tuner/TunerServiceImpl;->isLineageSecure(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 205
    invoke-direct {p0, p1}, Lcom/android/systemui/tuner/TunerServiceImpl;->chomp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget p0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    .line 204
    invoke-static {v0, p1, p2, p0}, Llineageos/providers/LineageSettings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    .line 206
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/tuner/TunerServiceImpl;->isLineageSystem(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 207
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 208
    invoke-direct {p0, p1}, Lcom/android/systemui/tuner/TunerServiceImpl;->chomp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget p0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    .line 207
    invoke-static {v0, p1, p2, p0}, Llineageos/providers/LineageSettings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    .line 209
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/tuner/TunerServiceImpl;->isSystem(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 210
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 211
    invoke-direct {p0, p1}, Lcom/android/systemui/tuner/TunerServiceImpl;->chomp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget p0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    .line 210
    invoke-static {v0, p1, p2, p0}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    .line 213
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    iget p0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    invoke-static {v0, p1, p2, p0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :goto_0
    return-void
.end method
