.class Lcom/android/systemui/qs/QuickStatusBarHeader$2;
.super Ljava/lang/Object;
.source "QuickStatusBarHeader.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertyChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QuickStatusBarHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QuickStatusBarHeader;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QuickStatusBarHeader;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader$2;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "privacy"

    .line 182
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "permissions_hub_enabled"

    .line 183
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 185
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader$2;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p1, p2}, Lcom/android/systemui/qs/QuickStatusBarHeader;->access$202(Lcom/android/systemui/qs/QuickStatusBarHeader;Z)Z

    .line 186
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader$2;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeader;

    sget p2, Lcom/android/systemui/R$id;->statusIcons:I

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    .line 187
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader$2;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-static {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->access$300(Lcom/android/systemui/qs/QuickStatusBarHeader;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->setIgnoredSlots(Ljava/util/List;)V

    :cond_0
    return-void
.end method
