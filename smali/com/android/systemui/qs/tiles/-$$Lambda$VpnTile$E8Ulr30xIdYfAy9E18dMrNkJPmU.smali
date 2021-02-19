.class public final synthetic Lcom/android/systemui/qs/tiles/-$$Lambda$VpnTile$E8Ulr30xIdYfAy9E18dMrNkJPmU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/qs/tiles/VpnTile;

.field private final synthetic f$1:I

.field private final synthetic f$2:Ljava/util/List;

.field private final synthetic f$3:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/VpnTile;ILjava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$VpnTile$E8Ulr30xIdYfAy9E18dMrNkJPmU;->f$0:Lcom/android/systemui/qs/tiles/VpnTile;

    iput p2, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$VpnTile$E8Ulr30xIdYfAy9E18dMrNkJPmU;->f$1:I

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$VpnTile$E8Ulr30xIdYfAy9E18dMrNkJPmU;->f$2:Ljava/util/List;

    iput-object p4, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$VpnTile$E8Ulr30xIdYfAy9E18dMrNkJPmU;->f$3:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$VpnTile$E8Ulr30xIdYfAy9E18dMrNkJPmU;->f$0:Lcom/android/systemui/qs/tiles/VpnTile;

    iget v1, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$VpnTile$E8Ulr30xIdYfAy9E18dMrNkJPmU;->f$1:I

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$VpnTile$E8Ulr30xIdYfAy9E18dMrNkJPmU;->f$2:Ljava/util/List;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$VpnTile$E8Ulr30xIdYfAy9E18dMrNkJPmU;->f$3:Ljava/util/List;

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/qs/tiles/VpnTile;->lambda$showConnectDialogOrDisconnect$1$VpnTile(ILjava/util/List;Ljava/util/List;Landroid/content/DialogInterface;I)V

    return-void
.end method
