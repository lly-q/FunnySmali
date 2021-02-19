.class public final enum Lorg/lineageos/internal/util/DeviceKeysConstants$Action;
.super Ljava/lang/Enum;
.source "DeviceKeysConstants.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/lineageos/internal/util/DeviceKeysConstants$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

.field public static final enum APP_SWITCH:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

.field public static final enum IN_APP_SEARCH:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

.field public static final enum LAST_APP:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

.field public static final enum LAUNCH_CAMERA:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

.field public static final enum MENU:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

.field public static final enum NOTHING:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

.field public static final enum SEARCH:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

.field public static final enum SINGLE_HAND_LEFT:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

.field public static final enum SINGLE_HAND_RIGHT:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

.field public static final enum SLEEP:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

.field public static final enum SPLIT_SCREEN:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

.field public static final enum VOICE_SEARCH:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 29
    new-instance v0, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    const/4 v1, 0x0

    const-string v2, "NOTHING"

    invoke-direct {v0, v2, v1}, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->NOTHING:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    .line 30
    new-instance v0, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    const/4 v2, 0x1

    const-string v3, "MENU"

    invoke-direct {v0, v3, v2}, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->MENU:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    .line 31
    new-instance v0, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    const/4 v3, 0x2

    const-string v4, "APP_SWITCH"

    invoke-direct {v0, v4, v3}, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->APP_SWITCH:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    .line 32
    new-instance v0, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    const/4 v4, 0x3

    const-string v5, "SEARCH"

    invoke-direct {v0, v5, v4}, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->SEARCH:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    .line 33
    new-instance v0, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    const/4 v5, 0x4

    const-string v6, "VOICE_SEARCH"

    invoke-direct {v0, v6, v5}, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->VOICE_SEARCH:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    .line 34
    new-instance v0, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    const/4 v6, 0x5

    const-string v7, "IN_APP_SEARCH"

    invoke-direct {v0, v7, v6}, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->IN_APP_SEARCH:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    .line 35
    new-instance v0, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    const/4 v7, 0x6

    const-string v8, "LAUNCH_CAMERA"

    invoke-direct {v0, v8, v7}, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->LAUNCH_CAMERA:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    .line 36
    new-instance v0, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    const/4 v8, 0x7

    const-string v9, "SLEEP"

    invoke-direct {v0, v9, v8}, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->SLEEP:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    .line 37
    new-instance v0, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    const/16 v9, 0x8

    const-string v10, "LAST_APP"

    invoke-direct {v0, v10, v9}, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->LAST_APP:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    .line 38
    new-instance v0, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    const/16 v10, 0x9

    const-string v11, "SPLIT_SCREEN"

    invoke-direct {v0, v11, v10}, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->SPLIT_SCREEN:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    .line 39
    new-instance v0, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    const/16 v11, 0xa

    const-string v12, "SINGLE_HAND_LEFT"

    invoke-direct {v0, v12, v11}, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->SINGLE_HAND_LEFT:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    .line 40
    new-instance v0, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    const/16 v12, 0xb

    const-string v13, "SINGLE_HAND_RIGHT"

    invoke-direct {v0, v13, v12}, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->SINGLE_HAND_RIGHT:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    const/16 v0, 0xc

    new-array v0, v0, [Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    .line 28
    sget-object v13, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->NOTHING:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    aput-object v13, v0, v1

    sget-object v1, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->MENU:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    aput-object v1, v0, v2

    sget-object v1, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->APP_SWITCH:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    aput-object v1, v0, v3

    sget-object v1, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->SEARCH:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    aput-object v1, v0, v4

    sget-object v1, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->VOICE_SEARCH:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    aput-object v1, v0, v5

    sget-object v1, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->IN_APP_SEARCH:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    aput-object v1, v0, v6

    sget-object v1, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->LAUNCH_CAMERA:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    aput-object v1, v0, v7

    sget-object v1, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->SLEEP:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    aput-object v1, v0, v8

    sget-object v1, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->LAST_APP:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    aput-object v1, v0, v9

    sget-object v1, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->SPLIT_SCREEN:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    aput-object v1, v0, v10

    sget-object v1, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->SINGLE_HAND_LEFT:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    aput-object v1, v0, v11

    sget-object v1, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->SINGLE_HAND_RIGHT:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    aput-object v1, v0, v12

    sput-object v0, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->$VALUES:[Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromIntSafe(I)Lorg/lineageos/internal/util/DeviceKeysConstants$Action;
    .locals 1

    .line 43
    sget-object v0, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->NOTHING:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-lt p0, v0, :cond_1

    invoke-static {}, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->values()[Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    move-result-object v0

    array-length v0, v0

    if-le p0, v0, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    invoke-static {}, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->values()[Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0

    .line 44
    :cond_1
    :goto_0
    sget-object p0, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->NOTHING:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/lineageos/internal/util/DeviceKeysConstants$Action;
    .locals 1

    .line 28
    const-class v0, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    return-object p0
.end method

.method public static values()[Lorg/lineageos/internal/util/DeviceKeysConstants$Action;
    .locals 1

    .line 28
    sget-object v0, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->$VALUES:[Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    invoke-virtual {v0}, [Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    return-object v0
.end method
