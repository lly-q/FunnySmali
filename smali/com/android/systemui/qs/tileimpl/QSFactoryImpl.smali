.class public Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;
.super Ljava/lang/Object;
.source "QSFactoryImpl.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/QSFactory;


# instance fields
.field private final mAODTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/AODTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mAdbOverNetworkTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mAirplaneModeTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/AirplaneModeTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mAmbientDisplayTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/AmbientDisplayTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mBatterySaverTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/BatterySaverTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mBluetoothTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/BluetoothTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mCaffeineTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/CaffeineTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mCastTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/CastTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mCellularTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/CellularTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mColorInversionTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/ColorInversionTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mDataSaverTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/DataSaverTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mDndTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/DndTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mFlashlightTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/FlashlightTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mHeadsUpTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/HeadsUpTile;",
            ">;"
        }
    .end annotation
.end field

.field private mHost:Lcom/android/systemui/qs/QSTileHost;

.field private final mHotspotTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/HotspotTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mLiveDisplayTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/LiveDisplayTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocationTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/LocationTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mMemoryTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mNfcTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/NfcTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mNightDisplayTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/NightDisplayTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mPowerShareTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/PowerShareTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mProfilesTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/ProfilesTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mReadingModeTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/ReadingModeTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mRotationLockTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/RotationLockTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mSyncTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/SyncTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mUiModeNightTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/UiModeNightTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsbTetherTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/UsbTetherTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/UserTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mVolumeTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/VolumeTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mVpnTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/VpnTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mWifiTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/WifiTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mWorkModeTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/WorkModeTile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/WifiTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/BluetoothTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/CellularTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/DndTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/ColorInversionTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/AirplaneModeTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/WorkModeTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/RotationLockTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/FlashlightTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/LocationTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/CastTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/HotspotTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/UserTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/BatterySaverTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/DataSaverTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/NightDisplayTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/NfcTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/UiModeNightTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/AmbientDisplayTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/CaffeineTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/HeadsUpTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/LiveDisplayTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/PowerShareTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/ProfilesTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/ReadingModeTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/SyncTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/UsbTetherTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/VolumeTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/VpnTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/AODTile;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 141
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mWifiTileProvider:Ljavax/inject/Provider;

    move-object v1, p2

    .line 142
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mBluetoothTileProvider:Ljavax/inject/Provider;

    move-object v1, p3

    .line 143
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mCellularTileProvider:Ljavax/inject/Provider;

    move-object v1, p4

    .line 144
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mDndTileProvider:Ljavax/inject/Provider;

    move-object v1, p5

    .line 145
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mColorInversionTileProvider:Ljavax/inject/Provider;

    move-object v1, p6

    .line 146
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mAirplaneModeTileProvider:Ljavax/inject/Provider;

    move-object v1, p7

    .line 147
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mWorkModeTileProvider:Ljavax/inject/Provider;

    move-object v1, p8

    .line 148
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mRotationLockTileProvider:Ljavax/inject/Provider;

    move-object v1, p9

    .line 149
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mFlashlightTileProvider:Ljavax/inject/Provider;

    move-object v1, p10

    .line 150
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mLocationTileProvider:Ljavax/inject/Provider;

    move-object v1, p11

    .line 151
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mCastTileProvider:Ljavax/inject/Provider;

    move-object v1, p12

    .line 152
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHotspotTileProvider:Ljavax/inject/Provider;

    move-object v1, p13

    .line 153
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mUserTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p14

    .line 154
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mBatterySaverTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p15

    .line 155
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mDataSaverTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p16

    .line 156
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mNightDisplayTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p17

    .line 157
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mNfcTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p18

    .line 158
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mMemoryTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p19

    .line 159
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mUiModeNightTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p20

    .line 160
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mAdbOverNetworkTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p21

    .line 161
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mAmbientDisplayTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p22

    .line 162
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mCaffeineTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p23

    .line 163
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHeadsUpTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p24

    .line 164
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mLiveDisplayTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p32

    .line 165
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mAODTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p25

    .line 166
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mPowerShareTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p26

    .line 167
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mProfilesTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p27

    .line 168
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mReadingModeTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p28

    .line 169
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mSyncTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p29

    .line 170
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mUsbTetherTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p30

    .line 171
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mVolumeTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p31

    .line 172
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mVpnTileProvider:Ljavax/inject/Provider;

    return-void
.end method

.method private createTileInternal(Ljava/lang/String;)Lcom/android/systemui/qs/tileimpl/QSTileImpl;
    .locals 1

    .line 188
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "usb_tether"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1c

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "hotspot"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "powershare"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "saver"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "night"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "work"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "user"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "sync"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1b

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "dark"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "cell"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "cast"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "vpn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    goto/16 :goto_1

    :sswitch_e
    const-string v0, "nfc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_f
    const-string v0, "dnd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_10
    const-string v0, "aod"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    goto/16 :goto_1

    :sswitch_11
    const-string v0, "bt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_1

    :sswitch_12
    const-string v0, "rotation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_13
    const-string v0, "battery"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_14
    const-string v0, "caffeine"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_15
    const-string v0, "airplane"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_16
    const-string v0, "profiles"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x19

    goto :goto_1

    :sswitch_17
    const-string v0, "heads_up"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    goto :goto_1

    :sswitch_18
    const-string v0, "livedisplay"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    goto :goto_1

    :sswitch_19
    const-string v0, "flashlight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_1a
    const-string v0, "reading_mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1a

    goto :goto_1

    :sswitch_1b
    const-string v0, "volume_panel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1d

    goto :goto_1

    :sswitch_1c
    const-string v0, "adb_network"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto :goto_1

    :sswitch_1d
    const-string v0, "inversion"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_1e
    const-string v0, "ambient_display"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    const-string v0, "intent("

    .line 256
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-static {p0, p1}, Lcom/android/systemui/qs/tiles/IntentTile;->create(Lcom/android/systemui/qs/QSHost;Ljava/lang/String;)Lcom/android/systemui/qs/tiles/IntentTile;

    move-result-object p0

    return-object p0

    .line 252
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mVpnTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 250
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mVolumeTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 248
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mUsbTetherTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 246
    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mSyncTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 244
    :pswitch_4
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mReadingModeTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 242
    :pswitch_5
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mProfilesTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 240
    :pswitch_6
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mPowerShareTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 238
    :pswitch_7
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mAODTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 236
    :pswitch_8
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mLiveDisplayTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 234
    :pswitch_9
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHeadsUpTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 232
    :pswitch_a
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mCaffeineTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 230
    :pswitch_b
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mAmbientDisplayTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 228
    :pswitch_c
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mAdbOverNetworkTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 225
    :pswitch_d
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mUiModeNightTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 223
    :pswitch_e
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mNfcTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 221
    :pswitch_f
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mNightDisplayTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 219
    :pswitch_10
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mDataSaverTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 217
    :pswitch_11
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mBatterySaverTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 215
    :pswitch_12
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mUserTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 213
    :pswitch_13
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHotspotTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 211
    :pswitch_14
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mCastTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 209
    :pswitch_15
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mLocationTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 207
    :pswitch_16
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mFlashlightTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 205
    :pswitch_17
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mRotationLockTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 203
    :pswitch_18
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mWorkModeTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 201
    :pswitch_19
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mAirplaneModeTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 199
    :pswitch_1a
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mColorInversionTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 197
    :pswitch_1b
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mDndTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 195
    :pswitch_1c
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mCellularTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 193
    :pswitch_1d
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mBluetoothTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 191
    :pswitch_1e
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mWifiTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    :cond_1
    const-string v0, "custom("

    .line 257
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-static {p0, p1}, Lcom/android/systemui/qs/external/CustomTile;->create(Lcom/android/systemui/qs/QSTileHost;Ljava/lang/String;)Lcom/android/systemui/qs/external/CustomTile;

    move-result-object p0

    return-object p0

    .line 260
    :cond_2
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_3

    const-string v0, "dbg:mem"

    .line 261
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 262
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mMemoryTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 267
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No stock tile spec: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QSFactory"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x7d6865e5 -> :sswitch_1e
        -0x783813ed -> :sswitch_1d
        -0x6c049572 -> :sswitch_1c
        -0x5087e761 -> :sswitch_1b
        -0x4ea0a48a -> :sswitch_1a
        -0x468444da -> :sswitch_19
        -0x465e39aa -> :sswitch_18
        -0x42736839 -> :sswitch_17
        -0x3bbd5416 -> :sswitch_16
        -0x285a60ae -> :sswitch_15
        -0x14d40407 -> :sswitch_14
        -0x13be51f3 -> :sswitch_13
        -0x266f082 -> :sswitch_12
        0xc52 -> :sswitch_11
        0x179f6 -> :sswitch_10
        0x1851a -> :sswitch_f
        0x1a9ab -> :sswitch_e
        0x1c8f4 -> :sswitch_d
        0x2e7b3f -> :sswitch_c
        0x2e8962 -> :sswitch_b
        0x2eef76 -> :sswitch_a
        0x361a9b -> :sswitch_9
        0x36ebcb -> :sswitch_8
        0x37af15 -> :sswitch_7
        0x37c711 -> :sswitch_6
        0x63f6418 -> :sswitch_5
        0x6826e95 -> :sswitch_4
        0x1b5ca1fa -> :sswitch_3
        0x418a9ecf -> :sswitch_2
        0x714f9fb5 -> :sswitch_1
        0x71a9772d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public createTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;
    .locals 0

    .line 180
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->createTileInternal(Ljava/lang/String;)Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleStale()V

    :cond_0
    return-object p0
.end method

.method public createTileView(Lcom/android/systemui/plugins/qs/QSTile;Z)Lcom/android/systemui/plugins/qs/QSTileView;
    .locals 2

    .line 273
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileHost;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$style;->qs_theme:I

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 274
    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/qs/QSTile;->createTileView(Landroid/content/Context;)Lcom/android/systemui/plugins/qs/QSIconView;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 276
    new-instance p1, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;

    invoke-direct {p1, v0, p0, p2}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;Z)V

    return-object p1

    .line 278
    :cond_0
    new-instance p1, Lcom/android/systemui/qs/tileimpl/QSTileView;

    invoke-direct {p1, v0, p0}, Lcom/android/systemui/qs/tileimpl/QSTileView;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;)V

    return-object p1
.end method

.method public setHost(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHost:Lcom/android/systemui/qs/QSTileHost;

    return-void
.end method
