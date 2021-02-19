.class Llineageos/providers/LineageSettings$NameValueCache;
.super Ljava/lang/Object;
.source "LineageSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llineageos/providers/LineageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameValueCache"
.end annotation


# static fields
.field private static final SELECT_VALUE_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mCallGetCommand:Ljava/lang/String;

.field private final mCallSetCommand:Ljava/lang/String;

.field private mContentProvider:Landroid/content/IContentProvider;

.field private final mUri:Landroid/net/Uri;

.field private final mValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mValuesVersion:J

.field private final mVersionSystemProperty:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "value"

    .line 178
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Llineageos/providers/LineageSettings$NameValueCache;->SELECT_VALUE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Llineageos/providers/LineageSettings$NameValueCache;->mValues:Ljava/util/HashMap;

    const-wide/16 v0, 0x0

    .line 184
    iput-wide v0, p0, Llineageos/providers/LineageSettings$NameValueCache;->mValuesVersion:J

    const/4 v0, 0x0

    .line 187
    iput-object v0, p0, Llineageos/providers/LineageSettings$NameValueCache;->mContentProvider:Landroid/content/IContentProvider;

    .line 196
    iput-object p1, p0, Llineageos/providers/LineageSettings$NameValueCache;->mVersionSystemProperty:Ljava/lang/String;

    .line 197
    iput-object p2, p0, Llineageos/providers/LineageSettings$NameValueCache;->mUri:Landroid/net/Uri;

    .line 198
    iput-object p3, p0, Llineageos/providers/LineageSettings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    .line 199
    iput-object p4, p0, Llineageos/providers/LineageSettings$NameValueCache;->mCallSetCommand:Ljava/lang/String;

    return-void
.end method

.method private lazyGetProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;
    .locals 1

    .line 204
    monitor-enter p0

    .line 205
    :try_start_0
    iget-object v0, p0, Llineageos/providers/LineageSettings$NameValueCache;->mContentProvider:Landroid/content/IContentProvider;

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Llineageos/providers/LineageSettings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    iput-object v0, p0, Llineageos/providers/LineageSettings$NameValueCache;->mContentProvider:Landroid/content/IContentProvider;

    .line 209
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    .locals 11

    .line 246
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p3, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_3

    .line 249
    iget-object v3, p0, Llineageos/providers/LineageSettings$NameValueCache;->mVersionSystemProperty:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 252
    monitor-enter p0

    .line 253
    :try_start_0
    iget-wide v5, p0, Llineageos/providers/LineageSettings$NameValueCache;->mValuesVersion:J

    cmp-long v5, v5, v3

    if-eqz v5, :cond_1

    .line 259
    iget-object v5, p0, Llineageos/providers/LineageSettings$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 260
    iput-wide v3, p0, Llineageos/providers/LineageSettings$NameValueCache;->mValuesVersion:J

    .line 263
    :cond_1
    iget-object v3, p0, Llineageos/providers/LineageSettings$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 264
    iget-object p1, p0, Llineageos/providers/LineageSettings$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    monitor-exit p0

    return-object p1

    .line 266
    :cond_2
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 272
    :cond_3
    :goto_1
    invoke-direct {p0, p1}, Llineageos/providers/LineageSettings$NameValueCache;->lazyGetProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v9

    .line 278
    iget-object v3, p0, Llineageos/providers/LineageSettings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    const/4 v10, 0x0

    if-eqz v3, :cond_6

    if-nez v0, :cond_4

    .line 282
    :try_start_1
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "_user"

    .line 283
    invoke-virtual {v3, v4, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v8, v3

    goto :goto_2

    :cond_4
    move-object v8, v10

    .line 285
    :goto_2
    invoke-virtual {p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "lineagesettings"

    iget-object v6, p0, Llineageos/providers/LineageSettings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    move-object v3, v9

    move-object v7, p2

    invoke-interface/range {v3 .. v8}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p3

    if-eqz p3, :cond_6

    .line 287
    invoke-virtual {p3}, Landroid/os/Bundle;->getPairValue()Ljava/lang/String;

    move-result-object p3

    if-eqz v0, :cond_5

    .line 290
    monitor-enter p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 291
    :try_start_2
    iget-object v0, p0, Llineageos/providers/LineageSettings$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    monitor-exit p0

    goto :goto_3

    :catchall_1
    move-exception p3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw p3
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_5
    :goto_3
    return-object p3

    :catch_0
    :cond_6
    :try_start_4
    const-string p3, "name=?"

    new-array v0, v1, [Ljava/lang/String;

    aput-object p2, v0, v2

    .line 310
    invoke-static {p3, v0, v10}, Landroid/content/ContentResolver;->createSqlQueryBundle(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 312
    invoke-virtual {p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Llineageos/providers/LineageSettings$NameValueCache;->mUri:Landroid/net/Uri;

    sget-object v6, Llineageos/providers/LineageSettings$NameValueCache;->SELECT_VALUE_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    move-object v3, v9

    invoke-interface/range {v3 .. v8}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-nez p1, :cond_8

    :try_start_5
    const-string p3, "LineageSettings"

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t get key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Llineageos/providers/LineageSettings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz p1, :cond_7

    .line 331
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_7
    return-object v10

    .line 318
    :cond_8
    :try_start_6
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_4

    :cond_9
    move-object p3, v10

    .line 319
    :goto_4
    monitor-enter p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 320
    :try_start_7
    iget-object v0, p0, Llineageos/providers/LineageSettings$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz p1, :cond_a

    .line 331
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_a
    return-object p3

    :catchall_2
    move-exception p3

    .line 321
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw p3
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :catch_1
    move-exception p3

    goto :goto_5

    :catchall_3
    move-exception p0

    move-object p1, v10

    goto :goto_6

    :catch_2
    move-exception p3

    move-object p1, v10

    :goto_5
    :try_start_a
    const-string v0, "LineageSettings"

    .line 328
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t get key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " from "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Llineageos/providers/LineageSettings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    if-eqz p1, :cond_b

    .line 331
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_b
    return-object v10

    :catchall_4
    move-exception p0

    :goto_6
    if-eqz p1, :cond_c

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_c
    throw p0
.end method

.method public putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6

    .line 224
    :try_start_0
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v0, "value"

    .line 225
    invoke-virtual {v5, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "_user"

    .line 226
    invoke-virtual {v5, p3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 227
    invoke-direct {p0, p1}, Llineageos/providers/LineageSettings$NameValueCache;->lazyGetProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v0

    .line 228
    invoke-virtual {p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lineagesettings"

    iget-object v3, p0, Llineageos/providers/LineageSettings$NameValueCache;->mCallSetCommand:Ljava/lang/String;

    move-object v4, p2

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p1

    .line 230
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Can\'t set key "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " in "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Llineageos/providers/LineageSettings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "LineageSettings"

    invoke-static {p2, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method
