.class public Lorg/lineageos/internal/lineageparts/LineagePartsPreference;
.super Llineageos/preference/RemotePreference;
.source "LineagePartsPreference.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPart:Lorg/lineageos/internal/lineageparts/PartInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 54
    sget v0, Landroidx/preference/R$attr;->preferenceScreenStyle:I

    invoke-direct {p0, p1, p2, v0}, Lorg/lineageos/internal/lineageparts/LineagePartsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/lineageos/internal/lineageparts/LineagePartsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Llineageos/preference/RemotePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 39
    iput-object p1, p0, Lorg/lineageos/internal/lineageparts/LineagePartsPreference;->mContext:Landroid/content/Context;

    .line 40
    invoke-static {p1}, Lorg/lineageos/internal/lineageparts/PartsList;->get(Landroid/content/Context;)Lorg/lineageos/internal/lineageparts/PartsList;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/lineageos/internal/lineageparts/PartsList;->getPartInfo(Ljava/lang/String;)Lorg/lineageos/internal/lineageparts/PartInfo;

    move-result-object p1

    iput-object p1, p0, Lorg/lineageos/internal/lineageparts/LineagePartsPreference;->mPart:Lorg/lineageos/internal/lineageparts/PartInfo;

    .line 41
    iget-object p1, p0, Lorg/lineageos/internal/lineageparts/LineagePartsPreference;->mPart:Lorg/lineageos/internal/lineageparts/PartInfo;

    if-eqz p1, :cond_0

    .line 45
    invoke-direct {p0}, Lorg/lineageos/internal/lineageparts/LineagePartsPreference;->updatePreference()V

    .line 46
    iget-object p1, p0, Lorg/lineageos/internal/lineageparts/LineagePartsPreference;->mPart:Lorg/lineageos/internal/lineageparts/PartInfo;

    invoke-virtual {p1}, Lorg/lineageos/internal/lineageparts/PartInfo;->getIntentForActivity()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    return-void

    .line 42
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Part not found: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private updatePreference()V
    .locals 2

    .line 75
    invoke-virtual {p0}, Llineageos/preference/SelfRemovingPreference;->isAvailable()Z

    move-result v0

    iget-object v1, p0, Lorg/lineageos/internal/lineageparts/LineagePartsPreference;->mPart:Lorg/lineageos/internal/lineageparts/PartInfo;

    invoke-virtual {v1}, Lorg/lineageos/internal/lineageparts/PartInfo;->isAvailable()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 76
    iget-object v0, p0, Lorg/lineageos/internal/lineageparts/LineagePartsPreference;->mPart:Lorg/lineageos/internal/lineageparts/PartInfo;

    invoke-virtual {v0}, Lorg/lineageos/internal/lineageparts/PartInfo;->isAvailable()Z

    move-result v0

    invoke-virtual {p0, v0}, Llineageos/preference/SelfRemovingPreference;->setAvailable(Z)V

    .line 78
    :cond_0
    invoke-virtual {p0}, Llineageos/preference/SelfRemovingPreference;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lorg/lineageos/internal/lineageparts/LineagePartsPreference;->mPart:Lorg/lineageos/internal/lineageparts/PartInfo;

    invoke-virtual {v0}, Lorg/lineageos/internal/lineageparts/PartInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lorg/lineageos/internal/lineageparts/LineagePartsPreference;->mPart:Lorg/lineageos/internal/lineageparts/PartInfo;

    invoke-virtual {v0}, Lorg/lineageos/internal/lineageparts/PartInfo;->getSummary()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected getRemoteKey(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 0

    .line 71
    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onRemoteUpdated(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, ":lineage:part"

    .line 59
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lorg/lineageos/internal/lineageparts/PartInfo;

    if-eqz p1, :cond_0

    .line 62
    iget-object v0, p0, Lorg/lineageos/internal/lineageparts/LineagePartsPreference;->mPart:Lorg/lineageos/internal/lineageparts/PartInfo;

    invoke-virtual {v0, p1}, Lorg/lineageos/internal/lineageparts/PartInfo;->updateFrom(Lorg/lineageos/internal/lineageparts/PartInfo;)Z

    .line 63
    invoke-direct {p0}, Lorg/lineageos/internal/lineageparts/LineagePartsPreference;->updatePreference()V

    :cond_0
    return-void
.end method
