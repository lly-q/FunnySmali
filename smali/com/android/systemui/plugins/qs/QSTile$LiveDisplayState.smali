.class public Lcom/android/systemui/plugins/qs/QSTile$LiveDisplayState;
.super Lcom/android/systemui/plugins/qs/QSTile$State;
.source "QSTile.java"


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/ProvidesInterface;
    version = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugins/qs/QSTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LiveDisplayState"
.end annotation


# static fields
.field public static final VERSION:I = 0x1


# instance fields
.field public mode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 285
    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$State;-><init>()V

    return-void
.end method


# virtual methods
.method public copy()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    .line 305
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$LiveDisplayState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$LiveDisplayState;-><init>()V

    .line 306
    invoke-virtual {p0, v0}, Lcom/android/systemui/plugins/qs/QSTile$LiveDisplayState;->copyTo(Lcom/android/systemui/plugins/qs/QSTile$State;)Z

    return-object v0
.end method

.method public copyTo(Lcom/android/systemui/plugins/qs/QSTile$State;)Z
    .locals 4

    .line 291
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$LiveDisplayState;

    .line 292
    iget v1, p0, Lcom/android/systemui/plugins/qs/QSTile$LiveDisplayState;->mode:I

    iget v0, v0, Lcom/android/systemui/plugins/qs/QSTile$LiveDisplayState;->mode:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 293
    :goto_0
    invoke-super {p0, p1}, Lcom/android/systemui/plugins/qs/QSTile$State;->copyTo(Lcom/android/systemui/plugins/qs/QSTile$State;)Z

    move-result p0

    if-nez p0, :cond_2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :cond_2
    :goto_1
    return v2
.end method

.method protected toStringBuilder()Ljava/lang/StringBuilder;
    .locals 4

    .line 298
    invoke-super {p0}, Lcom/android/systemui/plugins/qs/QSTile$State;->toStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 299
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ",mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/plugins/qs/QSTile$LiveDisplayState;->mode:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0
.end method
