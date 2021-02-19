.class Lcom/android/systemui/qs/tiles/AODTile$1;
.super Lcom/android/systemui/qs/SecureSetting;
.source "AODTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/AODTile;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/statusbar/policy/BatteryController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/AODTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/AODTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AODTile$1;->this$0:Lcom/android/systemui/qs/tiles/AODTile;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/SecureSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(IZ)V
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/AODTile$1;->this$0:Lcom/android/systemui/qs/tiles/AODTile;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/systemui/qs/tiles/AODTile;->access$000(Lcom/android/systemui/qs/tiles/AODTile;Ljava/lang/Object;)V

    return-void
.end method
