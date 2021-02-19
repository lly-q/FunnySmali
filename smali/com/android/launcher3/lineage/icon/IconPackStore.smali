.class public final Lcom/android/launcher3/lineage/icon/IconPackStore;
.super Ljava/lang/Object;
.source "IconPackStore.java"


# instance fields
.field private context:Landroid/content/Context;

.field private prefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/launcher3/lineage/icon/IconPackStore;->context:Landroid/content/Context;

    const-string v0, "com.android.launcher3.prefs"

    const/4 v1, 0x0

    .line 34
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/lineage/icon/IconPackStore;->prefs:Landroid/content/SharedPreferences;

    return-void
.end method

.method private getDefaultIconPack()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object p0, p0, Lcom/android/launcher3/lineage/icon/IconPackStore;->context:Landroid/content/Context;

    sget v0, Lcom/android/launcher3/icons/R$string;->icon_pack_default_pkg:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getCurrent()Ljava/lang/String;
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/android/launcher3/lineage/icon/IconPackStore;->prefs:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/android/launcher3/lineage/icon/IconPackStore;->getDefaultIconPack()Ljava/lang/String;

    move-result-object p0

    const-string v1, "pref_iconPackPackage"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isUsingSystemIcons()Z
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/android/launcher3/lineage/icon/IconPackStore;->getCurrent()Ljava/lang/String;

    move-result-object p0

    const-string v0, "android"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
