.class public final synthetic Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$OzemYdH6uBz3AWGTF0HM14cYNNM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/volume/VolumeDialogImpl;

.field private final synthetic f$1:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$OzemYdH6uBz3AWGTF0HM14cYNNM;->f$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    iput-object p2, p0, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$OzemYdH6uBz3AWGTF0HM14cYNNM;->f$1:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$OzemYdH6uBz3AWGTF0HM14cYNNM;->f$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    iget-object p0, p0, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$OzemYdH6uBz3AWGTF0HM14cYNNM;->f$1:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->lambda$initAppRow$3$VolumeDialogImpl(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Landroid/view/View;)V

    return-void
.end method
