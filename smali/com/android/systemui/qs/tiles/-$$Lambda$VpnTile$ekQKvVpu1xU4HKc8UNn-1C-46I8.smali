.class public final synthetic Lcom/android/systemui/qs/tiles/-$$Lambda$VpnTile$ekQKvVpu1xU4HKc8UNn-1C-46I8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/qs/tiles/VpnTile;

.field private final synthetic f$1:Ljava/util/List;

.field private final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/VpnTile;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$VpnTile$ekQKvVpu1xU4HKc8UNn-1C-46I8;->f$0:Lcom/android/systemui/qs/tiles/VpnTile;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$VpnTile$ekQKvVpu1xU4HKc8UNn-1C-46I8;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$VpnTile$ekQKvVpu1xU4HKc8UNn-1C-46I8;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$VpnTile$ekQKvVpu1xU4HKc8UNn-1C-46I8;->f$0:Lcom/android/systemui/qs/tiles/VpnTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$VpnTile$ekQKvVpu1xU4HKc8UNn-1C-46I8;->f$1:Ljava/util/List;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$VpnTile$ekQKvVpu1xU4HKc8UNn-1C-46I8;->f$2:Ljava/util/List;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/qs/tiles/VpnTile;->lambda$showConnectDialogOrDisconnect$2$VpnTile(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
