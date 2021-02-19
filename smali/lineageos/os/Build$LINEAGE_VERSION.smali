.class public Llineageos/os/Build$LINEAGE_VERSION;
.super Ljava/lang/Object;
.source "Build.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llineageos/os/Build;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LINEAGE_VERSION"
.end annotation


# static fields
.field public static final SDK_INT:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ro.lineage.build.version.plat.sdk"

    const/4 v1, 0x0

    .line 59
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Llineageos/os/Build$LINEAGE_VERSION;->SDK_INT:I

    return-void
.end method
