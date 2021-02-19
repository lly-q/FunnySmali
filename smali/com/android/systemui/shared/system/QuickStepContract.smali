.class public Lcom/android/systemui/shared/system/QuickStepContract;
.super Ljava/lang/Object;
.source "QuickStepContract.java"


# direct methods
.method public static final getQuickStepTouchSlopPx(Landroid/content/Context;)F
    .locals 1

    .line 137
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x40400000    # 3.0f

    mul-float/2addr p0, v0

    return p0
.end method

.method public static getSystemUiStateString(I)Ljava/lang/String;
    .locals 3

    .line 109
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "|"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    and-int/lit8 v1, p0, 0x1

    const-string v2, ""

    if-eqz v1, :cond_0

    const-string v1, "screen_pinned"

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 110
    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_1

    const-string v1, "overview_disabled"

    goto :goto_1

    :cond_1
    move-object v1, v2

    .line 111
    :goto_1
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_2

    const-string v1, "home_disabled"

    goto :goto_2

    :cond_2
    move-object v1, v2

    .line 112
    :goto_2
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    and-int/lit16 v1, p0, 0x400

    if-eqz v1, :cond_3

    const-string v1, "search_disabled"

    goto :goto_3

    :cond_3
    move-object v1, v2

    .line 113
    :goto_3
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_4

    const-string v1, "navbar_hidden"

    goto :goto_4

    :cond_4
    move-object v1, v2

    .line 114
    :goto_4
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_5

    const-string v1, "notif_visible"

    goto :goto_5

    :cond_5
    move-object v1, v2

    .line 115
    :goto_5
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    and-int/lit16 v1, p0, 0x800

    if-eqz v1, :cond_6

    const-string v1, "qs_visible"

    goto :goto_6

    :cond_6
    move-object v1, v2

    .line 116
    :goto_6
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_7

    const-string v1, "keygrd_visible"

    goto :goto_7

    :cond_7
    move-object v1, v2

    .line 117
    :goto_7
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    and-int/lit16 v1, p0, 0x200

    if-eqz v1, :cond_8

    const-string v1, "keygrd_occluded"

    goto :goto_8

    :cond_8
    move-object v1, v2

    .line 118
    :goto_8
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_9

    const-string v1, "bouncer_visible"

    goto :goto_9

    :cond_9
    move-object v1, v2

    .line 120
    :goto_9
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_a

    const-string v1, "a11y_click"

    goto :goto_a

    :cond_a
    move-object v1, v2

    .line 121
    :goto_a
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_b

    const-string v1, "a11y_long_click"

    goto :goto_b

    :cond_b
    move-object v1, v2

    .line 122
    :goto_b
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    and-int/lit16 p0, p0, 0x1000

    if-eqz p0, :cond_c

    const-string v2, "asst_gesture_constrain"

    .line 123
    :cond_c
    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 125
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isAssistantGestureDisabled(I)Z
    .locals 2

    and-int/lit16 v0, p0, 0xc0b

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_1

    and-int/lit8 p0, p0, 0x40

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isBackGestureDisabled(I)Z
    .locals 2

    and-int/lit8 v0, p0, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    and-int/lit8 p0, p0, 0x46

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static isGesturalMode(I)Z
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isLegacyMode(I)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSwipeUpMode(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
