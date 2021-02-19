.class Lcom/android/systemui/tuner/TunerServiceImpl$Observer;
.super Landroid/database/ContentObserver;
.source "TunerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tuner/TunerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Observer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/tuner/TunerServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/tuner/TunerServiceImpl;)V
    .locals 1

    .line 375
    iput-object p1, p0, Lcom/android/systemui/tuner/TunerServiceImpl$Observer;->this$0:Lcom/android/systemui/tuner/TunerServiceImpl;

    .line 376
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .locals 1

    .line 381
    iget-object p1, p0, Lcom/android/systemui/tuner/TunerServiceImpl$Observer;->this$0:Lcom/android/systemui/tuner/TunerServiceImpl;

    invoke-static {p1}, Lcom/android/systemui/tuner/TunerServiceImpl;->access$200(Lcom/android/systemui/tuner/TunerServiceImpl;)Landroid/util/ArrayMap;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 382
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-eq p3, v0, :cond_0

    iget-object p3, p0, Lcom/android/systemui/tuner/TunerServiceImpl$Observer;->this$0:Lcom/android/systemui/tuner/TunerServiceImpl;

    invoke-static {p3, p1}, Lcom/android/systemui/tuner/TunerServiceImpl;->access$300(Lcom/android/systemui/tuner/TunerServiceImpl;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 383
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/tuner/TunerServiceImpl$Observer;->this$0:Lcom/android/systemui/tuner/TunerServiceImpl;

    invoke-static {p0, p2}, Lcom/android/systemui/tuner/TunerServiceImpl;->access$400(Lcom/android/systemui/tuner/TunerServiceImpl;Landroid/net/Uri;)V

    :cond_1
    return-void
.end method
