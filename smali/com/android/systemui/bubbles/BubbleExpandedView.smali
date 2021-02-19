.class public Lcom/android/systemui/bubbles/BubbleExpandedView;
.super Landroid/widget/LinearLayout;
.source "BubbleExpandedView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;
    }
.end annotation


# instance fields
.field private mActivityView:Landroid/app/ActivityView;

.field private mActivityViewStatus:Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;

.field private mAppIcon:Landroid/graphics/drawable/Drawable;

.field private mAppName:Ljava/lang/String;

.field private mBubble:Lcom/android/systemui/bubbles/Bubble;

.field private mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

.field private mBubbleIntent:Landroid/app/PendingIntent;

.field private mDisplaySize:Landroid/graphics/Point;

.field private mExpandedViewTouchSlop:I

.field private mKeyboardVisible:Z

.field private mMinHeight:I

.field private mNeedsNewHeight:Z

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPointerDrawable:Landroid/graphics/drawable/ShapeDrawable;

.field private mPointerHeight:I

.field private mPointerMargin:I

.field private mPointerView:Landroid/view/View;

.field private mPointerWidth:I

.field private mSettingsIcon:Lcom/android/systemui/statusbar/AlphaOptimizedButton;

.field private mSettingsIconHeight:I

.field private mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

.field private mStateCallback:Landroid/app/ActivityView$StateCallback;

.field private mTaskId:I

.field private mTempLoc:[I

.field private mTempRect:Landroid/graphics/Rect;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 190
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bubbles/BubbleExpandedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 194
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/bubbles/BubbleExpandedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 198
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/bubbles/BubbleExpandedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 203
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 84
    sget-object p2, Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;->INITIALIZING:Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;

    iput-object p2, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityViewStatus:Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;

    const/4 p2, -0x1

    .line 85
    iput p2, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mTaskId:I

    .line 98
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mTempRect:Landroid/graphics/Rect;

    const/4 p2, 0x2

    new-array p2, p2, [I

    .line 99
    iput-object p2, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mTempLoc:[I

    .line 107
    const-class p2, Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/bubbles/BubbleController;

    iput-object p2, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

    .line 112
    new-instance p2, Lcom/android/systemui/bubbles/BubbleExpandedView$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/bubbles/BubbleExpandedView$1;-><init>(Lcom/android/systemui/bubbles/BubbleExpandedView;)V

    iput-object p2, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mStateCallback:Landroid/app/ActivityView$StateCallback;

    .line 204
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPm:Landroid/content/pm/PackageManager;

    .line 205
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mDisplaySize:Landroid/graphics/Point;

    const-string p2, "window"

    .line 206
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mWindowManager:Landroid/view/WindowManager;

    .line 208
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {p1, p2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 209
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 210
    sget p2, Lcom/android/systemui/R$dimen;->bubble_expanded_default_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mMinHeight:I

    .line 211
    sget p2, Lcom/android/systemui/R$dimen;->bubble_pointer_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPointerMargin:I

    .line 212
    sget p2, Lcom/android/systemui/R$dimen;->bubble_expanded_view_slop:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mExpandedViewTouchSlop:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/bubbles/BubbleExpandedView;)Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityViewStatus:Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/systemui/bubbles/BubbleExpandedView;Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;)Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityViewStatus:Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/systemui/bubbles/BubbleExpandedView;I)I
    .locals 0

    .line 61
    iput p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mTaskId:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/bubbles/BubbleExpandedView;)Lcom/android/systemui/bubbles/Bubble;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mBubble:Lcom/android/systemui/bubbles/Bubble;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/bubbles/BubbleExpandedView;)Lcom/android/systemui/bubbles/BubbleController;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/bubbles/BubbleExpandedView;)Landroid/app/PendingIntent;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mBubbleIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/bubbles/BubbleExpandedView;)Landroid/app/ActivityView;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/bubbles/BubbleExpandedView;)Ljava/lang/String;
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->getBubbleKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getBubbleKey()Ljava/lang/String;
    .locals 0

    .line 269
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mBubble:Lcom/android/systemui/bubbles/Bubble;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "null"

    :goto_0
    return-object p0
.end method

.method private getMaxExpandedHeight()I
    .locals 4

    .line 451
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 452
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    invoke-virtual {v0}, Landroid/app/ActivityView;->getLocationOnScreen()[I

    move-result-object v0

    .line 453
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 454
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 456
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mDisplaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    const/4 v3, 0x1

    aget v0, v0, v3

    sub-int/2addr v2, v0

    iget v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mSettingsIconHeight:I

    sub-int/2addr v2, v0

    iget v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPointerHeight:I

    sub-int/2addr v2, v0

    iget p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPointerMargin:I

    sub-int/2addr v2, p0

    sub-int/2addr v2, v1

    return v2
.end method

.method private logBubbleClickEvent(Lcom/android/systemui/bubbles/Bubble;I)V
    .locals 13

    .line 606
    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 608
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 609
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v3

    .line 610
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    .line 611
    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleStackView;->getExpandedBubble()Lcom/android/systemui/bubbles/Bubble;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/bubbles/BubbleStackView;->getBubbleIndex(Lcom/android/systemui/bubbles/Bubble;)I

    move-result v5

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    .line 612
    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleStackView;->getBubbleCount()I

    move-result v6

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    .line 614
    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleStackView;->getNormalizedXPosition()F

    move-result v8

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    .line 615
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->getNormalizedYPosition()F

    move-result v9

    .line 616
    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->showInShadeWhenBubble()Z

    move-result v10

    .line 617
    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->isOngoing()Z

    move-result v11

    const/16 v1, 0x95

    const/4 v12, 0x0

    move v7, p2

    .line 607
    invoke-static/range {v1 .. v12}, Landroid/util/StatsLog;->write(ILjava/lang/String;Ljava/lang/String;IIIIFFZZZ)I

    return-void
.end method

.method private updateExpandedView()V
    .locals 2

    .line 410
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mBubble:Lcom/android/systemui/bubbles/Bubble;

    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/bubbles/Bubble;->getBubbleIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mBubbleIntent:Landroid/app/PendingIntent;

    .line 411
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mBubbleIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 412
    invoke-virtual {p0, v0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->setContentVisibility(Z)V

    .line 413
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    invoke-virtual {v1, v0}, Landroid/app/ActivityView;->setVisibility(I)V

    .line 415
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->updateView()V

    return-void
.end method

.method private updateSettingsContentDescription()V
    .locals 5

    .line 506
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mSettingsIcon:Lcom/android/systemui/statusbar/AlphaOptimizedButton;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->bubbles_settings_button_description:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mAppName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private usingActivityView()Z
    .locals 1

    .line 586
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mBubbleIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method applyThemeAttrs()V
    .locals 4

    .line 273
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/R$styleable;->BubbleExpandedView:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 274
    sget v1, Lcom/android/systemui/R$styleable;->BubbleExpandedView_android_colorBackgroundFloating:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 276
    sget v2, Lcom/android/systemui/R$styleable;->BubbleExpandedView_android_dialogCornerRadius:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 278
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 281
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPointerDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setTint(I)V

    .line 284
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/ScreenDecorationsUtils;->supportsRoundedCornersOnWindows(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    invoke-virtual {p0, v2}, Landroid/app/ActivityView;->setCornerRadius(F)V

    :cond_0
    return-void
.end method

.method public cleanUpExpandedState()V
    .locals 3

    .line 549
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    if-nez v0, :cond_0

    return-void

    .line 552
    :cond_0
    sget-object v0, Lcom/android/systemui/bubbles/BubbleExpandedView$2;->$SwitchMap$com$android$systemui$bubbles$BubbleExpandedView$ActivityViewStatus:[I

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityViewStatus:Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 555
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    invoke-virtual {v0}, Landroid/app/ActivityView;->release()V

    .line 557
    :goto_0
    iget v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mTaskId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 559
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    iget v2, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mTaskId:I

    invoke-interface {v0, v2}, Landroid/app/IActivityTaskManager;->removeTask(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 561
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to remove taskId "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mTaskId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Bubbles"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :goto_1
    iput v1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mTaskId:I

    .line 565
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 567
    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    return-void
.end method

.method public getVirtualDisplayId()I
    .locals 1

    .line 593
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->usingActivityView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 594
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    invoke-virtual {p0}, Landroid/app/ActivityView;->getVirtualDisplayId()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method intersectingTouchableContent(II)Z
    .locals 8

    .line 467
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 468
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 469
    invoke-virtual {v0}, Landroid/app/ActivityView;->getLocationOnScreen()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mTempLoc:[I

    .line 470
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mTempLoc:[I

    aget v4, v3, v1

    iget v5, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mExpandedViewTouchSlop:I

    sub-int/2addr v4, v5

    aget v6, v3, v2

    sub-int/2addr v6, v5

    aget v3, v3, v1

    iget-object v5, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    .line 472
    invoke-virtual {v5}, Landroid/app/ActivityView;->getWidth()I

    move-result v5

    add-int/2addr v3, v5

    iget v5, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mExpandedViewTouchSlop:I

    add-int/2addr v3, v5

    iget-object v5, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mTempLoc:[I

    aget v5, v5, v2

    iget-object v7, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    .line 473
    invoke-virtual {v7}, Landroid/app/ActivityView;->getHeight()I

    move-result v7

    add-int/2addr v5, v7

    iget v7, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mExpandedViewTouchSlop:I

    add-int/2addr v5, v7

    .line 470
    invoke-virtual {v0, v4, v6, v3, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 478
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mSettingsIcon:Lcom/android/systemui/statusbar/AlphaOptimizedButton;

    invoke-virtual {v0}, Landroid/widget/Button;->getLocationOnScreen()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mTempLoc:[I

    .line 479
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mTempLoc:[I

    aget v4, v3, v1

    aget v5, v3, v2

    aget v3, v3, v1

    iget-object v6, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mSettingsIcon:Lcom/android/systemui/statusbar/AlphaOptimizedButton;

    .line 481
    invoke-virtual {v6}, Landroid/widget/Button;->getWidth()I

    move-result v6

    add-int/2addr v3, v6

    iget-object v6, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mTempLoc:[I

    aget v6, v6, v2

    iget-object v7, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mSettingsIcon:Lcom/android/systemui/statusbar/AlphaOptimizedButton;

    .line 482
    invoke-virtual {v7}, Landroid/widget/Button;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    .line 479
    invoke-virtual {v0, v4, v5, v3, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 483
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public synthetic lambda$onClick$1$BubbleExpandedView(Landroid/content/Intent;)V
    .locals 2

    .line 498
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mBubble:Lcom/android/systemui/bubbles/Bubble;

    invoke-virtual {v1}, Lcom/android/systemui/bubbles/Bubble;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 499
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mBubble:Lcom/android/systemui/bubbles/Bubble;

    const/16 v0, 0x9

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->logBubbleClickEvent(Lcom/android/systemui/bubbles/Bubble;I)V

    return-void
.end method

.method public synthetic lambda$onFinishInflate$0$BubbleExpandedView(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    .line 258
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    .line 259
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 260
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mKeyboardVisible:Z

    .line 261
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mKeyboardVisible:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mNeedsNewHeight:Z

    if-eqz v0, :cond_1

    .line 262
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->updateHeight()V

    .line 264
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method notifyDisplayEmpty()V
    .locals 2

    .line 580
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityViewStatus:Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;

    sget-object v1, Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;->ACTIVITY_STARTED:Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;

    if-ne v0, v1, :cond_0

    .line 581
    sget-object v0, Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;->INITIALIZED:Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityViewStatus:Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 491
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mBubble:Lcom/android/systemui/bubbles/Bubble;

    if-nez v0, :cond_0

    return-void

    .line 494
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 495
    sget v0, Lcom/android/systemui/R$id;->settings_button:I

    if-ne p1, v0, :cond_1

    .line 496
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mBubble:Lcom/android/systemui/bubbles/Bubble;

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getSettingsIntent()Landroid/content/Intent;

    move-result-object p1

    .line 497
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    new-instance v1, Lcom/android/systemui/bubbles/-$$Lambda$BubbleExpandedView$iBWZJs6SpKXryYoaz8vCiAaSUqI;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleExpandedView$iBWZJs6SpKXryYoaz8vCiAaSUqI;-><init>(Lcom/android/systemui/bubbles/BubbleExpandedView;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/bubbles/BubbleStackView;->collapseStack(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 291
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 292
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mKeyboardVisible:Z

    .line 293
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mNeedsNewHeight:Z

    .line 294
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    if-eqz p0, :cond_0

    .line 295
    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/ActivityView;->setForwardedInsets(Landroid/graphics/Insets;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .line 217
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 222
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 223
    sget v1, Lcom/android/systemui/R$id;->pointer_view:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPointerView:Landroid/view/View;

    .line 224
    sget v1, Lcom/android/systemui/R$dimen;->bubble_pointer_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPointerWidth:I

    .line 225
    sget v1, Lcom/android/systemui/R$dimen;->bubble_pointer_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPointerHeight:I

    .line 228
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    iget v1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPointerWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPointerHeight:I

    int-to-float v2, v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/systemui/recents/TriangleShape;->create(FFZ)Lcom/android/systemui/recents/TriangleShape;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPointerDrawable:Landroid/graphics/drawable/ShapeDrawable;

    .line 230
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPointerView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPointerDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 231
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPointerView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 233
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->bubble_settings_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mSettingsIconHeight:I

    .line 235
    sget v0, Lcom/android/systemui/R$id;->settings_button:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/AlphaOptimizedButton;

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mSettingsIcon:Lcom/android/systemui/statusbar/AlphaOptimizedButton;

    .line 236
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mSettingsIcon:Lcom/android/systemui/statusbar/AlphaOptimizedButton;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    new-instance v0, Landroid/app/ActivityView;

    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/app/ActivityView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    .line 241
    invoke-virtual {p0, v2}, Lcom/android/systemui/bubbles/BubbleExpandedView;->setContentVisibility(Z)V

    .line 242
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 250
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->bringChildToFront(Landroid/view/View;)V

    .line 251
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mSettingsIcon:Lcom/android/systemui/statusbar/AlphaOptimizedButton;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->bringChildToFront(Landroid/view/View;)V

    .line 253
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->applyThemeAttrs()V

    .line 255
    new-instance v0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleExpandedView$BUIzmdcN6x4TJwxemNSjSITgNeY;

    invoke-direct {v0, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleExpandedView$BUIzmdcN6x4TJwxemNSjSITgNeY;-><init>(Lcom/android/systemui/bubbles/BubbleExpandedView;)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void
.end method

.method performBackPressIfNeeded()Z
    .locals 1

    .line 419
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->usingActivityView()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 422
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    invoke-virtual {p0}, Landroid/app/ActivityView;->performBackPress()V

    const/4 p0, 0x1

    return p0
.end method

.method public populateExpandedView()V
    .locals 1

    .line 379
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->usingActivityView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mStateCallback:Landroid/app/ActivityView$StateCallback;

    invoke-virtual {v0, p0}, Landroid/app/ActivityView;->setCallback(Landroid/app/ActivityView$StateCallback;)V

    goto :goto_0

    :cond_0
    const-string p0, "Bubbles"

    const-string v0, "Cannot populate expanded view."

    .line 382
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setBubble(Lcom/android/systemui/bubbles/Bubble;Lcom/android/systemui/bubbles/BubbleStackView;Ljava/lang/String;)V
    .locals 0

    .line 347
    iput-object p2, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    .line 348
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mBubble:Lcom/android/systemui/bubbles/Bubble;

    .line 349
    iput-object p3, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mAppName:Ljava/lang/String;

    .line 352
    :try_start_0
    iget-object p2, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPm:Landroid/content/pm/PackageManager;

    .line 353
    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const p3, 0xc2200

    .line 352
    invoke-virtual {p2, p1, p3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 358
    iget-object p2, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mAppIcon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    :catch_0
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mAppIcon:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_0

    .line 363
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 365
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->applyThemeAttrs()V

    .line 366
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->showSettingsIcon()V

    .line 367
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->updateExpandedView()V

    return-void
.end method

.method setContentVisibility(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 316
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPointerView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 317
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    if-eqz p0, :cond_1

    .line 318
    invoke-virtual {p0, p1}, Landroid/app/ActivityView;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method public setPointerPosition(F)V
    .locals 2

    .line 535
    iget v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPointerWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float/2addr p1, v0

    .line 537
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPointerView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 538
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPointerView:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method showSettingsIcon()V
    .locals 1

    .line 511
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->updateSettingsContentDescription()V

    .line 512
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mSettingsIcon:Lcom/android/systemui/statusbar/AlphaOptimizedButton;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public update(Lcom/android/systemui/bubbles/Bubble;)V
    .locals 2

    .line 394
    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mBubble:Lcom/android/systemui/bubbles/Bubble;

    invoke-virtual {v1}, Lcom/android/systemui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mBubble:Lcom/android/systemui/bubbles/Bubble;

    .line 396
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->updateSettingsContentDescription()V

    .line 397
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->updateHeight()V

    goto :goto_0

    .line 399
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Trying to update entry with different key, new bubble: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " old bubble: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Bubbles"

    .line 399
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method updateHeight()V
    .locals 4

    .line 430
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->usingActivityView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 431
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mBubble:Lcom/android/systemui/bubbles/Bubble;

    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/bubbles/Bubble;->getDesiredHeight(Landroid/content/Context;)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mMinHeight:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 432
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->getMaxExpandedHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 433
    iget v1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mMinHeight:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 434
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    invoke-virtual {v1}, Landroid/app/ActivityView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 435
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    int-to-float v2, v2

    cmpl-float v2, v2, v0

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mNeedsNewHeight:Z

    .line 436
    iget-boolean v2, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mKeyboardVisible:Z

    if-nez v2, :cond_1

    float-to-int v0, v0

    .line 439
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 440
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    invoke-virtual {v0, v1}, Landroid/app/ActivityView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 441
    iput-boolean v3, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mNeedsNewHeight:Z

    :cond_1
    return-void
.end method

.method updateInsets(Landroid/view/WindowInsets;)V
    .locals 5

    .line 327
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->usingActivityView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 328
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    invoke-virtual {v0}, Landroid/app/ActivityView;->getLocationOnScreen()[I

    move-result-object v0

    const/4 v1, 0x1

    .line 329
    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    invoke-virtual {v1}, Landroid/app/ActivityView;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 330
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mDisplaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    .line 331
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 332
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v4

    .line 330
    :goto_0
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int/2addr v1, p1

    sub-int/2addr v0, v1

    .line 334
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 335
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    invoke-static {v4, v4, v4, p1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/ActivityView;->setForwardedInsets(Landroid/graphics/Insets;)V

    :cond_1
    return-void
.end method

.method public updateView()V
    .locals 1

    .line 523
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->usingActivityView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    .line 524
    invoke-virtual {v0}, Landroid/app/ActivityView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    .line 525
    invoke-virtual {v0}, Landroid/app/ActivityView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    invoke-virtual {v0}, Landroid/app/ActivityView;->onLocationChanged()V

    .line 528
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->updateHeight()V

    return-void
.end method
