.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationPresenter$kVrBvDo577RHxcwdetzp8ypANEY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationPresenter$kVrBvDo577RHxcwdetzp8ypANEY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationPresenter$kVrBvDo577RHxcwdetzp8ypANEY;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationPresenter$kVrBvDo577RHxcwdetzp8ypANEY;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationPresenter$kVrBvDo577RHxcwdetzp8ypANEY;->INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationPresenter$kVrBvDo577RHxcwdetzp8ypANEY;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()Z
    .locals 0

    invoke-static {}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->lambda$onExpandClicked$1()Z

    move-result p0

    return p0
.end method
