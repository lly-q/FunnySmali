.class public Lcom/android/systemui/qs/tiles/UsbTetherTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "UsbTetherTile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# static fields
.field private static final TETHER_SETTINGS:Landroid/content/Intent;


# instance fields
.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private mListening:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mUsbConnected:Z

.field private mUsbTetherEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 46
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.TetherSettings"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/UsbTetherTile;->TETHER_SETTINGS:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 1

    .line 58
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 44
    sget p1, Lcom/android/systemui/R$drawable;->ic_qs_usb_tether:I

    invoke-static {p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/UsbTetherTile;->mIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    const/4 p1, 0x0

    .line 53
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/UsbTetherTile;->mUsbConnected:Z

    .line 54
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/UsbTetherTile;->mUsbTetherEnabled:Z

    .line 93
    new-instance p1, Lcom/android/systemui/qs/tiles/UsbTetherTile$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/UsbTetherTile$1;-><init>(Lcom/android/systemui/qs/tiles/UsbTetherTile;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/UsbTetherTile;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 59
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/UsbTetherTile;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/UsbTetherTile;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/UsbTetherTile;->mUsbConnected:Z

    return p0
.end method

.method static synthetic access$002(Lcom/android/systemui/qs/tiles/UsbTetherTile;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/UsbTetherTile;->mUsbConnected:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/UsbTetherTile;)Landroid/net/ConnectivityManager;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/UsbTetherTile;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/systemui/qs/tiles/UsbTetherTile;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/UsbTetherTile;->mUsbTetherEnabled:Z

    return p1
.end method


# virtual methods
.method public getLongClickIntent()Landroid/content/Intent;
    .locals 1

    .line 90
    new-instance p0, Landroid/content/Intent;

    sget-object v0, Lcom/android/systemui/qs/tiles/UsbTetherTile;->TETHER_SETTINGS:Landroid/content/Intent;

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const p0, -0x7fffffda

    return p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 117
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->quick_settings_usb_tether_label:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected handleClick()V
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/UsbTetherTile;->mUsbConnected:Z

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UsbTetherTile;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/UsbTetherTile;->mUsbTetherEnabled:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    :cond_0
    return-void
.end method

.method public handleSetListening(Z)V
    .locals 1

    .line 68
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/UsbTetherTile;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 71
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/UsbTetherTile;->mListening:Z

    if-eqz p1, :cond_1

    .line 73
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.hardware.usb.action.USB_STATE"

    .line 74
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/UsbTetherTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 77
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/UsbTetherTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :goto_0
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 1

    .line 108
    iget-boolean p2, p0, Lcom/android/systemui/qs/tiles/UsbTetherTile;->mUsbTetherEnabled:Z

    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 109
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->quick_settings_usb_tether_label:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 110
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/UsbTetherTile;->mIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 111
    iget-boolean p2, p0, Lcom/android/systemui/qs/tiles/UsbTetherTile;->mUsbConnected:Z

    if-nez p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 112
    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/UsbTetherTile;->mUsbTetherEnabled:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    iput p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .line 42
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/UsbTetherTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 0

    .line 63
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 42
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/UsbTetherTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object p0

    return-object p0
.end method
