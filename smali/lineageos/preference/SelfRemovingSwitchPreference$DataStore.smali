.class Llineageos/preference/SelfRemovingSwitchPreference$DataStore;
.super Landroidx/preference/PreferenceDataStore;
.source "SelfRemovingSwitchPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llineageos/preference/SelfRemovingSwitchPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataStore"
.end annotation


# instance fields
.field final synthetic this$0:Llineageos/preference/SelfRemovingSwitchPreference;


# direct methods
.method private constructor <init>(Llineageos/preference/SelfRemovingSwitchPreference;)V
    .locals 0

    .line 95
    iput-object p1, p0, Llineageos/preference/SelfRemovingSwitchPreference$DataStore;->this$0:Llineageos/preference/SelfRemovingSwitchPreference;

    invoke-direct {p0}, Landroidx/preference/PreferenceDataStore;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Llineageos/preference/SelfRemovingSwitchPreference;Llineageos/preference/SelfRemovingSwitchPreference$1;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Llineageos/preference/SelfRemovingSwitchPreference$DataStore;-><init>(Llineageos/preference/SelfRemovingSwitchPreference;)V

    return-void
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 0

    .line 103
    iget-object p0, p0, Llineageos/preference/SelfRemovingSwitchPreference$DataStore;->this$0:Llineageos/preference/SelfRemovingSwitchPreference;

    invoke-virtual {p0, p1, p2}, Llineageos/preference/SelfRemovingSwitchPreference;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 0

    .line 98
    iget-object p0, p0, Llineageos/preference/SelfRemovingSwitchPreference$DataStore;->this$0:Llineageos/preference/SelfRemovingSwitchPreference;

    invoke-virtual {p0, p1, p2}, Llineageos/preference/SelfRemovingSwitchPreference;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
