.class Lcom/android/systemui/qs/customize/QSCustomizer$3;
.super Ljava/lang/Object;
.source "QSCustomizer.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/QSCustomizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/QSCustomizer;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/QSCustomizer;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer$3;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardShowingChanged()V
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$3;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$3;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->access$000(Lcom/android/systemui/qs/customize/QSCustomizer;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$3;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->access$100(Lcom/android/systemui/qs/customize/QSCustomizer;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 324
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$3;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->hide()V

    :cond_1
    return-void
.end method
