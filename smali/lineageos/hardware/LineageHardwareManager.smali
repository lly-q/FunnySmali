.class public final Llineageos/hardware/LineageHardwareManager;
.super Ljava/lang/Object;
.source "LineageHardwareManager.java"


# static fields
.field private static final BOOLEAN_FEATURES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final FEATURE_ADAPTIVE_BACKLIGHT:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final FEATURE_AUTO_CONTRAST:I = 0x1000
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final FEATURE_COLOR_BALANCE:I = 0x20000
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final FEATURE_COLOR_ENHANCEMENT:I = 0x2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final FEATURE_DISPLAY_COLOR_CALIBRATION:I = 0x4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final FEATURE_DISPLAY_MODES:I = 0x2000
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final FEATURE_HIGH_TOUCH_SENSITIVITY:I = 0x10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final FEATURE_KEY_DISABLE:I = 0x20
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final FEATURE_PICTURE_ADJUSTMENT:I = 0x40000
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final FEATURE_READING_ENHANCEMENT:I = 0x4000
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final FEATURE_SUNLIGHT_ENHANCEMENT:I = 0x100
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final FEATURE_TOUCHSCREEN_GESTURES:I = 0x80000
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final FEATURE_TOUCH_HOVERING:I = 0x800
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final FEATURE_VIBRATOR:I = 0x400
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static sLineageHardwareManagerInstance:Llineageos/hardware/LineageHardwareManager;

.field private static sService:Llineageos/hardware/ILineageHardwareService;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDisplayModeMappings:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mFilterDisplayModes:Z

.field private mHIDLMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/hidl/base/V1_0/IBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x1

    .line 155
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/16 v2, 0x1000

    .line 156
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 157
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 158
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/16 v1, 0x20

    .line 159
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/16 v1, 0x100

    .line 160
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/16 v1, 0x800

    .line 161
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/16 v1, 0x4000

    .line 162
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 154
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Llineageos/hardware/LineageHardwareManager;->BOOLEAN_FEATURES:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Llineageos/hardware/LineageHardwareManager;->mDisplayModeMappings:Landroid/util/ArrayMap;

    .line 174
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Llineageos/hardware/LineageHardwareManager;->mHIDLMap:Ljava/util/HashMap;

    .line 180
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 182
    iput-object v0, p0, Llineageos/hardware/LineageHardwareManager;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 184
    :cond_0
    iput-object p1, p0, Llineageos/hardware/LineageHardwareManager;->mContext:Landroid/content/Context;

    .line 186
    :goto_0
    invoke-static {}, Llineageos/hardware/LineageHardwareManager;->getService()Llineageos/hardware/ILineageHardwareService;

    move-result-object v0

    sput-object v0, Llineageos/hardware/LineageHardwareManager;->sService:Llineageos/hardware/ILineageHardwareService;

    .line 188
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "org.lineageos.hardware"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 189
    invoke-direct {p0}, Llineageos/hardware/LineageHardwareManager;->checkService()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "LineageHardwareManager"

    const-string v0, "Unable to get LineageHardwareService. The service either crashed, was not started, or the interface has been called to early in SystemServer init"

    .line 190
    invoke-static {p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_1
    iget-object p1, p0, Llineageos/hardware/LineageHardwareManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x3f030002

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 197
    array-length v0, p1

    if-lez v0, :cond_3

    .line 198
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_3

    aget-object v3, p1, v2

    const-string v4, ":"

    .line 199
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 200
    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 201
    iget-object v4, p0, Llineageos/hardware/LineageHardwareManager;->mDisplayModeMappings:Landroid/util/ArrayMap;

    aget-object v5, v3, v1

    const/4 v6, 0x1

    aget-object v3, v3, v6

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 205
    :cond_3
    iget-object p1, p0, Llineageos/hardware/LineageHardwareManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x3f040005

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Llineageos/hardware/LineageHardwareManager;->mFilterDisplayModes:Z

    return-void
.end method

.method private checkService()Z
    .locals 1

    .line 773
    sget-object p0, Llineageos/hardware/LineageHardwareManager;->sService:Llineageos/hardware/ILineageHardwareService;

    if-nez p0, :cond_0

    const-string p0, "LineageHardwareManager"

    const-string v0, "not connected to LineageHardwareManagerService"

    .line 774
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private getHIDLService(I)Landroid/hidl/base/V1_0/IBase;
    .locals 1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 290
    :sswitch_0
    :try_start_0
    invoke-static {p0}, Lvendor/lineage/touch/V1_0/ITouchscreenGesture;->getService(Z)Lvendor/lineage/touch/V1_0/ITouchscreenGesture;

    move-result-object p0

    return-object p0

    .line 278
    :sswitch_1
    invoke-static {p0}, Lvendor/lineage/livedisplay/V2_0/IPictureAdjustment;->getService(Z)Lvendor/lineage/livedisplay/V2_0/IPictureAdjustment;

    move-result-object p0

    return-object p0

    .line 270
    :sswitch_2
    invoke-static {p0}, Lvendor/lineage/livedisplay/V2_0/IColorBalance;->getService(Z)Lvendor/lineage/livedisplay/V2_0/IColorBalance;

    move-result-object p0

    return-object p0

    .line 280
    :sswitch_3
    invoke-static {p0}, Lvendor/lineage/livedisplay/V2_0/IReadingEnhancement;->getService(Z)Lvendor/lineage/livedisplay/V2_0/IReadingEnhancement;

    move-result-object p0

    return-object p0

    .line 276
    :sswitch_4
    invoke-static {p0}, Lvendor/lineage/livedisplay/V2_0/IDisplayModes;->getService(Z)Lvendor/lineage/livedisplay/V2_0/IDisplayModes;

    move-result-object p0

    return-object p0

    .line 268
    :sswitch_5
    invoke-static {p0}, Lvendor/lineage/livedisplay/V2_0/IAutoContrast;->getService(Z)Lvendor/lineage/livedisplay/V2_0/IAutoContrast;

    move-result-object p0

    return-object p0

    .line 288
    :sswitch_6
    invoke-static {p0}, Lvendor/lineage/touch/V1_0/IStylusMode;->getService(Z)Lvendor/lineage/touch/V1_0/IStylusMode;

    move-result-object p0

    return-object p0

    .line 282
    :sswitch_7
    invoke-static {p0}, Lvendor/lineage/livedisplay/V2_0/ISunlightEnhancement;->getService(Z)Lvendor/lineage/livedisplay/V2_0/ISunlightEnhancement;

    move-result-object p0

    return-object p0

    .line 286
    :sswitch_8
    invoke-static {p0}, Lvendor/lineage/touch/V1_0/IKeyDisabler;->getService(Z)Lvendor/lineage/touch/V1_0/IKeyDisabler;

    move-result-object p0

    return-object p0

    .line 284
    :sswitch_9
    invoke-static {p0}, Lvendor/lineage/touch/V1_0/IGloveMode;->getService(Z)Lvendor/lineage/touch/V1_0/IGloveMode;

    move-result-object p0

    return-object p0

    .line 274
    :sswitch_a
    invoke-static {p0}, Lvendor/lineage/livedisplay/V2_0/IDisplayColorCalibration;->getService(Z)Lvendor/lineage/livedisplay/V2_0/IDisplayColorCalibration;

    move-result-object p0

    return-object p0

    .line 272
    :cond_0
    invoke-static {p0}, Lvendor/lineage/livedisplay/V2_0/IColorEnhancement;->getService(Z)Lvendor/lineage/livedisplay/V2_0/IColorEnhancement;

    move-result-object p0

    return-object p0

    .line 266
    :cond_1
    invoke-static {p0}, Lvendor/lineage/livedisplay/V2_0/IAdaptiveBacklight;->getService(Z)Lvendor/lineage/livedisplay/V2_0/IAdaptiveBacklight;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :goto_0
    const/4 p0, 0x0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_a
        0x10 -> :sswitch_9
        0x20 -> :sswitch_8
        0x100 -> :sswitch_7
        0x800 -> :sswitch_6
        0x1000 -> :sswitch_5
        0x2000 -> :sswitch_4
        0x4000 -> :sswitch_3
        0x20000 -> :sswitch_2
        0x40000 -> :sswitch_1
        0x80000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getInstance(Landroid/content/Context;)Llineageos/hardware/LineageHardwareManager;
    .locals 1

    .line 215
    sget-object v0, Llineageos/hardware/LineageHardwareManager;->sLineageHardwareManagerInstance:Llineageos/hardware/LineageHardwareManager;

    if-nez v0, :cond_0

    .line 216
    new-instance v0, Llineageos/hardware/LineageHardwareManager;

    invoke-direct {v0, p0}, Llineageos/hardware/LineageHardwareManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Llineageos/hardware/LineageHardwareManager;->sLineageHardwareManagerInstance:Llineageos/hardware/LineageHardwareManager;

    .line 218
    :cond_0
    sget-object p0, Llineageos/hardware/LineageHardwareManager;->sLineageHardwareManagerInstance:Llineageos/hardware/LineageHardwareManager;

    return-object p0
.end method

.method public static getService()Llineageos/hardware/ILineageHardwareService;
    .locals 1

    .line 223
    sget-object v0, Llineageos/hardware/LineageHardwareManager;->sService:Llineageos/hardware/ILineageHardwareService;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "lineagehardware"

    .line 226
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 228
    invoke-static {v0}, Llineageos/hardware/ILineageHardwareService$Stub;->asInterface(Landroid/os/IBinder;)Llineageos/hardware/ILineageHardwareService;

    move-result-object v0

    sput-object v0, Llineageos/hardware/LineageHardwareManager;->sService:Llineageos/hardware/ILineageHardwareService;

    .line 229
    sget-object v0, Llineageos/hardware/LineageHardwareManager;->sService:Llineageos/hardware/ILineageHardwareService;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private isSupportedHIDL(I)Z
    .locals 3

    .line 246
    iget-object v0, p0, Llineageos/hardware/LineageHardwareManager;->mHIDLMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    iget-object v0, p0, Llineageos/hardware/LineageHardwareManager;->mHIDLMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1}, Llineageos/hardware/LineageHardwareManager;->getHIDLService(I)Landroid/hidl/base/V1_0/IBase;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    :cond_0
    iget-object p0, p0, Llineageos/hardware/LineageHardwareManager;->mHIDLMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSupportedHWC2(I)Z
    .locals 1

    const/4 v0, 0x0

    .line 254
    :try_start_0
    invoke-direct {p0}, Llineageos/hardware/LineageHardwareManager;->checkService()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 255
    sget-object p0, Llineageos/hardware/LineageHardwareManager;->sService:Llineageos/hardware/ILineageHardwareService;

    invoke-interface {p0}, Llineageos/hardware/ILineageHardwareService;->getSupportedFeatures()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr p0, p1

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method


# virtual methods
.method public get(I)Z
    .locals 2

    .line 327
    sget-object v0, Llineageos/hardware/LineageHardwareManager;->BOOLEAN_FEATURES:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 332
    :try_start_0
    invoke-direct {p0, p1}, Llineageos/hardware/LineageHardwareManager;->isSupportedHIDL(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 333
    iget-object p0, p0, Llineageos/hardware/LineageHardwareManager;->mHIDLMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hidl/base/V1_0/IBase;

    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    const/4 v0, 0x2

    if-eq p1, v0, :cond_6

    const/16 v0, 0x10

    if-eq p1, v0, :cond_5

    const/16 v0, 0x20

    if-eq p1, v0, :cond_4

    const/16 v0, 0x100

    if-eq p1, v0, :cond_3

    const/16 v0, 0x800

    if-eq p1, v0, :cond_2

    const/16 v0, 0x1000

    if-eq p1, v0, :cond_1

    const/16 v0, 0x4000

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 357
    :cond_0
    check-cast p0, Lvendor/lineage/livedisplay/V2_0/IReadingEnhancement;

    .line 358
    invoke-interface {p0}, Lvendor/lineage/livedisplay/V2_0/IReadingEnhancement;->isEnabled()Z

    move-result p0

    return p0

    .line 339
    :cond_1
    check-cast p0, Lvendor/lineage/livedisplay/V2_0/IAutoContrast;

    .line 340
    invoke-interface {p0}, Lvendor/lineage/livedisplay/V2_0/IAutoContrast;->isEnabled()Z

    move-result p0

    return p0

    .line 354
    :cond_2
    check-cast p0, Lvendor/lineage/touch/V1_0/IStylusMode;

    .line 355
    invoke-interface {p0}, Lvendor/lineage/touch/V1_0/IStylusMode;->isEnabled()Z

    move-result p0

    return p0

    .line 351
    :cond_3
    check-cast p0, Lvendor/lineage/livedisplay/V2_0/ISunlightEnhancement;

    .line 352
    invoke-interface {p0}, Lvendor/lineage/livedisplay/V2_0/ISunlightEnhancement;->isEnabled()Z

    move-result p0

    return p0

    .line 348
    :cond_4
    check-cast p0, Lvendor/lineage/touch/V1_0/IKeyDisabler;

    .line 349
    invoke-interface {p0}, Lvendor/lineage/touch/V1_0/IKeyDisabler;->isEnabled()Z

    move-result p0

    return p0

    .line 345
    :cond_5
    check-cast p0, Lvendor/lineage/touch/V1_0/IGloveMode;

    .line 346
    invoke-interface {p0}, Lvendor/lineage/touch/V1_0/IGloveMode;->isEnabled()Z

    move-result p0

    return p0

    .line 342
    :cond_6
    check-cast p0, Lvendor/lineage/livedisplay/V2_0/IColorEnhancement;

    .line 343
    invoke-interface {p0}, Lvendor/lineage/livedisplay/V2_0/IColorEnhancement;->isEnabled()Z

    move-result p0

    return p0

    .line 336
    :cond_7
    check-cast p0, Lvendor/lineage/livedisplay/V2_0/IAdaptiveBacklight;

    .line 337
    invoke-interface {p0}, Lvendor/lineage/livedisplay/V2_0/IAdaptiveBacklight;->isEnabled()Z

    move-result p0

    return p0

    .line 360
    :cond_8
    invoke-direct {p0}, Llineageos/hardware/LineageHardwareManager;->checkService()Z

    move-result p0

    if-eqz p0, :cond_9

    .line 361
    sget-object p0, Llineageos/hardware/LineageHardwareManager;->sService:Llineageos/hardware/ILineageHardwareService;

    invoke-interface {p0, p1}, Llineageos/hardware/ILineageHardwareService;->get(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_9
    :goto_0
    const/4 p0, 0x0

    return p0

    .line 328
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not a boolean"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isSupported(I)Z
    .locals 1

    .line 242
    invoke-direct {p0, p1}, Llineageos/hardware/LineageHardwareManager;->isSupportedHIDL(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Llineageos/hardware/LineageHardwareManager;->isSupportedHWC2(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isSupported(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "FEATURE_"

    .line 303
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 307
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 309
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Llineageos/hardware/LineageHardwareManager;->isSupported(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 312
    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LineageHardwareManager"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return v1
.end method

.method public set(IZ)Z
    .locals 2

    .line 379
    sget-object v0, Llineageos/hardware/LineageHardwareManager;->BOOLEAN_FEATURES:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 384
    :try_start_0
    invoke-direct {p0, p1}, Llineageos/hardware/LineageHardwareManager;->isSupportedHIDL(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 385
    iget-object p0, p0, Llineageos/hardware/LineageHardwareManager;->mHIDLMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hidl/base/V1_0/IBase;

    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    const/4 v0, 0x2

    if-eq p1, v0, :cond_6

    const/16 v0, 0x10

    if-eq p1, v0, :cond_5

    const/16 v0, 0x20

    if-eq p1, v0, :cond_4

    const/16 v0, 0x100

    if-eq p1, v0, :cond_3

    const/16 v0, 0x800

    if-eq p1, v0, :cond_2

    const/16 v0, 0x1000

    if-eq p1, v0, :cond_1

    const/16 v0, 0x4000

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 409
    :cond_0
    check-cast p0, Lvendor/lineage/livedisplay/V2_0/IReadingEnhancement;

    .line 410
    invoke-interface {p0, p2}, Lvendor/lineage/livedisplay/V2_0/IReadingEnhancement;->setEnabled(Z)Z

    move-result p0

    return p0

    .line 391
    :cond_1
    check-cast p0, Lvendor/lineage/livedisplay/V2_0/IAutoContrast;

    .line 392
    invoke-interface {p0, p2}, Lvendor/lineage/livedisplay/V2_0/IAutoContrast;->setEnabled(Z)Z

    move-result p0

    return p0

    .line 406
    :cond_2
    check-cast p0, Lvendor/lineage/touch/V1_0/IStylusMode;

    .line 407
    invoke-interface {p0, p2}, Lvendor/lineage/touch/V1_0/IStylusMode;->setEnabled(Z)Z

    move-result p0

    return p0

    .line 403
    :cond_3
    check-cast p0, Lvendor/lineage/livedisplay/V2_0/ISunlightEnhancement;

    .line 404
    invoke-interface {p0, p2}, Lvendor/lineage/livedisplay/V2_0/ISunlightEnhancement;->setEnabled(Z)Z

    move-result p0

    return p0

    .line 400
    :cond_4
    check-cast p0, Lvendor/lineage/touch/V1_0/IKeyDisabler;

    .line 401
    invoke-interface {p0, p2}, Lvendor/lineage/touch/V1_0/IKeyDisabler;->setEnabled(Z)Z

    move-result p0

    return p0

    .line 397
    :cond_5
    check-cast p0, Lvendor/lineage/touch/V1_0/IGloveMode;

    .line 398
    invoke-interface {p0, p2}, Lvendor/lineage/touch/V1_0/IGloveMode;->setEnabled(Z)Z

    move-result p0

    return p0

    .line 394
    :cond_6
    check-cast p0, Lvendor/lineage/livedisplay/V2_0/IColorEnhancement;

    .line 395
    invoke-interface {p0, p2}, Lvendor/lineage/livedisplay/V2_0/IColorEnhancement;->setEnabled(Z)Z

    move-result p0

    return p0

    .line 388
    :cond_7
    check-cast p0, Lvendor/lineage/livedisplay/V2_0/IAdaptiveBacklight;

    .line 389
    invoke-interface {p0, p2}, Lvendor/lineage/livedisplay/V2_0/IAdaptiveBacklight;->setEnabled(Z)Z

    move-result p0

    return p0

    .line 412
    :cond_8
    invoke-direct {p0}, Llineageos/hardware/LineageHardwareManager;->checkService()Z

    move-result p0

    if-eqz p0, :cond_9

    .line 413
    sget-object p0, Llineageos/hardware/LineageHardwareManager;->sService:Llineageos/hardware/ILineageHardwareService;

    invoke-interface {p0, p1, p2}, Llineageos/hardware/ILineageHardwareService;->set(IZ)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_9
    :goto_0
    const/4 p0, 0x0

    return p0

    .line 380
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not a boolean"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
