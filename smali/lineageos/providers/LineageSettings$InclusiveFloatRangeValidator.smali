.class final Llineageos/providers/LineageSettings$InclusiveFloatRangeValidator;
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
    name = "InclusiveFloatRangeValidator"
.end annotation


# instance fields
.field private final mMax:F

.field private final mMin:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 424
    iput p1, p0, Llineageos/providers/LineageSettings$InclusiveFloatRangeValidator;->mMin:F

    .line 425
    iput p2, p0, Llineageos/providers/LineageSettings$InclusiveFloatRangeValidator;->mMax:F

    return-void
.end method
