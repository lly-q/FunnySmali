.class public Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;
.super Landroid/view/ViewGroup;
.source "NotificationStackScrollLayout.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ScrollAdapter;
.implements Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/notification/DynamicPrivacyController$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;,
        Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;,
        Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;
    }
.end annotation


# instance fields
.field private mActivateNeedsAnimation:Z

.field private mActivePointerId:I

.field private mAddedHeadsUpChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mAllowLongPress:Z

.field private final mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

.field private mAnimateBottomOnLayout:Z

.field private mAnimateNextBackgroundBottom:Z

.field private mAnimateNextBackgroundTop:Z

.field private mAnimateNextSectionBoundsChange:Z

.field private mAnimationEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimationFinishedRunnables:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimationRunning:Z

.field private mAnimationsEnabled:Z

.field private final mBackgroundAnimationRect:Landroid/graphics/Rect;

.field private final mBackgroundPaint:Landroid/graphics/Paint;

.field private mBackgroundUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mBackgroundXFactor:F

.field private mBackwardScrollable:Z

.field private final mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mBgColor:I

.field private mBottomInset:I

.field private mBottomMargin:I

.field private mCachedBackgroundColor:I

.field private mChangePositionInProgress:Z

.field mCheckForLeavebehind:Z

.field private mChildTransferInProgress:Z

.field private mChildrenChangingPositions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableView;",
            ">;"
        }
    .end annotation
.end field

.field private mChildrenToAddAnimated:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableView;",
            ">;"
        }
    .end annotation
.end field

.field private mChildrenToRemoveAnimated:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableView;",
            ">;"
        }
    .end annotation
.end field

.field private mChildrenUpdateRequested:Z

.field private mChildrenUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field protected mClearAllEnabled:Z

.field private mClearTransientViewsWhenFinished:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableView;",
            ">;"
        }
    .end annotation
.end field

.field private final mClipRect:Landroid/graphics/Rect;

.field private mCollapsedSize:I

.field private final mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

.field private mContentHeight:I

.field private mContinuousBackgroundUpdate:Z

.field private mContinuousShadowUpdate:Z

.field private mCornerRadius:I

.field private mCurrentStackHeight:I

.field private mDimAmount:F

.field private mDimAnimator:Landroid/animation/ValueAnimator;

.field private final mDimEndListener:Landroid/animation/Animator$AnimatorListener;

.field private mDimUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mDimmedNeedsAnimation:Z

.field private mDisallowDismissInThisMotion:Z

.field private mDisallowScrollingInThisMotion:Z

.field private mDismissAllInProgress:Z

.field private mDismissRtl:Z

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDontClampNextScroll:Z

.field private mDontReportNextOverScroll:Z

.field private mDownX:I

.field private final mDragDownCallback:Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

.field private final mDynamicPrivacyController:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

.field protected mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

.field private final mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private mEverythingNeedsAnimation:Z

.field private mExpandHelper:Lcom/android/systemui/ExpandHelper;

.field private mExpandHelperCallback:Lcom/android/systemui/ExpandHelper$Callback;

.field private mExpandedGroupView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

.field private mExpandedHeight:F

.field private mExpandedHeightListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private mExpandedInThisMotion:Z

.field private mExpandingNotification:Z

.field private mFadeNotificationsOnDismiss:Z

.field private mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field private mFinishScrollingCallback:Ljava/lang/Runnable;

.field protected mFooterView:Lcom/android/systemui/statusbar/notification/row/FooterView;

.field private mForceNoOverlappingRendering:Z

.field private mForcedScroll:Landroid/view/View;

.field private mForwardScrollable:Z

.field private mFromMoreCardAdditions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mGenerateChildOrderChangedEvent:Z

.field private mGoToFullShadeDelay:J

.field private mGoToFullShadeNeedsAnimation:Z

.field private mGroupExpandedForMeasure:Z

.field private mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field private mHeadsUpAnimatingAway:Z

.field private mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

.field private final mHeadsUpCallback:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;

.field private mHeadsUpChangeAnimations:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/util/Pair<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private mHeadsUpGoingAwayAnimationsAllowed:Z

.field private mHeadsUpInset:I

.field private mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

.field private mHideSensitiveNeedsAnimation:Z

.field private mHideXInterpolator:Landroid/view/animation/Interpolator;

.field private mHighPriorityBeforeSpeedBump:Z

.field private mIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

.field private mInHeadsUpPinnedMode:Z

.field private mIncreasedPaddingBetweenElements:I

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mInterpolatedHideAmount:F

.field private mIntrinsicContentHeight:I

.field private mIntrinsicPadding:I

.field private mIsBeingDragged:Z

.field private mIsClipped:Z

.field private mIsExpanded:Z

.field private mIsExpansionChanging:Z

.field private final mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private mLastMotionY:I

.field private mLastSentAppear:F

.field private mLastSentExpandedHeight:F

.field private mLinearHideAmount:F

.field private mListener:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$OnChildLocationsChangedListener;

.field private final mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

.field private final mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field private mLongPressListener:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$LongPressListener;

.field private mMaxDisplayedNotifications:I

.field private mMaxLayoutHeight:I

.field private mMaxOverScroll:F

.field private mMaxScrollAfterExpand:I

.field private mMaxTopPadding:I

.field private mMaximumVelocity:I

.field protected final mMenuEventListener:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field protected final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mMinInteractionHeight:I

.field private mMinTopOverScrollToEscape:F

.field private mMinimumVelocity:I

.field private mNeedViewResizeAnimation:Z

.field private mNeedsAnimation:Z

.field private mNoAmbient:Z

.field private final mNotificationCallback:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;

.field private final mNotificationGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

.field private mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field private mOnEmptySpaceClickListener:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;

.field private final mOnGroupChangeListener:Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;

.field private mOnHeightChangedListener:Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;

.field private mOnlyScrollingInThisMotion:Z

.field private final mOutlineProvider:Landroid/view/ViewOutlineProvider;

.field private mOverScrolledBottomPixels:F

.field private mOverScrolledTopPixels:F

.field private mOverflingDistance:I

.field private mOverscrollTopChangedListener:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;

.field private mOwnScrollY:I

.field private mPaddingBetweenElements:I

.field private mPanelTracking:Z

.field private mPulsing:Z

.field protected mQsContainer:Landroid/view/ViewGroup;

.field private mQsExpanded:Z

.field private mQsExpansionFraction:F

.field private mReclamp:Ljava/lang/Runnable;

.field private mReflingAndAnimateScroll:Ljava/lang/Runnable;

.field private final mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

.field private mRequestedClipBounds:Landroid/graphics/Rect;

.field private final mRoundnessManager:Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;

.field private mRunningAnimationUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field private mScrollable:Z

.field private mScrolledToTopOnFirstDown:Z

.field private mScroller:Landroid/widget/OverScroller;

.field protected mScrollingEnabled:Z

.field private mSections:[Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

.field private final mSectionsManager:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;

.field private final mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

.field private mShadowUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

.field private mShouldDrawNotificationBackground:Z

.field private mShouldShowShelfOnly:Z

.field private mSidePaddings:I

.field private mSrcMode:Landroid/graphics/PorterDuffXfermode;

.field protected final mStackScrollAlgorithm:Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;

.field private mStackTranslation:F

.field private final mStateAnimator:Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;

.field private final mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mStatusBarHeight:I

.field private mStatusBarState:I

.field private final mStatusbarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field private final mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

.field private mSwipedOutViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mSwipingInProgress:Z

.field private mTempInt2:[I

.field private final mTmpList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTmpRect:Landroid/graphics/Rect;

.field private mTmpSortedChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableView;",
            ">;"
        }
    .end annotation
.end field

.field private mTopPadding:I

.field private mTopPaddingNeedsAnimation:Z

.field private mTopPaddingOverflow:F

.field private mTouchIsClick:Z

.field private mTouchSlop:I

.field private mTrackingHeadsUp:Z

.field private mUsingLightTheme:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewPositionComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableView;",
            ">;"
        }
    .end annotation
.end field

.field private final mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

.field private mWillExpand:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ZLcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/plugins/FalsingManager;)V
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p5

    const/4 v0, 0x0

    move-object/from16 v1, p2

    .line 527
    invoke-direct {v6, v7, v1, v0, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const v1, 0x7fffffff

    .line 194
    iput v1, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mCurrentStackHeight:I

    .line 195
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBackgroundPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    .line 224
    iput v1, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mActivePointerId:I

    .line 238
    iput v0, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBottomInset:I

    .line 248
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    .line 249
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAddedHeadsUpChildren:Ljava/util/ArrayList;

    .line 250
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenToRemoveAnimated:Ljava/util/ArrayList;

    .line 251
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenChangingPositions:Ljava/util/ArrayList;

    .line 252
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFromMoreCardAdditions:Ljava/util/HashSet;

    .line 253
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    .line 254
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipedOutViews:Ljava/util/ArrayList;

    .line 255
    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;

    invoke-direct {v2, v6}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    iput-object v2, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;

    const/4 v9, 0x1

    .line 279
    iput-boolean v9, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    .line 327
    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$1;

    invoke-direct {v2, v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$1;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    iput-object v2, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 339
    iput-object v3, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTempInt2:[I

    .line 341
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationFinishedRunnables:Ljava/util/HashSet;

    .line 342
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mClearTransientViewsWhenFinished:Ljava/util/HashSet;

    .line 343
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpChangeAnimations:Ljava/util/HashSet;

    .line 350
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTmpList:Ljava/util/ArrayList;

    .line 353
    new-instance v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$2;

    invoke-direct {v3, v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$2;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    iput-object v3, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRunningAnimationUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    new-array v3, v2, [Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    .line 361
    iput-object v3, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSections:[Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    .line 368
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTmpSortedChildren:Ljava/util/ArrayList;

    .line 369
    new-instance v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$3;

    invoke-direct {v3, v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$3;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    iput-object v3, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDimEndListener:Landroid/animation/Animator$AnimatorListener;

    .line 375
    new-instance v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$4;

    invoke-direct {v3, v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$4;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    iput-object v3, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDimUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 386
    new-instance v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$5;

    invoke-direct {v3, v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$5;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    iput-object v3, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShadowUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 395
    new-instance v3, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$Q8bA-VckgKDEBbXIsfAy3cWAYiM;

    invoke-direct {v3, v6}, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$Q8bA-VckgKDEBbXIsfAy3cWAYiM;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    iput-object v3, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBackgroundUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 399
    new-instance v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$6;

    invoke-direct {v3, v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$6;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    iput-object v3, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mViewPositionComparator:Ljava/util/Comparator;

    .line 414
    new-instance v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$7;

    invoke-direct {v3, v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$7;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    iput-object v3, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOutlineProvider:Landroid/view/ViewOutlineProvider;

    .line 429
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v3, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSrcMode:Landroid/graphics/PorterDuffXfermode;

    const/4 v3, 0x0

    .line 438
    iput v3, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mInterpolatedHideAmount:F

    .line 443
    iput v3, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLinearHideAmount:F

    const/high16 v3, 0x3f800000    # 1.0f

    .line 448
    iput v3, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBackgroundXFactor:F

    .line 457
    iput v1, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMaxDisplayedNotifications:I

    .line 461
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mClipRect:Landroid/graphics/Rect;

    .line 468
    iput-boolean v9, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpGoingAwayAnimationsAllowed:Z

    .line 469
    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$Dpz6Zg1EwqGyFLQ68KdTUD2Xa-g;

    invoke-direct {v1, v6}, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$Dpz6Zg1EwqGyFLQ68KdTUD2Xa-g;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    iput-object v1, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mReflingAndAnimateScroll:Ljava/lang/Runnable;

    .line 477
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBackgroundAnimationRect:Landroid/graphics/Rect;

    .line 478
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedHeightListeners:Ljava/util/ArrayList;

    .line 482
    const-class v1, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 483
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iput-object v1, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 484
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTmpRect:Landroid/graphics/Rect;

    .line 485
    const-class v1, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 486
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iput-object v1, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    const-string v1, "statusbar"

    .line 488
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 487
    invoke-static {v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    iput-object v1, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 489
    const-class v1, Lcom/android/internal/logging/MetricsLogger;

    .line 490
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/logging/MetricsLogger;

    iput-object v1, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 491
    const-class v1, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 492
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iput-object v1, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 493
    const-class v1, Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    iput-object v1, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    .line 495
    const-class v1, Landroid/util/DisplayMetrics;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/DisplayMetrics;

    iput-object v1, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 496
    const-class v1, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    .line 497
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    iput-object v1, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    .line 498
    const-class v1, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    .line 499
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    iput-object v1, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    .line 502
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    iput-object v1, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHideXInterpolator:Landroid/view/animation/Interpolator;

    .line 504
    const-class v1, Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ShadeController;

    iput-object v1, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    .line 506
    const-class v1, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    .line 507
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    iput-object v1, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNotificationGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    .line 1723
    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$10;

    invoke-direct {v1, v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$10;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    iput-object v1, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mReclamp:Ljava/lang/Runnable;

    .line 6108
    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$11;

    invoke-direct {v1, v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$11;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    iput-object v1, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    .line 6128
    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$12;

    invoke-direct {v1, v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$12;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    iput-object v1, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMenuEventListener:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;

    .line 6192
    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$13;

    invoke-direct {v1, v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$13;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    iput-object v1, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNotificationCallback:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;

    .line 6365
    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$14;

    invoke-direct {v1, v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$14;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    iput-object v1, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDragDownCallback:Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

    .line 6454
    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$15;

    invoke-direct {v1, v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$15;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    iput-object v1, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpCallback:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;

    .line 6475
    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$16;

    invoke-direct {v1, v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$16;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    iput-object v1, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOnGroupChangeListener:Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;

    .line 6508
    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$17;

    invoke-direct {v1, v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$17;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    iput-object v1, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandHelperCallback:Lcom/android/systemui/ExpandHelper$Callback;

    .line 528
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    move/from16 v1, p3

    .line 530
    iput-boolean v1, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAllowLongPress:Z

    :goto_0
    if-ge v0, v2, :cond_0

    .line 533
    iget-object v1, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSections:[Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    new-instance v3, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    invoke-direct {v3, v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;-><init>(Landroid/view/View;)V

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p4

    .line 535
    iput-object v0, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRoundnessManager:Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;

    move-object/from16 v0, p9

    .line 537
    iput-object v0, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 538
    iget-object v0, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    iget-object v1, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRoundnessManager:Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    .line 539
    iget-object v0, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$2kmwH5TzrEUhlI4yYwStAmSu1DU;

    invoke-direct {v1, v6}, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$2kmwH5TzrEUhlI4yYwStAmSu1DU;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->setAnimationStateHandler(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$AnimationStateHandler;)V

    move-object/from16 v0, p10

    .line 540
    iput-object v0, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    move-object/from16 v0, p11

    .line 541
    iput-object v0, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 543
    new-instance v11, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;

    .line 549
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->useNewInterruptionModel(Landroid/content/Context;)Z

    move-result v5

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-object/from16 v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Z)V

    iput-object v11, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSectionsManager:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;

    .line 550
    iget-object v0, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSectionsManager:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;

    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->initialize(Landroid/view/LayoutInflater;)V

    .line 551
    iget-object v0, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSectionsManager:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;

    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$FSzmDEARpk_ltemkfReRVTEnBdg;

    invoke-direct {v1, v6}, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$FSzmDEARpk_ltemkfReRVTEnBdg;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->setOnClearGentleNotifsClickListener(Landroid/view/View$OnClickListener;)V

    .line 557
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget-object v1, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSectionsManager:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;

    iget-object v2, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-direct {v0, v7, v1, v2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$SectionProvider;Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    iput-object v0, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 558
    sget v0, Lcom/android/systemui/R$color;->notification_shade_background_color:I

    invoke-virtual {v7, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBgColor:I

    .line 559
    sget v0, Lcom/android/systemui/R$dimen;->notification_min_height:I

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 560
    sget v1, Lcom/android/systemui/R$dimen;->notification_max_height:I

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 561
    new-instance v2, Lcom/android/systemui/ExpandHelper;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandHelperCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/android/systemui/ExpandHelper;-><init>(Landroid/content/Context;Lcom/android/systemui/ExpandHelper$Callback;II)V

    iput-object v2, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    .line 563
    iget-object v0, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v0, v6}, Lcom/android/systemui/ExpandHelper;->setEventSource(Landroid/view/View;)V

    .line 564
    iget-object v0, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v0, v6}, Lcom/android/systemui/ExpandHelper;->setScrollAdapter(Lcom/android/systemui/statusbar/policy/ScrollAdapter;)V

    .line 565
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    const/4 v12, 0x0

    iget-object v13, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNotificationCallback:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;

    .line 566
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v14

    iget-object v15, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMenuEventListener:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;

    iget-object v1, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    move-object v11, v0

    move-object/from16 v16, v1

    invoke-direct/range {v11 .. v16}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;-><init>(ILcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;Landroid/content/Context;Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;Lcom/android/systemui/plugins/FalsingManager;)V

    iput-object v0, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    .line 567
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->createStackScrollAlgorithm(Landroid/content/Context;)Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;

    move-result-object v0

    iput-object v0, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;

    .line 568
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->initView(Landroid/content/Context;)V

    .line 569
    sget v0, Lcom/android/systemui/R$bool;->config_fadeNotificationsOnDismiss:I

    .line 570
    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFadeNotificationsOnDismiss:Z

    .line 571
    iget-object v0, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRoundnessManager:Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;

    iget-object v1, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->setAnimatedChildren(Ljava/util/HashSet;)V

    .line 572
    iget-object v0, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRoundnessManager:Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;

    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$ZNzbjhiYOpIhFG8SoCZYGISAg68;

    invoke-direct {v1, v6}, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$ZNzbjhiYOpIhFG8SoCZYGISAg68;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->setOnRoundingChangedCallback(Ljava/lang/Runnable;)V

    .line 573
    iget-object v0, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRoundnessManager:Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$7_f8XxLoO1HD4OWprUeIqEzesjU;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$7_f8XxLoO1HD4OWprUeIqEzesjU;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;)V

    invoke-virtual {v6, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->addOnExpandedHeightChangedListener(Ljava/util/function/BiConsumer;)V

    .line 574
    iget-object v0, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$h47I7Qi44nR3_482BY7RSDFFr-0;

    invoke-direct {v1, v6}, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$h47I7Qi44nR3_482BY7RSDFFr-0;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->addUserChangedListener(Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$UserChangedListener;)V

    .line 576
    iget-object v0, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOutlineProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 579
    const-class v0, Lcom/android/systemui/statusbar/notification/row/NotificationBlockingHelperManager;

    .line 580
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/NotificationBlockingHelperManager;

    .line 581
    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$EOvrpynV_4_HqkQZPqElzpbHsN4;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$EOvrpynV_4_HqkQZPqElzpbHsN4;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationBlockingHelperManager;)V

    invoke-virtual {v6, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->addOnExpandedHeightChangedListener(Ljava/util/function/BiConsumer;)V

    .line 585
    iget-object v0, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 593
    sget v0, Lcom/android/systemui/R$bool;->config_enableNotificationsClearAll:I

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mClearAllEnabled:Z

    .line 595
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    .line 596
    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$Jw0uVZk_QqBt9QukDWfY9zQ7BQU;

    invoke-direct {v1, v6}, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$Jw0uVZk_QqBt9QukDWfY9zQ7BQU;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    const-string v2, "high_priority"

    const-string v3, "notification_dismiss_rtl"

    const-string v4, "lineagesecure:lockscreen_translucent_notifications_bg_enabled"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 608
    iget-object v0, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$8;

    invoke-direct {v1, v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$8;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->addNotificationEntryListener(Lcom/android/systemui/statusbar/notification/NotificationEntryListener;)V

    .line 618
    invoke-virtual {v8, v6}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->addListener(Lcom/android/systemui/statusbar/notification/DynamicPrivacyController$Listener;)V

    .line 619
    iput-object v8, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDynamicPrivacyController:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    .line 620
    move-object/from16 v0, p8

    check-cast v0, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iput-object v0, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStatusbarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    return-void
.end method

.method private abortBackgroundAnimators()V
    .locals 3

    .line 2511
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSections:[Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 2512
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->cancelAnimators()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V
    .locals 0

    .line 163
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateForcedScroll()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V
    .locals 0

    .line 163
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateChildren()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Landroid/view/animation/Interpolator;
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHideXInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Landroid/graphics/Rect;
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBackgroundAnimationRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)I
    .locals 0

    .line 163
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mCornerRadius:I

    return p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    .line 163
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->snapViewIfNeeded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)I
    .locals 0

    .line 163
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)I
    .locals 0

    .line 163
    iget p0, p0, Landroid/view/ViewGroup;->mScrollX:I

    return p0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)I
    .locals 0

    .line 163
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    return p0
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Landroid/widget/OverScroller;
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    return-object p0
.end method

.method static synthetic access$1902(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Z)Z
    .locals 0

    .line 163
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDontReportNextOverScroll:Z

    return p1
.end method

.method static synthetic access$2002(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Z)Z
    .locals 0

    .line 163
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDontClampNextScroll:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Z)Z
    .locals 0

    .line 163
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenUpdateRequested:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V
    .locals 0

    .line 163
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->animateScroll()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V
    .locals 0

    .line 163
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestAnimateEverything()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V
    .locals 0

    .line 163
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onStatePostChange()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$LongPressListener;
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLongPressListener:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$LongPressListener;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNotificationGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Z)V
    .locals 0

    .line 163
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setSwipingInProgress(Z)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/plugins/FalsingManager;
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V
    .locals 0

    .line 163
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onPreDrawDuringAnimation()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Z
    .locals 0

    .line 163
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDismissAllInProgress:Z

    return p0
.end method

.method static synthetic access$3100(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V
    .locals 0

    .line 163
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateContinuousShadowDrawing()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Ljava/util/ArrayList;
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipedOutViews:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Z
    .locals 0

    .line 163
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onKeyguard()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3400(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;FF)Lcom/android/systemui/statusbar/notification/row/ExpandableView;
    .locals 0

    .line 163
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getChildAtPosition(FF)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3500(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V
    .locals 0

    .line 163
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateContinuousBackgroundDrawing()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V
    .locals 0

    .line 163
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Z
    .locals 0

    .line 163
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFadeNotificationsOnDismiss:Z

    return p0
.end method

.method static synthetic access$3800(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)I
    .locals 0

    .line 163
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStatusBarState:I

    return p0
.end method

.method static synthetic access$3900(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Landroid/util/DisplayMetrics;
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDimAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/phone/ShadeController;
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDynamicPrivacyController:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/SysuiStatusBarStateController;
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStatusbarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/phone/KeyguardBypassController;
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Z
    .locals 0

    .line 163
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    return p0
.end method

.method static synthetic access$4700(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Landroid/content/Context;
    .locals 0

    .line 163
    iget-object p0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Z
    .locals 0

    .line 163
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mGroupExpandedForMeasure:Z

    return p0
.end method

.method static synthetic access$4900(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Z
    .locals 0

    .line 163
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    return p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;F)V
    .locals 0

    .line 163
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setDimAmount(F)V

    return-void
.end method

.method static synthetic access$5002(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Lcom/android/systemui/statusbar/notification/row/ExpandableView;
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedGroupView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    return-object p1
.end method

.method static synthetic access$5102(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Z)Z
    .locals 0

    .line 163
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    return p1
.end method

.method static synthetic access$5200(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V
    .locals 0

    .line 163
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateContentHeight()V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V
    .locals 0

    .line 163
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->notifyHeightChangeListener(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    return-void
.end method

.method static synthetic access$5402(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Z)Z
    .locals 0

    .line 163
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    return p1
.end method

.method static synthetic access$5500(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Z
    .locals 0

    .line 163
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    return p0
.end method

.method static synthetic access$5502(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Z)Z
    .locals 0

    .line 163
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    return p1
.end method

.method static synthetic access$5602(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;I)I
    .locals 0

    .line 163
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMaxScrollAfterExpand:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V
    .locals 0

    .line 163
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateViewShadows()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/notification/stack/AmbientState;
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)F
    .locals 0

    .line 163
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLinearHideAmount:F

    return p0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)F
    .locals 0

    .line 163
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBackgroundXFactor:F

    return p0
.end method

.method private animateDimmed(Z)V
    .locals 3

    .line 4605
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDimAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 4606
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 4609
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDimAmount:F

    cmpl-float v1, p1, v0

    if-nez v1, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p1, v1, v0

    .line 4612
    invoke-static {v1}, Landroid/animation/TimeAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDimAnimator:Landroid/animation/ValueAnimator;

    .line 4613
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDimAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xdc

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4614
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDimAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4615
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDimAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDimEndListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4616
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDimAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDimUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4617
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDimAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private animateScroll()V
    .locals 4

    .line 1924
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1942
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 1943
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 1946
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v2

    if-gez v1, :cond_0

    if-gez v0, :cond_1

    :cond_0
    if-le v1, v2, :cond_2

    if-gt v0, v2, :cond_2

    .line 1950
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setMaxOverScrollFromCurrentVelocity()V

    .line 1953
    :cond_2
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDontClampNextScroll:Z

    if-eqz v3, :cond_3

    .line 1954
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_3
    sub-int/2addr v1, v0

    .line 1956
    iget v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMaxOverScroll:F

    float-to-int v3, v3

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->customOverScrollBy(IIII)V

    .line 1961
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mReflingAndAnimateScroll:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    .line 1963
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDontClampNextScroll:Z

    .line 1964
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFinishScrollingCallback:Ljava/lang/Runnable;

    if-eqz p0, :cond_6

    .line 1965
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_6
    :goto_0
    return-void
.end method

.method private applyCurrentState()V
    .locals 4

    .line 4659
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 4661
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 4662
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->applyViewState()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4665
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mListener:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$OnChildLocationsChangedListener;

    if-eqz v0, :cond_1

    .line 4666
    invoke-interface {v0}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$OnChildLocationsChangedListener;->onChildLocationsChanged()V

    .line 4668
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->runAnimationFinishedRunnables()V

    .line 4669
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setAnimationRunning(Z)V

    .line 4670
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateBackground()V

    .line 4671
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateViewShadows()V

    .line 4672
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateClippingToTopRoundedCorner()V

    return-void
.end method

.method private areSectionBoundsAnimating()Z
    .locals 4

    .line 2527
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSections:[Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 2528
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->areBoundsAnimating()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private clampScrollPosition()V
    .locals 2

    .line 1267
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v0

    .line 1268
    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-ge v0, v1, :cond_0

    .line 1269
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    :cond_0
    return-void
.end method

.method private clearHeadsUpDisappearRunning()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 4544
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4545
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4546
    instance-of v3, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v3, :cond_0

    .line 4547
    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 4548
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setHeadsUpAnimatingAway(Z)V

    .line 4549
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4550
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 4551
    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setHeadsUpAnimatingAway(Z)V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private clearNotifications(IZ)V
    .locals 11

    .line 5477
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 5479
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 5480
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_7

    .line 5482
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 5483
    instance-of v6, v5, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v6, :cond_6

    .line 5484
    move-object v6, v5

    check-cast v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 5486
    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v7}, Landroid/view/View;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v7

    .line 5487
    invoke-direct {p0, v6, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->includeChildInDismissAll(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_1

    .line 5488
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5489
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_2

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTmpRect:Landroid/graphics/Rect;

    .line 5490
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-lez v7, :cond_2

    .line 5491
    :cond_0
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 5494
    :cond_1
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_2

    if-eqz v7, :cond_3

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTmpRect:Landroid/graphics/Rect;

    .line 5495
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-lez v5, :cond_2

    goto :goto_1

    :cond_2
    move v9, v3

    .line 5498
    :cond_3
    :goto_1
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 5500
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 5501
    invoke-direct {p0, v6, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->includeChildInDismissAll(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 5502
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v9, :cond_4

    .line 5503
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->areChildrenExpanded()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 5504
    iget-object v8, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v8

    .line 5505
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v10

    if-nez v10, :cond_4

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTmpRect:Landroid/graphics/Rect;

    .line 5506
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-lez v8, :cond_4

    .line 5507
    :cond_5
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 5516
    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz p2, :cond_8

    .line 5518
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels(I)V

    :cond_8
    return-void

    .line 5523
    :cond_9
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$BKZ0Bh5XLVtMnQqHjBJSLhE_Z2M;

    invoke-direct {v0, p0, v2, p1}, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$BKZ0Bh5XLVtMnQqHjBJSLhE_Z2M;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Ljava/util/ArrayList;I)V

    invoke-direct {p0, v1, p2, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->performDismissAllAnimations(Ljava/util/ArrayList;ZLjava/lang/Runnable;)V

    return-void
.end method

.method private clearTemporaryViews()V
    .locals 3

    .line 4383
    invoke-direct {p0, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->clearTemporaryViewsInGroup(Landroid/view/ViewGroup;)V

    const/4 v0, 0x0

    .line 4384
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 4385
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 4386
    instance-of v2, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v2, :cond_0

    .line 4387
    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 4388
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->clearTemporaryViewsInGroup(Landroid/view/ViewGroup;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private clearTemporaryViewsInGroup(Landroid/view/ViewGroup;)V
    .locals 0

    :goto_0
    if-eqz p1, :cond_0

    .line 4395
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTransientViewCount()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 4396
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->getTransientView(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeTransientView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private clearTransient()V
    .locals 2

    .line 4560
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mClearTransientViewsWhenFinished:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 4561
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->removeTransientView(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    goto :goto_0

    .line 4563
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mClearTransientViewsWhenFinished:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method private clearUserLockedViews()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 4371
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4372
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 4373
    instance-of v3, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v3, :cond_0

    .line 4374
    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 4375
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setUserLocked(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private customOverScrollBy(IIII)V
    .locals 0

    add-int/2addr p2, p1

    neg-int p1, p4

    add-int/2addr p3, p4

    const/4 p4, 0x1

    if-le p2, p3, :cond_0

    move p1, p3

    goto :goto_0

    :cond_0
    if-ge p2, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p4, 0x0

    move p1, p2

    .line 2029
    :goto_0
    invoke-direct {p0, p1, p4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onCustomOverScrolled(IZ)V

    return-void
.end method

.method private didSectionBoundsChange()Z
    .locals 4

    .line 2517
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSections:[Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 2518
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->didBoundsChange()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private dispatchDownEventToScroller(Landroid/view/MotionEvent;)V
    .locals 1

    .line 3724
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    const/4 v0, 0x0

    .line 3725
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 3726
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onScrollTouch(Landroid/view/MotionEvent;)Z

    .line 3727
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 12

    .line 828
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSidePaddings:I

    .line 829
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSidePaddings:I

    sub-int/2addr v1, v2

    .line 830
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSections:[Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getCurrentBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 831
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSections:[Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getCurrentBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 832
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    .line 833
    iget v7, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTopPadding:I

    .line 835
    iget v8, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mInterpolatedHideAmount:F

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v8, v9, v8

    .line 836
    iget-object v10, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHideXInterpolator:Landroid/view/animation/Interpolator;

    iget v11, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLinearHideAmount:F

    sub-float/2addr v9, v11

    iget v11, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBackgroundXFactor:F

    mul-float/2addr v9, v11

    invoke-interface {v10, v9}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v9

    int-to-float v6, v6

    int-to-float v0, v0

    .line 839
    invoke-static {v6, v0, v9}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    float-to-int v10, v0

    int-to-float v0, v1

    .line 840
    invoke-static {v6, v0, v9}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    float-to-int v6, v0

    int-to-float v0, v7

    int-to-float v1, v2

    .line 841
    invoke-static {v0, v1, v8}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v1

    float-to-int v7, v1

    int-to-float v1, v4

    .line 842
    invoke-static {v0, v1, v8}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    float-to-int v0, v0

    .line 843
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBackgroundAnimationRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v10, v7, v6, v0}, Landroid/graphics/Rect;->set(IIII)V

    sub-int v8, v7, v2

    .line 852
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSections:[Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    array-length v1, v0

    move v2, v3

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    .line 853
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getFirstVisibleChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    move-result-object v4

    if-eqz v4, :cond_0

    move v0, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    .line 859
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onKeyguard()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 860
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isPulseExpanding()Z

    move-result v0

    goto :goto_3

    .line 862
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isDozing()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move v0, v3

    goto :goto_3

    :cond_4
    :goto_2
    move v0, v5

    :goto_3
    if-eqz v0, :cond_5

    move-object v0, p0

    move-object v1, p1

    move v2, v10

    move v3, v6

    move v4, v7

    move v5, v8

    .line 865
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->drawBackgroundRects(Landroid/graphics/Canvas;IIII)V

    .line 868
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateClipping()V

    return-void
.end method

.method private drawBackgroundRects(Landroid/graphics/Canvas;IIII)V
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p3

    .line 890
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSections:[Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 891
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getCurrentBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int v2, v2, p5

    .line 895
    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSections:[Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    array-length v5, v4

    const/4 v6, 0x1

    move/from16 v7, p2

    move/from16 v8, p4

    move v9, v1

    move v10, v2

    move v2, v3

    move v11, v6

    :goto_0
    if-ge v2, v5, :cond_4

    aget-object v12, v4, v2

    .line 896
    invoke-virtual {v12}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getFirstVisibleChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    move-result-object v13

    if-nez v13, :cond_0

    move/from16 v15, p2

    goto :goto_3

    .line 899
    :cond_0
    invoke-virtual {v12}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getCurrentBounds()Landroid/graphics/Rect;

    move-result-object v13

    iget v13, v13, Landroid/graphics/Rect;->top:I

    add-int v13, v13, p5

    .line 900
    invoke-virtual {v12}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getCurrentBounds()Landroid/graphics/Rect;

    move-result-object v14

    iget v14, v14, Landroid/graphics/Rect;->left:I

    move/from16 v15, p2

    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    invoke-static {v14, v1}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 901
    invoke-virtual {v12}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getCurrentBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int v1, v13, v10

    if-gt v1, v6, :cond_3

    if-ne v7, v14, :cond_1

    if-eq v9, v3, :cond_2

    :cond_1
    if-nez v11, :cond_2

    goto :goto_1

    :cond_2
    move v13, v8

    goto :goto_2

    :cond_3
    :goto_1
    int-to-float v1, v7

    int-to-float v7, v8

    int-to-float v8, v9

    int-to-float v9, v10

    .line 907
    iget v10, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mCornerRadius:I

    int-to-float v11, v10

    int-to-float v10, v10

    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v16, p1

    move/from16 v17, v1

    move/from16 v18, v7

    move/from16 v19, v8

    move/from16 v20, v9

    move/from16 v21, v11

    move/from16 v22, v10

    move-object/from16 v23, v6

    invoke-virtual/range {v16 .. v23}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 917
    :goto_2
    invoke-virtual {v12}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getCurrentBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int v1, v1, p5

    move v10, v1

    move v9, v3

    move v8, v13

    move v7, v14

    const/4 v11, 0x0

    :goto_3
    add-int/lit8 v2, v2, 0x1

    move/from16 v1, p3

    const/4 v3, 0x0

    const/4 v6, 0x1

    goto :goto_0

    :cond_4
    int-to-float v1, v7

    int-to-float v2, v8

    int-to-float v3, v9

    int-to-float v4, v10

    .line 920
    iget v5, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mCornerRadius:I

    int-to-float v6, v5

    int-to-float v5, v5

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v16, p1

    move/from16 v17, v1

    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v6

    move/from16 v22, v5

    move-object/from16 v23, v0

    invoke-virtual/range {v16 .. v23}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawHeadsUpBackground(Landroid/graphics/Canvas;)V
    .locals 14

    .line 928
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSidePaddings:I

    .line 929
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSidePaddings:I

    sub-int/2addr v1, v2

    .line 931
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    int-to-float v2, v2

    .line 933
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v8, v2

    move v10, v4

    :goto_0
    if-ge v5, v3, :cond_2

    .line 935
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 936
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_1

    instance-of v6, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v6, :cond_1

    .line 938
    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 939
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isPinned()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isHeadsUpAnimatingAway()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getTranslation()F

    move-result v6

    cmpg-float v6, v6, v4

    if-gez v6, :cond_1

    .line 940
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getProvider()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->shouldShowGutsOnSnapOpen()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 941
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v6

    invoke-static {v8, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 942
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v7

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v7, v2

    invoke-static {v10, v7}, Ljava/lang/Math;->max(FF)F

    move-result v2

    move v10, v2

    move v8, v6

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    cmpg-float v2, v8, v10

    if-gez v2, :cond_3

    int-to-float v7, v0

    int-to-float v9, v1

    .line 948
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mCornerRadius:I

    int-to-float v11, v0

    int-to-float v12, v0

    iget-object v13, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v13}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    :cond_3
    return-void
.end method

.method private endDrag()V
    .locals 4

    const/4 v0, 0x0

    .line 3963
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    .line 3965
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->recycleVelocityTracker()V

    const/4 v1, 0x1

    .line 3967
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 3968
    invoke-virtual {p0, v3, v1, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    .line 3970
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v2

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 3971
    invoke-virtual {p0, v3, v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    :cond_1
    return-void
.end method

.method private focusNextViewIfFocused(Landroid/view/View;)V
    .locals 2

    .line 2962
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_2

    .line 2963
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 2964
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->shouldRefocusOnDismiss()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2965
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getChildAfterViewWhenDismissed()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2967
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getGroupParentWhenDismissed()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2969
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result p1

    goto :goto_0

    .line 2970
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    :goto_0
    const/4 v0, 0x1

    .line 2968
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getFirstChildBelowTranlsationY(FZ)Landroid/view/View;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    .line 2973
    invoke-virtual {v1}, Landroid/view/View;->requestAccessibilityFocus()Z

    :cond_2
    return-void
.end method

.method private generateActivateEvent()V
    .locals 4

    .line 3610
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mActivateNeedsAnimation:Z

    if-eqz v0, :cond_0

    .line 3611
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x0

    .line 3614
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mActivateNeedsAnimation:Z

    return-void
.end method

.method private generateAllAnimationEvents()V
    .locals 0

    .line 3413
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->generateHeadsUpAnimationEvents()V

    .line 3414
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->generateChildRemovalEvents()V

    .line 3415
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->generateChildAdditionEvents()V

    .line 3416
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->generatePositionChangeEvents()V

    .line 3417
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->generateTopPaddingEvent()V

    .line 3418
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->generateActivateEvent()V

    .line 3419
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->generateDimmedEvent()V

    .line 3420
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->generateHideSensitiveEvent()V

    .line 3421
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->generateGoToFullShadeEvent()V

    .line 3422
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->generateViewResizeEvent()V

    .line 3423
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->generateGroupExpansionEvent()V

    .line 3424
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->generateAnimateEverythingEvent()V

    return-void
.end method

.method private generateAnimateEverythingEvent()V
    .locals 4

    .line 3619
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mEverythingNeedsAnimation:Z

    if-eqz v0, :cond_0

    .line 3620
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v2, 0x0

    const/16 v3, 0xf

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x0

    .line 3623
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mEverythingNeedsAnimation:Z

    return-void
.end method

.method private generateChildAdditionEvents()V
    .locals 7

    .line 3577
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 3578
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFromMoreCardAdditions:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 3579
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;

    const-wide/16 v5, 0x168

    invoke-direct {v4, v1, v3, v5, v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;IJ)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3583
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;

    invoke-direct {v4, v1, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3587
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 3588
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFromMoreCardAdditions:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method private generateChildRemovalEvents()V
    .locals 9

    .line 3521
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenToRemoveAnimated:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 3522
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipedOutViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 3525
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v3

    .line 3527
    instance-of v4, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    .line 3528
    move-object v4, v1

    check-cast v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 3529
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isRemoved()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->wasChildInGroupWhenRemoved()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3530
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getTranslationWhenRemoved()F

    move-result v3

    move v7, v5

    goto :goto_1

    :cond_0
    move v7, v6

    .line 3533
    :goto_1
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getTranslation()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v8, v4

    if-nez v4, :cond_1

    move v4, v6

    goto :goto_2

    :cond_1
    move v4, v5

    :goto_2
    or-int/2addr v2, v4

    goto :goto_3

    :cond_2
    move v7, v6

    :goto_3
    if-nez v2, :cond_4

    .line 3536
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 3537
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-nez v2, :cond_3

    move v2, v6

    goto :goto_4

    :cond_3
    move v2, v5

    :goto_4
    if-eqz v2, :cond_4

    .line 3539
    instance-of v4, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz v4, :cond_4

    .line 3543
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getTransientContainer()Landroid/view/ViewGroup;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 3545
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->removeTransientView(Landroid/view/View;)V

    :cond_4
    if-eqz v2, :cond_5

    const/4 v6, 0x2

    .line 3552
    :cond_5
    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;

    invoke-direct {v2, v1, v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)V

    .line 3553
    invoke-direct {p0, v3, v7}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getFirstChildBelowTranlsationY(FZ)Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->viewAfterChangingView:Landroid/view/View;

    .line 3555
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3556
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipedOutViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3558
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenToRemoveAnimated:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private generateDimmedEvent()V
    .locals 4

    .line 3628
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDimmedNeedsAnimation:Z

    if-eqz v0, :cond_0

    .line 3629
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x0

    .line 3632
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDimmedNeedsAnimation:Z

    return-void
.end method

.method private generateGoToFullShadeEvent()V
    .locals 4

    .line 3646
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mGoToFullShadeNeedsAnimation:Z

    if-eqz v0, :cond_0

    .line 3647
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x0

    .line 3650
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mGoToFullShadeNeedsAnimation:Z

    return-void
.end method

.method private generateGroupExpansionEvent()V
    .locals 4

    .line 3491
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedGroupView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz v0, :cond_0

    .line 3492
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;

    const/16 v3, 0xa

    invoke-direct {v2, v0, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 3494
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedGroupView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    :cond_0
    return-void
.end method

.method private generateHeadsUpAnimationEvents()V
    .locals 8

    .line 3429
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpChangeAnimations:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 3430
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 3431
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 3432
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v3

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v3, 0xe

    .line 3439
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isPinned()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v4, :cond_1

    move v4, v5

    goto :goto_1

    :cond_1
    move v4, v6

    .line 3440
    :goto_1
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 3443
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onKeyguard()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 3444
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    move v5, v6

    :cond_3
    :goto_2
    if-eqz v5, :cond_5

    if-nez v1, :cond_5

    .line 3446
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->wasJustClicked()Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0xd

    goto :goto_3

    :cond_4
    const/16 v1, 0xc

    :goto_3
    move v3, v1

    .line 3449
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 3451
    invoke-virtual {v2, v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setHeadsUpAnimatingAway(Z)V

    goto :goto_0

    .line 3455
    :cond_5
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v5

    if-nez v5, :cond_6

    goto :goto_0

    :cond_6
    if-eqz v1, :cond_a

    .line 3461
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAddedHeadsUpChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    if-eqz v4, :cond_a

    :cond_7
    if-nez v4, :cond_9

    .line 3462
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->shouldHunAppearFromBottom(Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_4

    :cond_8
    move v3, v6

    goto :goto_5

    :cond_9
    :goto_4
    const/16 v1, 0xb

    move v3, v1

    :goto_5
    xor-int/lit8 v6, v4, 0x1

    .line 3472
    :cond_a
    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)V

    .line 3473
    iput-boolean v6, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->headsUpFromBottom:Z

    .line 3474
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3476
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpChangeAnimations:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 3477
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAddedHeadsUpChildren:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private generateHideSensitiveEvent()V
    .locals 4

    .line 3637
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHideSensitiveNeedsAnimation:Z

    if-eqz v0, :cond_0

    .line 3638
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x0

    .line 3641
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHideSensitiveNeedsAnimation:Z

    return-void
.end method

.method private generatePositionChangeEvents()V
    .locals 5

    .line 3563
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenChangingPositions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x6

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 3564
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;

    invoke-direct {v4, v1, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3567
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenChangingPositions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3568
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mGenerateChildOrderChangedEvent:Z

    if-eqz v0, :cond_1

    .line 3569
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 3571
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mGenerateChildOrderChangedEvent:Z

    :cond_1
    return-void
.end method

.method private generateRemoveAnimation(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z
    .locals 3

    .line 2995
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->removeRemovedChildFromHeadsUpChangeAnimations(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2996
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAddedHeadsUpChildren:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return v1

    .line 2999
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isClickedHeadsUp(Landroid/view/View;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 3001
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mClearTransientViewsWhenFinished:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return v2

    .line 3004
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isChildInInvisibleGroup(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3005
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3007
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenToRemoveAnimated:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3008
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    return v2

    .line 3011
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 3012
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFromMoreCardAdditions:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_3
    return v1
.end method

.method private generateTopPaddingEvent()V
    .locals 5

    .line 3593
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTopPaddingNeedsAnimation:Z

    if-eqz v0, :cond_1

    .line 3595
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isDozing()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 3596
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;

    const-wide/16 v3, 0x226

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;IJ)V

    goto :goto_0

    .line 3600
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)V

    .line 3603
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v0, 0x0

    .line 3605
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTopPaddingNeedsAnimation:Z

    return-void
.end method

.method private generateViewResizeEvent()V
    .locals 5

    .line 3500
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNeedViewResizeAnimation:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 3502
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;

    .line 3503
    iget v2, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    const/16 v3, 0xd

    if-eq v2, v3, :cond_1

    const/16 v3, 0xc

    if-ne v2, v3, :cond_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    if-nez v0, :cond_3

    .line 3512
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v3, 0x0

    const/16 v4, 0x9

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3516
    :cond_3
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNeedViewResizeAnimation:Z

    return-void
.end method

.method private getAppearEndPosition()F
    .locals 4

    .line 1473
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v0

    .line 1474
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    if-eqz v0, :cond_2

    .line 1475
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isHeadsUpTransition()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 1476
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isDozing()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x1

    if-lt v0, v3, :cond_3

    .line 1480
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_3

    .line 1481
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_1

    .line 1477
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getTopHeadsUpPinnedHeight()I

    move-result v1

    goto :goto_1

    .line 1485
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    .line 1487
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onKeyguard()Z

    move-result v0

    if-eqz v0, :cond_4

    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTopPadding:I

    goto :goto_2

    :cond_4
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIntrinsicPadding:I

    :goto_2
    add-int/2addr v1, p0

    int-to-float p0, v1

    return p0
.end method

.method private getAppearStartPosition()F
    .locals 1

    .line 1437
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isHeadsUpTransition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1438
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpInset:I

    .line 1439
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getFirstVisibleSection()Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getFirstVisibleChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getPinnedHeadsUpHeight()I

    move-result p0

    add-int/2addr v0, p0

    int-to-float p0, v0

    return p0

    .line 1441
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getMinExpansionHeight()I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method private getChildAtPosition(FF)Lcom/android/systemui/statusbar/notification/row/ExpandableView;
    .locals 1

    const/4 v0, 0x1

    .line 1595
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getChildAtPosition(FFZ)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object p0

    return-object p0
.end method

.method private getChildAtPosition(FFZ)Lcom/android/systemui/statusbar/notification/row/ExpandableView;
    .locals 10

    .line 1611
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    .line 1613
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 1614
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_4

    instance-of v4, v3, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;

    if-eqz v4, :cond_0

    goto/16 :goto_1

    .line 1618
    :cond_0
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v4

    .line 1619
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipTopAmount()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v4

    .line 1620
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v4

    .line 1621
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipBottomAmount()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    .line 1626
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v7

    sub-float v8, v6, v5

    .line 1628
    iget v9, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMinInteractionHeight:I

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-gez v8, :cond_1

    if-nez p3, :cond_4

    :cond_1
    cmpl-float v5, p2, v5

    if-ltz v5, :cond_4

    cmpg-float v5, p2, v6

    if-gtz v5, :cond_4

    int-to-float v5, v1

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_4

    int-to-float v5, v7

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_4

    .line 1630
    instance-of v5, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v5, :cond_3

    .line 1631
    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 1632
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v5

    .line 1633
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v6, :cond_2

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isPinned()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 1634
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getTopEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v6

    if-eq v6, v3, :cond_2

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 1636
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getTopEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v7

    iget-object v7, v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 1635
    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v6

    if-eq v6, v5, :cond_2

    goto :goto_1

    :cond_2
    sub-float/2addr p2, v4

    .line 1640
    invoke-virtual {v3, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getViewAtPosition(F)Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v3

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method private getExpandTranslationStart()F
    .locals 2

    .line 1428
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTopPadding:I

    neg-int v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getMinExpansionHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result p0

    sub-int/2addr v0, p0

    int-to-float p0, v0

    return p0
.end method

.method private getFirstChildBelowTranlsationY(FZ)Landroid/view/View;
    .locals 8

    .line 2313
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    .line 2315
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2316
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    goto :goto_2

    .line 2319
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v4

    cmpl-float v5, v4, p1

    if-ltz v5, :cond_1

    return-object v3

    :cond_1
    if-nez p2, :cond_3

    .line 2322
    instance-of v5, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v5, :cond_3

    .line 2323
    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 2324
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->areChildrenExpanded()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2326
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v3

    move v5, v1

    .line 2327
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 2329
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 2330
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v7

    add-float/2addr v7, v4

    cmpl-float v7, v7, p1

    if-ltz v7, :cond_2

    return-object v6

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method private getFirstChildWithBackground()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;
    .locals 5

    .line 2637
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2639
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2640
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    instance-of v3, v2, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    if-eq v2, v3, :cond_0

    .line 2642
    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getFirstVisibleSection()Lcom/android/systemui/statusbar/notification/stack/NotificationSection;
    .locals 4

    .line 2604
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSections:[Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 2605
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getFirstVisibleChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    move-result-object v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getImeInset()I
    .locals 2

    .line 2270
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBottomInset:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p0

    sub-int/2addr v1, p0

    sub-int/2addr v0, v1

    const/4 p0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private getIntrinsicHeight(Landroid/view/View;)I
    .locals 0

    .line 3124
    instance-of p0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz p0, :cond_0

    .line 3125
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 3126
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result p0

    return p0

    .line 3128
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    return p0
.end method

.method private getLastChildWithBackground()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;
    .locals 4

    .line 2624
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2626
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2627
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    instance-of v2, v1, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    if-eq v1, v2, :cond_0

    .line 2629
    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getLastVisibleSection()Lcom/android/systemui/statusbar/notification/stack/NotificationSection;
    .locals 3

    .line 2613
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSections:[Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2614
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSections:[Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    aget-object v1, v1, v0

    .line 2615
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getLastVisibleChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getLayoutHeight()I
    .locals 1

    .line 1531
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMaxLayoutHeight:I

    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mCurrentStackHeight:I

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private getRubberBandFactor(Z)F
    .locals 1

    const v0, 0x3eb33333    # 0.35f

    if-nez p1, :cond_0

    return v0

    .line 2888
    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-eqz p1, :cond_1

    const p0, 0x3e19999a    # 0.15f

    return p0

    .line 2890
    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpansionChanging:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPanelTracking:Z

    if-eqz p1, :cond_2

    goto :goto_0

    .line 2892
    :cond_2
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScrolledToTopOnFirstDown:Z

    if-eqz p0, :cond_3

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_3
    return v0

    :cond_4
    :goto_0
    const p0, 0x3e570a3d    # 0.21f

    return p0
.end method

.method private getScrollRange()I
    .locals 4

    .line 2258
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mContentHeight:I

    .line 2259
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isExpanded()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2260
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpInset:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getTopHeadsUpPinnedHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 2262
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMaxLayoutHeight:I

    sub-int v1, v0, v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2263
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getImeInset()I

    move-result v3

    .line 2264
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p0

    sub-int/2addr p0, v3

    sub-int/2addr v0, p0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {v3, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    add-int/2addr v1, p0

    return v1
.end method

.method private getTopHeadsUpPinnedHeight()I
    .locals 2

    .line 1451
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getTopEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1455
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v0

    .line 1456
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1457
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 1458
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1460
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v0

    .line 1463
    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPinnedHeadsUpHeight()I

    move-result p0

    return p0
.end method

.method private handleDismissAllClipping()V
    .locals 7

    .line 4907
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_2

    .line 4910
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 4911
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_0

    goto :goto_2

    .line 4914
    :cond_0
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDismissAllInProgress:Z

    if-eqz v5, :cond_1

    if-eqz v3, :cond_1

    .line 4915
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipTopAmount()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setMinClipTopAmount(I)V

    goto :goto_1

    .line 4917
    :cond_1
    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setMinClipTopAmount(I)V

    .line 4919
    :goto_1
    invoke-static {v4}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v3

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private handleEmptySpaceClick(Landroid/view/MotionEvent;)V
    .locals 2

    .line 4015
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 4017
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTouchIsClick:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mInitialTouchY:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 4018
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mInitialTouchX:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    :cond_1
    const/4 p1, 0x0

    .line 4019
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTouchIsClick:Z

    goto :goto_0

    .line 4023
    :cond_2
    iget p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStatusBarState:I

    if-eq p1, v1, :cond_3

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTouchIsClick:Z

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mInitialTouchX:F

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mInitialTouchY:F

    .line 4024
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isBelowLastNotification(FF)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 4025
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOnEmptySpaceClickListener:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mInitialTouchX:F

    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mInitialTouchY:F

    invoke-interface {p1, v0, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;->onEmptySpaceClicked(FF)V

    :cond_3
    :goto_0
    return-void
.end method

.method private includeChildInDismissAll(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)Z
    .locals 0

    .line 5554
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->canChildBeDismissed(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->matchesSelection(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private inflateEmptyShadeView()V
    .locals 3

    .line 5628
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->status_bar_no_notifications:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/EmptyShadeView;

    .line 5630
    sget v1, Lcom/android/systemui/R$string;->empty_shade_text:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/EmptyShadeView;->setText(I)V

    .line 5631
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setEmptyShadeView(Lcom/android/systemui/statusbar/EmptyShadeView;)V

    return-void
.end method

.method private initDownStates(Landroid/view/MotionEvent;)V
    .locals 3

    .line 4033
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 4034
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    .line 4035
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOnlyScrollingInThisMotion:Z

    .line 4036
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDisallowScrollingInThisMotion:Z

    .line 4037
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDisallowDismissInThisMotion:Z

    .line 4038
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTouchIsClick:Z

    .line 4039
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mInitialTouchX:F

    .line 4040
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mInitialTouchY:F

    :cond_0
    return-void
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .line 1910
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 1911
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 1913
    :cond_0
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :goto_0
    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .line 1895
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 1896
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 2

    .line 976
    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    const/high16 v0, 0x40000

    .line 977
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    const/4 v0, 0x0

    .line 978
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 979
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 980
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTouchSlop:I

    .line 981
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMinimumVelocity:I

    .line 982
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMaximumVelocity:I

    .line 983
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOverflingDistance:I

    .line 985
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 986
    sget v1, Lcom/android/systemui/R$dimen;->notification_min_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mCollapsedSize:I

    .line 987
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->initView(Landroid/content/Context;)V

    .line 988
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->reload(Landroid/content/Context;)V

    .line 989
    sget p1, Lcom/android/systemui/R$dimen;->notification_divider_height:I

    .line 990
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const/4 v1, 0x1

    .line 989
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    .line 991
    sget p1, Lcom/android/systemui/R$dimen;->notification_divider_height_increased:I

    .line 992
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIncreasedPaddingBetweenElements:I

    .line 993
    sget p1, Lcom/android/systemui/R$dimen;->min_top_overscroll_to_qs:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMinTopOverScrollToEscape:F

    .line 995
    sget p1, Lcom/android/systemui/R$dimen;->status_bar_height:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStatusBarHeight:I

    .line 996
    sget p1, Lcom/android/systemui/R$dimen;->notification_panel_margin_bottom:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBottomMargin:I

    .line 997
    sget p1, Lcom/android/systemui/R$dimen;->notification_side_paddings:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSidePaddings:I

    .line 998
    sget p1, Lcom/android/systemui/R$dimen;->notification_min_interaction_height:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMinInteractionHeight:I

    .line 1000
    iget-object p1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    const v1, 0x1010571

    .line 1001
    invoke-static {p1, v1}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result p1

    .line 1000
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mCornerRadius:I

    .line 1002
    iget p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStatusBarHeight:I

    sget v1, Lcom/android/systemui/R$dimen;->heads_up_status_bar_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpInset:I

    return-void
.end method

.method private isChildInGroup(Landroid/view/View;)Z
    .locals 1

    .line 2982
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 2984
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    .line 2983
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isChildInGroupWithSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isChildInInvisibleGroup(Landroid/view/View;)Z
    .locals 2

    .line 3056
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3057
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 3058
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 3059
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3060
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p0

    if-eq p0, p1, :cond_0

    .line 3061
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p0

    const/4 p1, 0x4

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isClickedHeadsUp(Landroid/view/View;)Z
    .locals 0

    .line 3021
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/HeadsUpUtil;->isClickedHeadsUpNotification(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private isCurrentlyAnimating()Z
    .locals 0

    .line 1259
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->isRunning()Z

    move-result p0

    return p0
.end method

.method private isHeadsUp(Landroid/view/View;)Z
    .locals 0

    .line 1556
    instance-of p0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_0

    .line 1557
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 1558
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isHeadsUp()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isHeadsUpTransition()Z
    .locals 1

    .line 1492
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getFirstVisibleSection()Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    move-result-object v0

    .line 1493
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTrackingHeadsUp:Z

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    .line 1494
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getFirstVisibleChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isAboveShelf()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isInContentBounds(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 4172
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isInContentBounds(F)Z

    move-result p0

    return p0
.end method

.method public static isPinnedHeadsUp(Landroid/view/View;)Z
    .locals 2

    .line 1547
    instance-of v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1548
    check-cast p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 1549
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isPinned()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isRubberbanded(Z)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 2905
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpansionChanging:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPanelTracking:Z

    if-nez p1, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScrolledToTopOnFirstDown:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isScrollingEnabled()Z
    .locals 0

    .line 1746
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScrollingEnabled:Z

    return p0
.end method

.method public static synthetic lambda$EebmavE8B0v9pYEId75j8vvZNvI(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateBackgroundDimming()V

    return-void
.end method

.method static synthetic lambda$new$4(Lcom/android/systemui/statusbar/notification/row/NotificationBlockingHelperManager;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 0

    .line 582
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBlockingHelperManager;->setNotificationShadeExpanded(F)V

    return-void
.end method

.method private static matchesSelection(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 5863
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isTopBucket()Z

    move-result p0

    xor-int/2addr p0, v0

    return p0

    .line 5865
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown selection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5861
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isTopBucket()Z

    move-result p0

    return p0

    :cond_2
    return v0
.end method

.method private notifyAppearChangedListeners()V
    .locals 6

    .line 1367
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onKeyguard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1368
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->calculateAppearFractionBypass()F

    move-result v0

    .line 1369
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getPulseHeight()F

    move-result v1

    goto :goto_0

    .line 1371
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedHeight:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->calculateAppearFraction(F)F

    move-result v0

    invoke-static {v0}, Landroid/util/MathUtils;->saturate(F)F

    move-result v0

    .line 1372
    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedHeight:F

    .line 1374
    :goto_0
    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLastSentAppear:F

    cmpl-float v2, v0, v2

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLastSentExpandedHeight:F

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_2

    .line 1375
    :cond_1
    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLastSentAppear:F

    .line 1376
    iput v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLastSentExpandedHeight:F

    const/4 v2, 0x0

    .line 1377
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedHeightListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1378
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedHeightListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/function/BiConsumer;

    .line 1379
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private notifyHeightChangeListener(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V
    .locals 1

    const/4 v0, 0x0

    .line 1008
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->notifyHeightChangeListener(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V

    return-void
.end method

.method private notifyHeightChangeListener(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V
    .locals 0

    .line 1013
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;

    if-eqz p0, :cond_0

    .line 1014
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;->onHeightChanged(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V

    :cond_0
    return-void
.end method

.method private notifyOverscrollTopListener(FZ)V
    .locals 3

    .line 2113
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/ExpandHelper;->onlyObserveMovements(Z)V

    .line 2114
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDontReportNextOverScroll:Z

    if-eqz v0, :cond_1

    .line 2115
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDontReportNextOverScroll:Z

    return-void

    .line 2118
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOverscrollTopChangedListener:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;

    if-eqz p0, :cond_2

    .line 2119
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;->onOverscrollTopChanged(FZ)V

    :cond_2
    return-void
.end method

.method private onCustomOverScrolled(IZ)V
    .locals 1

    .line 2189
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2190
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    if-eqz p2, :cond_0

    .line 2192
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->springBack()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 2194
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result p2

    .line 2195
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-gez v0, :cond_1

    neg-int p2, v0

    int-to-float p2, p2

    .line 2196
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isRubberbanded(Z)Z

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->notifyOverscrollTopListener(FZ)V

    goto :goto_0

    .line 2198
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isRubberbanded(Z)Z

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->notifyOverscrollTopListener(FZ)V

    goto :goto_0

    .line 2202
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    :goto_0
    return-void
.end method

.method private onInterceptTouchEventScroll(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 4055
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isScrollingEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4069
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    .line 4070
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-eqz v4, :cond_1

    return v3

    :cond_1
    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_7

    const/4 v4, -0x1

    if-eq v0, v3, :cond_6

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_6

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    goto/16 :goto_0

    .line 4156
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 4085
    :cond_3
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mActivePointerId:I

    if-ne v0, v4, :cond_4

    goto/16 :goto_0

    .line 4091
    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-ne v1, v4, :cond_5

    .line 4093
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid pointerId="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " in onInterceptTouchEvent"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StackScroller"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4098
    :cond_5
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    .line 4099
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    .line 4100
    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLastMotionY:I

    sub-int v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 4101
    iget v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDownX:I

    sub-int v4, v1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 4102
    iget v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTouchSlop:I

    if-le v2, v5, :cond_9

    if-le v2, v4, :cond_9

    .line 4103
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    .line 4104
    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLastMotionY:I

    .line 4105
    iput v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDownX:I

    .line 4106
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->initVelocityTrackerIfNotExists()V

    .line 4107
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 4144
    :cond_6
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    .line 4145
    iput v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mActivePointerId:I

    .line 4146
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->recycleVelocityTracker()V

    .line 4150
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    iget v2, p0, Landroid/view/ViewGroup;->mScrollX:I

    iget v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v7

    invoke-virtual/range {v1 .. v7}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 4151
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->animateScroll()V

    goto :goto_0

    .line 4113
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 4114
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isScrolledToTop()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScrolledToTopOnFirstDown:Z

    .line 4115
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    int-to-float v4, v0

    invoke-direct {p0, v2, v4, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getChildAtPosition(FFZ)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v2

    if-nez v2, :cond_8

    .line 4116
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    .line 4117
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->recycleVelocityTracker()V

    goto :goto_0

    .line 4125
    :cond_8
    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLastMotionY:I

    .line 4126
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDownX:I

    .line 4127
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mActivePointerId:I

    .line 4129
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->initOrResetVelocityTracker()V

    .line 4130
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 4136
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p1

    xor-int/2addr p1, v3

    .line 4137
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    .line 4164
    :cond_9
    :goto_0
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    return p0
.end method

.method private onKeyguard()Z
    .locals 1

    .line 1751
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStatusBarState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onOverScrollFling(ZI)V
    .locals 1

    .line 3935
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOverscrollTopChangedListener:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;

    if-eqz v0, :cond_0

    int-to-float p2, p2

    .line 3936
    invoke-interface {v0, p2, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;->flingTopOverscroll(FZ)V

    :cond_0
    const/4 p1, 0x1

    .line 3938
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDontReportNextOverScroll:Z

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 3939
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    return-void
.end method

.method private onPreDrawDuringAnimation()V
    .locals 1

    .line 1152
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateAppearance()V

    .line 1153
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateClippingToTopRoundedCorner()V

    .line 1154
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenUpdateRequested:Z

    if-nez v0, :cond_0

    .line 1155
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateBackground()V

    :cond_0
    return-void
.end method

.method private onScrollTouch(Landroid/view/MotionEvent;)Z
    .locals 14

    .line 3773
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isScrollingEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3776
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isInsideQsContainer(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    .line 3779
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    .line 3780
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->initVelocityTrackerIfNotExists()V

    .line 3781
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 3783
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 3784
    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mActivePointerId:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    const-string v3, "Invalid pointerId="

    const-string v4, "StackScroller"

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ne v2, v5, :cond_2

    if-eqz v0, :cond_2

    .line 3787
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mActivePointerId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " in onTouchEvent "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3788
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p0

    invoke-static {p0}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3787
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_2
    if-eqz v0, :cond_13

    const/4 v2, 0x0

    if-eq v0, v6, :cond_d

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    goto/16 :goto_4

    .line 3920
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 3921
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLastMotionY:I

    .line 3922
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDownX:I

    goto/16 :goto_4

    .line 3913
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 3914
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLastMotionY:I

    .line 3915
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDownX:I

    .line 3916
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mActivePointerId:I

    goto/16 :goto_4

    .line 3899
    :cond_5
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-eqz p1, :cond_16

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-lez p1, :cond_16

    .line 3903
    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    iget v8, p0, Landroid/view/ViewGroup;->mScrollX:I

    iget v9, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 3904
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v13

    .line 3903
    invoke-virtual/range {v7 .. v13}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 3905
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->animateScroll()V

    .line 3908
    :cond_6
    iput v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mActivePointerId:I

    .line 3909
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->endDrag()V

    goto/16 :goto_4

    .line 3814
    :cond_7
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ne v0, v5, :cond_8

    .line 3816
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mActivePointerId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " in onTouchEvent"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 3820
    :cond_8
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    .line 3821
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    float-to-int p1, p1

    .line 3822
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLastMotionY:I

    sub-int/2addr v0, v3

    .line 3823
    iget v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDownX:I

    sub-int/2addr p1, v4

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 3824
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 3825
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-nez v5, :cond_a

    iget v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTouchSlop:I

    if-le v4, v5, :cond_a

    if-le v4, p1, :cond_a

    .line 3826
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    if-lez v0, :cond_9

    .line 3828
    iget p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTouchSlop:I

    sub-int/2addr v0, p1

    goto :goto_0

    .line 3830
    :cond_9
    iget p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTouchSlop:I

    add-int/2addr v0, p1

    .line 3833
    :cond_a
    :goto_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-eqz p1, :cond_16

    .line 3835
    iput v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLastMotionY:I

    .line 3841
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result p1

    .line 3842
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-eqz v3, :cond_b

    .line 3843
    iget v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMaxScrollAfterExpand:I

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_b
    if-gez v0, :cond_c

    .line 3847
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->overScrollDown(I)F

    move-result v0

    goto :goto_1

    .line 3849
    :cond_c
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->overScrollUp(II)F

    move-result v0

    :goto_1
    cmpl-float v2, v0, v2

    if-eqz v2, :cond_16

    float-to-int v0, v0

    .line 3857
    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 3858
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    div-int/2addr v3, v1

    .line 3857
    invoke-direct {p0, v0, v2, p1, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->customOverScrollBy(IIII)V

    .line 3860
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->checkSnoozeLeavebehind()V

    goto/16 :goto_4

    .line 3865
    :cond_d
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-eqz p1, :cond_16

    .line 3866
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v0, 0x3e8

    .line 3867
    iget v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMaximumVelocity:I

    int-to-float v3, v3

    invoke-virtual {p1, v0, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 3868
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result p1

    float-to-int p1, p1

    .line 3870
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->shouldOverScrollFling(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3871
    invoke-direct {p0, v6, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onOverScrollFling(ZI)V

    goto :goto_3

    .line 3873
    :cond_e
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_12

    .line 3874
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMinimumVelocity:I

    if-le v0, v3, :cond_11

    .line 3875
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_10

    if-lez p1, :cond_f

    goto :goto_2

    .line 3879
    :cond_f
    invoke-direct {p0, v1, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onOverScrollFling(ZI)V

    goto :goto_3

    :cond_10
    :goto_2
    neg-int p1, p1

    .line 3877
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->fling(I)V

    goto :goto_3

    .line 3885
    :cond_11
    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    iget v8, p0, Landroid/view/ViewGroup;->mScrollX:I

    iget v9, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 3886
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v13

    .line 3885
    invoke-virtual/range {v7 .. v13}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 3887
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->animateScroll()V

    .line 3893
    :cond_12
    :goto_3
    iput v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mActivePointerId:I

    .line 3894
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->endDrag()V

    goto :goto_4

    .line 3794
    :cond_13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_17

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isInContentBounds(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_5

    .line 3797
    :cond_14
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    xor-int/2addr v0, v6

    .line 3798
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    .line 3803
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_15

    .line 3804
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0, v6}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 3808
    :cond_15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLastMotionY:I

    .line 3809
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDownX:I

    .line 3810
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mActivePointerId:I

    :cond_16
    :goto_4
    return v6

    :cond_17
    :goto_5
    return v1
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    .line 3945
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    .line 3947
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 3948
    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3953
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLastMotionY:I

    .line 3954
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mActivePointerId:I

    .line 3955
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p0, :cond_1

    .line 3956
    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    :cond_1
    return-void
.end method

.method private onStatePostChange()V
    .locals 3

    .line 5317
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onKeyguard()Z

    move-result v0

    .line 5318
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isAnyProfilePublicMode()Z

    .line 5320
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    if-eqz v1, :cond_0

    .line 5321
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->onStateChanged()V

    .line 5324
    :cond_0
    const-class v1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 5325
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 5326
    invoke-interface {v1}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->goingToFullShade()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateSensitiveness(Z)V

    .line 5327
    invoke-interface {v1}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->fromShadeLocked()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setDimmed(ZZ)V

    xor-int/lit8 v1, v0, 0x1

    .line 5328
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setExpandingEnabled(Z)V

    .line 5329
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getActivatedChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    move-result-object v1

    const/4 v2, 0x0

    .line 5330
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setActivatedChild(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 5332
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->makeInactive(Z)V

    .line 5334
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateFooter()V

    .line 5335
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 5336
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onUpdateRowStates()V

    .line 5338
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateNotifications()V

    .line 5339
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateVisibility()V

    .line 5341
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShouldDrawNotificationBackground:Z

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    return-void
.end method

.method private onViewAddedInternal(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V
    .locals 1

    .line 3230
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateHideSensitiveForChild(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    .line 3231
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setOnHeightChangedListener(Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;)V

    const/4 v0, 0x0

    .line 3232
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->generateAddAnimation(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V

    .line 3233
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateAnimationState(Landroid/view/View;)V

    .line 3234
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateChronometerForChild(Landroid/view/View;)V

    .line 3235
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 3236
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDismissRtl:Z

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setDismissRtl(Z)V

    :cond_0
    return-void
.end method

.method private onViewRemovedInternal(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Landroid/view/ViewGroup;)V
    .locals 3

    .line 2939
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChangePositionInProgress:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2943
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setOnHeightChangedListener(Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;)V

    .line 2944
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateScrollStateForRemovedChild(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    .line 2945
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->generateRemoveAnimation(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2947
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipedOutViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2948
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getTranslation()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_3

    .line 2949
    :cond_1
    invoke-virtual {p2, p1, v1}, Landroid/view/ViewGroup;->addTransientView(Landroid/view/View;I)V

    .line 2950
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setTransientContainer(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 2953
    :cond_2
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipedOutViews:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2955
    :cond_3
    :goto_0
    invoke-direct {p0, v1, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateAnimationState(ZLandroid/view/View;)V

    .line 2957
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->focusNextViewIfFocused(Landroid/view/View;)V

    return-void
.end method

.method private overScrollDown(I)F
    .locals 4

    const/4 v0, 0x0

    .line 1851
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1852
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v1

    int-to-float p1, p1

    add-float/2addr p1, v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 1855
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    :cond_0
    cmpg-float v1, p1, v2

    if-gez v1, :cond_1

    goto :goto_0

    :cond_1
    move p1, v2

    .line 1879
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    int-to-float v1, v1

    add-float/2addr v1, p1

    cmpg-float v3, v1, v2

    if-gez v3, :cond_2

    const/4 p1, 0x1

    .line 1881
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getCurrentOverScrolledPixels(Z)F

    move-result v3

    sub-float/2addr v3, v1

    .line 1883
    invoke-virtual {p0, v3, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOverScrolledPixels(FZZ)V

    .line 1886
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    move p1, v2

    :cond_2
    return p1
.end method

.method private overScrollUp(II)F
    .locals 5

    const/4 v0, 0x0

    .line 1798
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 v1, 0x1

    .line 1799
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v2

    int-to-float p1, p1

    sub-float p1, v2, p1

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 1802
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    :cond_0
    cmpg-float v1, p1, v3

    if-gez v1, :cond_1

    neg-float p1, p1

    goto :goto_0

    :cond_1
    move p1, v3

    .line 1826
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    int-to-float v1, v1

    add-float/2addr v1, p1

    int-to-float v2, p2

    cmpl-float v4, v1, v2

    if-lez v4, :cond_3

    .line 1828
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-nez p1, :cond_2

    .line 1829
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getCurrentOverScrolledPixels(Z)F

    move-result p1

    add-float/2addr p1, v1

    sub-float/2addr p1, v2

    .line 1831
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOverScrolledPixels(FZZ)V

    .line 1835
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    move p1, v3

    :cond_3
    return p1
.end method

.method private performDismissAllAnimations(Ljava/util/ArrayList;ZLjava/lang/Runnable;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;Z",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 5574
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$NJnpZAF3yxT4RBuBz44A-eIeHrg;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$NJnpZAF3yxT4RBuBz44A-eIeHrg;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;ZLjava/lang/Runnable;)V

    .line 5587
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5588
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    const/4 p2, 0x1

    .line 5593
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setDismissAllInProgress(Z)V

    const/16 p3, 0x8c

    const/16 v1, 0xb4

    .line 5600
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, p2

    :goto_0
    if-ltz v2, :cond_2

    .line 5602
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Landroid/view/View;

    const/4 p2, 0x0

    if-nez v2, :cond_1

    move-object v5, v0

    goto :goto_1

    :cond_1
    move-object v5, p2

    :goto_1
    const-wide/16 v7, 0x104

    move-object v3, p0

    move v6, v1

    .line 5607
    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->dismissViewAnimated(Landroid/view/View;Ljava/lang/Runnable;IJ)V

    const/16 p2, 0x32

    add-int/lit8 p3, p3, -0xa

    .line 5608
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    add-int/2addr v1, p3

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .line 1902
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1903
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 1904
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private reinflateViews()V
    .locals 1

    .line 668
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->inflateFooterView()V

    .line 669
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->inflateEmptyShadeView()V

    .line 670
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateFooter()V

    .line 671
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSectionsManager:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;

    iget-object p0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->reinflateViews(Landroid/view/LayoutInflater;)V

    return-void
.end method

.method private removeRemovedChildFromHeadsUpChangeAnimations(Landroid/view/View;)Z
    .locals 6

    .line 3032
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpChangeAnimations:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 3033
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 3034
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-ne p1, v4, :cond_0

    .line 3036
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTmpList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v2, v5

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 3042
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpChangeAnimations:Ljava/util/HashSet;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTmpList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 3043
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setHeadsUpAnimatingAway(Z)V

    .line 3045
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTmpList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return v2
.end method

.method private requestAnimateEverything()V
    .locals 1

    .line 4976
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 4977
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mEverythingNeedsAnimation:Z

    .line 4978
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 4979
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    :cond_0
    return-void
.end method

.method private requestAnimationOnViewResize(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 1

    .line 1069
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isPinned()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 1070
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNeedViewResizeAnimation:Z

    .line 1071
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    :cond_1
    return-void
.end method

.method private requestChildrenUpdate()V
    .locals 2

    .line 1236
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenUpdateRequested:Z

    if-nez v0, :cond_0

    .line 1237
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x1

    .line 1238
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenUpdateRequested:Z

    .line 1239
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_0
    return-void
.end method

.method private runAnimationFinishedRunnables()V
    .locals 2

    .line 4568
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationFinishedRunnables:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 4569
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 4571
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationFinishedRunnables:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method private setDimAmount(F)V
    .locals 0

    .line 4599
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDimAmount:F

    .line 4600
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateBackgroundDimming()V

    return-void
.end method

.method private setIsExpanded(Z)V
    .locals 3

    .line 4428
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 4429
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    .line 4430
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->setIsExpanded(Z)V

    .line 4431
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setShadeExpanded(Z)V

    .line 4432
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->setShadeExpanded(Z)V

    .line 4433
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->setIsExpanded(Z)V

    if-eqz v0, :cond_2

    .line 4435
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mWillExpand:Z

    .line 4436
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez p1, :cond_1

    .line 4437
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->collapseAllGroups()V

    .line 4438
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {p1}, Lcom/android/systemui/ExpandHelper;->cancelImmediately()V

    .line 4440
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateNotificationAnimationStates()V

    .line 4441
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateChronometers()V

    .line 4442
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    :cond_2
    return-void
.end method

.method private setMaxLayoutHeight(I)V
    .locals 1

    .line 1108
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMaxLayoutHeight:I

    .line 1109
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationShelf;->setMaxLayoutHeight(I)V

    .line 1110
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateAlgorithmHeightAndPadding()V

    return-void
.end method

.method private setMaxOverScrollFromCurrentVelocity()V
    .locals 2

    .line 1971
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v0

    .line 1972
    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMinimumVelocity:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    .line 1973
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOverflingDistance:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMaxOverScroll:F

    :cond_0
    return-void
.end method

.method private setOverScrollAmountInternal(FZZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 2098
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    if-eqz p3, :cond_0

    .line 2100
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;

    invoke-virtual {p0, p1, p2, p4}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->animateOverScrollToAmount(FZZ)V

    goto :goto_0

    .line 2102
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getRubberBandFactor(Z)F

    move-result p3

    div-float p3, p1, p3

    invoke-direct {p0, p3, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOverScrolledPixels(FZ)V

    .line 2103
    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p3, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setOverScrollAmount(FZ)V

    if-eqz p2, :cond_1

    .line 2105
    invoke-direct {p0, p1, p4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->notifyOverscrollTopListener(FZ)V

    .line 2107
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    :goto_0
    return-void
.end method

.method private setOverScrolledPixels(FZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 2142
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOverScrolledTopPixels:F

    goto :goto_0

    .line 2144
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOverScrolledBottomPixels:F

    :goto_0
    return-void
.end method

.method private setOwnScrollY(I)V
    .locals 3

    .line 5197
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-eq p1, v0, :cond_0

    .line 5199
    iget v0, p0, Landroid/view/ViewGroup;->mScrollX:I

    iget v1, p0, Landroid/view/ViewGroup;->mScrollX:I

    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/view/ViewGroup;->onScrollChanged(IIII)V

    .line 5200
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 5201
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateOnScrollChange()V

    :cond_0
    return-void
.end method

.method private setRequestedClipBounds(Landroid/graphics/Rect;)V
    .locals 0

    .line 1386
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRequestedClipBounds:Landroid/graphics/Rect;

    .line 1387
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateClipping()V

    return-void
.end method

.method private setStackTranslation(F)V
    .locals 1

    .line 1516
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStackTranslation:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1517
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStackTranslation:F

    .line 1518
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setStackTranslation(F)V

    .line 1519
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    :cond_0
    return-void
.end method

.method private setSwipingInProgress(Z)V
    .locals 0

    .line 4272
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipingInProgress:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 4274
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method private setTopPadding(IZ)V
    .locals 1

    .line 1281
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTopPadding:I

    if-eq v0, p1, :cond_1

    .line 1282
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTopPadding:I

    .line 1283
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateAlgorithmHeightAndPadding()V

    .line 1284
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateContentHeight()V

    if-eqz p2, :cond_0

    .line 1285
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1286
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTopPaddingNeedsAnimation:Z

    .line 1287
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 1289
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    const/4 p1, 0x0

    .line 1290
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->notifyHeightChangeListener(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V

    :cond_1
    return-void
.end method

.method private shouldHunAppearFromBottom(Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;)Z
    .locals 1

    .line 3482
    iget v0, p1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    iget p1, p1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    int-to-float p1, p1

    add-float/2addr v0, p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getMaxHeadsUpTranslation()F

    move-result p0

    cmpg-float p0, v0, p0

    if-gez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private shouldOverScrollFling(I)Z
    .locals 3

    const/4 v0, 0x1

    .line 2821
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v1

    .line 2822
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScrolledToTopOnFirstDown:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-nez v2, :cond_0

    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMinTopOverScrollToEscape:F

    cmpl-float p0, v1, p0

    if-lez p0, :cond_0

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private snapViewIfNeeded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 2

    .line 1774
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p1

    .line 1775
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isPinnedHeadsUp(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1777
    :goto_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getProvider()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1778
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getProvider()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->isMenuVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getTranslation()F

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 1779
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/SwipeHelper;->snapChildIfNeeded(Landroid/view/View;ZF)V

    :cond_3
    return-void
.end method

.method private springBack()V
    .locals 5

    .line 2231
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v0

    .line 2232
    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gtz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 2233
    :goto_0
    iget v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-lt v4, v0, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    if-nez v1, :cond_2

    if-eqz v4, :cond_4

    :cond_2
    if-eqz v1, :cond_3

    .line 2239
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    neg-int v0, v0

    int-to-float v0, v0

    .line 2240
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    .line 2241
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDontReportNextOverScroll:Z

    move v1, v3

    goto :goto_2

    .line 2244
    :cond_3
    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    sub-int/2addr v1, v0

    int-to-float v1, v1

    .line 2245
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    move v0, v1

    move v1, v2

    .line 2247
    :goto_2
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    const/4 v0, 0x0

    .line 2248
    invoke-virtual {p0, v0, v1, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    .line 2249
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0, v3}, Landroid/widget/OverScroller;->forceFinished(Z)V

    :cond_4
    return-void
.end method

.method private startAnimationToState()V
    .locals 4

    .line 3394
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    if-eqz v0, :cond_0

    .line 3395
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->generateAllAnimationEvents()V

    const/4 v0, 0x0

    .line 3396
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 3398
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isCurrentlyAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3406
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->applyCurrentState()V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 3399
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setAnimationRunning(Z)V

    .line 3400
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    iget-wide v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mGoToFullShadeDelay:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->startAnimationForEvents(Ljava/util/ArrayList;J)V

    .line 3401
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3402
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateBackground()V

    .line 3403
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateViewShadows()V

    .line 3404
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateClippingToTopRoundedCorner()V

    :goto_1
    const-wide/16 v0, 0x0

    .line 3408
    iput-wide v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mGoToFullShadeDelay:J

    return-void
.end method

.method private startBackgroundAnimation()V
    .locals 8

    .line 2539
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getFirstVisibleSection()Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    move-result-object v0

    .line 2540
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getLastVisibleSection()Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    move-result-object v1

    .line 2541
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSections:[Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    if-ne v5, v0, :cond_0

    .line 2544
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimateNextBackgroundTop:Z

    goto :goto_1

    .line 2545
    :cond_0
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimateNextSectionBoundsChange:Z

    :goto_1
    if-ne v5, v1, :cond_1

    .line 2547
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimateNextBackgroundBottom:Z

    goto :goto_2

    .line 2548
    :cond_1
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimateNextSectionBoundsChange:Z

    .line 2542
    :goto_2
    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->startBackgroundAnimation(ZZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private targetScrollForView(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)I
    .locals 1

    .line 1695
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v0

    add-int/2addr p2, v0

    .line 1696
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getImeInset()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    sub-int/2addr p2, v0

    .line 1697
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isPinnedHeadsUp(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpInset:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getTopPadding()I

    move-result p0

    :goto_0
    add-int/2addr p2, p0

    return p2
.end method

.method private updateAlgorithmHeightAndPadding()V
    .locals 2

    .line 1115
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getLayoutHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setLayoutHeight(I)V

    .line 1116
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateAlgorithmLayoutMinHeight()V

    .line 1117
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTopPadding:I

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setTopPadding(I)V

    return-void
.end method

.method private updateAlgorithmLayoutMinHeight()V
    .locals 2

    .line 1122
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mQsExpanded:Z

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isHeadsUpTransition()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    .line 1123
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getLayoutMinHeight()I

    move-result p0

    .line 1122
    :goto_1
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setLayoutMinHeight(I)V

    return-void
.end method

.method private updateAnimationState(Landroid/view/View;)V
    .locals 1

    .line 3290
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->hasPulsingNotifications()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v0, :cond_2

    .line 3291
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isPinnedHeadsUp(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 3290
    :goto_1
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateAnimationState(ZLandroid/view/View;)V

    return-void
.end method

.method private updateAnimationState(ZLandroid/view/View;)V
    .locals 0

    .line 3324
    instance-of p0, p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_0

    .line 3325
    check-cast p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 3326
    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setIconAnimationRunning(Z)V

    :cond_0
    return-void
.end method

.method private updateBackground()V
    .locals 5

    .line 2481
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShouldDrawNotificationBackground:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onKeyguard()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2485
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateBackgroundBounds()V

    .line 2486
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->didSectionBoundsChange()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 2487
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimateNextSectionBoundsChange:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimateNextBackgroundTop:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimateNextBackgroundBottom:Z

    if-nez v0, :cond_2

    .line 2488
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->areSectionBoundsAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 2489
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isExpanded()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2490
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->abortBackgroundAnimators()V

    move v0, v1

    :cond_3
    if-eqz v0, :cond_4

    .line 2494
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->startBackgroundAnimation()V

    goto :goto_3

    .line 2496
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSections:[Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    array-length v2, v0

    move v3, v1

    :goto_2
    if-ge v3, v2, :cond_5

    aget-object v4, v0, v3

    .line 2497
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->resetCurrentBounds()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2499
    :cond_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_3

    .line 2502
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->abortBackgroundAnimators()V

    .line 2504
    :goto_3
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimateNextBackgroundTop:Z

    .line 2505
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimateNextBackgroundBottom:Z

    .line 2506
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimateNextSectionBoundsChange:Z

    return-void
.end method

.method private updateBackgroundBounds()V
    .locals 10

    .line 2557
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSidePaddings:I

    .line 2558
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSidePaddings:I

    sub-int/2addr v1, v2

    .line 2559
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSections:[Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_0

    aget-object v6, v2, v5

    .line 2560
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    iput v0, v7, Landroid/graphics/Rect;->left:I

    .line 2561
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    iput v1, v6, Landroid/graphics/Rect;->right:I

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2564
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v0, :cond_2

    .line 2565
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSections:[Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    array-length v0, p0

    move v1, v4

    :goto_1
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 2566
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 2567
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 2572
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getLastVisibleSection()Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    move-result-object v0

    .line 2573
    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStatusBarState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    move v1, v2

    goto :goto_2

    :cond_3
    move v1, v4

    :goto_2
    if-nez v1, :cond_4

    .line 2575
    iget v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTopPadding:I

    int-to-float v3, v3

    iget v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStackTranslation:F

    add-float/2addr v3, v5

    float-to-int v3, v3

    goto :goto_3

    :cond_4
    if-nez v0, :cond_5

    .line 2577
    iget v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTopPadding:I

    goto :goto_3

    .line 2582
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getFirstVisibleSection()Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    move-result-object v3

    .line 2583
    invoke-virtual {v3, v4, v4, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->updateBounds(IIZ)I

    .line 2585
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 2587
    :goto_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->getAllEntries()Ljava/util/stream/Stream;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/stream/Stream;->count()J

    move-result-wide v5

    const-wide/16 v7, 0x1

    cmp-long v5, v5, v7

    if-gtz v5, :cond_6

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 2588
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isDozing()Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 2589
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v5

    if-eqz v5, :cond_6

    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    move v2, v4

    .line 2590
    :cond_7
    :goto_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSections:[Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    array-length v5, v1

    move v6, v2

    move v2, v4

    :goto_5
    if-ge v2, v5, :cond_9

    aget-object v7, v1, v2

    if-ne v7, v0, :cond_8

    .line 2594
    iget-object v8, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-static {v8}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getFinalTranslationY(Landroid/view/View;)F

    move-result v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 2595
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    float-to-int v8, v8

    goto :goto_6

    :cond_8
    move v8, v3

    .line 2597
    :goto_6
    invoke-virtual {v7, v3, v8, v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->updateBounds(IIZ)I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    move v6, v4

    goto :goto_5

    :cond_9
    return-void
.end method

.method private updateBackgroundDimming()V
    .locals 3

    .line 957
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShouldDrawNotificationBackground:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onKeyguard()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const v0, 0x3ecccccd    # 0.4f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 963
    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLinearHideAmount:F

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->smoothStep(FFF)F

    move-result v0

    .line 965
    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBgColor:I

    const/4 v2, -0x1

    invoke-static {v1, v2, v0}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    .line 967
    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mCachedBackgroundColor:I

    if-eq v1, v0, :cond_1

    .line 968
    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mCachedBackgroundColor:I

    .line 969
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 970
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_1
    return-void
.end method

.method private updateChildren()V
    .locals 2

    .line 1132
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateScrollStateForAddedChildren()V

    .line 1133
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 1135
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    .line 1133
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setCurrentScrollVelocity(F)V

    .line 1140
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setScrollY(I)V

    .line 1142
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->resetViewStates(Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V

    .line 1143
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isCurrentlyAnimating()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    if-nez v0, :cond_1

    .line 1144
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->applyCurrentState()V

    goto :goto_1

    .line 1146
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->startAnimationToState()V

    :goto_1
    return-void
.end method

.method private updateChronometerForChild(Landroid/view/View;)V
    .locals 1

    .line 4456
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 4457
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 4458
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setChronometerRunning(Z)V

    :cond_0
    return-void
.end method

.method private updateChronometers()V
    .locals 3

    .line 4448
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4450
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateChronometerForChild(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateClippingToTopRoundedCorner()V
    .locals 10

    .line 1161
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTopPadding:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStackTranslation:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 1163
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getExpandAnimationTopChange()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 1161
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 1164
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mCornerRadius:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    move v4, v2

    move v5, v3

    .line 1166
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v4, v6, :cond_7

    .line 1167
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 1168
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_0

    goto :goto_5

    .line 1171
    :cond_0
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v7

    .line 1172
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v7

    .line 1173
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v9

    cmpl-float v9, v9, v7

    if-lez v9, :cond_1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v9

    cmpg-float v9, v9, v8

    if-ltz v9, :cond_2

    .line 1174
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v9

    cmpl-float v9, v9, v7

    if-ltz v9, :cond_3

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v9

    cmpg-float v8, v9, v8

    if-gtz v8, :cond_3

    :cond_2
    move v8, v3

    goto :goto_1

    :cond_3
    move v8, v2

    :goto_1
    if-eqz v5, :cond_5

    .line 1175
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isScrolledToTop()Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    move v5, v2

    goto :goto_3

    :cond_5
    :goto_2
    move v5, v3

    :goto_3
    and-int/2addr v5, v8

    if-eqz v5, :cond_6

    .line 1176
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sub-float/2addr v7, v5

    const/4 v5, 0x0

    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    goto :goto_4

    :cond_6
    const/high16 v5, -0x40800000    # -1.0f

    :goto_4
    invoke-virtual {v6, v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setDistanceToTopRoundness(F)V

    move v5, v2

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method private updateContentHeight()V
    .locals 14

    .line 2385
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    int-to-float v0, v0

    .line 2389
    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMaxDisplayedNotifications:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v6, v0

    move v5, v2

    move v0, v3

    move v4, v0

    move v7, v4

    move v8, v7

    .line 2391
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-ge v0, v9, :cond_8

    .line 2392
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 2393
    iget-object v10, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFooterView:Lcom/android/systemui/statusbar/notification/row/FooterView;

    const/4 v11, 0x1

    if-ne v9, v10, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onKeyguard()Z

    move-result v10

    if-eqz v10, :cond_0

    move v10, v11

    goto :goto_1

    :cond_0
    move v10, v3

    .line 2394
    :goto_1
    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_7

    .line 2395
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->hasNoContentHeight()Z

    move-result v12

    if-nez v12, :cond_7

    if-nez v10, :cond_7

    const/4 v10, -0x1

    if-eq v1, v10, :cond_1

    if-lt v4, v1, :cond_1

    move v10, v11

    goto :goto_2

    :cond_1
    move v10, v3

    :goto_2
    if-eqz v10, :cond_2

    .line 2399
    iget-object v9, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    move v8, v11

    .line 2402
    :cond_2
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIncreasedPaddingAmount()F

    move-result v10

    cmpl-float v11, v10, v2

    if-ltz v11, :cond_3

    .line 2405
    iget v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIncreasedPaddingBetweenElements:I

    int-to-float v5, v5

    invoke-static {v6, v5, v10}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v5

    float-to-int v5, v5

    int-to-float v5, v5

    .line 2409
    iget v6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    int-to-float v6, v6

    iget v11, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIncreasedPaddingBetweenElements:I

    int-to-float v11, v11

    invoke-static {v6, v11, v10}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v6

    float-to-int v6, v6

    :goto_3
    int-to-float v6, v6

    goto :goto_4

    .line 2414
    :cond_3
    iget v6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    int-to-float v6, v6

    const/high16 v11, 0x3f800000    # 1.0f

    add-float/2addr v11, v10

    invoke-static {v2, v6, v11}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v6

    float-to-int v6, v6

    cmpl-float v11, v5, v2

    if-lez v11, :cond_4

    int-to-float v11, v6

    .line 2419
    iget v12, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIncreasedPaddingBetweenElements:I

    int-to-float v12, v12

    invoke-static {v11, v12, v5}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v5

    float-to-int v5, v5

    int-to-float v5, v5

    goto :goto_3

    :cond_4
    int-to-float v5, v6

    goto :goto_3

    :goto_4
    if-eqz v7, :cond_5

    int-to-float v7, v7

    add-float/2addr v7, v5

    float-to-int v7, v7

    .line 2432
    :cond_5
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v7, v5

    add-int/lit8 v4, v4, 0x1

    if-eqz v8, :cond_6

    goto :goto_5

    :cond_6
    move v5, v10

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 2439
    :cond_8
    :goto_5
    iput v7, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIntrinsicContentHeight:I

    .line 2443
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIntrinsicPadding:I

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTopPadding:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v7, v0

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBottomMargin:I

    add-int/2addr v7, v0

    iput v7, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mContentHeight:I

    .line 2444
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateScrollability()V

    .line 2445
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->clampScrollPosition()V

    .line 2446
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mContentHeight:I

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setLayoutMaxHeight(I)V

    return-void
.end method

.method private updateContinuousBackgroundDrawing()V
    .locals 2

    .line 5822
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isFullyAwake()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 5823
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getDraggedViews()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5824
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mContinuousBackgroundUpdate:Z

    if-eq v0, v1, :cond_2

    .line 5825
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mContinuousBackgroundUpdate:Z

    if-eqz v0, :cond_1

    .line 5827
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBackgroundUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_1

    .line 5829
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBackgroundUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private updateContinuousShadowDrawing()V
    .locals 3

    .line 5836
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationRunning:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 5837
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getDraggedViews()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 5838
    :goto_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mContinuousShadowUpdate:Z

    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_2

    .line 5840
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShadowUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_2

    .line 5842
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShadowUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 5844
    :goto_2
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mContinuousShadowUpdate:Z

    :cond_3
    return-void
.end method

.method private updateDismissRtlSetting(Z)V
    .locals 3

    .line 624
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDismissRtl:Z

    const/4 v0, 0x0

    .line 625
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 626
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 627
    instance-of v2, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v2, :cond_0

    .line 628
    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setDismissRtl(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateFirstAndLastBackgroundViews()V
    .locals 9

    .line 3201
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getFirstVisibleSection()Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    move-result-object v0

    .line 3202
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getLastVisibleSection()Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object v0, v2

    goto :goto_0

    .line 3204
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getFirstVisibleChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    move-result-object v0

    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    .line 3206
    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getLastVisibleChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    move-result-object v2

    .line 3208
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getFirstChildWithBackground()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    move-result-object v1

    .line 3209
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getLastChildWithBackground()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    move-result-object v3

    .line 3210
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSectionsManager:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSections:[Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    const/4 v6, 0x0

    aget-object v7, v5, v6

    const/4 v8, 0x1

    aget-object v5, v5, v8

    invoke-virtual {v4, v7, v5, v1, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->updateFirstAndLastViewsInSections(Lcom/android/systemui/statusbar/notification/stack/NotificationSection;Lcom/android/systemui/statusbar/notification/stack/NotificationSection;Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)Z

    move-result v4

    .line 3213
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v5, :cond_5

    if-eq v1, v0, :cond_2

    move v0, v8

    goto :goto_2

    :cond_2
    move v0, v6

    .line 3214
    :goto_2
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimateNextBackgroundTop:Z

    if-ne v3, v2, :cond_4

    .line 3215
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimateBottomOnLayout:Z

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v8, v6

    :cond_4
    :goto_3
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimateNextBackgroundBottom:Z

    .line 3216
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimateNextSectionBoundsChange:Z

    goto :goto_4

    .line 3218
    :cond_5
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimateNextBackgroundTop:Z

    .line 3219
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimateNextBackgroundBottom:Z

    .line 3220
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimateNextSectionBoundsChange:Z

    .line 3222
    :goto_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setLastVisibleBackgroundChild(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    .line 3223
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRoundnessManager:Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSections:[Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->updateRoundedChildren([Lcom/android/systemui/statusbar/notification/stack/NotificationSection;)V

    .line 3224
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimateBottomOnLayout:Z

    .line 3225
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method private updateForcedScroll()V
    .locals 4

    .line 1210
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    .line 1211
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 1212
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    .line 1214
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1215
    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 1216
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getPositionInLinearLayout(Landroid/view/View;)I

    move-result v1

    .line 1217
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->targetScrollForView(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)I

    move-result v2

    .line 1218
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v0

    add-int/2addr v1, v0

    const/4 v0, 0x0

    .line 1223
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1227
    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-lt v2, v0, :cond_2

    if-ge v1, v2, :cond_3

    .line 1228
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    :cond_3
    return-void
.end method

.method private updateForwardAndBackwardScrollability()V
    .locals 5

    .line 2467
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScrollable:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isScrolledToBottom()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 2468
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScrollable:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isScrolledToTop()Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 2469
    :goto_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mForwardScrollable:Z

    if-ne v0, v4, :cond_3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBackwardScrollable:Z

    if-eq v3, v4, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    .line 2471
    :cond_3
    :goto_2
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mForwardScrollable:Z

    .line 2472
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBackwardScrollable:Z

    if-eqz v1, :cond_4

    const/16 v0, 0x800

    .line 2474
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    :cond_4
    return-void
.end method

.method private updateHideSensitiveForChild(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V
    .locals 0

    .line 3250
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isHideSensitive()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setHideSensitiveForIntrinsicHeight(Z)V

    return-void
.end method

.method private updateNotificationAnimationStates()V
    .locals 7

    .line 3278
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->hasPulsingNotifications()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 3279
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/NotificationShelf;->setAnimationsEnabled(Z)V

    .line 3280
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    move v4, v0

    move v0, v1

    :goto_2
    if-ge v0, v3, :cond_4

    .line 3282
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3283
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v6, :cond_3

    invoke-static {v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isPinnedHeadsUp(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_3

    :cond_2
    move v6, v1

    goto :goto_4

    :cond_3
    :goto_3
    move v6, v2

    :goto_4
    and-int/2addr v4, v6

    .line 3284
    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateAnimationState(ZLandroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private updateOnScrollChange()V
    .locals 0

    .line 5206
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateForwardAndBackwardScrollability()V

    .line 5207
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    return-void
.end method

.method private updateOwnTranslationZ()V
    .locals 2

    .line 4812
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isHiddenAtAll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4813
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getFirstChildNotGone()Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4814
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->showingPulsing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4815
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationZ()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4818
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setTranslationZ(F)V

    return-void
.end method

.method private updateScrollPositionOnExpandInBottom(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V
    .locals 3

    .line 4494
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onKeyguard()Z

    move-result v0

    if-nez v0, :cond_4

    .line 4495
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 4497
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isUserLocked()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getFirstChildNotGone()Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v0

    if-eq p1, v0, :cond_4

    .line 4498
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4502
    :cond_0
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 4503
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4504
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getNotificationParent()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v1

    add-float/2addr v0, v1

    .line 4506
    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMaxLayoutHeight:I

    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStackTranslation:F

    float-to-int v2, v2

    add-int/2addr v1, v2

    .line 4507
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getLastVisibleSection()Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    .line 4509
    :cond_2
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getLastVisibleChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    move-result-object v2

    :goto_0
    if-eq p1, v2, :cond_3

    .line 4510
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    const/16 v2, 0x8

    if-eq p1, v2, :cond_3

    .line 4511
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result p1

    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    add-int/2addr p1, v2

    sub-int/2addr v1, p1

    :cond_3
    int-to-float p1, v1

    cmpl-float v1, v0, p1

    if-lez v1, :cond_4

    .line 4519
    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    sub-float/2addr v1, p1

    float-to-int p1, v1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    const/4 p1, 0x1

    .line 4521
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDisallowScrollingInThisMotion:Z

    :cond_4
    return-void
.end method

.method private updateScrollStateForAddedChildren()V
    .locals 6

    .line 1184
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 1188
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 1189
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 1190
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1191
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getPositionInLinearLayout(Landroid/view/View;)I

    move-result v3

    .line 1192
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIncreasedPaddingAmount()F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v4, v5

    if-nez v5, :cond_1

    .line 1193
    iget v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIncreasedPaddingBetweenElements:I

    goto :goto_1

    :cond_1
    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_2

    move v4, v0

    goto :goto_1

    .line 1194
    :cond_2
    iget v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    .line 1195
    :goto_1
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getIntrinsicHeight(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v4

    .line 1196
    iget v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-ge v3, v4, :cond_3

    add-int/2addr v4, v2

    .line 1200
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1205
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->clampScrollPosition()V

    return-void
.end method

.method private updateScrollStateForRemovedChild(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V
    .locals 5

    .line 3094
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getPositionInLinearLayout(Landroid/view/View;)I

    move-result v0

    .line 3095
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIncreasedPaddingAmount()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_0

    .line 3098
    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIncreasedPaddingBetweenElements:I

    int-to-float v3, v3

    invoke-static {v2, v3, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v1

    goto :goto_0

    .line 3103
    :cond_0
    iget v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v1, v4

    invoke-static {v2, v3, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v1

    :goto_0
    float-to-int v1, v1

    .line 3108
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getIntrinsicHeight(Landroid/view/View;)I

    move-result p1

    add-int/2addr p1, v1

    add-int v1, v0, p1

    .line 3110
    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-gt v1, v2, :cond_1

    sub-int/2addr v2, p1

    .line 3113
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    goto :goto_1

    :cond_1
    if-ge v0, v2, :cond_2

    .line 3117
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method private updateScrollability()V
    .locals 2

    .line 2457
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mQsExpanded:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2458
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScrollable:Z

    if-eq v0, v1, :cond_1

    .line 2459
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScrollable:Z

    .line 2460
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 2461
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateForwardAndBackwardScrollability()V

    :cond_1
    return-void
.end method

.method private updateSensitiveness(Z)V
    .locals 4

    .line 4622
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isAnyProfilePublicMode()Z

    move-result v0

    .line 4623
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isHideSensitive()Z

    move-result v1

    if-eq v0, v1, :cond_2

    .line 4624
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 4626
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 4627
    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setHideSensitiveForIntrinsicHeight(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4629
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setHideSensitive(Z)V

    if-eqz p1, :cond_1

    .line 4630
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 4631
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHideSensitiveNeedsAnimation:Z

    .line 4632
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 4634
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateContentHeight()V

    .line 4635
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    :cond_2
    return-void
.end method

.method private updateViewShadows()V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    .line 4681
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4682
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 4683
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 4684
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTmpSortedChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4687
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTmpSortedChildren:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mViewPositionComparator:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v1, 0x0

    move-object v2, v1

    move v1, v0

    .line 4691
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTmpSortedChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 4692
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTmpSortedChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 4693
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTranslationZ()F

    move-result v4

    if-nez v2, :cond_2

    move v5, v4

    goto :goto_2

    .line 4694
    :cond_2
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTranslationZ()F

    move-result v5

    :goto_2
    sub-float/2addr v5, v4

    const/4 v4, 0x0

    cmpg-float v6, v5, v4

    if-lez v6, :cond_4

    const v6, 0x3dcccccd    # 0.1f

    cmpl-float v7, v5, v6

    if-ltz v7, :cond_3

    goto :goto_3

    .line 4700
    :cond_3
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v4

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v4, v7

    .line 4701
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v7

    sub-float/2addr v4, v7

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getExtraBottomPadding()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v4, v7

    div-float/2addr v5, v6

    .line 4704
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getOutlineAlpha()F

    move-result v6

    float-to-int v4, v4

    .line 4705
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getOutlineTranslation()I

    move-result v2

    .line 4702
    invoke-virtual {v3, v5, v6, v4, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setFakeShadowIntensity(FFII)V

    goto :goto_4

    .line 4698
    :cond_4
    :goto_3
    invoke-virtual {v3, v4, v4, v0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setFakeShadowIntensity(FFII)V

    :goto_4
    add-int/lit8 v1, v1, 0x1

    move-object v2, v3

    goto :goto_1

    .line 4710
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTmpSortedChildren:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private updateVisibility()V
    .locals 2

    .line 4822
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isFullyHidden()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onKeyguard()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x4

    .line 4823
    :goto_2
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public addContainerView(Landroid/view/View;)V
    .locals 0

    .line 5081
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 5082
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public addOnExpandedHeightChangedListener(Ljava/util/function/BiConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 5444
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedHeightListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public applyExpandAnimationParams(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;)V
    .locals 1

    .line 3318
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->getTopChange()I

    move-result p1

    :goto_0
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setExpandAnimationTopChange(I)V

    .line 3319
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    return-void
.end method

.method public bindRow(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 1

    .line 3304
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$IyVMQHsc5qYX2sBD-ykvCcuqAGw;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$IyVMQHsc5qYX2sBD-ykvCcuqAGw;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setHeadsUpAnimatingAwayListener(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public calculateAppearFraction(F)F
    .locals 1

    .line 1503
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getAppearEndPosition()F

    move-result v0

    .line 1504
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getAppearStartPosition()F

    move-result p0

    sub-float/2addr p1, p0

    sub-float/2addr v0, p0

    div-float/2addr p1, v0

    return p1
.end method

.method public calculateAppearFractionBypass()F
    .locals 2

    .line 5740
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getPulseHeight()F

    move-result v0

    .line 5741
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getWakeUpHeight()F

    move-result v1

    sub-float/2addr v0, v1

    .line 5745
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getIntrinsicPadding()I

    move-result p0

    int-to-float p0, p0

    const/4 v1, 0x0

    .line 5746
    invoke-static {v1, p0, v0}, Landroid/util/MathUtils;->smoothStep(FFF)F

    move-result p0

    return p0
.end method

.method public cancelExpandHelper()V
    .locals 0

    .line 4741
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {p0}, Lcom/android/systemui/ExpandHelper;->cancel()V

    return-void
.end method

.method public cancelLongPress()V
    .locals 0

    .line 4199
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->cancelLongPress()V

    return-void
.end method

.method public changeViewPosition(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)V
    .locals 4

    .line 3357
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 3358
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChangePositionInProgress:Z

    if-nez v0, :cond_4

    .line 3362
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    .line 3366
    instance-of p0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_0

    move-object p0, p1

    check-cast p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 3367
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getTransientContainer()Landroid/view/ViewGroup;

    move-result-object p0

    if-eqz p0, :cond_0

    move v2, v3

    .line 3370
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Attempting to re-position "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_1

    const-string p2, "transient"

    goto :goto_0

    :cond_1
    const-string p2, ""

    .line 3371
    :goto_0
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " view {"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StackScroller"

    .line 3370
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    if-eqz p1, :cond_3

    .line 3378
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_3

    if-eq v0, p2, :cond_3

    .line 3379
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChangePositionInProgress:Z

    .line 3380
    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setChangingPosition(Z)V

    .line 3381
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3382
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 3383
    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setChangingPosition(Z)V

    .line 3384
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChangePositionInProgress:Z

    .line 3385
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz p2, :cond_3

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p2

    const/16 v0, 0x8

    if-eq p2, v0, :cond_3

    .line 3386
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenChangingPositions:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3387
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    :cond_3
    return-void

    .line 3359
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Reentrant call to changeViewPosition"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public checkSnoozeLeavebehind()V
    .locals 8

    .line 4331
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mCheckForLeavebehind:Z

    if-eqz v0, :cond_0

    .line 4332
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNotificationGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->closeAndSaveGuts(ZZZIIZ)V

    const/4 v0, 0x0

    .line 4335
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mCheckForLeavebehind:Z

    :cond_0
    return-void
.end method

.method public cleanUpViewStateForEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 1

    .line 2931
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p1

    .line 2932
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->getTranslatingParentView()Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 2933
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->clearTranslatingParentView()V

    :cond_0
    return-void
.end method

.method public clearChildFocus(Landroid/view/View;)V
    .locals 1

    .line 4290
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    .line 4291
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 4292
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public closeControlsIfOutsideTouch(Landroid/view/MotionEvent;)V
    .locals 7

    .line 4249
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNotificationGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->getExposedGuts()Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    move-result-object v0

    .line 4250
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->getCurrentMenuRow()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object v1

    .line 4251
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->getTranslatingParentView()Landroid/view/View;

    move-result-object v2

    if-eqz v0, :cond_0

    .line 4253
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->getGutsContent()Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;->isLeavebehind()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 4256
    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->isMenuVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 4261
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->isTouchInView(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 4263
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNotificationGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->closeAndSaveGuts(ZZZIIZ)V

    const/4 p1, 0x1

    .line 4266
    invoke-virtual {p0, p1, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->resetExposedMenuView(ZZ)V

    :cond_2
    return-void
.end method

.method public containsView(Landroid/view/View;)Z
    .locals 0

    .line 3312
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public createDelegate()Lcom/android/systemui/statusbar/RemoteInputController$Delegate;
    .locals 1

    .line 730
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$9;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$9;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    return-object v0
.end method

.method protected createStackScrollAlgorithm(Landroid/content/Context;)Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;
    .locals 1

    .line 3655
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;

    invoke-direct {v0, p1, p0}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method public dismissViewAnimated(Landroid/view/View;Ljava/lang/Runnable;IJ)V
    .locals 10

    .line 1768
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    int-to-long v4, p3

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v9, 0x1

    move-object v1, p1

    move-object v3, p2

    move-wide v7, p4

    invoke-virtual/range {v0 .. v9}, Lcom/android/systemui/SwipeHelper;->dismissChild(Landroid/view/View;FLjava/lang/Runnable;JZJZ)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 804
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    .line 5384
    const-class v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 5385
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPulsing:Z

    const-string v3, "T"

    const-string v4, "f"

    if-eqz v1, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    move-object v1, v4

    :goto_0
    const/4 v5, 0x1

    aput-object v1, v0, v5

    const/4 v1, 0x2

    .line 5386
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isQsCustomizerShowing()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v3

    goto :goto_1

    :cond_1
    move-object v5, v4

    :goto_1
    aput-object v5, v0, v1

    const/4 v1, 0x3

    .line 5387
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-nez v5, :cond_2

    const-string v5, "visible"

    goto :goto_2

    .line 5388
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v5

    if-ne v5, v6, :cond_3

    const-string v5, "gone"

    goto :goto_2

    :cond_3
    const-string v5, "invisible"

    :goto_2
    aput-object v5, v0, v1

    const/4 v1, 0x4

    .line 5390
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v0, v1

    const/4 v1, 0x5

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 5391
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getScrollY()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v1

    const/4 v1, 0x6

    iget v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMaxTopPadding:I

    .line 5392
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v1

    const/4 v1, 0x7

    .line 5393
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShouldShowShelfOnly:Z

    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    move-object v3, v4

    :goto_3
    aput-object v3, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mQsExpansionFraction:F

    .line 5394
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v0, v6

    const-string v1, "[%s: pulsing=%s qsCustomizerShowing=%s visibility=%s alpha:%f scrollY:%d maxTopPadding:%d showShelfOnly=%s qsExpandFraction=%f]"

    .line 5381
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5395
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 5396
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Number of children: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5397
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    move v1, v2

    :goto_4
    if-ge v1, v0, :cond_7

    .line 5400
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 5401
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 5402
    instance-of v4, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez v4, :cond_6

    .line 5403
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5405
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v3

    if-nez v3, :cond_5

    const-string v3, "    no viewState!!!"

    .line 5407
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    const-string v4, "    "

    .line 5409
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5410
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 5411
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 5412
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_6
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 5416
    :cond_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTransientViewCount()I

    move-result v0

    .line 5417
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Transient Views: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v1, v2

    :goto_6
    if-ge v1, v0, :cond_8

    .line 5419
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getTransientView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 5420
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 5422
    :cond_8
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getDraggedViews()Ljava/util/ArrayList;

    move-result-object p0

    .line 5423
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5424
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Dragged Views: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_7
    if-ge v2, v0, :cond_9

    .line 5426
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 5427
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_9
    return-void
.end method

.method protected fling(I)V
    .locals 14

    .line 2657
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v0, 0x1

    .line 2658
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v1

    const/4 v2, 0x0

    .line 2659
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v3

    const/high16 v4, 0x447a0000    # 1000.0f

    const/4 v5, 0x0

    if-gez p1, :cond_0

    cmpl-float v6, v1, v5

    if-lez v6, :cond_0

    .line 2664
    iget v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    float-to-int v6, v1

    sub-int/2addr v3, v6

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    .line 2666
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDontReportNextOverScroll:Z

    .line 2667
    invoke-virtual {p0, v5, v0, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    .line 2668
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getRubberBandFactor(Z)F

    move-result v0

    mul-float/2addr v3, v0

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOverflingDistance:I

    int-to-float v0, v0

    mul-float/2addr v3, v0

    add-float/2addr v3, v1

    iput v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMaxOverScroll:F

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    cmpl-float v0, v3, v5

    if-lez v0, :cond_1

    .line 2674
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    int-to-float v0, v0

    add-float/2addr v0, v3

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    .line 2676
    invoke-virtual {p0, v5, v2, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    .line 2677
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    .line 2678
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getRubberBandFactor(Z)F

    move-result v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOverflingDistance:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    add-float/2addr v0, v3

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMaxOverScroll:F

    goto :goto_0

    .line 2682
    :cond_1
    iput v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMaxOverScroll:F

    .line 2687
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v0

    .line 2688
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2689
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-eqz v1, :cond_2

    .line 2690
    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMaxScrollAfterExpand:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_2
    move v11, v0

    .line 2692
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    iget v4, p0, Landroid/view/ViewGroup;->mScrollX:I

    iget v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    .line 2693
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-eqz v0, :cond_3

    if-ltz v5, :cond_3

    goto :goto_1

    :cond_3
    const v2, 0x3fffffff    # 1.9999999f

    :goto_1
    move v13, v2

    move v7, p1

    .line 2692
    invoke-virtual/range {v3 .. v13}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 2696
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->animateScroll()V

    :cond_4
    return-void
.end method

.method public forceNoOverlappingRendering(Z)V
    .locals 0

    .line 5140
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mForceNoOverlappingRendering:Z

    return-void
.end method

.method public generateAddAnimation(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V
    .locals 1

    .line 3339
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChangePositionInProgress:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isFullyHidden()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3341
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    .line 3343
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFromMoreCardAdditions:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 p2, 0x1

    .line 3345
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 3347
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isHeadsUp(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz p2, :cond_2

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChangePositionInProgress:Z

    if-nez p2, :cond_2

    .line 3348
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isFullyHidden()Z

    move-result p2

    if-nez p2, :cond_2

    .line 3349
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAddedHeadsUpChildren:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3350
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public generateChildOrderChangedEvent()V
    .locals 1

    .line 5052
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 5053
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mGenerateChildOrderChangedEvent:Z

    .line 5054
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 5055
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    :cond_0
    return-void
.end method

.method public generateHeadsUpAnimation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .locals 0

    .line 5091
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getHeadsUpAnimationView()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p1

    .line 5092
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->generateHeadsUpAnimation(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Z)V

    return-void
.end method

.method public generateHeadsUpAnimation(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Z)V
    .locals 3

    .line 5097
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_2

    if-nez p2, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpGoingAwayAnimationsAllowed:Z

    if-eqz v0, :cond_2

    .line 5098
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpChangeAnimations:Ljava/util/HashSet;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 5099
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 5100
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mWillExpand:Z

    if-nez v1, :cond_1

    if-nez p2, :cond_1

    .line 5101
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setHeadsUpAnimatingAway(Z)V

    .line 5103
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    :cond_2
    return-void
.end method

.method public getActivatedChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;
    .locals 0

    .line 4654
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getActivatedChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    move-result-object p0

    return-object p0
.end method

.method public getBottomMostNotificationBottom()F
    .locals 6

    .line 4947
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 4950
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 4951
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    goto :goto_1

    .line 4954
    :cond_0
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v4

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    .line 4955
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipBottomAmount()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v4, v3

    cmpl-float v3, v4, v1

    if-lez v3, :cond_1

    move v1, v4

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4960
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getStackTranslation()F

    move-result p0

    add-float/2addr v1, p0

    return v1
.end method

.method public getChildAtRawPosition(FF)Lcom/android/systemui/statusbar/notification/row/ExpandableView;
    .locals 2

    .line 1649
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTempInt2:[I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 1650
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTempInt2:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    int-to-float v1, v1

    sub-float/2addr p1, v1

    const/4 v1, 0x1

    aget v0, v0, v1

    int-to-float v0, v0

    sub-float/2addr p2, v0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getChildAtPosition(FF)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object p0

    return-object p0
.end method

.method public getContainerChildAt(I)Landroid/view/View;
    .locals 0

    .line 5068
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getContainerChildCount()I
    .locals 0

    .line 5062
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    return p0
.end method

.method public getCurrentOverScrollAmount(Z)F
    .locals 0

    .line 2131
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getOverScrollAmount(Z)F

    move-result p0

    return p0
.end method

.method public getCurrentOverScrolledPixels(Z)F
    .locals 0

    if-eqz p1, :cond_0

    .line 2136
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOverScrolledTopPixels:F

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOverScrolledBottomPixels:F

    :goto_0
    return p0
.end method

.method public getDragDownCallback()Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;
    .locals 0

    .line 6452
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDragDownCallback:Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

    return-object p0
.end method

.method public getEmptyBottomMargin()I
    .locals 1

    .line 4326
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMaxLayoutHeight:I

    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mContentHeight:I

    sub-int/2addr v0, p0

    const/4 p0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public getEmptyShadeViewHeight()I
    .locals 0

    .line 4942
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    return p0
.end method

.method public getExpandHelperCallback()Lcom/android/systemui/ExpandHelper$Callback;
    .locals 0

    .line 6587
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandHelperCallback:Lcom/android/systemui/ExpandHelper$Callback;

    return-object p0
.end method

.method public getFirstChildNotGone()Lcom/android/systemui/statusbar/notification/row/ExpandableView;
    .locals 5

    .line 2278
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2280
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2281
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    if-eq v2, v3, :cond_0

    .line 2282
    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFooterViewHeight()I
    .locals 1

    .line 4937
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFooterView:Lcom/android/systemui/statusbar/notification/row/FooterView;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    add-int/2addr p0, v0

    :goto_0
    return p0
.end method

.method public getHeadsUpCallback()Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;
    .locals 0

    .line 6472
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpCallback:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;

    return-object p0
.end method

.method public getHostView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getIntrinsicContentHeight()I
    .locals 0

    .line 1395
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIntrinsicContentHeight:I

    return p0
.end method

.method public getIntrinsicPadding()I
    .locals 0

    .line 4752
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIntrinsicPadding:I

    return p0
.end method

.method public getLastChildNotGone()Lcom/android/systemui/statusbar/notification/row/ExpandableView;
    .locals 4

    .line 2345
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2347
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2348
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    if-eq v1, v2, :cond_0

    .line 2349
    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLayoutMinHeight()I
    .locals 2

    .line 2855
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isHeadsUpTransition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2856
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getTopHeadsUpPinnedHeight()I

    move-result p0

    return p0

    .line 2858
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getMinExpansionHeight()I
    .locals 2

    .line 5294
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v1

    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStatusBarHeight:I

    sub-int/2addr v1, p0

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

.method public getNotGoneChildCount()I
    .locals 6

    .line 2371
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2374
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 2375
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->willBeGone()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    if-eq v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public getNotificationShelf()Lcom/android/systemui/statusbar/NotificationShelf;
    .locals 0

    .line 5274
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    return-object p0
.end method

.method public getOpeningHeight()F
    .locals 2

    .line 5351
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 5352
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getMinExpansionHeight()I

    move-result p0

    int-to-float p0, p0

    return p0

    .line 5354
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getAppearEndPosition()F

    move-result p0

    return p0
.end method

.method public getPeekHeight()I
    .locals 4

    .line 2868
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getFirstChildNotGone()Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2869
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getCollapsedHeight()I

    move-result v0

    goto :goto_0

    .line 2870
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mCollapsedSize:I

    :goto_0
    const/4 v1, 0x0

    .line 2872
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getLastVisibleSection()Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1

    .line 2873
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v1

    .line 2875
    :cond_1
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIntrinsicPadding:I

    add-int/2addr p0, v0

    add-int/2addr p0, v1

    return p0
.end method

.method public getPositionInLinearLayout(Landroid/view/View;)I
    .locals 13

    .line 3135
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isChildInGroup(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3138
    move-object v1, p1

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 3139
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getNotificationParent()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p1

    move-object v0, p1

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 3142
    :goto_0
    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    int-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v6, v2

    move v5, v3

    move v2, v4

    move v7, v2

    .line 3144
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-ge v2, v8, :cond_9

    .line 3145
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 3146
    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_1

    const/4 v9, 0x1

    goto :goto_2

    :cond_1
    move v9, v4

    :goto_2
    if-eqz v9, :cond_5

    .line 3147
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->hasNoContentHeight()Z

    move-result v10

    if-nez v10, :cond_5

    .line 3148
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIncreasedPaddingAmount()F

    move-result v10

    cmpl-float v11, v10, v3

    if-ltz v11, :cond_2

    .line 3151
    iget v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIncreasedPaddingBetweenElements:I

    int-to-float v5, v5

    invoke-static {v6, v5, v10}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v5

    float-to-int v5, v5

    int-to-float v5, v5

    .line 3155
    iget v6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    int-to-float v6, v6

    iget v11, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIncreasedPaddingBetweenElements:I

    int-to-float v11, v11

    invoke-static {v6, v11, v10}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v6

    float-to-int v6, v6

    :goto_3
    int-to-float v6, v6

    goto :goto_4

    .line 3160
    :cond_2
    iget v6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    int-to-float v6, v6

    const/high16 v11, 0x3f800000    # 1.0f

    add-float/2addr v11, v10

    invoke-static {v3, v6, v11}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v6

    float-to-int v6, v6

    cmpl-float v11, v5, v3

    if-lez v11, :cond_3

    int-to-float v11, v6

    .line 3165
    iget v12, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIncreasedPaddingBetweenElements:I

    int-to-float v12, v12

    invoke-static {v11, v12, v5}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v5

    float-to-int v5, v5

    int-to-float v5, v5

    goto :goto_3

    :cond_3
    int-to-float v5, v6

    goto :goto_3

    :goto_4
    if-eqz v7, :cond_4

    int-to-float v7, v7

    add-float/2addr v7, v5

    float-to-int v5, v7

    move v7, v5

    :cond_4
    move v5, v10

    :cond_5
    if-ne v8, p1, :cond_7

    if-eqz v0, :cond_6

    .line 3181
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPositionOfChild(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)I

    move-result p0

    add-int/2addr v7, p0

    :cond_6
    return v7

    :cond_7
    if-eqz v9, :cond_8

    .line 3186
    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getIntrinsicHeight(Landroid/view/View;)I

    move-result v8

    add-int/2addr v7, v8

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_9
    return v4
.end method

.method public getPulseHeight()F
    .locals 0

    .line 5680
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getPulseHeight()F

    move-result p0

    return p0
.end method

.method public getStackTranslation()F
    .locals 0

    .line 1511
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStackTranslation:F

    return p0
.end method

.method public getSwipeActionHelper()Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;
    .locals 0

    .line 769
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    return-object p0
.end method

.method public getTopPadding()I
    .locals 0

    .line 1276
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTopPadding:I

    return p0
.end method

.method public getTopPaddingOverflow()F
    .locals 0

    .line 2863
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTopPaddingOverflow:F

    return p0
.end method

.method public getViewParentForNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Landroid/view/ViewGroup;
    .locals 0

    return-object p0
.end method

.method public getVisibleNotificationCount()I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 1248
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1249
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1250
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    instance-of v2, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getWakeUpHeight()F
    .locals 1

    .line 650
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getFirstChildWithBackground()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 652
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 653
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getHeadsUpHeightWithoutHeader()I

    move-result p0

    :goto_0
    int-to-float p0, p0

    return p0

    .line 655
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getCollapsedHeight()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public goToFullShade(J)V
    .locals 1

    const/4 v0, 0x1

    .line 4733
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mGoToFullShadeNeedsAnimation:Z

    .line 4734
    iput-wide p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mGoToFullShadeDelay:J

    .line 4735
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 4736
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    return-void
.end method

.method public hasActiveClearableNotifications(I)Z
    .locals 5

    .line 711
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDynamicPrivacyController:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->isInLockedDownShade()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 714
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 716
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 717
    instance-of v4, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez v4, :cond_1

    goto :goto_1

    .line 720
    :cond_1
    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 721
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->canViewBeDismissed()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v3, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->matchesSelection(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public hasActiveNotifications()Z
    .locals 0

    .line 5786
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 5146
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mForceNoOverlappingRendering:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/view/ViewGroup;->hasOverlappingRendering()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasPulsingNotifications()Z
    .locals 0

    .line 2452
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPulsing:Z

    return p0
.end method

.method protected inflateFooterView()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5616
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->status_bar_notification_footer:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/FooterView;

    .line 5618
    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$op8qZbY4pqro2H5co8U9Hoiim3w;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$op8qZbY4pqro2H5co8U9Hoiim3w;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/FooterView;->setDismissButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 5622
    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$mjP2-ECpzICMymoTPt8MeJd4_PU;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$mjP2-ECpzICMymoTPt8MeJd4_PU;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/FooterView;->setManageButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 5623
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setFooterView(Lcom/android/systemui/statusbar/notification/row/FooterView;)V

    return-void
.end method

.method public isAddOrRemoveAnimationPending()Z
    .locals 1

    .line 3332
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    .line 3333
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenToRemoveAnimated:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isBelowLastNotification(FF)Z
    .locals 7

    .line 4985
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    const/4 v2, 0x0

    if-ltz v0, :cond_5

    .line 4987
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 4988
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_4

    .line 4989
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getY()F

    move-result v4

    cmpl-float v5, v4, p2

    if-lez v5, :cond_0

    return v2

    .line 4994
    :cond_0
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v4

    .line 4995
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipBottomAmount()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    cmpl-float v5, p2, v5

    if-lez v5, :cond_1

    move v5, v1

    goto :goto_1

    :cond_1
    move v5, v2

    .line 4996
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFooterView:Lcom/android/systemui/statusbar/notification/row/FooterView;

    if-ne v3, v6, :cond_2

    if-nez v5, :cond_4

    .line 4997
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getX()F

    move-result v3

    sub-float v3, p1, v3

    sub-float v4, p2, v4

    invoke-virtual {v6, v3, v4}, Lcom/android/systemui/statusbar/notification/row/FooterView;->isOnEmptySpace(FF)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    .line 5002
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    if-ne v3, v4, :cond_3

    return v1

    :cond_3
    if-nez v5, :cond_4

    return v2

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5011
    :cond_5
    iget p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTopPadding:I

    int-to-float p1, p1

    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStackTranslation:F

    add-float/2addr p1, p0

    cmpl-float p0, p2, p1

    if-lez p0, :cond_6

    goto :goto_2

    :cond_6
    move v1, v2

    :goto_2
    return v1
.end method

.method isDimmed()Z
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4594
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isDimmed()Z

    move-result p0

    return p0
.end method

.method public isExpanded()Z
    .locals 0

    .line 5164
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    return p0
.end method

.method public isFooterViewContentVisible()Z
    .locals 0

    .line 4932
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFooterView:Lcom/android/systemui/statusbar/notification/row/FooterView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->isContentVisible()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFooterViewNotGone()Z
    .locals 2

    .line 4925
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFooterView:Lcom/android/systemui/statusbar/notification/row/FooterView;

    if-eqz v0, :cond_0

    .line 4926
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFooterView:Lcom/android/systemui/statusbar/notification/row/FooterView;

    .line 4927
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->willBeGone()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFullyHidden()Z
    .locals 0

    .line 5433
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isFullyHidden()Z

    move-result p0

    return p0
.end method

.method public isInContentBounds(F)Z
    .locals 1

    .line 3663
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getEmptyBottomMargin()I

    move-result p0

    sub-int/2addr v0, p0

    int-to-float p0, v0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInVisibleLocation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 1

    .line 1091
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p0

    .line 1092
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1097
    :cond_0
    iget p1, p1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->location:I

    and-int/lit8 p1, p1, 0x5

    if-nez p1, :cond_1

    return v0

    .line 1100
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method protected isInsideQsContainer(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 3930
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mQsContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result p0

    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPulseExpanding()Z
    .locals 0

    .line 1019
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isPulseExpanding()Z

    move-result p0

    return p0
.end method

.method public isScrolledToBottom()Z
    .locals 1

    .line 4314
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result p0

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isScrolledToTop()Z
    .locals 0

    .line 4304
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$bindRow$6$NotificationStackScrollLayout(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Ljava/lang/Boolean;)V
    .locals 1

    .line 3305
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRoundnessManager:Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->onHeadsupAnimatingAwayChanged(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Z)V

    .line 3306
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateHeader(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public synthetic lambda$clearNotifications$7$NotificationStackScrollLayout(Ljava/util/ArrayList;I)V
    .locals 4

    .line 5524
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 5525
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    if-nez p2, :cond_0

    .line 5529
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 5530
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    const/4 v3, 0x0

    .line 5529
    invoke-virtual {v2, v0, v3, v1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;I)V

    goto :goto_0

    .line 5534
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 5535
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 5534
    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->performRemoveNotification(Landroid/service/notification/StatusBarNotification;I)V

    goto :goto_0

    .line 5539
    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->resetTranslation()V

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    .line 5544
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/internal/statusbar/IStatusBarService;->onClearAllNotifications(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-void
.end method

.method public synthetic lambda$inflateFooterView$10$NotificationStackScrollLayout(Landroid/view/View;)V
    .locals 1

    .line 5619
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v0, 0x94

    invoke-virtual {p1, v0}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 5620
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->clearNotifications(IZ)V

    return-void
.end method

.method public synthetic lambda$new$0$NotificationStackScrollLayout()Z
    .locals 0

    .line 396
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateBackground()V

    const/4 p0, 0x1

    return p0
.end method

.method public synthetic lambda$new$1$NotificationStackScrollLayout()V
    .locals 0

    .line 473
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->animateScroll()V

    return-void
.end method

.method public synthetic lambda$new$2$NotificationStackScrollLayout(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x1

    .line 553
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->hasActiveClearableNotifications(I)Z

    move-result v0

    xor-int/2addr p1, v0

    const/4 v0, 0x2

    .line 554
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->clearNotifications(IZ)V

    return-void
.end method

.method public synthetic lambda$new$3$NotificationStackScrollLayout(I)V
    .locals 0

    const/4 p1, 0x0

    .line 575
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateSensitiveness(Z)V

    return-void
.end method

.method public synthetic lambda$new$5$NotificationStackScrollLayout(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "high_priority"

    .line 597
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "1"

    if-eqz v0, :cond_0

    .line 598
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHighPriorityBeforeSpeedBump:Z

    goto :goto_1

    :cond_0
    const-string v0, "notification_dismiss_rtl"

    .line 599
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 600
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateDismissRtlSetting(Z)V

    goto :goto_1

    :cond_1
    const-string v0, "lineagesecure:lockscreen_translucent_notifications_bg_enabled"

    .line 601
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 602
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShouldDrawNotificationBackground:Z

    .line 603
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShouldDrawNotificationBackground:Z

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onKeyguard()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public synthetic lambda$onDynamicPrivacyChanged$11$NotificationStackScrollLayout()V
    .locals 0

    .line 5730
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateFooter()V

    .line 5731
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateSectionBoundaries()V

    return-void
.end method

.method public synthetic lambda$performDismissAllAnimations$8$NotificationStackScrollLayout(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 5577
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setDismissAllInProgress(Z)V

    .line 5578
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public synthetic lambda$performDismissAllAnimations$9$NotificationStackScrollLayout(ZLjava/lang/Runnable;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 5576
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$w5SuV9LLRamOioCzTlwfHPKXPk0;

    invoke-direct {v1, p0, p2}, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$w5SuV9LLRamOioCzTlwfHPKXPk0;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Ljava/lang/Runnable;)V

    invoke-interface {p1, v1}, Lcom/android/systemui/statusbar/phone/ShadeController;->addPostCollapseAction(Ljava/lang/Runnable;)V

    .line 5580
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels(I)V

    goto :goto_0

    .line 5582
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setDismissAllInProgress(Z)V

    .line 5583
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public lockScrollTo(Landroid/view/View;)V
    .locals 1

    .line 1660
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    if-ne v0, p1, :cond_0

    return-void

    .line 1663
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    .line 1664
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->scrollTo(Landroid/view/View;)Z

    return-void
.end method

.method public manageNotifications(Landroid/view/View;)V
    .locals 2

    .line 5468
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.ALL_APPS_NOTIFICATION_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5469
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v0, 0x1

    const/high16 v1, 0x20000000

    invoke-virtual {p0, p1, v0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivity(Landroid/content/Intent;ZZI)V

    return-void
.end method

.method public notifyGroupChildAdded(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V
    .locals 0

    .line 3262
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onViewAddedInternal(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    return-void
.end method

.method public notifyGroupChildRemoved(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Landroid/view/ViewGroup;)V
    .locals 0

    .line 3256
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onViewRemovedInternal(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public notifyHideAnimationStart(Z)V
    .locals 2

    .line 4830
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mInterpolatedHideAmount:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    :cond_0
    if-eqz p1, :cond_1

    const v0, 0x3fe66666    # 1.8f

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3fc00000    # 1.5f

    .line 4831
    :goto_0
    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBackgroundXFactor:F

    if-eqz p1, :cond_2

    .line 4833
    sget-object p1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN_REVERSE:Landroid/view/animation/Interpolator;

    goto :goto_1

    .line 4834
    :cond_2
    sget-object p1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    :goto_1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHideXInterpolator:Landroid/view/animation/Interpolator;

    :cond_3
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3

    .line 1703
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBottomInset:I

    .line 1708
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v0

    .line 1709
    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-le v1, v0, :cond_0

    .line 1712
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mReclamp:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1713
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mReclamp:Ljava/lang/Runnable;

    const-wide/16 v1, 0x32

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1714
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1717
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->scrollTo(Landroid/view/View;)Z

    :cond_1
    :goto_0
    return-object p1
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 752
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 753
    const-class v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    const/4 v2, 0x2

    .line 754
    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;I)V

    .line 755
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public onChildAnimationFinished()V
    .locals 1

    const/4 v0, 0x0

    .line 4535
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setAnimationRunning(Z)V

    .line 4536
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 4537
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->runAnimationFinishedRunnables()V

    .line 4538
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->clearTransient()V

    .line 4539
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->clearHeadsUpDisappearRunning()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1757
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1758
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$dimen;->status_bar_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStatusBarHeight:I

    .line 1759
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 1760
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/SwipeHelper;->setDensityScale(F)V

    .line 1761
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result p1

    int-to-float p1, p1

    .line 1762
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/SwipeHelper;->setPagingTouchSlop(F)V

    .line 1763
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 0

    .line 664
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->reinflateViews()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 761
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 762
    const-class v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 763
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 783
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShouldDrawNotificationBackground:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onKeyguard()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSections:[Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 784
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getCurrentBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSections:[Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    .line 785
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getCurrentBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 786
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 788
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mInHeadsUpPinnedMode:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpAnimatingAway:Z

    if-eqz v0, :cond_4

    .line 789
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->drawHeadsUpBackground(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 787
    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->drawBackground(Landroid/graphics/Canvas;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onDynamicPrivacyChanged()V
    .locals 1

    .line 5724
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 5726
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimateBottomOnLayout:Z

    .line 5729
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$D4tNYDYD9CbJOONSnq9gkCauZio;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$D4tNYDYD9CbJOONSnq9gkCauZio;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onExpansionStarted()V
    .locals 2

    const/4 v0, 0x1

    .line 4346
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpansionChanging:Z

    .line 4347
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setExpansionChanging(Z)V

    .line 4348
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->checkSnoozeLeavebehind()V

    return-void
.end method

.method public onExpansionStopped()V
    .locals 2

    const/4 v0, 0x0

    .line 4353
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpansionChanging:Z

    .line 4354
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->resetCheckSnoozeLeavebehind()V

    .line 4355
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setExpansionChanging(Z)V

    .line 4356
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v0, :cond_0

    .line 4357
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->resetScrollPosition()V

    .line 4358
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->resetUserExpandedStates()V

    .line 4359
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->clearTemporaryViews()V

    .line 4360
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->clearUserLockedViews()V

    .line 4361
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getDraggedViews()Ljava/util/ArrayList;

    move-result-object v0

    .line 4362
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 4363
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4364
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateContinuousShadowDrawing()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 636
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 638
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->inflateEmptyShadeView()V

    .line 639
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->inflateFooterView()V

    .line 640
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$U5xT0qKII52vil_DFEsN5YX5CE0;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$U5xT0qKII52vil_DFEsN5YX5CE0;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->setVisibilityLocationProvider(Lcom/android/systemui/statusbar/notification/VisibilityLocationProvider;)V

    .line 641
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAllowLongPress:Z

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNotificationGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$0lGYUT66Z7cr4TZs4rdZ8M7DQkw;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$0lGYUT66Z7cr4TZs4rdZ8M7DQkw;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setLongPressListener(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$LongPressListener;)V

    :cond_0
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 3733
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isScrollingEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipingInProgress:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDisallowScrollingInThisMotion:Z

    if-eqz v0, :cond_0

    goto :goto_2

    .line 3737
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    .line 3738
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    goto :goto_1

    .line 3740
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-nez v0, :cond_4

    const/16 v0, 0x9

    .line 3741
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_4

    .line 3743
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVerticalScrollFactor()F

    move-result v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 3750
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v2

    .line 3751
    iget v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    sub-int v0, v3, v0

    if-gez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    if-le v0, v2, :cond_3

    move v0, v2

    :cond_3
    :goto_0
    if-eq v0, v3, :cond_4

    .line 3759
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    const/4 p0, 0x1

    return p0

    .line 3768
    :cond_4
    :goto_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_5
    :goto_2
    return v1
.end method

.method public onHeightChanged(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V
    .locals 2

    .line 4464
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateContentHeight()V

    .line 4465
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateScrollPositionOnExpandInBottom(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    .line 4466
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->clampScrollPosition()V

    .line 4467
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->notifyHeightChangeListener(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V

    .line 4468
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4469
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    goto :goto_0

    :cond_0
    move-object p1, v1

    .line 4471
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getFirstVisibleSection()Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 4473
    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getFirstVisibleChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    move-result-object v1

    :goto_1
    if-eqz p1, :cond_3

    if-eq p1, v1, :cond_2

    .line 4476
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getNotificationParent()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v0

    if-ne v0, v1, :cond_3

    .line 4477
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateAlgorithmLayoutMinHeight()V

    :cond_3
    if-eqz p2, :cond_4

    .line 4481
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestAnimationOnViewResize(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 4483
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    return-void
.end method

.method public onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 5018
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 5019
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScrollable:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 5020
    iget v0, p0, Landroid/view/ViewGroup;->mScrollX:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    .line 5021
    iget v0, p0, Landroid/view/ViewGroup;->mScrollX:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    .line 5025
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 5026
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 5033
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 5034
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScrollable:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 5035
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 5036
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBackwardScrollable:Z

    if-eqz v0, :cond_0

    .line 5037
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 5039
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_UP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 5041
    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mForwardScrollable:Z

    if-eqz p0, :cond_1

    .line 5042
    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 5043
    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_DOWN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 5047
    :cond_1
    const-class p0, Landroid/widget/ScrollView;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    .line 3978
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->initDownStates(Landroid/view/MotionEvent;)V

    .line 3979
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->handleEmptySpaceClick(Landroid/view/MotionEvent;)V

    .line 3981
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipingInProgress:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3982
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOnlyScrollingInThisMotion:Z

    if-nez v2, :cond_0

    .line 3983
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v2, p1}, Lcom/android/systemui/ExpandHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-nez v0, :cond_1

    .line 3986
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    if-nez v0, :cond_1

    .line 3987
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onInterceptTouchEventScroll(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v1

    .line 3990
    :goto_1
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOnlyScrollingInThisMotion:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDisallowDismissInThisMotion:Z

    if-nez v3, :cond_2

    .line 3995
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    invoke-virtual {v3, p1}, Lcom/android/systemui/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_2

    :cond_2
    move v3, v1

    .line 3998
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    move v4, v5

    goto :goto_3

    :cond_3
    move v4, v1

    .line 3999
    :goto_3
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNotificationGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->getExposedGuts()Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    move-result-object v6

    .line 4000
    invoke-static {p1, v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->isTouchInView(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_4

    if-eqz v4, :cond_4

    if-nez v3, :cond_4

    if-nez v2, :cond_4

    if-nez v0, :cond_4

    .line 4002
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mCheckForLeavebehind:Z

    .line 4003
    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNotificationGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, 0x0

    invoke-virtual/range {v7 .. v13}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->closeAndSaveGuts(ZZZIIZ)V

    .line 4007
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-ne v4, v5, :cond_5

    .line 4008
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mCheckForLeavebehind:Z

    :cond_5
    if-nez v3, :cond_6

    if-nez v0, :cond_6

    if-nez v2, :cond_6

    .line 4010
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_7

    :cond_6
    move v1, v5

    :cond_7
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 1046
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    const/4 p3, 0x0

    move p4, p3

    .line 1047
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p5

    if-ge p4, p5, :cond_0

    .line 1048
    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    .line 1051
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    .line 1052
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, p2

    sub-float v2, p1, v0

    float-to-int v2, v2

    add-float/2addr v0, p1

    float-to-int v0, v0

    float-to-int v1, v1

    .line 1053
    invoke-virtual {p5, v2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 1058
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setMaxLayoutHeight(I)V

    .line 1059
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateContentHeight()V

    .line 1060
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->clampScrollPosition()V

    .line 1061
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 1062
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateFirstAndLastBackgroundViews()V

    .line 1063
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateAlgorithmLayoutMinHeight()V

    .line 1064
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateOwnTranslationZ()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 1025
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 1027
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1028
    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSidePaddings:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 1029
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 1028
    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 1031
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/4 v0, 0x0

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 1036
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 1038
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onOverlayChanged()V
    .locals 3

    .line 685
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    const v2, 0x1010571

    .line 686
    invoke-static {v1, v2}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v1

    .line 685
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 687
    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mCornerRadius:I

    if-eq v1, v0, :cond_0

    .line 688
    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mCornerRadius:I

    .line 689
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 691
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->reinflateViews()V

    return-void
.end method

.method public onPanelTrackingStarted()V
    .locals 2

    const/4 v0, 0x1

    .line 4402
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPanelTracking:Z

    .line 4403
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setPanelTracking(Z)V

    .line 4404
    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->resetExposedMenuView(ZZ)V

    return-void
.end method

.method public onPanelTrackingStopped()V
    .locals 1

    const/4 v0, 0x0

    .line 4409
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPanelTracking:Z

    .line 4410
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setPanelTracking(Z)V

    return-void
.end method

.method public onReset(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V
    .locals 0

    .line 4488
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateAnimationState(Landroid/view/View;)V

    .line 4489
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateChronometerForChild(Landroid/view/View;)V

    return-void
.end method

.method public onThemeChanged()V
    .locals 1

    .line 677
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-virtual {v0}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->getNeutralColors()Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->supportsDarkText()Z

    move-result v0

    .line 678
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateDecorViews(Z)V

    .line 680
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateFooter()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 3674
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    .line 3675
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    .line 3676
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->handleEmptySpaceClick(Landroid/view/MotionEvent;)V

    .line 3678
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipingInProgress:Z

    .line 3679
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v4, :cond_3

    if-nez v3, :cond_3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOnlyScrollingInThisMotion:Z

    if-nez v4, :cond_3

    if-eqz v0, :cond_2

    .line 3681
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v4, v2}, Lcom/android/systemui/ExpandHelper;->onlyObserveMovements(Z)V

    .line 3683
    :cond_2
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    .line 3684
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v5, p1}, Lcom/android/systemui/ExpandHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 3685
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-eqz v6, :cond_4

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    if-nez v6, :cond_4

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDisallowScrollingInThisMotion:Z

    if-nez v4, :cond_4

    .line 3687
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->dispatchDownEventToScroller(Landroid/view/MotionEvent;)V

    goto :goto_2

    :cond_3
    move v5, v2

    .line 3691
    :cond_4
    :goto_2
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v4, :cond_5

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDisallowScrollingInThisMotion:Z

    if-nez v3, :cond_5

    .line 3693
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onScrollTouch(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_3

    :cond_5
    move v3, v2

    .line 3696
    :goto_3
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-nez v4, :cond_6

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    if-nez v4, :cond_6

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-nez v4, :cond_6

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOnlyScrollingInThisMotion:Z

    if-nez v4, :cond_6

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDisallowDismissInThisMotion:Z

    if-nez v4, :cond_6

    .line 3701
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    invoke-virtual {v4, p1}, Lcom/android/systemui/SwipeHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_4

    :cond_6
    move v4, v2

    .line 3705
    :goto_4
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNotificationGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->getExposedGuts()Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 3706
    invoke-static {p1, v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->isTouchInView(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 3707
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->getGutsContent()Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;

    move-result-object v7

    instance-of v7, v7, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;

    if-eqz v7, :cond_9

    .line 3708
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->getGutsContent()Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;

    .line 3709
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->isExpanded()Z

    move-result v6

    if-eqz v6, :cond_7

    if-nez v0, :cond_8

    :cond_7
    if-nez v4, :cond_9

    if-eqz v3, :cond_9

    .line 3713
    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->checkSnoozeLeavebehind()V

    .line 3716
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v1, :cond_a

    .line 3717
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mCheckForLeavebehind:Z

    :cond_a
    if-nez v4, :cond_c

    if-nez v3, :cond_c

    if-nez v5, :cond_c

    .line 3719
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_5

    :cond_b
    move v1, v2

    :cond_c
    :goto_5
    return v1
.end method

.method public onUiModeChanged()V
    .locals 2

    .line 775
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$color;->notification_shade_background_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBgColor:I

    .line 776
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateBackgroundDimming()V

    .line 777
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationShelf;->onUiModeChanged()V

    .line 778
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSectionsManager:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->onUiModeChanged()V

    return-void
.end method

.method public onUpdateRowStates()V
    .locals 2

    .line 5639
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFooterView:Lcom/android/systemui/statusbar/notification/row/FooterView;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->changeViewPosition(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)V

    .line 5646
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    .line 5647
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 5646
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->changeViewPosition(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)V

    .line 5651
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 5652
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    .line 5651
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->changeViewPosition(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)V

    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 0

    .line 3195
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 3196
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onViewAddedInternal(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 1

    .line 2920
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 2923
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildTransferInProgress:Z

    if-nez v0, :cond_0

    .line 2924
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-direct {p0, p1, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onViewRemovedInternal(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 4281
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    if-nez p1, :cond_0

    .line 4283
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->cancelLongPress()V

    :cond_0
    return-void
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 4

    .line 4211
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    .line 4214
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result p2

    const/4 v1, 0x0

    if-nez p2, :cond_1

    return v1

    :cond_1
    const/4 p2, -0x1

    const/16 v2, 0x1000

    if-eq p1, v2, :cond_2

    const/16 v2, 0x2000

    if-eq p1, v2, :cond_3

    const v2, 0x1020038

    if-eq p1, v2, :cond_3

    const p2, 0x102003a

    if-eq p1, p2, :cond_2

    goto :goto_0

    :cond_2
    move p2, v0

    .line 4231
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    iget v2, p0, Landroid/view/ViewGroup;->mPaddingBottom:I

    sub-int/2addr p1, v2

    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTopPadding:I

    sub-int/2addr p1, v2

    iget v2, p0, Landroid/view/ViewGroup;->mPaddingTop:I

    sub-int/2addr p1, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 4232
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v2

    sub-int/2addr p1, v2

    .line 4233
    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    mul-int/2addr p2, p1

    add-int/2addr v2, p2

    .line 4234
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 4233
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 4235
    iget p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-eq p1, p2, :cond_4

    .line 4236
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    iget v2, p0, Landroid/view/ViewGroup;->mScrollX:I

    iget v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    sub-int/2addr p1, v3

    invoke-virtual {p2, v2, v3, v1, p1}, Landroid/widget/OverScroller;->startScroll(IIII)V

    .line 4238
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->animateScroll()V

    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public removeContainerView(Landroid/view/View;)V
    .locals 0

    .line 5074
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 5075
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public removeOnExpandedHeightChangedListener(Ljava/util/function/BiConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 5452
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedHeightListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public requestDisallowDismiss()V
    .locals 1

    const/4 v0, 0x1

    .line 4194
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDisallowDismissInThisMotion:Z

    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    .line 4047
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    if-eqz p1, :cond_0

    .line 4049
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->cancelLongPress()V

    :cond_0
    return-void
.end method

.method public requestDisallowLongPress()V
    .locals 0

    .line 4189
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->cancelLongPress()V

    return-void
.end method

.method public resetCheckSnoozeLeavebehind()V
    .locals 1

    const/4 v0, 0x1

    .line 4341
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mCheckForLeavebehind:Z

    return-void
.end method

.method public resetExposedMenuView(ZZ)V
    .locals 0

    .line 5851
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->resetExposedMenuView(ZZ)V

    return-void
.end method

.method public resetScrollPosition()V
    .locals 1

    .line 4415
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    const/4 v0, 0x0

    .line 4422
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    return-void
.end method

.method public runAfterAnimationFinished(Ljava/lang/Runnable;)V
    .locals 0

    .line 5087
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationFinishedRunnables:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public scrollTo(Landroid/view/View;)Z
    .locals 4

    .line 1669
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 1673
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getPositionInLinearLayout(Landroid/view/View;)I

    move-result p1

    .line 1674
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->targetScrollForView(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)I

    move-result v1

    .line 1675
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v0

    add-int/2addr p1, v0

    .line 1679
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    .line 1680
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    iget v0, p0, Landroid/view/ViewGroup;->mScrollX:I

    iget v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    sub-int/2addr v1, v3

    invoke-virtual {p1, v0, v3, v2, v1}, Landroid/widget/OverScroller;->startScroll(IIII)V

    const/4 p1, 0x1

    .line 1681
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDontReportNextOverScroll:Z

    .line 1682
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->animateScroll()V

    return p1
.end method

.method public setActivatedChild(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V
    .locals 1

    .line 4644
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setActivatedChild(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    .line 4645
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 4646
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mActivateNeedsAnimation:Z

    .line 4647
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 4649
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    return-void
.end method

.method public setAnimationRunning(Z)V
    .locals 2

    .line 5151
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationRunning:Z

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_0

    .line 5153
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRunningAnimationUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0

    .line 5155
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRunningAnimationUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 5157
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationRunning:Z

    .line 5158
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateContinuousShadowDrawing()V

    :cond_1
    return-void
.end method

.method public setAnimationsEnabled(Z)V
    .locals 0

    .line 3267
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    .line 3268
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateNotificationAnimationStates()V

    if-nez p1, :cond_0

    .line 3270
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipedOutViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 3271
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenToRemoveAnimated:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 3272
    invoke-direct {p0, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->clearTemporaryViewsInGroup(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method

.method public setChildLocationsChangedListener(Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$OnChildLocationsChangedListener;)V
    .locals 0

    .line 1085
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mListener:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$OnChildLocationsChangedListener;

    return-void
.end method

.method public setChildTransferInProgress(Z)V
    .locals 0

    .line 2913
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 2914
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildTransferInProgress:Z

    return-void
.end method

.method public setDimmed(ZZ)V
    .locals 1

    .line 4579
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onKeyguard()Z

    move-result v0

    and-int/2addr p1, v0

    .line 4580
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setDimmed(Z)V

    if-eqz p2, :cond_0

    .line 4581
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 4582
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDimmedNeedsAnimation:Z

    .line 4583
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 4584
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->animateDimmed(Z)V

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 4586
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setDimAmount(F)V

    .line 4588
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    return-void
.end method

.method public setDismissAllInProgress(Z)V
    .locals 1

    .line 4900
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDismissAllInProgress:Z

    .line 4901
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setDismissAllInProgress(Z)V

    .line 4902
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->handleDismissAllClipping()V

    return-void
.end method

.method public setDozeAmount(F)V
    .locals 1

    .line 5688
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setDozeAmount(F)V

    .line 5689
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateContinuousBackgroundDrawing()V

    .line 5690
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    return-void
.end method

.method public setDozing(ZZLandroid/graphics/PointF;)V
    .locals 0

    .line 4767
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isDozing()Z

    move-result p2

    if-ne p2, p1, :cond_0

    return-void

    .line 4770
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setDozing(Z)V

    .line 4771
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 4772
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->notifyHeightChangeListener(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    return-void
.end method

.method public setEmptyShadeView(Lcom/android/systemui/statusbar/EmptyShadeView;)V
    .locals 2

    .line 4868
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    if-eqz v0, :cond_0

    .line 4869
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 4870
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 4872
    :goto_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    .line 4873
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public setExpandedHeight(F)V
    .locals 6

    .line 1301
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedHeight:F

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 1302
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setIsExpanded(Z)V

    .line 1303
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getMinExpansionHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v4, p1, v1

    if-gez v4, :cond_1

    .line 1305
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mClipRect:Landroid/graphics/Rect;

    iput v3, v4, Landroid/graphics/Rect;->left:I

    .line 1306
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 1307
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mClipRect:Landroid/graphics/Rect;

    iput v3, v4, Landroid/graphics/Rect;->top:I

    float-to-int p1, p1

    .line 1308
    iput p1, v4, Landroid/graphics/Rect;->bottom:I

    .line 1310
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setRequestedClipBounds(Landroid/graphics/Rect;)V

    move p1, v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 1312
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setRequestedClipBounds(Landroid/graphics/Rect;)V

    .line 1316
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getAppearEndPosition()F

    move-result v1

    .line 1317
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getAppearStartPosition()F

    move-result v4

    cmpg-float v1, p1, v1

    if-gez v1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    .line 1320
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setAppearing(Z)V

    if-nez v2, :cond_6

    .line 1323
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShouldShowShelfOnly:Z

    if-eqz v1, :cond_3

    .line 1324
    iget p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTopPadding:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v1

    add-int/2addr p1, v1

    goto :goto_4

    .line 1325
    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mQsExpanded:Z

    if-eqz v1, :cond_5

    .line 1326
    iget p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mContentHeight:I

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTopPadding:I

    sub-int/2addr p1, v1

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIntrinsicPadding:I

    add-int/2addr p1, v1

    .line 1327
    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMaxTopPadding:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v2

    add-int/2addr v1, v2

    if-gt p1, v1, :cond_4

    move p1, v1

    goto :goto_4

    :cond_4
    int-to-float p1, p1

    int-to-float v1, v1

    .line 1331
    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mQsExpansionFraction:F

    invoke-static {p1, v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result p1

    :cond_5
    float-to-int p1, p1

    goto :goto_4

    .line 1338
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->calculateAppearFraction(F)F

    move-result v1

    cmpl-float v2, v1, v0

    if-ltz v2, :cond_7

    .line 1340
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getExpandTranslationStart()F

    move-result v2

    invoke-static {v2, v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v2

    goto :goto_3

    :cond_7
    sub-float v2, p1, v4

    .line 1345
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getExpandTranslationStart()F

    move-result v3

    add-float/2addr v2, v3

    .line 1347
    :goto_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isHeadsUpTransition()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1349
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getFirstVisibleSection()Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getFirstVisibleChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getPinnedHeadsUpHeight()I

    move-result p1

    .line 1350
    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpInset:I

    iget v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTopPadding:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-static {v2, v0, v1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    goto :goto_4

    :cond_8
    sub-float/2addr p1, v2

    float-to-int p1, p1

    move v0, v2

    .line 1355
    :goto_4
    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mCurrentStackHeight:I

    if-eq p1, v1, :cond_9

    .line 1356
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mCurrentStackHeight:I

    .line 1357
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateAlgorithmHeightAndPadding()V

    .line 1358
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 1360
    :cond_9
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setStackTranslation(F)V

    .line 1361
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->notifyAppearChangedListeners()V

    return-void
.end method

.method public setExpandingEnabled(Z)V
    .locals 0

    .line 1741
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {p0, p1}, Lcom/android/systemui/ExpandHelper;->setEnabled(Z)V

    return-void
.end method

.method public setExpandingNotification(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 1

    .line 3297
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setExpandingNotification(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 3298
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    return-void
.end method

.method public setExpandingVelocity(F)V
    .locals 0

    .line 5346
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setExpandingVelocity(F)V

    return-void
.end method

.method public setFinishScrollingCallback(Ljava/lang/Runnable;)V
    .locals 0

    .line 1919
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFinishScrollingCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public setFooterView(Lcom/android/systemui/statusbar/notification/row/FooterView;)V
    .locals 2

    .line 4857
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFooterView:Lcom/android/systemui/statusbar/notification/row/FooterView;

    if-eqz v0, :cond_0

    .line 4858
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 4859
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFooterView:Lcom/android/systemui/statusbar/notification/row/FooterView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 4861
    :goto_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFooterView:Lcom/android/systemui/statusbar/notification/row/FooterView;

    .line 4862
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFooterView:Lcom/android/systemui/statusbar/notification/row/FooterView;

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public setGroupManager(Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V
    .locals 0

    .line 4970
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 4971
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOnGroupChangeListener:Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->addOnGroupChangeListener(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;)V

    return-void
.end method

.method public setHeadsUpAnimatingAway(Z)V
    .locals 0

    .line 5305
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpAnimatingAway:Z

    .line 5306
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateClipping()V

    return-void
.end method

.method public setHeadsUpAppearanceController(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V
    .locals 0

    .line 5458
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    return-void
.end method

.method public setHeadsUpBoundaries(II)V
    .locals 1

    .line 5116
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    sub-int p2, p1, p2

    int-to-float p2, p2

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setMaxHeadsUpTranslation(F)V

    .line 5117
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->setHeadsUpAppearHeightBottom(I)V

    .line 5118
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    return-void
.end method

.method public setHeadsUpGoingAwayAnimationsAllowed(Z)V
    .locals 0

    .line 5376
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpGoingAwayAnimationsAllowed:Z

    return-void
.end method

.method public setHideAmount(FF)V
    .locals 3

    .line 4786
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLinearHideAmount:F

    .line 4787
    iput p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mInterpolatedHideAmount:F

    .line 4788
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isFullyHidden()Z

    move-result p1

    .line 4789
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isHiddenAtAll()Z

    move-result v0

    .line 4790
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setHideAmount(F)V

    .line 4791
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isFullyHidden()Z

    move-result p2

    .line 4792
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isHiddenAtAll()Z

    move-result v1

    if-eq p2, p1, :cond_0

    .line 4794
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateVisibility()V

    :cond_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 4797
    invoke-virtual {p0, v2, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->resetExposedMenuView(ZZ)V

    :cond_1
    if-ne p2, p1, :cond_2

    if-eq v0, v1, :cond_3

    .line 4800
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidateOutline()V

    .line 4802
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateAlgorithmHeightAndPadding()V

    .line 4803
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateBackgroundDimming()V

    .line 4804
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 4805
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateOwnTranslationZ()V

    return-void
.end method

.method public setIconAreaController(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)V
    .locals 0

    .line 5463
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    return-void
.end method

.method public setInHeadsUpPinnedMode(Z)V
    .locals 0

    .line 5299
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mInHeadsUpPinnedMode:Z

    .line 5300
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateClipping()V

    return-void
.end method

.method public setIntrinsicPadding(I)V
    .locals 0

    .line 4746
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIntrinsicPadding:I

    .line 4747
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setIntrinsicPadding(I)V

    return-void
.end method

.method setIsBeingDragged(Z)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4179
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 4181
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 4182
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->cancelLongPress()V

    .line 4183
    invoke-virtual {p0, p1, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->resetExposedMenuView(ZZ)V

    :cond_0
    return-void
.end method

.method public setIsFullWidth(Z)V
    .locals 0

    .line 5360
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setPanelFullWidth(Z)V

    return-void
.end method

.method public setLongPressListener(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$LongPressListener;)V
    .locals 0

    .line 3668
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLongPressListener:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$LongPressListener;

    return-void
.end method

.method public setMaxDisplayedNotifications(I)V
    .locals 1

    .line 5279
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMaxDisplayedNotifications:I

    if-eq v0, p1, :cond_0

    .line 5280
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMaxDisplayedNotifications:I

    .line 5281
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateContentHeight()V

    .line 5282
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->notifyHeightChangeListener(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    :cond_0
    return-void
.end method

.method public setMaxTopPadding(I)V
    .locals 0

    .line 2850
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMaxTopPadding:I

    return-void
.end method

.method public setNotificationPanel(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0

    .line 5657
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    return-void
.end method

.method public setOnEmptySpaceClickListener(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;)V
    .locals 0

    .line 4204
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOnEmptySpaceClickListener:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;

    return-void
.end method

.method public setOnHeightChangedListener(Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;)V
    .locals 0

    .line 4530
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;

    return-void
.end method

.method public setOnPulseHeightChangedListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 5736
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setOnPulseHeightChangedListener(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setOverScrollAmount(FZZ)V
    .locals 1

    const/4 v0, 0x1

    .line 2059
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZZ)V

    return-void
.end method

.method public setOverScrollAmount(FZZZ)V
    .locals 6

    .line 2073
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isRubberbanded(Z)Z

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZZZ)V

    return-void
.end method

.method public setOverScrollAmount(FZZZZ)V
    .locals 0

    if-eqz p4, :cond_0

    .line 2090
    iget-object p4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;

    invoke-virtual {p4, p2}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->cancelOverScrollAnimators(Z)V

    .line 2092
    :cond_0
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOverScrollAmountInternal(FZZZ)V

    return-void
.end method

.method public setOverScrolledPixels(FZZ)V
    .locals 1

    .line 2045
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getRubberBandFactor(Z)F

    move-result v0

    mul-float/2addr p1, v0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZZ)V

    return-void
.end method

.method public setOverscrollTopChangedListener(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;)V
    .locals 0

    .line 2126
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOverscrollTopChangedListener:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;

    return-void
.end method

.method public setPulseHeight(F)F
    .locals 2

    .line 5671
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setPulseHeight(F)V

    .line 5672
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5673
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->notifyAppearChangedListeners()V

    .line 5675
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    const/4 v0, 0x0

    .line 5676
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getInnerHeight(Z)I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p1, p0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public setPulsing(ZZ)V
    .locals 1

    .line 5169
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPulsing:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    return-void

    .line 5172
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPulsing:Z

    .line 5173
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setPulsing(Z)V

    .line 5174
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->setPulsing(Z)V

    .line 5175
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateNotificationAnimationStates()V

    .line 5176
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateAlgorithmHeightAndPadding()V

    .line 5177
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateContentHeight()V

    .line 5178
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    const/4 p1, 0x0

    .line 5179
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->notifyHeightChangeListener(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V

    return-void
.end method

.method public setQsContainer(Landroid/view/ViewGroup;)V
    .locals 0

    .line 1542
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mQsContainer:Landroid/view/ViewGroup;

    return-void
.end method

.method public setQsCustomizerShowing(Z)V
    .locals 1

    .line 5370
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setQsCustomizerShowing(Z)V

    .line 5371
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    return-void
.end method

.method public setQsExpanded(Z)V
    .locals 0

    .line 5184
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mQsExpanded:Z

    .line 5185
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateAlgorithmLayoutMinHeight()V

    .line 5186
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateScrollability()V

    return-void
.end method

.method public setQsExpansionFraction(F)V
    .locals 0

    .line 5191
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mQsExpansionFraction:F

    return-void
.end method

.method public setScrimController(Lcom/android/systemui/statusbar/phone/ScrimController;)V
    .locals 1

    .line 5134
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 5135
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$EebmavE8B0v9pYEId75j8vvZNvI;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$EebmavE8B0v9pYEId75j8vvZNvI;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimBehindChangeRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setScrollingEnabled(Z)V
    .locals 0

    .line 1655
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScrollingEnabled:Z

    return-void
.end method

.method public setShelf(Lcom/android/systemui/statusbar/NotificationShelf;)V
    .locals 2

    .line 5258
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    if-eqz v0, :cond_0

    .line 5259
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 5260
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 5262
    :goto_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 5263
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 5264
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setShelf(Lcom/android/systemui/statusbar/NotificationShelf;)V

    .line 5265
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->setShelf(Lcom/android/systemui/statusbar/NotificationShelf;)V

    .line 5266
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/statusbar/NotificationShelf;->bind(Lcom/android/systemui/statusbar/notification/stack/AmbientState;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    return-void
.end method

.method public setShouldShowShelfOnly(Z)V
    .locals 0

    .line 5288
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShouldShowShelfOnly:Z

    .line 5289
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateAlgorithmLayoutMinHeight()V

    return-void
.end method

.method public setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    .line 4965
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-void
.end method

.method protected setStatusBarState(I)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5312
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStatusBarState:I

    .line 5313
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setStatusBarState(I)V

    return-void
.end method

.method public setTrackingHeadsUp(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5128
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTrackingHeadsUp:Z

    .line 5129
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRoundnessManager:Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->setTrackingHeadsUp(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method

.method public setUnlockHintRunning(Z)V
    .locals 0

    .line 5365
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setUnlockHintRunning(Z)V

    return-void
.end method

.method public setWillExpand(Z)V
    .locals 0

    .line 5123
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mWillExpand:Z

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public updateClipping()V
    .locals 5

    .line 1400
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRequestedClipBounds:Landroid/graphics/Rect;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mInHeadsUpPinnedMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpAnimatingAway:Z

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1403
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsClipped:Z

    if-eq v3, v0, :cond_1

    .line 1404
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsClipped:Z

    .line 1407
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isHiddenAtAll()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 1409
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidateOutline()V

    .line 1410
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isFullyHidden()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1411
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setClipBounds(Landroid/graphics/Rect;)V

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    .line 1414
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRequestedClipBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipBounds(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 1416
    :cond_3
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setClipBounds(Landroid/graphics/Rect;)V

    :goto_1
    move v1, v2

    .line 1419
    :cond_4
    :goto_2
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setClipToOutline(Z)V

    return-void
.end method

.method public updateDecorViews(Z)V
    .locals 2

    .line 4720
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mUsingLightTheme:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 4723
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mUsingLightTheme:Z

    .line 4724
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_1

    .line 4725
    sget p1, Lcom/android/systemui/R$style;->Theme_SystemUI_Light:I

    goto :goto_0

    :cond_1
    sget p1, Lcom/android/systemui/R$style;->Theme_SystemUI:I

    :goto_0
    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 4726
    sget p1, Lcom/android/systemui/R$attr;->wallpaperTextColor:I

    invoke-static {v0, p1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p1

    .line 4727
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFooterView:Lcom/android/systemui/statusbar/notification/row/FooterView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/FooterView;->setTextColor(I)V

    .line 4728
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/EmptyShadeView;->setTextColor(I)V

    return-void
.end method

.method public updateEmptyShadeView(Z)V
    .locals 2

    .line 4878
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->setVisible(ZZ)V

    .line 4880
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/EmptyShadeView;->getTextResource()I

    move-result p1

    .line 4881
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->areNotificationsHidden()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4882
    sget v0, Lcom/android/systemui/R$string;->dnd_suppressing_shade_text:I

    goto :goto_1

    :cond_1
    sget v0, Lcom/android/systemui/R$string;->empty_shade_text:I

    :goto_1
    if-eq p1, v0, :cond_2

    .line 4884
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/EmptyShadeView;->setText(I)V

    :cond_2
    return-void
.end method

.method public updateFooter()V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 697
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mClearAllEnabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->hasActiveClearableNotifications(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    .line 698
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 699
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    iget v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStatusBarState:I

    if-eq v3, v1, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 701
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->getController()Lcom/android/systemui/statusbar/RemoteInputController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/RemoteInputController;->isRemoteInputActive()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    .line 703
    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateFooterView(ZZ)V

    return-void
.end method

.method public updateFooterView(ZZ)V
    .locals 2

    .line 4890
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFooterView:Lcom/android/systemui/statusbar/notification/row/FooterView;

    if-nez v0, :cond_0

    return-void

    .line 4893
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4894
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFooterView:Lcom/android/systemui/statusbar/notification/row/FooterView;

    invoke-virtual {v1, p1, v0}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->setVisible(ZZ)V

    .line 4895
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFooterView:Lcom/android/systemui/statusbar/notification/row/FooterView;

    invoke-virtual {p0, p2, v0}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->setSecondaryVisible(ZZ)V

    return-void
.end method

.method public updateIconAreaViews()V
    .locals 0

    .line 5661
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateNotificationIcons()V

    return-void
.end method

.method public updateSectionBoundaries()V
    .locals 0

    .line 5818
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSectionsManager:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->updateSectionBoundaries()V

    return-void
.end method

.method public updateSpeedBumpIndex()V
    .locals 9

    .line 5793
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v2, v0, :cond_3

    .line 5795
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 5796
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_2

    instance-of v7, v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez v7, :cond_0

    goto :goto_2

    .line 5799
    :cond_0
    check-cast v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    add-int/lit8 v4, v4, 0x1

    .line 5802
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHighPriorityBeforeSpeedBump:Z

    if-eqz v7, :cond_1

    .line 5803
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isTopBucket()Z

    move-result v5

    goto :goto_1

    .line 5805
    :cond_1
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->ambient:Z

    xor-int/2addr v5, v6

    :goto_1
    if-eqz v5, :cond_2

    move v3, v4

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-ne v3, v0, :cond_4

    move v1, v5

    .line 5812
    :cond_4
    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateSpeedBumpIndex(IZ)V

    return-void
.end method

.method public updateSpeedBumpIndex(IZ)V
    .locals 1

    .line 1077
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setSpeedBumpIndex(I)V

    .line 1078
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNoAmbient:Z

    return-void
.end method

.method public updateTopPadding(FZ)V
    .locals 2

    float-to-int p1, p1

    .line 2838
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getLayoutMinHeight()I

    move-result v0

    add-int/2addr v0, p1

    .line 2839
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 2840
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTopPaddingOverflow:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2842
    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTopPaddingOverflow:F

    :goto_0
    if-eqz p2, :cond_1

    .line 2844
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setTopPadding(IZ)V

    .line 2845
    iget p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedHeight:F

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setExpandedHeight(F)V

    return-void
.end method

.method public wakeUpFromPulse()V
    .locals 9

    .line 5694
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getWakeUpHeight()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setPulseHeight(F)F

    .line 5699
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/high16 v3, -0x40800000    # -1.0f

    move v4, v2

    move v5, v3

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_5

    .line 5701
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 5702
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_0

    goto :goto_2

    .line 5705
    :cond_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    if-ne v6, v7, :cond_1

    move v7, v2

    goto :goto_1

    :cond_1
    move v7, v1

    .line 5706
    :goto_1
    instance-of v8, v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez v8, :cond_2

    if-nez v7, :cond_2

    goto :goto_2

    .line 5709
    :cond_2
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v8

    if-nez v8, :cond_3

    if-nez v7, :cond_3

    if-eqz v4, :cond_4

    .line 5712
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v4

    .line 5713
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move v5, v4

    move v4, v1

    goto :goto_2

    :cond_3
    if-nez v4, :cond_4

    .line 5716
    invoke-virtual {v6, v5}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5719
    :cond_5
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDimmedNeedsAnimation:Z

    return-void
.end method
