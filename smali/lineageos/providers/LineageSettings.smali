.class public final Llineageos/providers/LineageSettings;
.super Ljava/lang/Object;
.source "LineageSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llineageos/providers/LineageSettings$Global;,
        Llineageos/providers/LineageSettings$Secure;,
        Llineageos/providers/LineageSettings$System;,
        Llineageos/providers/LineageSettings$DelimitedListValidator;,
        Llineageos/providers/LineageSettings$InclusiveFloatRangeValidator;,
        Llineageos/providers/LineageSettings$InclusiveIntegerRangeValidator;,
        Llineageos/providers/LineageSettings$DiscreteValueValidator;,
        Llineageos/providers/LineageSettings$Validator;,
        Llineageos/providers/LineageSettings$NameValueCache;
    }
.end annotation


# static fields
.field private static final sAlwaysTrueValidator:Llineageos/providers/LineageSettings$Validator;

.field private static final sBooleanValidator:Llineageos/providers/LineageSettings$Validator;

.field private static final sColorValidator:Llineageos/providers/LineageSettings$Validator;

.field private static final sNonNegativeIntegerValidator:Llineageos/providers/LineageSettings$Validator;

.field private static final sNonNullStringValidator:Llineageos/providers/LineageSettings$Validator;

.field private static final sUriValidator:Llineageos/providers/LineageSettings$Validator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 343
    new-instance v0, Llineageos/providers/LineageSettings$DiscreteValueValidator;

    const-string v1, "0"

    const-string v2, "1"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Llineageos/providers/LineageSettings$DiscreteValueValidator;-><init>([Ljava/lang/String;)V

    sput-object v0, Llineageos/providers/LineageSettings;->sBooleanValidator:Llineageos/providers/LineageSettings$Validator;

    .line 346
    new-instance v0, Llineageos/providers/LineageSettings$1;

    invoke-direct {v0}, Llineageos/providers/LineageSettings$1;-><init>()V

    sput-object v0, Llineageos/providers/LineageSettings;->sNonNegativeIntegerValidator:Llineageos/providers/LineageSettings$Validator;

    .line 357
    new-instance v0, Llineageos/providers/LineageSettings$2;

    invoke-direct {v0}, Llineageos/providers/LineageSettings$2;-><init>()V

    sput-object v0, Llineageos/providers/LineageSettings;->sUriValidator:Llineageos/providers/LineageSettings$Validator;

    .line 369
    new-instance v0, Llineageos/providers/LineageSettings$InclusiveIntegerRangeValidator;

    const/high16 v1, -0x80000000

    const v2, 0x7fffffff

    invoke-direct {v0, v1, v2}, Llineageos/providers/LineageSettings$InclusiveIntegerRangeValidator;-><init>(II)V

    sput-object v0, Llineageos/providers/LineageSettings;->sColorValidator:Llineageos/providers/LineageSettings$Validator;

    .line 372
    new-instance v0, Llineageos/providers/LineageSettings$3;

    invoke-direct {v0}, Llineageos/providers/LineageSettings$3;-><init>()V

    sput-object v0, Llineageos/providers/LineageSettings;->sAlwaysTrueValidator:Llineageos/providers/LineageSettings$Validator;

    .line 379
    new-instance v0, Llineageos/providers/LineageSettings$4;

    invoke-direct {v0}, Llineageos/providers/LineageSettings$4;-><init>()V

    sput-object v0, Llineageos/providers/LineageSettings;->sNonNullStringValidator:Llineageos/providers/LineageSettings$Validator;

    return-void
.end method

.method static synthetic access$000()Llineageos/providers/LineageSettings$Validator;
    .locals 1

    .line 52
    sget-object v0, Llineageos/providers/LineageSettings;->sBooleanValidator:Llineageos/providers/LineageSettings$Validator;

    return-object v0
.end method

.method static synthetic access$100()Llineageos/providers/LineageSettings$Validator;
    .locals 1

    .line 52
    sget-object v0, Llineageos/providers/LineageSettings;->sColorValidator:Llineageos/providers/LineageSettings$Validator;

    return-object v0
.end method

.method static synthetic access$200()Llineageos/providers/LineageSettings$Validator;
    .locals 1

    .line 52
    sget-object v0, Llineageos/providers/LineageSettings;->sNonNullStringValidator:Llineageos/providers/LineageSettings$Validator;

    return-object v0
.end method

.method static synthetic access$300()Llineageos/providers/LineageSettings$Validator;
    .locals 1

    .line 52
    sget-object v0, Llineageos/providers/LineageSettings;->sAlwaysTrueValidator:Llineageos/providers/LineageSettings$Validator;

    return-object v0
.end method

.method static synthetic access$400()Llineageos/providers/LineageSettings$Validator;
    .locals 1

    .line 52
    sget-object v0, Llineageos/providers/LineageSettings;->sNonNegativeIntegerValidator:Llineageos/providers/LineageSettings$Validator;

    return-object v0
.end method
