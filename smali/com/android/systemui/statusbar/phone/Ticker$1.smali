.class Lcom/android/systemui/statusbar/phone/Ticker$1;
.super Ljava/lang/Object;
.source "Ticker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/Ticker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/Ticker;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/Ticker;)V
    .locals 0

    .line 376
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/Ticker$1;->this$0:Lcom/android/systemui/statusbar/phone/Ticker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 378
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/Ticker$1;->this$0:Lcom/android/systemui/statusbar/phone/Ticker;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/Ticker;->access$200(Lcom/android/systemui/statusbar/phone/Ticker;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 379
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/Ticker$1;->this$0:Lcom/android/systemui/statusbar/phone/Ticker;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/Ticker;->access$200(Lcom/android/systemui/statusbar/phone/Ticker;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;

    .line 381
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->first:Z

    if-eqz v2, :cond_0

    .line 385
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/Ticker$1;->this$0:Lcom/android/systemui/statusbar/phone/Ticker;

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->icon:Landroid/graphics/drawable/Drawable;

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/phone/Ticker;->access$300(Lcom/android/systemui/statusbar/phone/Ticker;Landroid/graphics/drawable/Drawable;)V

    .line 387
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->advance()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_1

    .line 389
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/Ticker$1;->this$0:Lcom/android/systemui/statusbar/phone/Ticker;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/Ticker;->access$200(Lcom/android/systemui/statusbar/phone/Ticker;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 392
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/Ticker$1;->this$0:Lcom/android/systemui/statusbar/phone/Ticker;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/Ticker;->access$000(Lcom/android/systemui/statusbar/phone/Ticker;)Landroid/widget/TextSwitcher;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 393
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/Ticker$1;->this$0:Lcom/android/systemui/statusbar/phone/Ticker;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/Ticker;->access$000(Lcom/android/systemui/statusbar/phone/Ticker;)Landroid/widget/TextSwitcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/Ticker$1;->this$0:Lcom/android/systemui/statusbar/phone/Ticker;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/Ticker;->access$400(Lcom/android/systemui/statusbar/phone/Ticker;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextSwitcher;->setTextColor(I)V

    .line 395
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/Ticker$1;->this$0:Lcom/android/systemui/statusbar/phone/Ticker;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/Ticker;->access$500(Lcom/android/systemui/statusbar/phone/Ticker;)V

    .line 398
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/Ticker$1;->this$0:Lcom/android/systemui/statusbar/phone/Ticker;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/Ticker;->access$200(Lcom/android/systemui/statusbar/phone/Ticker;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 399
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/Ticker$1;->this$0:Lcom/android/systemui/statusbar/phone/Ticker;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/Ticker;->tickerDone()V

    :cond_3
    return-void
.end method
