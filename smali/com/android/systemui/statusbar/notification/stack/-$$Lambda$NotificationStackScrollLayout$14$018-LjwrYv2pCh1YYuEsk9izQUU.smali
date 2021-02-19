.class public final synthetic Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$14$018-LjwrYv2pCh1YYuEsk9izQUU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$14$018-LjwrYv2pCh1YYuEsk9izQUU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$14$018-LjwrYv2pCh1YYuEsk9izQUU;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$14$018-LjwrYv2pCh1YYuEsk9izQUU;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$14$018-LjwrYv2pCh1YYuEsk9izQUU;->INSTANCE:Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$14$018-LjwrYv2pCh1YYuEsk9izQUU;

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

    invoke-static {}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$14;->lambda$onDraggedDown$0()Z

    move-result p0

    return p0
.end method
