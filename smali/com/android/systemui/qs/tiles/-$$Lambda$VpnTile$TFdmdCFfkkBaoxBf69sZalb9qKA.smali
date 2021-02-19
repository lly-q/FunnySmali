.class public final synthetic Lcom/android/systemui/qs/tiles/-$$Lambda$VpnTile$TFdmdCFfkkBaoxBf69sZalb9qKA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/qs/tiles/VpnTile;

.field private final synthetic f$1:Lcom/android/internal/net/VpnProfile;

.field private final synthetic f$2:Landroid/widget/EditText;

.field private final synthetic f$3:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/VpnTile;Lcom/android/internal/net/VpnProfile;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$VpnTile$TFdmdCFfkkBaoxBf69sZalb9qKA;->f$0:Lcom/android/systemui/qs/tiles/VpnTile;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$VpnTile$TFdmdCFfkkBaoxBf69sZalb9qKA;->f$1:Lcom/android/internal/net/VpnProfile;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$VpnTile$TFdmdCFfkkBaoxBf69sZalb9qKA;->f$2:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$VpnTile$TFdmdCFfkkBaoxBf69sZalb9qKA;->f$3:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$VpnTile$TFdmdCFfkkBaoxBf69sZalb9qKA;->f$0:Lcom/android/systemui/qs/tiles/VpnTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$VpnTile$TFdmdCFfkkBaoxBf69sZalb9qKA;->f$1:Lcom/android/internal/net/VpnProfile;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$VpnTile$TFdmdCFfkkBaoxBf69sZalb9qKA;->f$2:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$VpnTile$TFdmdCFfkkBaoxBf69sZalb9qKA;->f$3:Landroid/widget/EditText;

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/qs/tiles/VpnTile;->lambda$connectVpnOrAskForCredentials$3$VpnTile(Lcom/android/internal/net/VpnProfile;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method
