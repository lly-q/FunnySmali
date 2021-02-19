.class final Llineageos/providers/LineageSettings$DelimitedListValidator;
.super Ljava/lang/Object;
.source "LineageSettings.java"

# interfaces
.implements Llineageos/providers/LineageSettings$Validator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llineageos/providers/LineageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DelimitedListValidator"
.end annotation


# instance fields
.field private final mAllowEmptyList:Z

.field private final mDelimiter:Ljava/lang/String;

.field private final mValidValueSet:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    new-instance v0, Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Llineageos/providers/LineageSettings$DelimitedListValidator;->mValidValueSet:Landroid/util/ArraySet;

    .line 447
    iput-object p2, p0, Llineageos/providers/LineageSettings$DelimitedListValidator;->mDelimiter:Ljava/lang/String;

    .line 448
    iput-boolean p3, p0, Llineageos/providers/LineageSettings$DelimitedListValidator;->mAllowEmptyList:Z

    return-void
.end method
