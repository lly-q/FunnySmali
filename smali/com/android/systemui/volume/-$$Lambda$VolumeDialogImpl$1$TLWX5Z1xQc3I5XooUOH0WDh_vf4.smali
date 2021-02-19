.class public final synthetic Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$1$TLWX5Z1xQc3I5XooUOH0WDh_vf4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/volume/VolumeDialogImpl$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/volume/VolumeDialogImpl$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$1$TLWX5Z1xQc3I5XooUOH0WDh_vf4;->f$0:Lcom/android/systemui/volume/VolumeDialogImpl$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$1$TLWX5Z1xQc3I5XooUOH0WDh_vf4;->f$0:Lcom/android/systemui/volume/VolumeDialogImpl$1;

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl$1;->lambda$onTuningChanged$1$VolumeDialogImpl$1()V

    return-void
.end method
