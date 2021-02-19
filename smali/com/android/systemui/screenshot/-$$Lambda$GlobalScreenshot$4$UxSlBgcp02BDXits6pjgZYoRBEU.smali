.class public final synthetic Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$4$UxSlBgcp02BDXits6pjgZYoRBEU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/screenshot/GlobalScreenshot$4;

.field private final synthetic f$1:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshot$4;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$4$UxSlBgcp02BDXits6pjgZYoRBEU;->f$0:Lcom/android/systemui/screenshot/GlobalScreenshot$4;

    iput-object p2, p0, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$4$UxSlBgcp02BDXits6pjgZYoRBEU;->f$1:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$4$UxSlBgcp02BDXits6pjgZYoRBEU;->f$0:Lcom/android/systemui/screenshot/GlobalScreenshot$4;

    iget-object p0, p0, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$4$UxSlBgcp02BDXits6pjgZYoRBEU;->f$1:Ljava/util/function/Consumer;

    invoke-virtual {v0, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$4;->lambda$onClick$0$GlobalScreenshot$4(Ljava/util/function/Consumer;)V

    return-void
.end method
