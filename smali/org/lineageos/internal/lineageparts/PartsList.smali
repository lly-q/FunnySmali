.class public Lorg/lineageos/internal/lineageparts/PartsList;
.super Ljava/lang/Object;
.source "PartsList.java"


# static fields
.field private static final DEBUG:Z

.field public static final LINEAGEPARTS_ACTIVITY:Landroid/content/ComponentName;

.field private static final TAG:Ljava/lang/String; = "PartsList"

.field private static sInstance:Lorg/lineageos/internal/lineageparts/PartsList;

.field private static final sInstanceLock:Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mParts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/lineageos/internal/lineageparts/PartInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 52
    sget-object v0, Lorg/lineageos/internal/lineageparts/PartsList;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lorg/lineageos/internal/lineageparts/PartsList;->DEBUG:Z

    .line 58
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "org.lineageos.lineageparts"

    const-string v2, "org.lineageos.lineageparts.PartsActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/lineageos/internal/lineageparts/PartsList;->LINEAGEPARTS_ACTIVITY:Landroid/content/ComponentName;

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/lineageos/internal/lineageparts/PartsList;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lorg/lineageos/internal/lineageparts/PartsList;->mParts:Ljava/util/Map;

    .line 71
    iput-object p1, p0, Lorg/lineageos/internal/lineageparts/PartsList;->mContext:Landroid/content/Context;

    .line 72
    invoke-direct {p0}, Lorg/lineageos/internal/lineageparts/PartsList;->loadParts()V

    return-void
.end method

.method public static get(Landroid/content/Context;)Lorg/lineageos/internal/lineageparts/PartsList;
    .locals 2

    .line 76
    sget-object v0, Lorg/lineageos/internal/lineageparts/PartsList;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 77
    :try_start_0
    sget-object v1, Lorg/lineageos/internal/lineageparts/PartsList;->sInstance:Lorg/lineageos/internal/lineageparts/PartsList;

    if-nez v1, :cond_0

    .line 78
    new-instance v1, Lorg/lineageos/internal/lineageparts/PartsList;

    invoke-direct {v1, p0}, Lorg/lineageos/internal/lineageparts/PartsList;-><init>(Landroid/content/Context;)V

    sput-object v1, Lorg/lineageos/internal/lineageparts/PartsList;->sInstance:Lorg/lineageos/internal/lineageparts/PartsList;

    .line 80
    :cond_0
    sget-object p0, Lorg/lineageos/internal/lineageparts/PartsList;->sInstance:Lorg/lineageos/internal/lineageparts/PartsList;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 81
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private loadParts()V
    .locals 5

    .line 85
    iget-object v0, p0, Lorg/lineageos/internal/lineageparts/PartsList;->mParts:Ljava/util/Map;

    monitor-enter v0

    .line 86
    :try_start_0
    iget-object v1, p0, Lorg/lineageos/internal/lineageparts/PartsList;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v2, "org.lineageos.lineageparts"

    .line 88
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    .line 90
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :cond_0
    :try_start_3
    const-string v2, "parts_catalog"

    const-string v3, "xml"

    const-string v4, "org.lineageos.lineageparts"

    .line 92
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    .line 94
    iget-object v3, p0, Lorg/lineageos/internal/lineageparts/PartsList;->mParts:Ljava/util/Map;

    invoke-direct {p0, v1, v2, v3}, Lorg/lineageos/internal/lineageparts/PartsList;->loadPartsFromResourceLocked(Landroid/content/res/Resources;ILjava/util/Map;)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 99
    :catch_0
    :cond_1
    :try_start_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method private loadPartsFromResourceLocked(Landroid/content/res/Resources;ILjava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/lineageos/internal/lineageparts/PartInfo;",
            ">;)V"
        }
    .end annotation

    const-string p0, "Error parsing catalog"

    const/4 v0, 0x0

    .line 130
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 131
    :try_start_1
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 134
    :goto_0
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "parts-catalog"

    .line 140
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 146
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    .line 147
    :cond_1
    :goto_1
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    if-eq v4, v3, :cond_c

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 148
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    if-le v6, v2, :cond_c

    :cond_2
    if-eq v4, v5, :cond_1

    const/4 v6, 0x4

    if-ne v4, v6, :cond_3

    goto :goto_1

    .line 153
    :cond_3
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v7, "part"

    .line 154
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 155
    sget-object v4, Lcom/android/internal/R$styleable;->Preference:[I

    invoke-virtual {p1, v1, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    const/4 v7, 0x6

    .line 158
    invoke-virtual {v4, v7}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 159
    iget v8, v7, Landroid/util/TypedValue;->type:I

    if-ne v8, v5, :cond_5

    .line 160
    iget v8, v7, Landroid/util/TypedValue;->resourceId:I

    if-eqz v8, :cond_4

    .line 161
    iget v7, v7, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 163
    :cond_4
    iget-object v7, v7, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_5
    move-object v7, v0

    :goto_2
    if-eqz v7, :cond_a

    .line 170
    new-instance v8, Lorg/lineageos/internal/lineageparts/PartInfo;

    invoke-direct {v8, v7}, Lorg/lineageos/internal/lineageparts/PartInfo;-><init>(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 173
    iget v9, v6, Landroid/util/TypedValue;->type:I

    if-ne v9, v5, :cond_7

    .line 174
    iget v9, v6, Landroid/util/TypedValue;->resourceId:I

    if-eqz v9, :cond_6

    .line 175
    iget v6, v6, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Lorg/lineageos/internal/lineageparts/PartInfo;->setTitle(Ljava/lang/String;)V

    goto :goto_3

    .line 177
    :cond_6
    iget-object v6, v6, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Lorg/lineageos/internal/lineageparts/PartInfo;->setTitle(Ljava/lang/String;)V

    :cond_7
    :goto_3
    const/4 v6, 0x7

    .line 181
    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 182
    iget v9, v6, Landroid/util/TypedValue;->type:I

    if-ne v9, v5, :cond_9

    .line 183
    iget v5, v6, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_8

    .line 184
    iget v5, v6, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lorg/lineageos/internal/lineageparts/PartInfo;->setSummary(Ljava/lang/String;)V

    goto :goto_4

    .line 186
    :cond_8
    iget-object v5, v6, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lorg/lineageos/internal/lineageparts/PartInfo;->setSummary(Ljava/lang/String;)V

    :cond_9
    :goto_4
    const/16 v5, 0xd

    .line 190
    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lorg/lineageos/internal/lineageparts/PartInfo;->setFragmentClass(Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 191
    invoke-virtual {v4, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v8, v4}, Lorg/lineageos/internal/lineageparts/PartInfo;->setIconRes(I)V

    .line 193
    sget-object v4, Llineageos/platform/R$styleable;->lineage_Searchable:[I

    invoke-virtual {p1, v1, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 194
    invoke-virtual {v4, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-virtual {v8, v5}, Lorg/lineageos/internal/lineageparts/PartInfo;->setXmlRes(I)V

    .line 196
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 198
    invoke-interface {p3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 167
    :cond_a
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p3, "Attribute \'key\' is required"

    invoke-direct {p1, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 201
    :cond_b
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    :cond_c
    if-eqz p2, :cond_d

    .line 209
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_d
    return-void

    .line 141
    :cond_e
    :try_start_2
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "XML document must start with <parts-catalog> tag; found "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " at "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    goto :goto_7

    :catch_0
    move-exception p1

    move-object v0, p2

    goto :goto_5

    :catch_1
    move-exception p1

    move-object v0, p2

    goto :goto_6

    :catchall_1
    move-exception p0

    move-object p2, v0

    goto :goto_7

    :catch_2
    move-exception p1

    .line 207
    :goto_5
    :try_start_3
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_3
    move-exception p1

    .line 205
    :goto_6
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_7
    if-eqz p2, :cond_f

    .line 209
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_f
    throw p0
.end method


# virtual methods
.method public getPartInfo(Ljava/lang/String;)Lorg/lineageos/internal/lineageparts/PartInfo;
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/lineageos/internal/lineageparts/PartsList;->mParts:Ljava/util/Map;

    monitor-enter v0

    .line 110
    :try_start_0
    iget-object p0, p0, Lorg/lineageos/internal/lineageparts/PartsList;->mParts:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/lineageos/internal/lineageparts/PartInfo;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 111
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
