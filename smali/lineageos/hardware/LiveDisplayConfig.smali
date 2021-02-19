.class public Llineageos/hardware/LiveDisplayConfig;
.super Ljava/lang/Object;
.source "LiveDisplayConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Llineageos/hardware/LiveDisplayConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAllModes:Ljava/util/BitSet;

.field private final mCapabilities:Ljava/util/BitSet;

.field private final mColorBalanceRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mColorTemperatureRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mContrastRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefaultAutoContrast:Z

.field private final mDefaultAutoOutdoorMode:Z

.field private final mDefaultCABC:Z

.field private final mDefaultColorEnhancement:Z

.field private final mDefaultDayTemperature:I

.field private final mDefaultMode:I

.field private final mDefaultNightTemperature:I

.field private final mHueRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mIntensityRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mSaturationRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mSaturationThresholdRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 379
    new-instance v0, Llineageos/hardware/LiveDisplayConfig$1;

    invoke-direct {v0}, Llineageos/hardware/LiveDisplayConfig$1;-><init>()V

    sput-object v0, Llineageos/hardware/LiveDisplayConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 19

    move-object/from16 v0, p0

    .line 96
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, v0, Llineageos/hardware/LiveDisplayConfig;->mAllModes:Ljava/util/BitSet;

    .line 98
    invoke-static/range {p1 .. p1}, Llineageos/os/Concierge;->receiveParcel(Landroid/os/Parcel;)Llineageos/os/Concierge$ParcelInfo;

    move-result-object v1

    .line 99
    invoke-virtual {v1}, Llineageos/os/Concierge$ParcelInfo;->getParcelVersion()I

    move-result v2

    const/16 v3, 0xa

    new-array v3, v3, [F

    const/4 v4, 0x6

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-lt v2, v4, :cond_4

    .line 117
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 118
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 119
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 120
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 121
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-ne v11, v6, :cond_0

    move v11, v6

    goto :goto_0

    :cond_0
    move v11, v7

    .line 122
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-ne v12, v6, :cond_1

    move v12, v6

    goto :goto_1

    :cond_1
    move v12, v7

    .line 123
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-ne v13, v6, :cond_2

    move v13, v6

    goto :goto_2

    :cond_2
    move v13, v7

    .line 124
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-ne v14, v6, :cond_3

    move v14, v6

    goto :goto_3

    :cond_3
    move v14, v7

    .line 125
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 126
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 127
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 128
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    move-object/from16 v4, p1

    .line 129
    invoke-virtual {v4, v3}, Landroid/os/Parcel;->readFloatArray([F)V

    goto :goto_4

    :cond_4
    const-wide/16 v8, 0x0

    move v10, v5

    move v2, v7

    move v11, v2

    move v12, v11

    move v13, v12

    move v14, v13

    move v15, v14

    move/from16 v16, v15

    move/from16 v17, v16

    move/from16 v18, v17

    :goto_4
    new-array v4, v6, [J

    aput-wide v8, v4, v7

    .line 133
    invoke-static {v4}, Ljava/util/BitSet;->valueOf([J)Ljava/util/BitSet;

    move-result-object v4

    iput-object v4, v0, Llineageos/hardware/LiveDisplayConfig;->mCapabilities:Ljava/util/BitSet;

    .line 134
    iget-object v4, v0, Llineageos/hardware/LiveDisplayConfig;->mAllModes:Ljava/util/BitSet;

    const/4 v8, 0x4

    invoke-virtual {v4, v7, v8}, Ljava/util/BitSet;->set(II)V

    .line 135
    iput v2, v0, Llineageos/hardware/LiveDisplayConfig;->mDefaultMode:I

    .line 136
    iput v5, v0, Llineageos/hardware/LiveDisplayConfig;->mDefaultDayTemperature:I

    .line 137
    iput v10, v0, Llineageos/hardware/LiveDisplayConfig;->mDefaultNightTemperature:I

    .line 138
    iput-boolean v11, v0, Llineageos/hardware/LiveDisplayConfig;->mDefaultAutoContrast:Z

    .line 139
    iput-boolean v12, v0, Llineageos/hardware/LiveDisplayConfig;->mDefaultAutoOutdoorMode:Z

    .line 140
    iput-boolean v13, v0, Llineageos/hardware/LiveDisplayConfig;->mDefaultCABC:Z

    .line 141
    iput-boolean v14, v0, Llineageos/hardware/LiveDisplayConfig;->mDefaultColorEnhancement:Z

    .line 142
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    iput-object v2, v0, Llineageos/hardware/LiveDisplayConfig;->mColorTemperatureRange:Landroid/util/Range;

    .line 143
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    iput-object v2, v0, Llineageos/hardware/LiveDisplayConfig;->mColorBalanceRange:Landroid/util/Range;

    .line 144
    aget v2, v3, v7

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aget v4, v3, v6

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    iput-object v2, v0, Llineageos/hardware/LiveDisplayConfig;->mHueRange:Landroid/util/Range;

    const/4 v2, 0x2

    .line 145
    aget v2, v3, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v4, 0x3

    aget v4, v3, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    iput-object v2, v0, Llineageos/hardware/LiveDisplayConfig;->mSaturationRange:Landroid/util/Range;

    .line 146
    aget v2, v3, v8

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v4, 0x5

    aget v4, v3, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    iput-object v2, v0, Llineageos/hardware/LiveDisplayConfig;->mIntensityRange:Landroid/util/Range;

    const/4 v2, 0x6

    .line 147
    aget v2, v3, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v4, 0x7

    aget v4, v3, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    iput-object v2, v0, Llineageos/hardware/LiveDisplayConfig;->mContrastRange:Landroid/util/Range;

    const/16 v2, 0x8

    .line 148
    aget v2, v3, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/16 v4, 0x9

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    iput-object v2, v0, Llineageos/hardware/LiveDisplayConfig;->mSaturationThresholdRange:Landroid/util/Range;

    .line 151
    invoke-virtual {v1}, Llineageos/os/Concierge$ParcelInfo;->complete()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Llineageos/hardware/LiveDisplayConfig$1;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Llineageos/hardware/LiveDisplayConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public hasFeature(I)Z
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-le p1, v0, :cond_1

    :cond_0
    const/16 v0, 0xa

    if-lt p1, v0, :cond_3

    const/16 v0, 0x11

    if-gt p1, v0, :cond_3

    :cond_1
    if-eqz p1, :cond_2

    .line 221
    iget-object p0, p0, Llineageos/hardware/LiveDisplayConfig;->mCapabilities:Ljava/util/BitSet;

    .line 223
    invoke-virtual {p0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "capabilities="

    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Llineageos/hardware/LiveDisplayConfig;->mCapabilities:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " defaultMode="

    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Llineageos/hardware/LiveDisplayConfig;->mDefaultMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " defaultDayTemperature="

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Llineageos/hardware/LiveDisplayConfig;->mDefaultDayTemperature:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " defaultNightTemperature="

    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Llineageos/hardware/LiveDisplayConfig;->mDefaultNightTemperature:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " defaultAutoOutdoorMode="

    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Llineageos/hardware/LiveDisplayConfig;->mDefaultAutoOutdoorMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " defaultAutoContrast="

    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Llineageos/hardware/LiveDisplayConfig;->mDefaultAutoContrast:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " defaultCABC="

    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Llineageos/hardware/LiveDisplayConfig;->mDefaultCABC:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " defaultColorEnhancement="

    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Llineageos/hardware/LiveDisplayConfig;->mDefaultColorEnhancement:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " colorTemperatureRange="

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Llineageos/hardware/LiveDisplayConfig;->mColorTemperatureRange:Landroid/util/Range;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 166
    iget-object v1, p0, Llineageos/hardware/LiveDisplayConfig;->mCapabilities:Ljava/util/BitSet;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, " colorBalanceRange="

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Llineageos/hardware/LiveDisplayConfig;->mColorBalanceRange:Landroid/util/Range;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 169
    :cond_0
    iget-object v1, p0, Llineageos/hardware/LiveDisplayConfig;->mCapabilities:Ljava/util/BitSet;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, " hueRange="

    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Llineageos/hardware/LiveDisplayConfig;->mHueRange:Landroid/util/Range;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " saturationRange="

    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Llineageos/hardware/LiveDisplayConfig;->mSaturationRange:Landroid/util/Range;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " intensityRange="

    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Llineageos/hardware/LiveDisplayConfig;->mIntensityRange:Landroid/util/Range;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " contrastRange="

    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Llineageos/hardware/LiveDisplayConfig;->mContrastRange:Landroid/util/Range;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " saturationThresholdRange="

    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Llineageos/hardware/LiveDisplayConfig;->mSaturationThresholdRange:Landroid/util/Range;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 176
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 187
    invoke-static {p1}, Llineageos/os/Concierge;->prepareParcel(Landroid/os/Parcel;)Llineageos/os/Concierge$ParcelInfo;

    move-result-object p2

    .line 190
    iget-object v0, p0, Llineageos/hardware/LiveDisplayConfig;->mCapabilities:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->toLongArray()[J

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 191
    array-length v2, v0

    if-lez v2, :cond_0

    aget-wide v2, v0, v1

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 192
    iget v0, p0, Llineageos/hardware/LiveDisplayConfig;->mDefaultMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    iget v0, p0, Llineageos/hardware/LiveDisplayConfig;->mDefaultDayTemperature:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    iget v0, p0, Llineageos/hardware/LiveDisplayConfig;->mDefaultNightTemperature:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    iget-boolean v0, p0, Llineageos/hardware/LiveDisplayConfig;->mDefaultAutoContrast:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    iget-boolean v0, p0, Llineageos/hardware/LiveDisplayConfig;->mDefaultAutoOutdoorMode:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    iget-boolean v0, p0, Llineageos/hardware/LiveDisplayConfig;->mDefaultCABC:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    iget-boolean v0, p0, Llineageos/hardware/LiveDisplayConfig;->mDefaultColorEnhancement:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    iget-object v0, p0, Llineageos/hardware/LiveDisplayConfig;->mColorTemperatureRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    iget-object v0, p0, Llineageos/hardware/LiveDisplayConfig;->mColorTemperatureRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    iget-object v0, p0, Llineageos/hardware/LiveDisplayConfig;->mColorBalanceRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    iget-object v0, p0, Llineageos/hardware/LiveDisplayConfig;->mColorBalanceRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v0, 0xa

    new-array v0, v0, [F

    .line 203
    iget-object v2, p0, Llineageos/hardware/LiveDisplayConfig;->mHueRange:Landroid/util/Range;

    .line 204
    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Llineageos/hardware/LiveDisplayConfig;->mHueRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Llineageos/hardware/LiveDisplayConfig;->mSaturationRange:Landroid/util/Range;

    .line 205
    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Llineageos/hardware/LiveDisplayConfig;->mSaturationRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Llineageos/hardware/LiveDisplayConfig;->mIntensityRange:Landroid/util/Range;

    .line 206
    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Llineageos/hardware/LiveDisplayConfig;->mIntensityRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Llineageos/hardware/LiveDisplayConfig;->mContrastRange:Landroid/util/Range;

    .line 207
    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Llineageos/hardware/LiveDisplayConfig;->mContrastRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Llineageos/hardware/LiveDisplayConfig;->mSaturationThresholdRange:Landroid/util/Range;

    .line 208
    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x9

    iget-object p0, p0, Llineageos/hardware/LiveDisplayConfig;->mSaturationThresholdRange:Landroid/util/Range;

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    aput p0, v0, v1

    .line 203
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 211
    invoke-virtual {p2}, Llineageos/os/Concierge$ParcelInfo;->complete()V

    return-void
.end method
