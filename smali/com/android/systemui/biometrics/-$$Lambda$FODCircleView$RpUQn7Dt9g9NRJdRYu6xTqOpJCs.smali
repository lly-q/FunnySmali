.class public final synthetic Lcom/android/systemui/biometrics/-$$Lambda$FODCircleView$RpUQn7Dt9g9NRJdRYu6xTqOpJCs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/biometrics/FODCircleView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/biometrics/FODCircleView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/biometrics/-$$Lambda$FODCircleView$RpUQn7Dt9g9NRJdRYu6xTqOpJCs;->f$0:Lcom/android/systemui/biometrics/FODCircleView;

    return-void
.end method


# virtual methods
.method public final serviceDied(J)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/-$$Lambda$FODCircleView$RpUQn7Dt9g9NRJdRYu6xTqOpJCs;->f$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/biometrics/FODCircleView;->lambda$getFingerprintInScreenDaemon$0$FODCircleView(J)V

    return-void
.end method
