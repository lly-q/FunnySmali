.class public Lorg/lineageos/internal/statusbar/NetworkTraffic;
.super Landroid/widget/TextView;
.source "NetworkTraffic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lineageos/internal/statusbar/NetworkTraffic$LinkPropertiesHolder;,
        Lorg/lineageos/internal/statusbar/NetworkTraffic$TetheringStats;,
        Lorg/lineageos/internal/statusbar/NetworkTraffic$SettingsObserver;
    }
.end annotation


# instance fields
.field private mAutoHide:Z

.field private mAutoHideThreshold:J

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mDarkModeFillColor:I

.field private mDarkReceiver:Lorg/lineageos/internal/statusbar/LineageStatusBarItem$DarkReceiver;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mIconTint:I

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLastRxBytes:J

.field private mLastTxBytes:J

.field private mLastUpdateTime:J

.field private mLightModeFillColor:I

.field private final mLinkPropertiesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/Network;",
            "Landroid/net/LinkProperties;",
            ">;"
        }
    .end annotation
.end field

.field private mMode:I

.field private mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mNetworkManagementService:Landroid/os/INetworkManagementService;

.field private mNetworkTrafficIsVisible:Z

.field private mNetworksChanged:Z

.field private mObserver:Lorg/lineageos/internal/statusbar/NetworkTraffic$SettingsObserver;

.field private mRxKbps:J

.field private mShowUnits:Z

.field private mTextSizeMulti:I

.field private mTextSizeSingle:I

.field private mTrafficHandler:Landroid/os/Handler;

.field private mTxKbps:J

.field private mUnits:I

.field private mVisibilityReceiver:Lorg/lineageos/internal/statusbar/LineageStatusBarItem$VisibilityReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 113
    invoke-direct {p0, p1, v0}, Lorg/lineageos/internal/statusbar/NetworkTraffic;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 117
    invoke-direct {p0, p1, p2, v0}, Lorg/lineageos/internal/statusbar/NetworkTraffic;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 121
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 84
    iput p1, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mMode:I

    const/4 p2, -0x1

    .line 99
    iput p2, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mIconTint:I

    .line 105
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mLinkPropertiesMap:Ljava/util/HashMap;

    const/4 p2, 0x1

    .line 108
    iput-boolean p2, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mNetworksChanged:Z

    .line 142
    new-instance p2, Lorg/lineageos/internal/statusbar/NetworkTraffic$1;

    invoke-direct {p2, p0}, Lorg/lineageos/internal/statusbar/NetworkTraffic$1;-><init>(Lorg/lineageos/internal/statusbar/NetworkTraffic;)V

    iput-object p2, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mDarkReceiver:Lorg/lineageos/internal/statusbar/LineageStatusBarItem$DarkReceiver;

    .line 155
    new-instance p2, Lorg/lineageos/internal/statusbar/NetworkTraffic$2;

    invoke-direct {p2, p0}, Lorg/lineageos/internal/statusbar/NetworkTraffic$2;-><init>(Lorg/lineageos/internal/statusbar/NetworkTraffic;)V

    iput-object p2, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mVisibilityReceiver:Lorg/lineageos/internal/statusbar/LineageStatusBarItem$VisibilityReceiver;

    .line 187
    new-instance p2, Lorg/lineageos/internal/statusbar/NetworkTraffic$3;

    invoke-direct {p2, p0}, Lorg/lineageos/internal/statusbar/NetworkTraffic$3;-><init>(Lorg/lineageos/internal/statusbar/NetworkTraffic;)V

    iput-object p2, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mTrafficHandler:Landroid/os/Handler;

    .line 349
    new-instance p2, Lorg/lineageos/internal/statusbar/NetworkTraffic$4;

    invoke-direct {p2, p0}, Lorg/lineageos/internal/statusbar/NetworkTraffic$4;-><init>(Lorg/lineageos/internal/statusbar/NetworkTraffic;)V

    iput-object p2, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 505
    new-instance p2, Lorg/lineageos/internal/statusbar/NetworkTraffic$5;

    invoke-direct {p2, p0}, Lorg/lineageos/internal/statusbar/NetworkTraffic$5;-><init>(Lorg/lineageos/internal/statusbar/NetworkTraffic;)V

    iput-object p2, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    const-string p2, "network_management"

    .line 124
    invoke-static {p2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    .line 123
    invoke-static {p2}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object p2

    iput-object p2, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    .line 126
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x3f060001

    .line 127
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mTextSizeSingle:I

    const/high16 p3, 0x3f060000    # 0.5234375f

    .line 128
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mTextSizeMulti:I

    .line 130
    iput-boolean p1, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mNetworkTrafficIsVisible:Z

    .line 132
    new-instance p1, Lorg/lineageos/internal/statusbar/NetworkTraffic$SettingsObserver;

    iget-object p2, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mTrafficHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, p2}, Lorg/lineageos/internal/statusbar/NetworkTraffic$SettingsObserver;-><init>(Lorg/lineageos/internal/statusbar/NetworkTraffic;Landroid/os/Handler;)V

    iput-object p1, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mObserver:Lorg/lineageos/internal/statusbar/NetworkTraffic$SettingsObserver;

    .line 134
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class p2, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 135
    new-instance p1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 p2, 0xc

    .line 136
    invoke-virtual {p1, p2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p1

    const/16 p2, 0xf

    .line 137
    invoke-virtual {p1, p2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p1

    .line 138
    invoke-virtual {p1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p1

    .line 139
    iget-object p2, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object p0, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {p2, p1, p0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method static synthetic access$000(Lorg/lineageos/internal/statusbar/NetworkTraffic;)I
    .locals 0

    .line 56
    iget p0, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mIconTint:I

    return p0
.end method

.method static synthetic access$002(Lorg/lineageos/internal/statusbar/NetworkTraffic;I)I
    .locals 0

    .line 56
    iput p1, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mIconTint:I

    return p1
.end method

.method static synthetic access$100(Lorg/lineageos/internal/statusbar/NetworkTraffic;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->updateTrafficDrawableColor()V

    return-void
.end method

.method static synthetic access$1000(Lorg/lineageos/internal/statusbar/NetworkTraffic;)J
    .locals 2

    .line 56
    iget-wide v0, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mLastTxBytes:J

    return-wide v0
.end method

.method static synthetic access$1002(Lorg/lineageos/internal/statusbar/NetworkTraffic;J)J
    .locals 0

    .line 56
    iput-wide p1, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mLastTxBytes:J

    return-wide p1
.end method

.method static synthetic access$1100(Lorg/lineageos/internal/statusbar/NetworkTraffic;)J
    .locals 2

    .line 56
    iget-wide v0, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mLastRxBytes:J

    return-wide v0
.end method

.method static synthetic access$1102(Lorg/lineageos/internal/statusbar/NetworkTraffic;J)J
    .locals 0

    .line 56
    iput-wide p1, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mLastRxBytes:J

    return-wide p1
.end method

.method static synthetic access$1200(Lorg/lineageos/internal/statusbar/NetworkTraffic;)J
    .locals 2

    .line 56
    iget-wide v0, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mTxKbps:J

    return-wide v0
.end method

.method static synthetic access$1202(Lorg/lineageos/internal/statusbar/NetworkTraffic;J)J
    .locals 0

    .line 56
    iput-wide p1, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mTxKbps:J

    return-wide p1
.end method

.method static synthetic access$1300(Lorg/lineageos/internal/statusbar/NetworkTraffic;)J
    .locals 2

    .line 56
    iget-wide v0, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mRxKbps:J

    return-wide v0
.end method

.method static synthetic access$1302(Lorg/lineageos/internal/statusbar/NetworkTraffic;J)J
    .locals 0

    .line 56
    iput-wide p1, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mRxKbps:J

    return-wide p1
.end method

.method static synthetic access$1400(Lorg/lineageos/internal/statusbar/NetworkTraffic;)I
    .locals 0

    .line 56
    iget p0, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mMode:I

    return p0
.end method

.method static synthetic access$1500(Lorg/lineageos/internal/statusbar/NetworkTraffic;)Z
    .locals 0

    .line 56
    invoke-direct {p0}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->isConnectionAvailable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lorg/lineageos/internal/statusbar/NetworkTraffic;)Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mAutoHide:Z

    return p0
.end method

.method static synthetic access$1700(Lorg/lineageos/internal/statusbar/NetworkTraffic;)J
    .locals 2

    .line 56
    iget-wide v0, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mAutoHideThreshold:J

    return-wide v0
.end method

.method static synthetic access$1800(Lorg/lineageos/internal/statusbar/NetworkTraffic;)I
    .locals 0

    .line 56
    iget p0, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mTextSizeMulti:I

    return p0
.end method

.method static synthetic access$1900(Lorg/lineageos/internal/statusbar/NetworkTraffic;)I
    .locals 0

    .line 56
    iget p0, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mTextSizeSingle:I

    return p0
.end method

.method static synthetic access$2000(Lorg/lineageos/internal/statusbar/NetworkTraffic;)Landroid/os/Handler;
    .locals 0

    .line 56
    iget-object p0, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mTrafficHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$202(Lorg/lineageos/internal/statusbar/NetworkTraffic;I)I
    .locals 0

    .line 56
    iput p1, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mDarkModeFillColor:I

    return p1
.end method

.method static synthetic access$2100(Lorg/lineageos/internal/statusbar/NetworkTraffic;)I
    .locals 0

    .line 56
    iget p0, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mUnits:I

    return p0
.end method

.method static synthetic access$2200(Lorg/lineageos/internal/statusbar/NetworkTraffic;)Landroid/content/Context;
    .locals 0

    .line 56
    iget-object p0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2300(Lorg/lineageos/internal/statusbar/NetworkTraffic;)Landroid/content/Context;
    .locals 0

    .line 56
    iget-object p0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2400(Lorg/lineageos/internal/statusbar/NetworkTraffic;)Landroid/content/Context;
    .locals 0

    .line 56
    iget-object p0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2500(Lorg/lineageos/internal/statusbar/NetworkTraffic;)Landroid/content/Context;
    .locals 0

    .line 56
    iget-object p0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2600(Lorg/lineageos/internal/statusbar/NetworkTraffic;)Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mShowUnits:Z

    return p0
.end method

.method static synthetic access$2700(Lorg/lineageos/internal/statusbar/NetworkTraffic;)Landroid/content/Context;
    .locals 0

    .line 56
    iget-object p0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2800(Lorg/lineageos/internal/statusbar/NetworkTraffic;)Landroid/content/Context;
    .locals 0

    .line 56
    iget-object p0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2900(Lorg/lineageos/internal/statusbar/NetworkTraffic;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->updateSettings()V

    return-void
.end method

.method static synthetic access$302(Lorg/lineageos/internal/statusbar/NetworkTraffic;I)I
    .locals 0

    .line 56
    iput p1, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mLightModeFillColor:I

    return p1
.end method

.method static synthetic access$400(Lorg/lineageos/internal/statusbar/NetworkTraffic;)Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mNetworkTrafficIsVisible:Z

    return p0
.end method

.method static synthetic access$402(Lorg/lineageos/internal/statusbar/NetworkTraffic;Z)Z
    .locals 0

    .line 56
    iput-boolean p1, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mNetworkTrafficIsVisible:Z

    return p1
.end method

.method static synthetic access$500(Lorg/lineageos/internal/statusbar/NetworkTraffic;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->updateViewState()V

    return-void
.end method

.method static synthetic access$600(Lorg/lineageos/internal/statusbar/NetworkTraffic;)Ljava/util/HashMap;
    .locals 0

    .line 56
    iget-object p0, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mLinkPropertiesMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$700(Lorg/lineageos/internal/statusbar/NetworkTraffic;)Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mNetworksChanged:Z

    return p0
.end method

.method static synthetic access$702(Lorg/lineageos/internal/statusbar/NetworkTraffic;Z)Z
    .locals 0

    .line 56
    iput-boolean p1, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mNetworksChanged:Z

    return p1
.end method

.method static synthetic access$800(Lorg/lineageos/internal/statusbar/NetworkTraffic;)J
    .locals 2

    .line 56
    iget-wide v0, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mLastUpdateTime:J

    return-wide v0
.end method

.method static synthetic access$802(Lorg/lineageos/internal/statusbar/NetworkTraffic;J)J
    .locals 0

    .line 56
    iput-wide p1, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mLastUpdateTime:J

    return-wide p1
.end method

.method static synthetic access$900(Lorg/lineageos/internal/statusbar/NetworkTraffic;)Lorg/lineageos/internal/statusbar/NetworkTraffic$TetheringStats;
    .locals 0

    .line 56
    invoke-direct {p0}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->getOffloadTetheringStats()Lorg/lineageos/internal/statusbar/NetworkTraffic$TetheringStats;

    move-result-object p0

    return-object p0
.end method

.method private getOffloadTetheringStats()Lorg/lineageos/internal/statusbar/NetworkTraffic$TetheringStats;
    .locals 7

    .line 402
    new-instance v0, Lorg/lineageos/internal/statusbar/NetworkTraffic$TetheringStats;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/lineageos/internal/statusbar/NetworkTraffic$TetheringStats;-><init>(Lorg/lineageos/internal/statusbar/NetworkTraffic;Lorg/lineageos/internal/statusbar/NetworkTraffic$1;)V

    const/4 v2, 0x0

    .line 408
    :try_start_0
    iget-object p0, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    invoke-interface {p0, v2}, Landroid/os/INetworkManagementService;->getNetworkStatsTethering(I)Landroid/net/NetworkStats;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 411
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to call getNetworkStatsTethering: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v3, "NetworkTraffic"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, v1

    :goto_0
    if-nez p0, :cond_0

    return-object v0

    .line 421
    :cond_0
    :goto_1
    invoke-virtual {p0}, Landroid/net/NetworkStats;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 422
    invoke-virtual {p0, v2, v1}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v1

    .line 427
    iget v3, v1, Landroid/net/NetworkStats$Entry;->uid:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 428
    iget-wide v3, v0, Lorg/lineageos/internal/statusbar/NetworkTraffic$TetheringStats;->txBytes:J

    iget-wide v5, v1, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v3, v5

    iput-wide v3, v0, Lorg/lineageos/internal/statusbar/NetworkTraffic$TetheringStats;->txBytes:J

    .line 429
    iget-wide v3, v0, Lorg/lineageos/internal/statusbar/NetworkTraffic$TetheringStats;->rxBytes:J

    iget-wide v5, v1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    add-long/2addr v3, v5

    iput-wide v3, v0, Lorg/lineageos/internal/statusbar/NetworkTraffic$TetheringStats;->rxBytes:J

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method private isConnectionAvailable()Z
    .locals 1

    .line 391
    iget-object p0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    .line 392
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 393
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private updateSettings()V
    .locals 7

    .line 436
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const/4 v2, 0x0

    const-string v3, "network_traffic_mode"

    .line 438
    invoke-static {v0, v3, v2, v1}, Llineageos/providers/LineageSettings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mMode:I

    const-string v3, "network_traffic_autohide"

    .line 440
    invoke-static {v0, v3, v2, v1}, Llineageos/providers/LineageSettings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    iput-boolean v3, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mAutoHide:Z

    const-string v3, "network_traffic_units"

    .line 442
    invoke-static {v0, v3, v4, v1}, Llineageos/providers/LineageSettings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mUnits:I

    .line 446
    iget v3, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mUnits:I

    if-eqz v3, :cond_4

    if-eq v3, v4, :cond_3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_2

    const/4 v5, 0x3

    if-eq v3, v5, :cond_1

    const-wide/16 v5, 0x0

    .line 460
    iput-wide v5, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mAutoHideThreshold:J

    goto :goto_1

    :cond_1
    const-wide/16 v5, 0x50

    .line 457
    iput-wide v5, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mAutoHideThreshold:J

    goto :goto_1

    :cond_2
    const-wide/16 v5, 0x8

    .line 454
    iput-wide v5, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mAutoHideThreshold:J

    goto :goto_1

    :cond_3
    const-wide/16 v5, 0x64

    .line 451
    iput-wide v5, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mAutoHideThreshold:J

    goto :goto_1

    :cond_4
    const-wide/16 v5, 0xa

    .line 448
    iput-wide v5, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mAutoHideThreshold:J

    :goto_1
    const-string v3, "network_traffic_show_units"

    .line 464
    invoke-static {v0, v3, v4, v1}, Llineageos/providers/LineageSettings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v4, :cond_5

    move v2, v4

    :cond_5
    iput-boolean v2, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mShowUnits:Z

    .line 468
    iget v0, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mMode:I

    if-eqz v0, :cond_6

    .line 469
    invoke-direct {p0}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->updateTrafficDrawable()V

    .line 471
    :cond_6
    invoke-direct {p0}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->updateViewState()V

    return-void
.end method

.method private updateTrafficDrawable()V
    .locals 3

    .line 485
    iget v0, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const v0, 0x3f07000f

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const v0, 0x3f07000e

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const v0, 0x3f07000d

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 494
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 495
    iget-object v0, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1, v1, v0, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 496
    invoke-direct {p0}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->updateTrafficDrawableColor()V

    return-void
.end method

.method private updateTrafficDrawableColor()V
    .locals 2

    .line 500
    iget-object v0, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 501
    iget p0, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mIconTint:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method private updateViewState()V
    .locals 1

    .line 475
    iget-object p0, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mTrafficHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 4

    .line 167
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 170
    invoke-static {p0}, Lorg/lineageos/internal/statusbar/LineageStatusBarItem;->findManager(Landroid/view/View;)Lorg/lineageos/internal/statusbar/LineageStatusBarItem$Manager;

    move-result-object v0

    .line 171
    iget-object v1, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mDarkReceiver:Lorg/lineageos/internal/statusbar/LineageStatusBarItem$DarkReceiver;

    invoke-interface {v0, v1}, Lorg/lineageos/internal/statusbar/LineageStatusBarItem$Manager;->addDarkReceiver(Lorg/lineageos/internal/statusbar/LineageStatusBarItem$DarkReceiver;)V

    .line 172
    iget-object v1, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mVisibilityReceiver:Lorg/lineageos/internal/statusbar/LineageStatusBarItem$VisibilityReceiver;

    invoke-interface {v0, v1}, Lorg/lineageos/internal/statusbar/LineageStatusBarItem$Manager;->addVisibilityReceiver(Lorg/lineageos/internal/statusbar/LineageStatusBarItem$VisibilityReceiver;)V

    .line 174
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 176
    iget-object v0, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mObserver:Lorg/lineageos/internal/statusbar/NetworkTraffic$SettingsObserver;

    invoke-virtual {v0}, Lorg/lineageos/internal/statusbar/NetworkTraffic$SettingsObserver;->observe()V

    .line 177
    invoke-direct {p0}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->updateSettings()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 182
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 183
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 184
    iget-object p0, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mObserver:Lorg/lineageos/internal/statusbar/NetworkTraffic$SettingsObserver;

    invoke-virtual {p0}, Lorg/lineageos/internal/statusbar/NetworkTraffic$SettingsObserver;->unobserve()V

    return-void
.end method
