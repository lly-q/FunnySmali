.class public Lcom/android/systemui/qs/tiles/VpnTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "VpnTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/VpnTile$Callback;,
        Lcom/android/systemui/qs/tiles/VpnTile$UsernameAndPasswordWatcher;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private final mCallback:Lcom/android/systemui/qs/tiles/VpnTile$Callback;

.field private final mController:Lcom/android/systemui/statusbar/policy/SecurityController;

.field private final mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private final mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 1

    .line 64
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 59
    new-instance p1, Lcom/android/systemui/qs/tiles/VpnTile$Callback;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/qs/tiles/VpnTile$Callback;-><init>(Lcom/android/systemui/qs/tiles/VpnTile;Lcom/android/systemui/qs/tiles/VpnTile$1;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/VpnTile;->mCallback:Lcom/android/systemui/qs/tiles/VpnTile$Callback;

    .line 65
    const-class p1, Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/SecurityController;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/VpnTile;->mController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 66
    const-class p1, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/VpnTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 67
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {p1}, Lcom/android/systemui/qs/QSHost;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/VpnTile;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 68
    const-class p1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/ActivityStarter;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/VpnTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-void
.end method

.method private connectVpnOrAskForCredentials(Lcom/android/internal/net/VpnProfile;)V
    .locals 10

    .line 194
    iget-boolean v0, p1, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    if-eqz v0, :cond_0

    .line 195
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/VpnTile;->mController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/policy/SecurityController;->connectLegacyVpn(Lcom/android/internal/net/VpnProfile;)V

    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 200
    sget v1, Lcom/android/systemui/R$layout;->vpn_credentials_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 201
    sget v1, Lcom/android/systemui/R$id;->username:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 202
    sget v3, Lcom/android/systemui/R$id;->password:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 203
    sget v4, Lcom/android/systemui/R$id;->hint:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 205
    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/systemui/R$string;->vpn_credentials_hint:I

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 208
    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v4, Lcom/android/systemui/R$string;->vpn_credentials_dialog_connect:I

    new-instance v5, Lcom/android/systemui/qs/tiles/-$$Lambda$VpnTile$TFdmdCFfkkBaoxBf69sZalb9qKA;

    invoke-direct {v5, p0, p1, v1, v3}, Lcom/android/systemui/qs/tiles/-$$Lambda$VpnTile$TFdmdCFfkkBaoxBf69sZalb9qKA;-><init>(Lcom/android/systemui/qs/tiles/VpnTile;Lcom/android/internal/net/VpnProfile;Landroid/widget/EditText;Landroid/widget/EditText;)V

    .line 209
    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000

    .line 214
    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 215
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 217
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/VpnTile;->prepareAndShowDialog(Landroid/app/Dialog;)V

    .line 218
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v0}, Lcom/android/systemui/qs/QSHost;->collapsePanels()V

    .line 219
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mUiHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/qs/tiles/-$$Lambda$VpnTile$1g6xNGkmiFAuePm1UZepEL-PXMc;

    invoke-direct {v0, v1, v3, p1}, Lcom/android/systemui/qs/tiles/-$$Lambda$VpnTile$1g6xNGkmiFAuePm1UZepEL-PXMc;-><init>(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/app/AlertDialog;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic lambda$connectVpnOrAskForCredentials$4(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/app/AlertDialog;)V
    .locals 2

    .line 220
    new-instance v0, Lcom/android/systemui/qs/tiles/VpnTile$UsernameAndPasswordWatcher;

    const/4 v1, -0x1

    .line 221
    invoke-virtual {p2, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/qs/tiles/VpnTile$UsernameAndPasswordWatcher;-><init>(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Button;)V

    .line 222
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 223
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method static synthetic lambda$prepareAndShowDialog$5(Landroid/app/Dialog;)V
    .locals 0

    .line 232
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private prepareAndShowDialog(Landroid/app/Dialog;)V
    .locals 2

    .line 228
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    const/4 v0, 0x1

    .line 229
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Landroid/app/Dialog;Z)V

    .line 230
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->registerDismissListener(Landroid/app/Dialog;)V

    .line 231
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setWindowOnTop(Landroid/app/Dialog;)V

    .line 232
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mUiHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/qs/tiles/-$$Lambda$VpnTile$xscwrfYyc1pNk1m83PKJhFlpRPY;

    invoke-direct {v0, p1}, Lcom/android/systemui/qs/tiles/-$$Lambda$VpnTile$xscwrfYyc1pNk1m83PKJhFlpRPY;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private showConnectDialogOrDisconnect()V
    .locals 5

    .line 116
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VpnTile;->mController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->isVpnRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VpnTile;->mController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->isVpnEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/VpnTile;->mController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/SecurityController;->disconnectPrimaryVpn()V

    return-void

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VpnTile;->mController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->getConfiguredLegacyVpns()Ljava/util/List;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VpnTile;->mController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/SecurityController;->getVpnAppPackageNames()Ljava/util/List;

    move-result-object v1

    .line 125
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    .line 127
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v4, :cond_3

    .line 128
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/VpnTile;->mController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->launchVpnApp(Ljava/lang/String;)V

    return-void

    .line 130
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v4, :cond_4

    .line 131
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/VpnProfile;

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/VpnTile;->connectVpnOrAskForCredentials(Lcom/android/internal/net/VpnProfile;)V

    return-void

    .line 135
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mUiHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/qs/tiles/-$$Lambda$VpnTile$ekQKvVpu1xU4HKc8UNn-1C-46I8;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/systemui/qs/tiles/-$$Lambda$VpnTile$ekQKvVpu1xU4HKc8UNn-1C-46I8;-><init>(Lcom/android/systemui/qs/tiles/VpnTile;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public getLongClickIntent()Landroid/content/Intent;
    .locals 1

    .line 96
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.settings.VPN_SETTINGS"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x64

    return p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 167
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->quick_settings_vpn_label:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected handleClick()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VpnTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VpnTile;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->canSkipBouncer()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VpnTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v1, Lcom/android/systemui/qs/tiles/-$$Lambda$VpnTile$Fa6n5jYtq0Ky48P-24PnIrwvDjk;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/-$$Lambda$VpnTile$Fa6n5jYtq0Ky48P-24PnIrwvDjk;-><init>(Lcom/android/systemui/qs/tiles/VpnTile;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 111
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/VpnTile;->showConnectDialogOrDisconnect()V

    :goto_0
    return-void
.end method

.method protected handleSecondaryClick()V
    .locals 0

    .line 101
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/VpnTile;->handleClick()V

    return-void
.end method

.method public handleSetListening(Z)V
    .locals 3

    .line 78
    sget-boolean v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSetListening "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    .line 80
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/VpnTile;->mController:Lcom/android/systemui/statusbar/policy/SecurityController;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VpnTile;->mCallback:Lcom/android/systemui/qs/tiles/VpnTile$Callback;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 81
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/VpnTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/VpnTile;->mCallback:Lcom/android/systemui/qs/tiles/VpnTile$Callback;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    goto :goto_0

    .line 83
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/VpnTile;->mController:Lcom/android/systemui/statusbar/policy/SecurityController;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VpnTile;->mCallback:Lcom/android/systemui/qs/tiles/VpnTile$Callback;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 84
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/VpnTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/VpnTile;->mCallback:Lcom/android/systemui/qs/tiles/VpnTile$Callback;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 2

    .line 172
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->quick_settings_vpn_label:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 173
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/VpnTile;->mController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/SecurityController;->isVpnEnabled()Z

    move-result p2

    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 174
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/VpnTile;->mController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/SecurityController;->getPrimaryVpnName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 175
    iget-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 176
    sget p2, Lcom/android/systemui/R$drawable;->ic_qs_vpn:I

    invoke-static {p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 177
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/VpnTile;->mController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/SecurityController;->getConfiguredLegacyVpns()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gtz p2, :cond_1

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/VpnTile;->mController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 178
    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/SecurityController;->getVpnAppPackageNames()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    move p2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move p2, v1

    .line 179
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/VpnTile;->mController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/SecurityController;->isVpnRestricted()Z

    move-result p0

    if-nez p0, :cond_4

    if-nez p2, :cond_2

    goto :goto_2

    .line 181
    :cond_2
    iget-boolean p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz p0, :cond_3

    const/4 p0, 0x2

    .line 182
    iput p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    goto :goto_3

    .line 184
    :cond_3
    iput v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    goto :goto_3

    .line 180
    :cond_4
    :goto_2
    iput v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    :goto_3
    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .line 55
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/VpnTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected handleUserSwitch(I)V
    .locals 0

    .line 90
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleUserSwitch(I)V

    .line 91
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/VpnTile;->mController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/policy/SecurityController;->onUserSwitched(I)V

    return-void
.end method

.method public synthetic lambda$connectVpnOrAskForCredentials$3$VpnTile(Lcom/android/internal/net/VpnProfile;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 210
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    .line 211
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    .line 212
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/VpnTile;->mController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/policy/SecurityController;->connectLegacyVpn(Lcom/android/internal/net/VpnProfile;)V

    return-void
.end method

.method public synthetic lambda$handleClick$0$VpnTile()V
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/VpnTile;->showConnectDialogOrDisconnect()V

    return-void
.end method

.method public synthetic lambda$showConnectDialogOrDisconnect$1$VpnTile(ILjava/util/List;Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 0

    if-ge p5, p1, :cond_0

    .line 153
    invoke-interface {p2, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/net/VpnProfile;

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/VpnTile;->connectVpnOrAskForCredentials(Lcom/android/internal/net/VpnProfile;)V

    goto :goto_0

    .line 155
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/VpnTile;->mController:Lcom/android/systemui/statusbar/policy/SecurityController;

    sub-int/2addr p5, p1

    invoke-interface {p3, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/policy/SecurityController;->launchVpnApp(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$showConnectDialogOrDisconnect$2$VpnTile(Ljava/util/List;Ljava/util/List;)V
    .locals 6

    .line 136
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 137
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    .line 139
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/net/VpnProfile;

    iget-object v4, v4, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 141
    :cond_0
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    add-int v3, v1, v2

    .line 143
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/internal/net/VpnConfig;->getVpnLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v0, v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 145
    :catch_0
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    aput-object v4, v0, v3

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 149
    :cond_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/android/systemui/R$string;->quick_settings_vpn_connect_dialog_title:I

    .line 150
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/qs/tiles/-$$Lambda$VpnTile$E8Ulr30xIdYfAy9E18dMrNkJPmU;

    invoke-direct {v3, p0, v1, p1, p2}, Lcom/android/systemui/qs/tiles/-$$Lambda$VpnTile$E8Ulr30xIdYfAy9E18dMrNkJPmU;-><init>(Lcom/android/systemui/qs/tiles/VpnTile;ILjava/util/List;Ljava/util/List;)V

    .line 151
    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 p2, 0x1040000

    const/4 v0, 0x0

    .line 158
    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 159
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 160
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/VpnTile;->prepareAndShowDialog(Landroid/app/Dialog;)V

    .line 161
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {p0}, Lcom/android/systemui/qs/QSHost;->collapsePanels()V

    return-void
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 0

    .line 73
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 55
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/VpnTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object p0

    return-object p0
.end method
