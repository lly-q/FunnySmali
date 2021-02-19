.class Llineageos/providers/LineageSettings$Secure$1;
.super Ljava/lang/Object;
.source "LineageSettings.java"

# interfaces
.implements Llineageos/providers/LineageSettings$Validator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llineageos/providers/LineageSettings$Secure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mDelimiter:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 3247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "|"

    .line 3248
    iput-object v0, p0, Llineageos/providers/LineageSettings$Secure$1;->mDelimiter:Ljava/lang/String;

    return-void
.end method
