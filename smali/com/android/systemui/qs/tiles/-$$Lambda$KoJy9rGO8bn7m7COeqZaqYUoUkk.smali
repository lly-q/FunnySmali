.class public final synthetic Lcom/android/systemui/qs/tiles/-$$Lambda$KoJy9rGO8bn7m7COeqZaqYUoUkk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/qs/tiles/DataUsageDetailView$DataSimSwitchListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$KoJy9rGO8bn7m7COeqZaqYUoUkk;->f$0:Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;

    return-void
.end method


# virtual methods
.method public final onSwitch(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$KoJy9rGO8bn7m7COeqZaqYUoUkk;->f$0:Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->switchDataSim(I)V

    return-void
.end method
