.class public abstract Lcom/android/systemui/statusbar/phone/Ticker;
.super Ljava/lang/Object;
.source "Ticker.java"

# interfaces
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/Ticker$Segment;
    }
.end annotation


# instance fields
.field private mAdvanceTicker:Ljava/lang/Runnable;

.field private mAnimationIn:Landroid/view/animation/Animation;

.field private mAnimationOut:Landroid/view/animation/Animation;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIconScale:F

.field private mIconSwitcher:Landroid/widget/ImageSwitcher;

.field private mIconTint:I

.field private mNotificationColorUtil:Lcom/android/internal/util/ContrastColorUtil;

.field private mPaint:Landroid/text/TextPaint;

.field private mSegments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/phone/Ticker$Segment;",
            ">;"
        }
    .end annotation
.end field

.field private mShowingMediaMetadata:Landroid/media/MediaMetadata;

.field private mShowingNotificationText:Ljava/lang/String;

.field private mTextColor:I

.field private mTextSwitcher:Landroid/widget/TextSwitcher;

.field private mTickerSegmentDelay:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;II)V
    .locals 1

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mHandler:Landroid/os/Handler;

    .line 54
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mSegments:Ljava/util/ArrayList;

    const/4 p2, -0x1

    .line 59
    iput p2, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mIconTint:I

    .line 60
    iput p2, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mTextColor:I

    const/16 p2, 0xbb8

    .line 61
    iput p2, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mTickerSegmentDelay:I

    .line 376
    new-instance p2, Lcom/android/systemui/statusbar/phone/Ticker$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/Ticker$1;-><init>(Lcom/android/systemui/statusbar/phone/Ticker;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mAdvanceTicker:Ljava/lang/Runnable;

    .line 183
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mContext:Landroid/content/Context;

    .line 184
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 185
    sget p2, Lcom/android/systemui/R$dimen;->status_bar_icon_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 186
    sget v0, Lcom/android/systemui/R$dimen;->status_bar_icon_drawing_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 187
    iput p1, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mIconScale:F

    .line 189
    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/phone/Ticker;->updateAnimation(I)V

    .line 190
    invoke-virtual {p0, p4}, Lcom/android/systemui/statusbar/phone/Ticker;->updateTickDuration(I)V

    .line 192
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/internal/util/ContrastColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/ContrastColorUtil;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mNotificationColorUtil:Lcom/android/internal/util/ContrastColorUtil;

    .line 194
    const-class p1, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/Ticker;)Landroid/widget/TextSwitcher;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/Ticker;)Landroid/text/TextPaint;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mPaint:Landroid/text/TextPaint;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/Ticker;)Ljava/util/ArrayList;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mSegments:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/Ticker;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/Ticker;->setAppIconColor(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/Ticker;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mTextColor:I

    return p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/Ticker;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/Ticker;->scheduleAdvance()V

    return-void
.end method

.method private static charSequencesEqual(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 5

    .line 314
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 318
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_2

    .line 320
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static isGraphicOrEmoji(C)Z
    .locals 1

    .line 69
    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result p0

    const/16 v0, 0xf

    if-eq p0, v0, :cond_0

    const/16 v0, 0x10

    if-eq p0, v0, :cond_0

    if-eqz p0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0xe

    if-eq p0, v0, :cond_0

    const/16 v0, 0xc

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private scheduleAdvance()V
    .locals 4

    .line 405
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mAdvanceTicker:Ljava/lang/Runnable;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mTickerSegmentDelay:I

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setAppIconColor(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 431
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mNotificationColorUtil:Lcom/android/internal/util/ContrastColorUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/ContrastColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    .line 432
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mIconTint:I

    invoke-virtual {v1, p1, p0, v0}, Landroid/widget/ImageSwitcher;->setImageDrawableTint(Landroid/graphics/drawable/Drawable;IZ)V

    return-void
.end method

.method private setViewAnimations()V
    .locals 2

    .line 361
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mAnimationIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 362
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mAnimationOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 363
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mAnimationIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 364
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mAnimationOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public addEntry(Landroid/service/notification/StatusBarNotification;ZLandroid/media/MediaMetadata;Ljava/lang/String;)V
    .locals 8

    .line 226
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 227
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    if-eqz p2, :cond_b

    if-eqz p3, :cond_b

    const-string p2, "android.media.metadata.ARTIST"

    .line 230
    invoke-virtual {p3, p2}, Landroid/media/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p2

    const-string v1, "android.media.metadata.ALBUM"

    .line 231
    invoke-virtual {p3, v1}, Landroid/media/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "android.media.metadata.TITLE"

    .line 232
    invoke-virtual {p3, v2}, Landroid/media/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    if-nez p2, :cond_3

    if-nez v1, :cond_3

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_2

    .line 253
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mShowingNotificationText:Ljava/lang/String;

    if-eqz p2, :cond_1

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 257
    :cond_1
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mShowingNotificationText:Ljava/lang/String;

    .line 258
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    iput-object p4, p2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    goto :goto_2

    :cond_2
    return-void

    .line 234
    :cond_3
    :goto_0
    iget-object p4, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mShowingMediaMetadata:Landroid/media/MediaMetadata;

    if-ne p4, p3, :cond_4

    return-void

    .line 238
    :cond_4
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mShowingMediaMetadata:Landroid/media/MediaMetadata;

    if-eqz p2, :cond_5

    .line 241
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_5
    const-string p3, ""

    :goto_1
    const-string p4, " - "

    if-eqz p2, :cond_6

    if-eqz v1, :cond_6

    .line 243
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_6
    if-eqz v1, :cond_7

    .line 245
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_7
    if-nez p2, :cond_8

    if-eqz v1, :cond_9

    :cond_8
    if-eqz v2, :cond_9

    .line 247
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_9
    if-eqz v2, :cond_a

    .line 249
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 251
    :cond_a
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    iput-object p3, p2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    :cond_b
    :goto_2
    const/4 p2, 0x0

    if-lez v0, :cond_c

    .line 268
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/statusbar/phone/Ticker$Segment;

    .line 269
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p4

    iget-object v1, p3, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_c

    .line 270
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p4

    iget p4, p4, Landroid/app/Notification;->icon:I

    iget-object v1, p3, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->icon:I

    if-ne p4, v1, :cond_c

    .line 271
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p4

    iget p4, p4, Landroid/app/Notification;->iconLevel:I

    iget-object v1, p3, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->iconLevel:I

    if-ne p4, v1, :cond_c

    iget-object p3, p3, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->notification:Landroid/service/notification/StatusBarNotification;

    .line 272
    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p3

    iget-object p3, p3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 273
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p4

    iget-object p4, p4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 272
    invoke-static {p3, p4}, Lcom/android/systemui/statusbar/phone/Ticker;->charSequencesEqual(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_c

    return-void

    .line 278
    :cond_c
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mContext:Landroid/content/Context;

    new-instance p4, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 279
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v4, v1, Landroid/app/Notification;->icon:I

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v5, v1, Landroid/app/Notification;->iconLevel:I

    const/4 v6, 0x0

    .line 280
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v7, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    move-object v1, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;Landroid/os/UserHandle;IIILjava/lang/CharSequence;)V

    .line 278
    invoke-static {p3, p3, p4}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIcon(Landroid/content/Context;Landroid/content/Context;Lcom/android/internal/statusbar/StatusBarIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 281
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p4

    iget-object p4, p4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 282
    new-instance v1, Lcom/android/systemui/statusbar/phone/Ticker$Segment;

    invoke-direct {v1, p0, p1, p3, p4}, Lcom/android/systemui/statusbar/phone/Ticker$Segment;-><init>(Lcom/android/systemui/statusbar/phone/Ticker;Landroid/service/notification/StatusBarNotification;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    move p3, p2

    .line 285
    :goto_3
    iget-object p4, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-ge p3, p4, :cond_e

    .line 286
    iget-object p4, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/systemui/statusbar/phone/Ticker$Segment;

    .line 287
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v2

    iget-object v3, p4, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    if-ne v2, v3, :cond_d

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object p4, p4, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_d

    .line 289
    iget-object p4, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mSegments:Ljava/util/ArrayList;

    add-int/lit8 v2, p3, -0x1

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move p3, v2

    :cond_d
    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    .line 293
    :cond_e
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v0, :cond_f

    .line 295
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_f

    .line 296
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/Ticker$Segment;

    .line 297
    iput-boolean p2, p1, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->first:Z

    .line 299
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {p3, p2}, Landroid/widget/ImageSwitcher;->setAnimateFirstView(Z)V

    .line 300
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {p3}, Landroid/widget/ImageSwitcher;->reset()V

    .line 301
    iget-object p3, p1, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->icon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/phone/Ticker;->setAppIconColor(Landroid/graphics/drawable/Drawable;)V

    .line 303
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {p3, p2}, Landroid/widget/TextSwitcher;->setAnimateFirstView(Z)V

    .line 304
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {p2}, Landroid/widget/TextSwitcher;->reset()V

    .line 305
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 306
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    iget p2, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mTextColor:I

    invoke-virtual {p1, p2}, Landroid/widget/TextSwitcher;->setTextColor(I)V

    .line 308
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/Ticker;->tickerStarting()V

    .line 309
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/Ticker;->scheduleAdvance()V

    :cond_f
    return-void
.end method

.method public applyDarkIntensity(Landroid/graphics/Rect;Landroid/view/View;I)V
    .locals 0

    .line 420
    invoke-static {p1, p2, p3}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mTextColor:I

    .line 421
    iget p1, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mTextColor:I

    iput p1, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mIconTint:I

    .line 422
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 423
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mSegments:Ljava/util/ArrayList;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/Ticker$Segment;

    .line 424
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    iget p3, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mTextColor:I

    invoke-virtual {p2, p3}, Landroid/widget/TextSwitcher;->setTextColor(I)V

    .line 425
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {p2}, Landroid/widget/ImageSwitcher;->reset()V

    .line 426
    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->icon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/Ticker;->setAppIconColor(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public halt()V
    .locals 2

    .line 337
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mAdvanceTicker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 338
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 339
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/Ticker;->tickerHalting()V

    return-void
.end method

.method public reflowText()V
    .locals 2

    .line 368
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mSegments:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;

    .line 370
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 371
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v1, v0}, Landroid/widget/TextSwitcher;->setCurrentText(Ljava/lang/CharSequence;)V

    .line 372
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mTextColor:I

    invoke-virtual {v0, p0}, Landroid/widget/TextSwitcher;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public removeEntry(Landroid/service/notification/StatusBarNotification;)V
    .locals 4

    .line 328
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 329
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/Ticker$Segment;

    .line 330
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v2

    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 331
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public resetShownMediaMetadata()V
    .locals 1

    const/4 v0, 0x0

    .line 343
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mShowingMediaMetadata:Landroid/media/MediaMetadata;

    .line 344
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mShowingNotificationText:Ljava/lang/String;

    return-void
.end method

.method public setViews(Landroid/widget/TextSwitcher;Landroid/widget/ImageSwitcher;)V
    .locals 1

    .line 348
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    .line 350
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 351
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mPaint:Landroid/text/TextPaint;

    .line 353
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    .line 354
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    iget p2, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mIconScale:F

    invoke-virtual {p1, p2}, Landroid/widget/ImageSwitcher;->setScaleX(F)V

    .line 355
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    iget p2, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mIconScale:F

    invoke-virtual {p1, p2}, Landroid/widget/ImageSwitcher;->setScaleY(F)V

    .line 357
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/Ticker;->setViewAnimations()V

    return-void
.end method

.method public abstract tickerDone()V
.end method

.method public abstract tickerHalting()V
.end method

.method public abstract tickerStarting()V
.end method

.method public updateAnimation(I)V
    .locals 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 199
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mContext:Landroid/content/Context;

    const v0, 0x10a007b

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mAnimationIn:Landroid/view/animation/Animation;

    .line 201
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mContext:Landroid/content/Context;

    const v0, 0x10a007c

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mAnimationOut:Landroid/view/animation/Animation;

    goto :goto_0

    .line 204
    :cond_0
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mAnimationIn:Landroid/view/animation/Animation;

    .line 205
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mContext:Landroid/content/Context;

    const v2, 0x10c0001

    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    .line 207
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mAnimationIn:Landroid/view/animation/Animation;

    invoke-virtual {v2, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 208
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mAnimationIn:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x15e

    invoke-virtual {p1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 210
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mAnimationOut:Landroid/view/animation/Animation;

    .line 211
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mContext:Landroid/content/Context;

    const/high16 v0, 0x10c0000

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    .line 213
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mAnimationOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 214
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mAnimationOut:Landroid/view/animation/Animation;

    invoke-virtual {p1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 216
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    if-eqz p1, :cond_1

    .line 217
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/Ticker;->setViewAnimations()V

    :cond_1
    return-void
.end method

.method public updateTickDuration(I)V
    .locals 0

    .line 222
    iput p1, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mTickerSegmentDelay:I

    return-void
.end method
