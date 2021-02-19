.class Lcom/android/systemui/qs/tiles/DataUsageDetailView$1;
.super Ljava/lang/Object;
.source "DataUsageDetailView.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/DataUsageDetailView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/DataUsageDetailView;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/DataUsageDetailView;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DataUsageDetailView$1;->this$0:Lcom/android/systemui/qs/tiles/DataUsageDetailView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 53
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/DataUsageDetailView$1;->this$0:Lcom/android/systemui/qs/tiles/DataUsageDetailView;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->access$000(Lcom/android/systemui/qs/tiles/DataUsageDetailView;)Lcom/android/systemui/qs/tiles/DataUsageDetailView$DataSimSwitchListener;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 54
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DataUsageDetailView$1;->this$0:Lcom/android/systemui/qs/tiles/DataUsageDetailView;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->access$000(Lcom/android/systemui/qs/tiles/DataUsageDetailView;)Lcom/android/systemui/qs/tiles/DataUsageDetailView$DataSimSwitchListener;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/android/systemui/qs/tiles/DataUsageDetailView$DataSimSwitchListener;->onSwitch(I)V

    return-void
.end method
