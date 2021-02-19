.class public final Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;
.super Ljava/lang/Object;
.source "QSFactoryImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final adbOverNetworkTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;",
            ">;"
        }
    .end annotation
.end field

.field private final airplaneModeTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/AirplaneModeTile;",
            ">;"
        }
    .end annotation
.end field

.field private final ambientDisplayTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/AmbientDisplayTile;",
            ">;"
        }
    .end annotation
.end field

.field private final aodTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/AODTile;",
            ">;"
        }
    .end annotation
.end field

.field private final batterySaverTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/BatterySaverTile;",
            ">;"
        }
    .end annotation
.end field

.field private final bluetoothTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/BluetoothTile;",
            ">;"
        }
    .end annotation
.end field

.field private final caffeineTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/CaffeineTile;",
            ">;"
        }
    .end annotation
.end field

.field private final castTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/CastTile;",
            ">;"
        }
    .end annotation
.end field

.field private final cellularTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/CellularTile;",
            ">;"
        }
    .end annotation
.end field

.field private final colorInversionTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/ColorInversionTile;",
            ">;"
        }
    .end annotation
.end field

.field private final dataSaverTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/DataSaverTile;",
            ">;"
        }
    .end annotation
.end field

.field private final dndTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/DndTile;",
            ">;"
        }
    .end annotation
.end field

.field private final flashlightTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/FlashlightTile;",
            ">;"
        }
    .end annotation
.end field

.field private final headsUpTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/HeadsUpTile;",
            ">;"
        }
    .end annotation
.end field

.field private final hotspotTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/HotspotTile;",
            ">;"
        }
    .end annotation
.end field

.field private final liveDisplayTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/LiveDisplayTile;",
            ">;"
        }
    .end annotation
.end field

.field private final locationTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/LocationTile;",
            ">;"
        }
    .end annotation
.end field

.field private final memoryTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;",
            ">;"
        }
    .end annotation
.end field

.field private final nfcTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/NfcTile;",
            ">;"
        }
    .end annotation
.end field

.field private final nightDisplayTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/NightDisplayTile;",
            ">;"
        }
    .end annotation
.end field

.field private final powerShareTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/PowerShareTile;",
            ">;"
        }
    .end annotation
.end field

.field private final profilesTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/ProfilesTile;",
            ">;"
        }
    .end annotation
.end field

.field private final readingModeTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/ReadingModeTile;",
            ">;"
        }
    .end annotation
.end field

.field private final rotationLockTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/RotationLockTile;",
            ">;"
        }
    .end annotation
.end field

.field private final syncTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/SyncTile;",
            ">;"
        }
    .end annotation
.end field

.field private final uiModeNightTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/UiModeNightTile;",
            ">;"
        }
    .end annotation
.end field

.field private final usbTetherTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/UsbTetherTile;",
            ">;"
        }
    .end annotation
.end field

.field private final userTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/UserTile;",
            ">;"
        }
    .end annotation
.end field

.field private final volumeTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/VolumeTile;",
            ">;"
        }
    .end annotation
.end field

.field private final vpnTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/VpnTile;",
            ">;"
        }
    .end annotation
.end field

.field private final wifiTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/WifiTile;",
            ">;"
        }
    .end annotation
.end field

.field private final workModeTileProvider:Ljavax/inject/Provider;
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

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 137
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->wifiTileProvider:Ljavax/inject/Provider;

    move-object v1, p2

    .line 138
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->bluetoothTileProvider:Ljavax/inject/Provider;

    move-object v1, p3

    .line 139
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->cellularTileProvider:Ljavax/inject/Provider;

    move-object v1, p4

    .line 140
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->dndTileProvider:Ljavax/inject/Provider;

    move-object v1, p5

    .line 141
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->colorInversionTileProvider:Ljavax/inject/Provider;

    move-object v1, p6

    .line 142
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->airplaneModeTileProvider:Ljavax/inject/Provider;

    move-object v1, p7

    .line 143
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->workModeTileProvider:Ljavax/inject/Provider;

    move-object v1, p8

    .line 144
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->rotationLockTileProvider:Ljavax/inject/Provider;

    move-object v1, p9

    .line 145
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->flashlightTileProvider:Ljavax/inject/Provider;

    move-object v1, p10

    .line 146
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->locationTileProvider:Ljavax/inject/Provider;

    move-object v1, p11

    .line 147
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->castTileProvider:Ljavax/inject/Provider;

    move-object v1, p12

    .line 148
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->hotspotTileProvider:Ljavax/inject/Provider;

    move-object v1, p13

    .line 149
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->userTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p14

    .line 150
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->batterySaverTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p15

    .line 151
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->dataSaverTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p16

    .line 152
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->nightDisplayTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p17

    .line 153
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->nfcTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p18

    .line 154
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->memoryTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p19

    .line 155
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->uiModeNightTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p20

    .line 156
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->adbOverNetworkTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p21

    .line 157
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->ambientDisplayTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p22

    .line 158
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->caffeineTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p23

    .line 159
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->headsUpTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p24

    .line 160
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->liveDisplayTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p25

    .line 161
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->powerShareTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p26

    .line 162
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->profilesTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p27

    .line 163
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->readingModeTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p28

    .line 164
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->syncTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p29

    .line 165
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->usbTetherTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p30

    .line 166
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->volumeTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p31

    .line 167
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->vpnTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p32

    .line 168
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->aodTileProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;
    .locals 34
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
            ">;)",
            "Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    move-object/from16 v22, p21

    move-object/from16 v23, p22

    move-object/from16 v24, p23

    move-object/from16 v25, p24

    move-object/from16 v26, p25

    move-object/from16 v27, p26

    move-object/from16 v28, p27

    move-object/from16 v29, p28

    move-object/from16 v30, p29

    move-object/from16 v31, p30

    move-object/from16 v32, p31

    .line 309
    new-instance v33, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;

    move-object/from16 v0, v33

    invoke-direct/range {v0 .. v32}, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v33
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;
    .locals 34
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
            ">;)",
            "Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    move-object/from16 v22, p21

    move-object/from16 v23, p22

    move-object/from16 v24, p23

    move-object/from16 v25, p24

    move-object/from16 v26, p25

    move-object/from16 v27, p26

    move-object/from16 v28, p27

    move-object/from16 v29, p28

    move-object/from16 v30, p29

    move-object/from16 v31, p30

    move-object/from16 v32, p31

    .line 241
    new-instance v33, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;

    move-object/from16 v0, v33

    invoke-direct/range {v0 .. v32}, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v33
.end method


# virtual methods
.method public get()Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;
    .locals 34

    move-object/from16 v0, p0

    .line 173
    iget-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->wifiTileProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->bluetoothTileProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->cellularTileProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->dndTileProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->colorInversionTileProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->airplaneModeTileProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->workModeTileProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->rotationLockTileProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->flashlightTileProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->locationTileProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->castTileProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->hotspotTileProvider:Ljavax/inject/Provider;

    iget-object v13, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->userTileProvider:Ljavax/inject/Provider;

    iget-object v14, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->batterySaverTileProvider:Ljavax/inject/Provider;

    iget-object v15, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->dataSaverTileProvider:Ljavax/inject/Provider;

    move-object/from16 v33, v1

    iget-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->nightDisplayTileProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->nfcTileProvider:Ljavax/inject/Provider;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->memoryTileProvider:Ljavax/inject/Provider;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->uiModeNightTileProvider:Ljavax/inject/Provider;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->adbOverNetworkTileProvider:Ljavax/inject/Provider;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->ambientDisplayTileProvider:Ljavax/inject/Provider;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->caffeineTileProvider:Ljavax/inject/Provider;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->headsUpTileProvider:Ljavax/inject/Provider;

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->liveDisplayTileProvider:Ljavax/inject/Provider;

    move-object/from16 v24, v1

    iget-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->powerShareTileProvider:Ljavax/inject/Provider;

    move-object/from16 v25, v1

    iget-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->profilesTileProvider:Ljavax/inject/Provider;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->readingModeTileProvider:Ljavax/inject/Provider;

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->syncTileProvider:Ljavax/inject/Provider;

    move-object/from16 v28, v1

    iget-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->usbTetherTileProvider:Ljavax/inject/Provider;

    move-object/from16 v29, v1

    iget-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->volumeTileProvider:Ljavax/inject/Provider;

    move-object/from16 v30, v1

    iget-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->vpnTileProvider:Ljavax/inject/Provider;

    move-object/from16 v31, v1

    iget-object v0, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->aodTileProvider:Ljavax/inject/Provider;

    move-object/from16 v32, v0

    move-object/from16 v1, v33

    invoke-static/range {v1 .. v32}, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->get()Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;

    move-result-object p0

    return-object p0
.end method
