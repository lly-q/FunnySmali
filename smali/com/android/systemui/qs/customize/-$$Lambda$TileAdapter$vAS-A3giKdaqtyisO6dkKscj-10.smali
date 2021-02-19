.class public final synthetic Lcom/android/systemui/qs/customize/-$$Lambda$TileAdapter$vAS-A3giKdaqtyisO6dkKscj-10;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/qs/customize/TileAdapter;

.field private final synthetic f$1:Lcom/android/systemui/qs/customize/TileAdapter$Holder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/customize/TileAdapter;Lcom/android/systemui/qs/customize/TileAdapter$Holder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/customize/-$$Lambda$TileAdapter$vAS-A3giKdaqtyisO6dkKscj-10;->f$0:Lcom/android/systemui/qs/customize/TileAdapter;

    iput-object p2, p0, Lcom/android/systemui/qs/customize/-$$Lambda$TileAdapter$vAS-A3giKdaqtyisO6dkKscj-10;->f$1:Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/-$$Lambda$TileAdapter$vAS-A3giKdaqtyisO6dkKscj-10;->f$0:Lcom/android/systemui/qs/customize/TileAdapter;

    iget-object p0, p0, Lcom/android/systemui/qs/customize/-$$Lambda$TileAdapter$vAS-A3giKdaqtyisO6dkKscj-10;->f$1:Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter;->lambda$onBindViewHolder$0$TileAdapter(Lcom/android/systemui/qs/customize/TileAdapter$Holder;Landroid/view/View;)V

    return-void
.end method
