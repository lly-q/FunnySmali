.class public Lcom/android/systemui/appops/PermissionFlagsCache;
.super Ljava/lang/Object;
.source "PermissionFlagsCache.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPermissionFlagsCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PermissionFlagsCache.kt\ncom/android/systemui/appops/PermissionFlagsCache\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,70:1\n305#2,7:71\n*E\n*S KotlinDebug\n*F\n+ 1 PermissionFlagsCache.kt\ncom/android/systemui/appops/PermissionFlagsCache\n*L\n53#1,7:71\n*E\n"
.end annotation


# instance fields
.field private final packageManager:Landroid/content/pm/PackageManager;

.field private final permissionFlagsCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/systemui/appops/PermissionFlagKey;",
            "Lcom/android/systemui/appops/PermissionFlag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/appops/PermissionFlagsCache;->packageManager:Landroid/content/pm/PackageManager;

    .line 42
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/appops/PermissionFlagsCache;->permissionFlagsCache:Landroid/util/ArrayMap;

    return-void
.end method

.method private final getFlags(Lcom/android/systemui/appops/PermissionFlagKey;)I
    .locals 2

    .line 66
    iget-object p0, p0, Lcom/android/systemui/appops/PermissionFlagsCache;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Lcom/android/systemui/appops/PermissionFlagKey;->getPermission()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/appops/PermissionFlagKey;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/systemui/appops/PermissionFlagKey;->getUser()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result p0

    return p0
.end method


# virtual methods
.method protected getCurrentTime()J
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I
    .locals 6

    const-string v0, "permission"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "user"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    new-instance v0, Lcom/android/systemui/appops/PermissionFlagKey;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/systemui/appops/PermissionFlagKey;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 52
    invoke-virtual {p0}, Lcom/android/systemui/appops/PermissionFlagsCache;->getCurrentTime()J

    move-result-wide p1

    .line 53
    iget-object p3, p0, Lcom/android/systemui/appops/PermissionFlagsCache;->permissionFlagsCache:Landroid/util/ArrayMap;

    .line 71
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 54
    new-instance v1, Lcom/android/systemui/appops/PermissionFlag;

    invoke-direct {p0, v0}, Lcom/android/systemui/appops/PermissionFlagsCache;->getFlags(Lcom/android/systemui/appops/PermissionFlagKey;)I

    move-result v2

    invoke-direct {v1, v2, p1, p2}, Lcom/android/systemui/appops/PermissionFlag;-><init>(IJ)V

    .line 74
    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_0
    check-cast v1, Lcom/android/systemui/appops/PermissionFlag;

    .line 56
    invoke-virtual {v1}, Lcom/android/systemui/appops/PermissionFlag;->getTimestamp()J

    move-result-wide v2

    sub-long v2, p1, v2

    const-wide/16 v4, 0x2710

    cmp-long p3, v2, v4

    if-lez p3, :cond_1

    .line 57
    new-instance p3, Lcom/android/systemui/appops/PermissionFlag;

    invoke-direct {p0, v0}, Lcom/android/systemui/appops/PermissionFlagsCache;->getFlags(Lcom/android/systemui/appops/PermissionFlagKey;)I

    move-result v1

    invoke-direct {p3, v1, p1, p2}, Lcom/android/systemui/appops/PermissionFlag;-><init>(IJ)V

    .line 58
    iget-object p0, p0, Lcom/android/systemui/appops/PermissionFlagsCache;->permissionFlagsCache:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-virtual {p3}, Lcom/android/systemui/appops/PermissionFlag;->getFlag()I

    move-result p0

    return p0

    .line 61
    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui/appops/PermissionFlag;->getFlag()I

    move-result p0

    return p0
.end method
