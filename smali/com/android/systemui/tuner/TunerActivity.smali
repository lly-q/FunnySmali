.class public Lcom/android/systemui/tuner/TunerActivity;
.super Landroid/app/Activity;
.source "TunerActivity.java"

# interfaces
.implements Landroidx/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;
.implements Landroidx/preference/PreferenceFragment$OnPreferenceStartScreenCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/tuner/TunerActivity$SubSettingsFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic lambda$onDestroy$0(Lcom/android/systemui/fragments/FragmentService;)V
    .locals 0

    .line 79
    invoke-virtual {p0}, Lcom/android/systemui/fragments/FragmentService;->destroyAll()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 94
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, -0x80000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const/4 p1, 0x1

    .line 47
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 48
    sget p1, Lcom/android/systemui/R$layout;->tuner_activity:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 49
    sget p1, Lcom/android/systemui/R$id;->action_bar:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Toolbar;

    if-eqz p1, :cond_0

    .line 51
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setActionBar(Landroid/widget/Toolbar;)V

    .line 54
    :cond_0
    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/SystemUIFactory;->getRootComponent()Lcom/android/systemui/SystemUIRootComponent;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/Dependency;->initDependencies(Lcom/android/systemui/SystemUIRootComponent;)V

    .line 56
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const-string v0, "tuner"

    invoke-virtual {p1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_5

    .line 57
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.android.settings.action.DEMO_MODE"

    .line 59
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    new-instance p1, Lcom/android/systemui/tuner/DemoModeFragment;

    invoke-direct {p1}, Lcom/android/systemui/tuner/DemoModeFragment;-><init>()V

    goto :goto_0

    :cond_1
    const-string v1, "com.android.settings.action.NAV_BAR_TUNER"

    .line 61
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 62
    new-instance p1, Lcom/android/systemui/tuner/NavBarTuner;

    invoke-direct {p1}, Lcom/android/systemui/tuner/NavBarTuner;-><init>()V

    goto :goto_0

    :cond_2
    const-string v1, "com.android.settings.action.POWER_NOTIF_CONTROLS"

    .line 63
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 64
    new-instance p1, Lcom/android/systemui/tuner/PowerNotificationControlsFragment;

    invoke-direct {p1}, Lcom/android/systemui/tuner/PowerNotificationControlsFragment;-><init>()V

    goto :goto_0

    :cond_3
    const-string v1, "com.android.settings.action.STATUS_BAR_TUNER"

    .line 65
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 66
    new-instance p1, Lcom/android/systemui/tuner/StatusBarTuner;

    invoke-direct {p1}, Lcom/android/systemui/tuner/StatusBarTuner;-><init>()V

    goto :goto_0

    .line 68
    :cond_4
    new-instance p1, Lcom/android/systemui/tuner/TunerFragment;

    invoke-direct {p1}, Lcom/android/systemui/tuner/TunerFragment;-><init>()V

    .line 71
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$id;->content_frame:I

    invoke-virtual {p0, v1, p1, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p0

    .line 72
    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commit()I

    :cond_5
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 78
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 79
    const-class p0, Lcom/android/systemui/fragments/FragmentService;

    sget-object v0, Lcom/android/systemui/tuner/-$$Lambda$TunerActivity$RI23eCWQLUIRemsdYo0hJRYd5ug;->INSTANCE:Lcom/android/systemui/tuner/-$$Lambda$TunerActivity$RI23eCWQLUIRemsdYo0hJRYd5ug;

    invoke-static {p0, v0}, Lcom/android/systemui/Dependency;->destroy(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    .line 80
    invoke-static {}, Lcom/android/systemui/Dependency;->clearDependencies()V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 2

    .line 85
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerActivity;->onBackPressed()V

    const/4 p0, 0x1

    return p0

    .line 89
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPreferenceStartFragment(Landroidx/preference/PreferenceFragment;Landroidx/preference/Preference;)Z
    .locals 4

    .line 102
    :try_start_0
    invoke-virtual {p2}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 103
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Fragment;

    .line 104
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT"

    .line 105
    invoke-virtual {p2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 107
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 108
    invoke-virtual {p2}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 109
    sget p0, Lcom/android/systemui/R$id;->content_frame:I

    invoke-virtual {v0, p0, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    const-string p0, "PreferenceFragment"

    .line 110
    invoke-virtual {v0, p0}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 111
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p0

    const-string p1, "TunerActivity"

    const-string p2, "Problem launching fragment"

    .line 114
    invoke-static {p1, p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public onPreferenceStartScreen(Landroidx/preference/PreferenceFragment;Landroidx/preference/PreferenceScreen;)Z
    .locals 4

    .line 121
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p0

    .line 122
    new-instance v0, Lcom/android/systemui/tuner/TunerActivity$SubSettingsFragment;

    invoke-direct {v0}, Lcom/android/systemui/tuner/TunerActivity$SubSettingsFragment;-><init>()V

    .line 123
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 124
    invoke-virtual {p2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p2

    const-string v3, "androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT"

    invoke-virtual {v1, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0, v1}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 126
    invoke-virtual {v0, p1, p2}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 127
    sget p1, Lcom/android/systemui/R$id;->content_frame:I

    invoke-virtual {p0, p1, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    const-string p1, "PreferenceFragment"

    .line 128
    invoke-virtual {p0, p1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 129
    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commit()I

    return v2
.end method
