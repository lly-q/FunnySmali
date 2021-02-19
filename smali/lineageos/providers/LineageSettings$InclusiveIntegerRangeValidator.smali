.class final Llineageos/providers/LineageSettings$InclusiveIntegerRangeValidator;
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
    name = "InclusiveIntegerRangeValidator"
.end annotation


# instance fields
.field private final mMax:I

.field private final mMin:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    iput p1, p0, Llineageos/providers/LineageSettings$InclusiveIntegerRangeValidator;->mMin:I

    .line 405
    iput p2, p0, Llineageos/providers/LineageSettings$InclusiveIntegerRangeValidator;->mMax:I

    return-void
.end method
