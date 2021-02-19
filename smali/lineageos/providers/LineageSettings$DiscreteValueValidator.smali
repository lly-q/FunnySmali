.class final Llineageos/providers/LineageSettings$DiscreteValueValidator;
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
    name = "DiscreteValueValidator"
.end annotation


# instance fields
.field private final mValues:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 0

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 390
    iput-object p1, p0, Llineageos/providers/LineageSettings$DiscreteValueValidator;->mValues:[Ljava/lang/String;

    return-void
.end method
