.class Llineageos/preference/SelfRemovingListPreference$DataStore;
.super Landroidx/preference/PreferenceDataStore;
.source "SelfRemovingListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llineageos/preference/SelfRemovingListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataStore"
.end annotation


# instance fields
.field final synthetic this$0:Llineageos/preference/SelfRemovingListPreference;


# direct methods
.method private constructor <init>(Llineageos/preference/SelfRemovingListPreference;)V
    .locals 0

    .line 95
    iput-object p1, p0, Llineageos/preference/SelfRemovingListPreference$DataStore;->this$0:Llineageos/preference/SelfRemovingListPreference;

    invoke-direct {p0}, Landroidx/preference/PreferenceDataStore;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Llineageos/preference/SelfRemovingListPreference;Llineageos/preference/SelfRemovingListPreference$1;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Llineageos/preference/SelfRemovingListPreference$DataStore;-><init>(Llineageos/preference/SelfRemovingListPreference;)V

    return-void
.end method


# virtual methods
.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 103
    iget-object p0, p0, Llineageos/preference/SelfRemovingListPreference$DataStore;->this$0:Llineageos/preference/SelfRemovingListPreference;

    invoke-virtual {p0, p1, p2}, Llineageos/preference/SelfRemovingListPreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 98
    iget-object p0, p0, Llineageos/preference/SelfRemovingListPreference$DataStore;->this$0:Llineageos/preference/SelfRemovingListPreference;

    invoke-virtual {p0, p1, p2}, Llineageos/preference/SelfRemovingListPreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
