.class public Llineageos/os/Build;
.super Ljava/lang/Object;
.source "Build.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llineageos/os/Build$LINEAGE_VERSION;
    }
.end annotation


# static fields
.field public static final LINEAGEOS_DISPLAY_VERSION:Ljava/lang/String;

.field public static final LINEAGEOS_VERSION:Ljava/lang/String;

.field private static final sdkMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "ro.exthm.version"

    .line 31
    invoke-static {v0}, Llineageos/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Llineageos/os/Build;->LINEAGEOS_VERSION:Ljava/lang/String;

    const-string v0, "ro.exthm.display.version"

    .line 34
    invoke-static {v0}, Llineageos/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Llineageos/os/Build;->LINEAGEOS_DISPLAY_VERSION:Ljava/lang/String;

    .line 39
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Llineageos/os/Build;->sdkMap:Landroid/util/SparseArray;

    .line 40
    sget-object v0, Llineageos/os/Build;->sdkMap:Landroid/util/SparseArray;

    const/4 v1, 0x1

    const-string v2, "Apricot"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 41
    sget-object v0, Llineageos/os/Build;->sdkMap:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const-string v2, "Boysenberry"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 42
    sget-object v0, Llineageos/os/Build;->sdkMap:Landroid/util/SparseArray;

    const/4 v1, 0x3

    const-string v2, "Cantaloupe"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 43
    sget-object v0, Llineageos/os/Build;->sdkMap:Landroid/util/SparseArray;

    const/4 v1, 0x4

    const-string v2, "Dragon Fruit"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 44
    sget-object v0, Llineageos/os/Build;->sdkMap:Landroid/util/SparseArray;

    const/4 v1, 0x5

    const-string v2, "Elderberry"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 45
    sget-object v0, Llineageos/os/Build;->sdkMap:Landroid/util/SparseArray;

    const/4 v1, 0x6

    const-string v2, "Fig"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 46
    sget-object v0, Llineageos/os/Build;->sdkMap:Landroid/util/SparseArray;

    const/4 v1, 0x7

    const-string v2, "Guava"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 47
    sget-object v0, Llineageos/os/Build;->sdkMap:Landroid/util/SparseArray;

    const/16 v1, 0x8

    const-string v2, "Hackberry"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 48
    sget-object v0, Llineageos/os/Build;->sdkMap:Landroid/util/SparseArray;

    const/16 v1, 0x9

    const-string v2, "Ilama"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public static getNameForSDKInt(I)Ljava/lang/String;
    .locals 1

    .line 190
    sget-object v0, Llineageos/os/Build;->sdkMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 191
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "unknown"

    :cond_0
    return-object p0
.end method

.method private static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "unknown"

    .line 198
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
