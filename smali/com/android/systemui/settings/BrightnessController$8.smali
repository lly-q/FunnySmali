.class Lcom/android/systemui/settings/BrightnessController$8;
.super Ljava/lang/Object;
.source "BrightnessController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/settings/BrightnessController;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Lcom/android/systemui/settings/ToggleSlider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/BrightnessController;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/BrightnessController;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessController$8;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 298
    iget-object p1, p0, Lcom/android/systemui/settings/BrightnessController$8;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {p1}, Lcom/android/systemui/settings/BrightnessController;->access$400(Lcom/android/systemui/settings/BrightnessController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 299
    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessController$8;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {p0}, Lcom/android/systemui/settings/BrightnessController;->access$900(Lcom/android/systemui/settings/BrightnessController;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    const/4 v0, -0x2

    const-string v1, "screen_brightness_mode"

    .line 298
    invoke-static {p1, v1, p0, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method
