.class public abstract Lcom/android/systemui/statusbar/phone/LyricTicker;
.super Ljava/lang/Object;
.source "LyricTicker.java"

# interfaces
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;


# instance fields
.field private icon:Landroid/graphics/drawable/Drawable;

.field private mAnimationIn:Landroid/view/animation/Animation;

.field private mAnimationOut:Landroid/view/animation/Animation;

.field private mContext:Landroid/content/Context;

.field private mCurrentNotification:Landroid/service/notification/StatusBarNotification;

.field private mCurrentText:Ljava/lang/CharSequence;

.field private mIconSwitcher:Landroid/widget/ImageSwitcher;

.field private mIconTint:I

.field private mNotificationColorUtil:Lcom/android/internal/util/ContrastColorUtil;

.field private mTextColor:I

.field private mTextSwitcher:Landroid/widget/TextSwitcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, -0x1

    .line 58
    iput p2, p0, Lcom/android/systemui/statusbar/phone/LyricTicker;->mIconTint:I

    .line 59
    iput p2, p0, Lcom/android/systemui/statusbar/phone/LyricTicker;->mTextColor:I

    .line 72
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LyricTicker;->mContext:Landroid/content/Context;

    .line 74
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LyricTicker;->updateAnimation()V

    .line 76
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LyricTicker;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/internal/util/ContrastColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/ContrastColorUtil;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LyricTicker;->mNotificationColorUtil:Lcom/android/internal/util/ContrastColorUtil;

    .line 78
    const-class p1, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    return-void
.end method

.method private isNotificationEquals(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/StatusBarNotification;)Z
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 93
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result p0

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setAppIconColor(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LyricTicker;->mNotificationColorUtil:Lcom/android/internal/util/ContrastColorUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/ContrastColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    .line 197
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LyricTicker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/LyricTicker;->mIconTint:I

    invoke-virtual {v1, p1, p0, v0}, Landroid/widget/ImageSwitcher;->setImageDrawableTint(Landroid/graphics/drawable/Drawable;IZ)V

    return-void
.end method

.method private setViewAnimations()V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LyricTicker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LyricTicker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    if-nez v0, :cond_0

    goto :goto_0

    .line 162
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LyricTicker;->mAnimationIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 163
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LyricTicker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LyricTicker;->mAnimationOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 164
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LyricTicker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LyricTicker;->mAnimationIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 165
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LyricTicker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LyricTicker;->mAnimationOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private stopTicker()V
    .locals 1

    .line 149
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LyricTicker;->tickerDone()V

    const/4 v0, 0x0

    .line 150
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LyricTicker;->mCurrentNotification:Landroid/service/notification/StatusBarNotification;

    return-void
.end method


# virtual methods
.method public applyDarkIntensity(Landroid/graphics/Rect;Landroid/view/View;I)V
    .locals 0

    .line 185
    invoke-static {p1, p2, p3}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/LyricTicker;->mTextColor:I

    .line 186
    iget p1, p0, Lcom/android/systemui/statusbar/phone/LyricTicker;->mTextColor:I

    iput p1, p0, Lcom/android/systemui/statusbar/phone/LyricTicker;->mIconTint:I

    .line 187
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/LyricTicker;->mCurrentNotification:Landroid/service/notification/StatusBarNotification;

    if-nez p2, :cond_0

    return-void

    .line 188
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/LyricTicker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Landroid/widget/TextSwitcher;->setTextColor(I)V

    .line 189
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LyricTicker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    if-eqz p1, :cond_2

    .line 190
    invoke-virtual {p1}, Landroid/widget/ImageSwitcher;->reset()V

    .line 191
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LyricTicker;->icon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/LyricTicker;->setAppIconColor(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public halt()V
    .locals 1

    .line 144
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LyricTicker;->tickerHalting()V

    const/4 v0, 0x0

    .line 145
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LyricTicker;->mCurrentNotification:Landroid/service/notification/StatusBarNotification;

    return-void
.end method

.method public reflowText()V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LyricTicker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LyricTicker;->mCurrentText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextSwitcher;->setCurrentText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LyricTicker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/LyricTicker;->mTextColor:I

    invoke-virtual {v0, p0}, Landroid/widget/TextSwitcher;->setTextColor(I)V

    return-void
.end method

.method public removeEntry(Landroid/service/notification/StatusBarNotification;)V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LyricTicker;->mCurrentNotification:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/LyricTicker;->isNotificationEquals(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/StatusBarNotification;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 139
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LyricTicker;->stopTicker()V

    :cond_0
    return-void
.end method

.method public setViews(Landroid/widget/TextSwitcher;Landroid/widget/ImageSwitcher;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LyricTicker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    .line 155
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/LyricTicker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    .line 157
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LyricTicker;->setViewAnimations()V

    return-void
.end method

.method public abstract tickerDone()V
.end method

.method public abstract tickerHalting()V
.end method

.method public abstract tickerStarting()V
.end method

.method public updateAnimation()V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LyricTicker;->mContext:Landroid/content/Context;

    const v1, 0x10a007b

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LyricTicker;->mAnimationIn:Landroid/view/animation/Animation;

    .line 84
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LyricTicker;->mContext:Landroid/content/Context;

    const v1, 0x10a007c

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LyricTicker;->mAnimationOut:Landroid/view/animation/Animation;

    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LyricTicker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LyricTicker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    if-eqz v0, :cond_0

    .line 88
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LyricTicker;->setViewAnimations()V

    :cond_0
    return-void
.end method

.method public updateNotification(Landroid/service/notification/StatusBarNotification;)V
    .locals 12

    .line 98
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 100
    iget v1, v0, Landroid/app/Notification;->flags:I

    const/high16 v2, 0x1000000

    and-int/2addr v2, v1

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/high16 v2, 0x2000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-nez v1, :cond_2

    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LyricTicker;->mCurrentNotification:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/LyricTicker;->isNotificationEquals(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/StatusBarNotification;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 105
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LyricTicker;->mCurrentNotification:Landroid/service/notification/StatusBarNotification;

    .line 106
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LyricTicker;->stopTicker()V

    :cond_1
    return-void

    .line 111
    :cond_2
    iget-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/LyricTicker;->mCurrentText:Ljava/lang/CharSequence;

    .line 113
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LyricTicker;->mCurrentNotification:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/statusbar/phone/LyricTicker;->isNotificationEquals(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "ticker_icon_switch"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 131
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LyricTicker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LyricTicker;->mCurrentText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LyricTicker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/LyricTicker;->mTextColor:I

    invoke-virtual {p1, p0}, Landroid/widget/TextSwitcher;->setTextColor(I)V

    goto :goto_2

    .line 114
    :cond_4
    :goto_1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LyricTicker;->mCurrentNotification:Landroid/service/notification/StatusBarNotification;

    .line 115
    iget-object v1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    iget v2, v0, Landroid/app/Notification;->icon:I

    const-string v4, "ticker_icon"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 116
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LyricTicker;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 117
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v7

    iget v9, v0, Landroid/app/Notification;->iconLevel:I

    const/4 v10, 0x0

    iget-object v11, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    move-object v5, v2

    invoke-direct/range {v5 .. v11}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;Landroid/os/UserHandle;IIILjava/lang/CharSequence;)V

    .line 116
    invoke-static {v1, v1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIcon(Landroid/content/Context;Landroid/content/Context;Lcom/android/internal/statusbar/StatusBarIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LyricTicker;->icon:Landroid/graphics/drawable/Drawable;

    .line 120
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LyricTicker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {p1, v3}, Landroid/widget/ImageSwitcher;->setAnimateFirstView(Z)V

    .line 121
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LyricTicker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {p1}, Landroid/widget/ImageSwitcher;->reset()V

    .line 122
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LyricTicker;->icon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/LyricTicker;->setAppIconColor(Landroid/graphics/drawable/Drawable;)V

    .line 124
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LyricTicker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {p1, v3}, Landroid/widget/TextSwitcher;->setAnimateFirstView(Z)V

    .line 125
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LyricTicker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {p1}, Landroid/widget/TextSwitcher;->reset()V

    .line 126
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LyricTicker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LyricTicker;->mCurrentText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LyricTicker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LyricTicker;->mTextColor:I

    invoke-virtual {p1, v0}, Landroid/widget/TextSwitcher;->setTextColor(I)V

    .line 129
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LyricTicker;->tickerStarting()V

    :goto_2
    return-void
.end method
