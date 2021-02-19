.class public Lorg/lineageos/internal/lineageparts/PartInfo;
.super Ljava/lang/Object;
.source "PartInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/lineageos/internal/lineageparts/PartInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAvailable:Z

.field private mFragmentClass:Ljava/lang/String;

.field private mIconRes:I

.field private final mName:Ljava/lang/String;

.field private mSummary:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mXmlRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 187
    new-instance v0, Lorg/lineageos/internal/lineageparts/PartInfo$1;

    invoke-direct {v0}, Lorg/lineageos/internal/lineageparts/PartInfo$1;-><init>()V

    sput-object v0, Lorg/lineageos/internal/lineageparts/PartInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lorg/lineageos/internal/lineageparts/PartInfo;->mAvailable:Z

    const/4 v1, 0x0

    .line 43
    iput v1, p0, Lorg/lineageos/internal/lineageparts/PartInfo;->mXmlRes:I

    .line 56
    invoke-static {p1}, Llineageos/os/Concierge;->receiveParcel(Landroid/os/Parcel;)Llineageos/os/Concierge$ParcelInfo;

    move-result-object v2

    .line 57
    invoke-virtual {v2}, Llineageos/os/Concierge$ParcelInfo;->getParcelVersion()I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/lineageos/internal/lineageparts/PartInfo;->mName:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/lineageos/internal/lineageparts/PartInfo;->mTitle:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/lineageos/internal/lineageparts/PartInfo;->mSummary:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/lineageos/internal/lineageparts/PartInfo;->mFragmentClass:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lorg/lineageos/internal/lineageparts/PartInfo;->mIconRes:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/lineageos/internal/lineageparts/PartInfo;->mAvailable:Z

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lorg/lineageos/internal/lineageparts/PartInfo;->mXmlRes:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, v0, v0}, Lorg/lineageos/internal/lineageparts/PartInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lorg/lineageos/internal/lineageparts/PartInfo;->mAvailable:Z

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lorg/lineageos/internal/lineageparts/PartInfo;->mXmlRes:I

    .line 46
    iput-object p1, p0, Lorg/lineageos/internal/lineageparts/PartInfo;->mName:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lorg/lineageos/internal/lineageparts/PartInfo;->mTitle:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lorg/lineageos/internal/lineageparts/PartInfo;->mSummary:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 167
    :cond_0
    const-class v1, Lorg/lineageos/internal/lineageparts/PartInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    return v0

    .line 170
    :cond_1
    check-cast p1, Lorg/lineageos/internal/lineageparts/PartInfo;

    .line 171
    iget-object v1, p0, Lorg/lineageos/internal/lineageparts/PartInfo;->mName:Ljava/lang/String;

    iget-object v2, p1, Lorg/lineageos/internal/lineageparts/PartInfo;->mName:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/lineageos/internal/lineageparts/PartInfo;->mTitle:Ljava/lang/String;

    iget-object v2, p1, Lorg/lineageos/internal/lineageparts/PartInfo;->mTitle:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/lineageos/internal/lineageparts/PartInfo;->mSummary:Ljava/lang/String;

    iget-object v2, p1, Lorg/lineageos/internal/lineageparts/PartInfo;->mSummary:Ljava/lang/String;

    .line 172
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/lineageos/internal/lineageparts/PartInfo;->mFragmentClass:Ljava/lang/String;

    iget-object v2, p1, Lorg/lineageos/internal/lineageparts/PartInfo;->mFragmentClass:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lorg/lineageos/internal/lineageparts/PartInfo;->mIconRes:I

    .line 173
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lorg/lineageos/internal/lineageparts/PartInfo;->mIconRes:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lorg/lineageos/internal/lineageparts/PartInfo;->mAvailable:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p1, Lorg/lineageos/internal/lineageparts/PartInfo;->mAvailable:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget p0, p0, Lorg/lineageos/internal/lineageparts/PartInfo;->mXmlRes:I

    .line 174
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iget p1, p1, Lorg/lineageos/internal/lineageparts/PartInfo;->mXmlRes:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public getAction()Ljava/lang/String;
    .locals 2

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "org.lineageos.lineageparts.parts."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/lineageos/internal/lineageparts/PartInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFragmentClass()Ljava/lang/String;
    .locals 0

    .line 89
    iget-object p0, p0, Lorg/lineageos/internal/lineageparts/PartInfo;->mFragmentClass:Ljava/lang/String;

    return-object p0
.end method

.method public getIconRes()I
    .locals 0

    .line 97
    iget p0, p0, Lorg/lineageos/internal/lineageparts/PartInfo;->mIconRes:I

    return p0
.end method

.method public getIntentForActivity()Landroid/content/Intent;
    .locals 1

    .line 182
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/lineageos/internal/lineageparts/PartInfo;->getAction()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 183
    sget-object p0, Lorg/lineageos/internal/lineageparts/PartsList;->LINEAGEPARTS_ACTIVITY:Landroid/content/ComponentName;

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 0

    .line 85
    iget-object p0, p0, Lorg/lineageos/internal/lineageparts/PartInfo;->mSummary:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 77
    iget-object p0, p0, Lorg/lineageos/internal/lineageparts/PartInfo;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getXmlRes()I
    .locals 0

    .line 113
    iget p0, p0, Lorg/lineageos/internal/lineageparts/PartInfo;->mXmlRes:I

    return p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 105
    iget-boolean p0, p0, Lorg/lineageos/internal/lineageparts/PartInfo;->mAvailable:Z

    return p0
.end method

.method public setAvailable(Z)V
    .locals 0

    .line 109
    iput-boolean p1, p0, Lorg/lineageos/internal/lineageparts/PartInfo;->mAvailable:Z

    return-void
.end method

.method public setFragmentClass(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lorg/lineageos/internal/lineageparts/PartInfo;->mFragmentClass:Ljava/lang/String;

    return-void
.end method

.method public setIconRes(I)V
    .locals 0

    .line 101
    iput p1, p0, Lorg/lineageos/internal/lineageparts/PartInfo;->mIconRes:I

    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lorg/lineageos/internal/lineageparts/PartInfo;->mSummary:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lorg/lineageos/internal/lineageparts/PartInfo;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setXmlRes(I)V
    .locals 0

    .line 117
    iput p1, p0, Lorg/lineageos/internal/lineageparts/PartInfo;->mXmlRes:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 138
    iget-object v1, p0, Lorg/lineageos/internal/lineageparts/PartInfo;->mName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/lineageos/internal/lineageparts/PartInfo;->mTitle:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/lineageos/internal/lineageparts/PartInfo;->mSummary:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/lineageos/internal/lineageparts/PartInfo;->mFragmentClass:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget p0, p0, Lorg/lineageos/internal/lineageparts/PartInfo;->mXmlRes:I

    .line 139
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x4

    aput-object p0, v0, v1

    const-string p0, "PartInfo=[ name=%s title=%s summary=%s fragment=%s xmlRes=%x ]"

    .line 138
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateFrom(Lorg/lineageos/internal/lineageparts/PartInfo;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 124
    :cond_0
    invoke-virtual {p1, p0}, Lorg/lineageos/internal/lineageparts/PartInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 127
    :cond_1
    invoke-virtual {p1}, Lorg/lineageos/internal/lineageparts/PartInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/lineageos/internal/lineageparts/PartInfo;->setTitle(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p1}, Lorg/lineageos/internal/lineageparts/PartInfo;->getSummary()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/lineageos/internal/lineageparts/PartInfo;->setSummary(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p1}, Lorg/lineageos/internal/lineageparts/PartInfo;->getFragmentClass()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/lineageos/internal/lineageparts/PartInfo;->setFragmentClass(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p1}, Lorg/lineageos/internal/lineageparts/PartInfo;->getIconRes()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/lineageos/internal/lineageparts/PartInfo;->setIconRes(I)V

    .line 131
    invoke-virtual {p1}, Lorg/lineageos/internal/lineageparts/PartInfo;->isAvailable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/lineageos/internal/lineageparts/PartInfo;->setAvailable(Z)V

    .line 132
    invoke-virtual {p1}, Lorg/lineageos/internal/lineageparts/PartInfo;->getXmlRes()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/lineageos/internal/lineageparts/PartInfo;->setXmlRes(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 149
    invoke-static {p1}, Llineageos/os/Concierge;->prepareParcel(Landroid/os/Parcel;)Llineageos/os/Concierge$ParcelInfo;

    move-result-object p2

    .line 151
    iget-object v0, p0, Lorg/lineageos/internal/lineageparts/PartInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lorg/lineageos/internal/lineageparts/PartInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lorg/lineageos/internal/lineageparts/PartInfo;->mSummary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lorg/lineageos/internal/lineageparts/PartInfo;->mFragmentClass:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    iget v0, p0, Lorg/lineageos/internal/lineageparts/PartInfo;->mIconRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    iget-boolean v0, p0, Lorg/lineageos/internal/lineageparts/PartInfo;->mAvailable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    iget p0, p0, Lorg/lineageos/internal/lineageparts/PartInfo;->mXmlRes:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    invoke-virtual {p2}, Llineageos/os/Concierge$ParcelInfo;->complete()V

    return-void
.end method
