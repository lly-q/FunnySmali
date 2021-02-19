.class public final synthetic Lcom/android/systemui/qs/tiles/-$$Lambda$VpnTile$1g6xNGkmiFAuePm1UZepEL-PXMc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/widget/EditText;

.field private final synthetic f$1:Landroid/widget/EditText;

.field private final synthetic f$2:Landroid/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/app/AlertDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$VpnTile$1g6xNGkmiFAuePm1UZepEL-PXMc;->f$0:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$VpnTile$1g6xNGkmiFAuePm1UZepEL-PXMc;->f$1:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$VpnTile$1g6xNGkmiFAuePm1UZepEL-PXMc;->f$2:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$VpnTile$1g6xNGkmiFAuePm1UZepEL-PXMc;->f$0:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$VpnTile$1g6xNGkmiFAuePm1UZepEL-PXMc;->f$1:Landroid/widget/EditText;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$VpnTile$1g6xNGkmiFAuePm1UZepEL-PXMc;->f$2:Landroid/app/AlertDialog;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/qs/tiles/VpnTile;->lambda$connectVpnOrAskForCredentials$4(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/app/AlertDialog;)V

    return-void
.end method
