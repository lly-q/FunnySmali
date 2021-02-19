.class public final Llineageos/app/Profile;
.super Ljava/lang/Object;
.source "Profile.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llineageos/app/Profile$ProfileTrigger;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Llineageos/app/Profile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private connections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Llineageos/profiles/ConnectionSettings;",
            ">;"
        }
    .end annotation
.end field

.field private mAirplaneMode:Llineageos/profiles/AirplaneModeSettings;

.field private mBrightness:Llineageos/profiles/BrightnessSettings;

.field private mDefaultGroup:Llineageos/app/ProfileGroup;

.field private mDirty:Z

.field private mDozeMode:I

.field private mName:Ljava/lang/String;

.field private mNameResId:I

.field private mNotificationLightMode:I

.field private mProfileType:I

.field private mRingMode:Llineageos/profiles/RingModeSettings;

.field private mScreenLockMode:Llineageos/profiles/LockSettings;

.field private mSecondaryUuids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusBarIndicator:Z

.field private mTriggers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Llineageos/app/Profile$ProfileTrigger;",
            ">;"
        }
    .end annotation
.end field

.field private mUuid:Ljava/util/UUID;

.field private networkConnectionSubIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Llineageos/profiles/ConnectionSettings;",
            ">;"
        }
    .end annotation
.end field

.field private profileGroups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "Llineageos/app/ProfileGroup;",
            ">;"
        }
    .end annotation
.end field

.field private streams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Llineageos/profiles/StreamSettings;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 354
    new-instance v0, Llineageos/app/Profile$1;

    invoke-direct {v0}, Llineageos/app/Profile$1;-><init>()V

    sput-object v0, Llineageos/app/Profile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llineageos/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Llineageos/app/Profile;->profileGroups:Ljava/util/Map;

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Llineageos/app/Profile;->mStatusBarIndicator:Z

    .line 82
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Llineageos/app/Profile;->streams:Ljava/util/Map;

    .line 84
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Llineageos/app/Profile;->mTriggers:Ljava/util/Map;

    .line 86
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Llineageos/app/Profile;->connections:Ljava/util/Map;

    .line 88
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Llineageos/app/Profile;->networkConnectionSubIds:Ljava/util/Map;

    .line 90
    new-instance v1, Llineageos/profiles/RingModeSettings;

    invoke-direct {v1}, Llineageos/profiles/RingModeSettings;-><init>()V

    iput-object v1, p0, Llineageos/app/Profile;->mRingMode:Llineageos/profiles/RingModeSettings;

    .line 92
    new-instance v1, Llineageos/profiles/AirplaneModeSettings;

    invoke-direct {v1}, Llineageos/profiles/AirplaneModeSettings;-><init>()V

    iput-object v1, p0, Llineageos/app/Profile;->mAirplaneMode:Llineageos/profiles/AirplaneModeSettings;

    .line 94
    new-instance v1, Llineageos/profiles/BrightnessSettings;

    invoke-direct {v1}, Llineageos/profiles/BrightnessSettings;-><init>()V

    iput-object v1, p0, Llineageos/app/Profile;->mBrightness:Llineageos/profiles/BrightnessSettings;

    .line 96
    new-instance v1, Llineageos/profiles/LockSettings;

    invoke-direct {v1}, Llineageos/profiles/LockSettings;-><init>()V

    iput-object v1, p0, Llineageos/app/Profile;->mScreenLockMode:Llineageos/profiles/LockSettings;

    .line 98
    iput v0, p0, Llineageos/app/Profile;->mDozeMode:I

    .line 100
    iput v0, p0, Llineageos/app/Profile;->mNotificationLightMode:I

    .line 379
    invoke-virtual {p0, p1}, Llineageos/app/Profile;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Llineageos/app/Profile$1;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Llineageos/app/Profile;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 2

    .line 447
    check-cast p1, Llineageos/app/Profile;

    .line 448
    iget-object v0, p0, Llineageos/app/Profile;->mName:Ljava/lang/String;

    iget-object v1, p1, Llineageos/app/Profile;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 450
    :cond_0
    iget-object p0, p0, Llineageos/app/Profile;->mName:Ljava/lang/String;

    iget-object p1, p1, Llineageos/app/Profile;->mName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 709
    iget-object p0, p0, Llineageos/app/Profile;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getScreenLockMode()Llineageos/profiles/LockSettings;
    .locals 0

    .line 832
    iget-object p0, p0, Llineageos/app/Profile;->mScreenLockMode:Llineageos/profiles/LockSettings;

    return-object p0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .line 744
    iget-object v0, p0, Llineageos/app/Profile;->mUuid:Ljava/util/UUID;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Llineageos/app/Profile;->mUuid:Ljava/util/UUID;

    .line 745
    :cond_0
    iget-object p0, p0, Llineageos/app/Profile;->mUuid:Ljava/util/UUID;

    return-object p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 9

    .line 628
    invoke-static {p1}, Llineageos/os/Concierge;->receiveParcel(Landroid/os/Parcel;)Llineageos/os/Concierge$ParcelInfo;

    move-result-object v0

    .line 629
    invoke-virtual {v0}, Llineageos/os/Concierge$ParcelInfo;->getParcelVersion()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-lt v1, v3, :cond_f

    .line 635
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 636
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Llineageos/app/Profile;->mName:Ljava/lang/String;

    .line 638
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 639
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Llineageos/app/Profile;->mNameResId:I

    .line 641
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 642
    sget-object v3, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    invoke-virtual {v3}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    iput-object v3, p0, Llineageos/app/Profile;->mUuid:Ljava/util/UUID;

    .line 644
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    .line 645
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v3

    array-length v4, v3

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    .line 646
    check-cast v6, Landroid/os/ParcelUuid;

    .line 647
    iget-object v7, p0, Llineageos/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    invoke-virtual {v6}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 650
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    move v3, v4

    goto :goto_1

    :cond_4
    move v3, v2

    :goto_1
    iput-boolean v3, p0, Llineageos/app/Profile;->mStatusBarIndicator:Z

    .line 651
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Llineageos/app/Profile;->mProfileType:I

    .line 652
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v4, :cond_5

    goto :goto_2

    :cond_5
    move v4, v2

    :goto_2
    iput-boolean v4, p0, Llineageos/app/Profile;->mDirty:Z

    .line 653
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7

    .line 654
    sget-object v3, Llineageos/app/ProfileGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Llineageos/app/ProfileGroup;

    array-length v4, v3

    move v5, v2

    :goto_3
    if-ge v5, v4, :cond_7

    aget-object v6, v3, v5

    .line 655
    iget-object v7, p0, Llineageos/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-virtual {v6}, Llineageos/app/ProfileGroup;->getUuid()Ljava/util/UUID;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    invoke-virtual {v6}, Llineageos/app/ProfileGroup;->isDefaultGroup()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 657
    iput-object v6, p0, Llineageos/app/Profile;->mDefaultGroup:Llineageos/app/ProfileGroup;

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 661
    :cond_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_8

    .line 662
    sget-object v3, Llineageos/profiles/StreamSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Llineageos/profiles/StreamSettings;

    array-length v4, v3

    move v5, v2

    :goto_4
    if-ge v5, v4, :cond_8

    aget-object v6, v3, v5

    .line 663
    iget-object v7, p0, Llineageos/app/Profile;->streams:Ljava/util/Map;

    invoke-virtual {v6}, Llineageos/profiles/StreamSettings;->getStreamId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 666
    :cond_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_9

    .line 668
    sget-object v3, Llineageos/profiles/ConnectionSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Llineageos/profiles/ConnectionSettings;

    array-length v4, v3

    move v5, v2

    :goto_5
    if-ge v5, v4, :cond_9

    aget-object v6, v3, v5

    .line 669
    iget-object v7, p0, Llineageos/app/Profile;->connections:Ljava/util/Map;

    invoke-virtual {v6}, Llineageos/profiles/ConnectionSettings;->getConnectionId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 672
    :cond_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_a

    .line 673
    sget-object v3, Llineageos/profiles/RingModeSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Llineageos/profiles/RingModeSettings;

    iput-object v3, p0, Llineageos/app/Profile;->mRingMode:Llineageos/profiles/RingModeSettings;

    .line 675
    :cond_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_b

    .line 676
    sget-object v3, Llineageos/profiles/AirplaneModeSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Llineageos/profiles/AirplaneModeSettings;

    iput-object v3, p0, Llineageos/app/Profile;->mAirplaneMode:Llineageos/profiles/AirplaneModeSettings;

    .line 678
    :cond_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_c

    .line 679
    sget-object v3, Llineageos/profiles/BrightnessSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Llineageos/profiles/BrightnessSettings;

    iput-object v3, p0, Llineageos/app/Profile;->mBrightness:Llineageos/profiles/BrightnessSettings;

    .line 681
    :cond_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_d

    .line 682
    sget-object v3, Llineageos/profiles/LockSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Llineageos/profiles/LockSettings;

    iput-object v3, p0, Llineageos/app/Profile;->mScreenLockMode:Llineageos/profiles/LockSettings;

    .line 684
    :cond_d
    sget-object v3, Llineageos/app/Profile$ProfileTrigger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Llineageos/app/Profile$ProfileTrigger;

    array-length v4, v3

    move v5, v2

    :goto_6
    if-ge v5, v4, :cond_e

    aget-object v6, v3, v5

    .line 685
    iget-object v7, p0, Llineageos/app/Profile;->mTriggers:Ljava/util/Map;

    invoke-static {v6}, Llineageos/app/Profile$ProfileTrigger;->access$300(Llineageos/app/Profile$ProfileTrigger;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 687
    :cond_e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Llineageos/app/Profile;->mDozeMode:I

    :cond_f
    const/4 v3, 0x5

    if-lt v1, v3, :cond_10

    .line 690
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Llineageos/app/Profile;->mNotificationLightMode:I

    .line 691
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_10

    .line 693
    sget-object v1, Llineageos/profiles/ConnectionSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Llineageos/profiles/ConnectionSettings;

    array-length v1, p1

    :goto_7
    if-ge v2, v1, :cond_10

    aget-object v3, p1, v2

    .line 695
    iget-object v4, p0, Llineageos/app/Profile;->networkConnectionSubIds:Ljava/util/Map;

    invoke-virtual {v3}, Llineageos/profiles/ConnectionSettings;->getSubId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 701
    :cond_10
    invoke-virtual {v0}, Llineageos/os/Concierge$ParcelInfo;->complete()V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 7

    .line 528
    invoke-static {p1}, Llineageos/os/Concierge;->prepareParcel(Landroid/os/Parcel;)Llineageos/os/Concierge$ParcelInfo;

    move-result-object v0

    .line 531
    iget-object v1, p0, Llineageos/app/Profile;->mName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 532
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 533
    iget-object v1, p0, Llineageos/app/Profile;->mName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 535
    :cond_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 537
    :goto_0
    iget v1, p0, Llineageos/app/Profile;->mNameResId:I

    if-eqz v1, :cond_1

    .line 538
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 539
    iget v1, p0, Llineageos/app/Profile;->mNameResId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 541
    :cond_1
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 543
    :goto_1
    iget-object v1, p0, Llineageos/app/Profile;->mUuid:Ljava/util/UUID;

    if-eqz v1, :cond_2

    .line 544
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 545
    new-instance v1, Landroid/os/ParcelUuid;

    iget-object v4, p0, Llineageos/app/Profile;->mUuid:Ljava/util/UUID;

    invoke-direct {v1, v4}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {v1, p1, v3}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 547
    :cond_2
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 549
    :goto_2
    iget-object v1, p0, Llineageos/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 550
    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, p0, Llineageos/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 551
    iget-object v4, p0, Llineageos/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/UUID;

    .line 552
    new-instance v6, Landroid/os/ParcelUuid;

    invoke-direct {v6, v5}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 554
    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    new-array v4, v3, [Landroid/os/Parcelable;

    .line 555
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/Parcelable;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    goto :goto_4

    .line 557
    :cond_4
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 559
    :goto_4
    iget-boolean v1, p0, Llineageos/app/Profile;->mStatusBarIndicator:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 560
    iget v1, p0, Llineageos/app/Profile;->mProfileType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 561
    iget-boolean v1, p0, Llineageos/app/Profile;->mDirty:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 562
    iget-object v1, p0, Llineageos/app/Profile;->profileGroups:Ljava/util/Map;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 563
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 564
    iget-object v1, p0, Llineageos/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    new-array v4, v3, [Llineageos/app/ProfileGroup;

    invoke-interface {v1, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Llineageos/app/ProfileGroup;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_5

    .line 567
    :cond_5
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 569
    :goto_5
    iget-object v1, p0, Llineageos/app/Profile;->streams:Ljava/util/Map;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 570
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 571
    iget-object v1, p0, Llineageos/app/Profile;->streams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    new-array v4, v3, [Llineageos/profiles/StreamSettings;

    invoke-interface {v1, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Llineageos/profiles/StreamSettings;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_6

    .line 574
    :cond_6
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 576
    :goto_6
    iget-object v1, p0, Llineageos/app/Profile;->connections:Ljava/util/Map;

    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 577
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 578
    iget-object v1, p0, Llineageos/app/Profile;->connections:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    new-array v4, v3, [Llineageos/profiles/ConnectionSettings;

    invoke-interface {v1, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Llineageos/profiles/ConnectionSettings;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_7

    .line 581
    :cond_7
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 583
    :goto_7
    iget-object v1, p0, Llineageos/app/Profile;->mRingMode:Llineageos/profiles/RingModeSettings;

    if-eqz v1, :cond_8

    .line 584
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 585
    iget-object v1, p0, Llineageos/app/Profile;->mRingMode:Llineageos/profiles/RingModeSettings;

    invoke-virtual {v1, p1, v3}, Llineageos/profiles/RingModeSettings;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_8

    .line 587
    :cond_8
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 589
    :goto_8
    iget-object v1, p0, Llineageos/app/Profile;->mAirplaneMode:Llineageos/profiles/AirplaneModeSettings;

    if-eqz v1, :cond_9

    .line 590
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 591
    iget-object v1, p0, Llineageos/app/Profile;->mAirplaneMode:Llineageos/profiles/AirplaneModeSettings;

    invoke-virtual {v1, p1, v3}, Llineageos/profiles/AirplaneModeSettings;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 593
    :cond_9
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 595
    :goto_9
    iget-object v1, p0, Llineageos/app/Profile;->mBrightness:Llineageos/profiles/BrightnessSettings;

    if-eqz v1, :cond_a

    .line 596
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 597
    iget-object v1, p0, Llineageos/app/Profile;->mBrightness:Llineageos/profiles/BrightnessSettings;

    invoke-virtual {v1, p1, v3}, Llineageos/profiles/BrightnessSettings;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_a

    .line 599
    :cond_a
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 601
    :goto_a
    iget-object v1, p0, Llineageos/app/Profile;->mScreenLockMode:Llineageos/profiles/LockSettings;

    if-eqz v1, :cond_b

    .line 602
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 603
    iget-object v1, p0, Llineageos/app/Profile;->mScreenLockMode:Llineageos/profiles/LockSettings;

    invoke-virtual {v1, p1, v3}, Llineageos/profiles/LockSettings;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_b

    .line 605
    :cond_b
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 607
    :goto_b
    iget-object v1, p0, Llineageos/app/Profile;->mTriggers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    new-array v4, v3, [Llineageos/app/Profile$ProfileTrigger;

    invoke-interface {v1, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Llineageos/app/Profile$ProfileTrigger;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 608
    iget v1, p0, Llineageos/app/Profile;->mDozeMode:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 611
    iget v1, p0, Llineageos/app/Profile;->mNotificationLightMode:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 613
    iget-object v1, p0, Llineageos/app/Profile;->networkConnectionSubIds:Ljava/util/Map;

    if-eqz v1, :cond_c

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    .line 614
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 615
    iget-object p0, p0, Llineageos/app/Profile;->networkConnectionSubIds:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    new-array v1, v3, [Llineageos/profiles/ConnectionSettings;

    invoke-interface {p0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Llineageos/profiles/ConnectionSettings;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_c

    .line 618
    :cond_c
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 622
    :goto_c
    invoke-virtual {v0}, Llineageos/os/Concierge$ParcelInfo;->complete()V

    return-void
.end method
