.class Lcom/android/systemui/theme/ThemeOverlayController$1;
.super Ljava/lang/Object;
.source "ThemeOverlayController.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/theme/ThemeOverlayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/theme/ThemeOverlayController;


# direct methods
.method constructor <init>(Lcom/android/systemui/theme/ThemeOverlayController;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/android/systemui/theme/ThemeOverlayController$1;->this$0:Lcom/android/systemui/theme/ThemeOverlayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "lineagesystem:berry_black_theme"

    .line 75
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 76
    iget-object p0, p0, Lcom/android/systemui/theme/ThemeOverlayController$1;->this$0:Lcom/android/systemui/theme/ThemeOverlayController;

    const/4 p1, 0x0

    invoke-static {p2, p1}, Lcom/android/systemui/tuner/TunerService;->parseIntegerSwitch(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/systemui/theme/ThemeOverlayController;->access$000(Lcom/android/systemui/theme/ThemeOverlayController;Z)V

    :cond_0
    return-void
.end method
