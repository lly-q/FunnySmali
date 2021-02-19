.class public Lcom/android/systemui/biometrics/FODCircleViewImpl;
.super Lcom/android/systemui/SystemUI;
.source "FODCircleViewImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field private mFodCircleView:Lcom/android/systemui/biometrics/FODCircleView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    return-void
.end method


# virtual methods
.method public hideInDisplayFingerprintView()V
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/systemui/biometrics/FODCircleViewImpl;->mFodCircleView:Lcom/android/systemui/biometrics/FODCircleView;

    if-eqz p0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/FODCircleView;->hide()V

    :cond_0
    return-void
.end method

.method public showInDisplayFingerprintView()V
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/systemui/biometrics/FODCircleViewImpl;->mFodCircleView:Lcom/android/systemui/biometrics/FODCircleView;

    if-eqz p0, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/FODCircleView;->show()V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.fingerprint"

    .line 37
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "vendor.lineage.biometrics.fingerprint.inscreen"

    .line 38
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    const-class v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p0, v0}, Lcom/android/systemui/SystemUI;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 43
    :try_start_0
    new-instance v0, Lcom/android/systemui/biometrics/FODCircleView;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/biometrics/FODCircleView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/FODCircleViewImpl;->mFodCircleView:Lcom/android/systemui/biometrics/FODCircleView;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "FODCircleViewImpl"

    const-string v1, "Failed to initialize FODCircleView"

    .line 45
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method
