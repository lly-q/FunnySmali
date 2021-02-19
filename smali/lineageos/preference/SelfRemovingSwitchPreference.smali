.class public abstract Llineageos/preference/SelfRemovingSwitchPreference;
.super Landroidx/preference/SwitchPreference;
.source "SelfRemovingSwitchPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llineageos/preference/SelfRemovingSwitchPreference$DataStore;
    }
.end annotation


# instance fields
.field private final mConstraints:Llineageos/preference/ConstraintsHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 41
    invoke-direct {p0, p1, p2}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    new-instance v0, Llineageos/preference/ConstraintsHelper;

    invoke-direct {v0, p1, p2, p0}, Llineageos/preference/ConstraintsHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroidx/preference/Preference;)V

    iput-object v0, p0, Llineageos/preference/SelfRemovingSwitchPreference;->mConstraints:Llineageos/preference/ConstraintsHelper;

    .line 43
    new-instance p1, Llineageos/preference/SelfRemovingSwitchPreference$DataStore;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Llineageos/preference/SelfRemovingSwitchPreference$DataStore;-><init>(Llineageos/preference/SelfRemovingSwitchPreference;Llineageos/preference/SelfRemovingSwitchPreference$1;)V

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setPreferenceDataStore(Landroidx/preference/PreferenceDataStore;)V

    return-void
.end method


# virtual methods
.method protected abstract getBoolean(Ljava/lang/String;Z)Z
.end method

.method protected abstract isPersisted()Z
.end method

.method public onAttached()V
    .locals 0

    .line 54
    invoke-super {p0}, Landroidx/preference/Preference;->onAttached()V

    .line 55
    iget-object p0, p0, Llineageos/preference/SelfRemovingSwitchPreference;->mConstraints:Llineageos/preference/ConstraintsHelper;

    invoke-virtual {p0}, Llineageos/preference/ConstraintsHelper;->onAttached()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    .line 60
    invoke-super {p0, p1}, Landroidx/preference/SwitchPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 61
    iget-object p0, p0, Llineageos/preference/SelfRemovingSwitchPreference;->mConstraints:Llineageos/preference/ConstraintsHelper;

    invoke-virtual {p0, p1}, Llineageos/preference/ConstraintsHelper;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    return-void
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_1

    .line 79
    invoke-virtual {p0}, Llineageos/preference/SelfRemovingSwitchPreference;->isPersisted()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Llineageos/preference/SelfRemovingSwitchPreference;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    goto :goto_1

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    return-void

    .line 83
    :cond_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 84
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 85
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->persistBoolean(Z)Z

    .line 92
    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method protected abstract putBoolean(Ljava/lang/String;Z)V
.end method
