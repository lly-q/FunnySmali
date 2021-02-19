.class public final enum Llineageos/app/ProfileGroup$Mode;
.super Ljava/lang/Enum;
.source "ProfileGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llineageos/app/ProfileGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Llineageos/app/ProfileGroup$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Llineageos/app/ProfileGroup$Mode;

.field public static final enum DEFAULT:Llineageos/app/ProfileGroup$Mode;

.field public static final enum OVERRIDE:Llineageos/app/ProfileGroup$Mode;

.field public static final enum SUPPRESS:Llineageos/app/ProfileGroup$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 319
    new-instance v0, Llineageos/app/ProfileGroup$Mode;

    const/4 v1, 0x0

    const-string v2, "SUPPRESS"

    invoke-direct {v0, v2, v1}, Llineageos/app/ProfileGroup$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llineageos/app/ProfileGroup$Mode;->SUPPRESS:Llineageos/app/ProfileGroup$Mode;

    new-instance v0, Llineageos/app/ProfileGroup$Mode;

    const/4 v2, 0x1

    const-string v3, "DEFAULT"

    invoke-direct {v0, v3, v2}, Llineageos/app/ProfileGroup$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llineageos/app/ProfileGroup$Mode;->DEFAULT:Llineageos/app/ProfileGroup$Mode;

    new-instance v0, Llineageos/app/ProfileGroup$Mode;

    const/4 v3, 0x2

    const-string v4, "OVERRIDE"

    invoke-direct {v0, v4, v3}, Llineageos/app/ProfileGroup$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llineageos/app/ProfileGroup$Mode;->OVERRIDE:Llineageos/app/ProfileGroup$Mode;

    const/4 v0, 0x3

    new-array v0, v0, [Llineageos/app/ProfileGroup$Mode;

    .line 318
    sget-object v4, Llineageos/app/ProfileGroup$Mode;->SUPPRESS:Llineageos/app/ProfileGroup$Mode;

    aput-object v4, v0, v1

    sget-object v1, Llineageos/app/ProfileGroup$Mode;->DEFAULT:Llineageos/app/ProfileGroup$Mode;

    aput-object v1, v0, v2

    sget-object v1, Llineageos/app/ProfileGroup$Mode;->OVERRIDE:Llineageos/app/ProfileGroup$Mode;

    aput-object v1, v0, v3

    sput-object v0, Llineageos/app/ProfileGroup$Mode;->$VALUES:[Llineageos/app/ProfileGroup$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 318
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Llineageos/app/ProfileGroup$Mode;
    .locals 1

    .line 318
    const-class v0, Llineageos/app/ProfileGroup$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Llineageos/app/ProfileGroup$Mode;

    return-object p0
.end method

.method public static values()[Llineageos/app/ProfileGroup$Mode;
    .locals 1

    .line 318
    sget-object v0, Llineageos/app/ProfileGroup$Mode;->$VALUES:[Llineageos/app/ProfileGroup$Mode;

    invoke-virtual {v0}, [Llineageos/app/ProfileGroup$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Llineageos/app/ProfileGroup$Mode;

    return-object v0
.end method
