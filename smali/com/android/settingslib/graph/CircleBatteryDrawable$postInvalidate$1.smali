.class final Lcom/android/settingslib/graph/CircleBatteryDrawable$postInvalidate$1;
.super Ljava/lang/Object;
.source "CircleBatteryDrawable.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/graph/CircleBatteryDrawable;->postInvalidate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/graph/CircleBatteryDrawable;


# direct methods
.method constructor <init>(Lcom/android/settingslib/graph/CircleBatteryDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable$postInvalidate$1;->this$0:Lcom/android/settingslib/graph/CircleBatteryDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable$postInvalidate$1;->this$0:Lcom/android/settingslib/graph/CircleBatteryDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
