.class public final synthetic Lcom/android/systemui/statusbar/-$$Lambda$NavigationBarController$qVlCTOvToBbgR1PLV26YdGJ6hZc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/NavigationBarController;

.field private final synthetic f$1:Z

.field private final synthetic f$2:Landroid/content/Context;

.field private final synthetic f$3:Lcom/android/systemui/statusbar/NavigationBarController$SystemUiVisibility;

.field private final synthetic f$4:I

.field private final synthetic f$5:Lcom/android/internal/statusbar/RegisterStatusBarResult;

.field private final synthetic f$6:Landroid/view/Display;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/NavigationBarController;ZLandroid/content/Context;Lcom/android/systemui/statusbar/NavigationBarController$SystemUiVisibility;ILcom/android/internal/statusbar/RegisterStatusBarResult;Landroid/view/Display;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/-$$Lambda$NavigationBarController$qVlCTOvToBbgR1PLV26YdGJ6hZc;->f$0:Lcom/android/systemui/statusbar/NavigationBarController;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/-$$Lambda$NavigationBarController$qVlCTOvToBbgR1PLV26YdGJ6hZc;->f$1:Z

    iput-object p3, p0, Lcom/android/systemui/statusbar/-$$Lambda$NavigationBarController$qVlCTOvToBbgR1PLV26YdGJ6hZc;->f$2:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/systemui/statusbar/-$$Lambda$NavigationBarController$qVlCTOvToBbgR1PLV26YdGJ6hZc;->f$3:Lcom/android/systemui/statusbar/NavigationBarController$SystemUiVisibility;

    iput p5, p0, Lcom/android/systemui/statusbar/-$$Lambda$NavigationBarController$qVlCTOvToBbgR1PLV26YdGJ6hZc;->f$4:I

    iput-object p6, p0, Lcom/android/systemui/statusbar/-$$Lambda$NavigationBarController$qVlCTOvToBbgR1PLV26YdGJ6hZc;->f$5:Lcom/android/internal/statusbar/RegisterStatusBarResult;

    iput-object p7, p0, Lcom/android/systemui/statusbar/-$$Lambda$NavigationBarController$qVlCTOvToBbgR1PLV26YdGJ6hZc;->f$6:Landroid/view/Display;

    return-void
.end method


# virtual methods
.method public final onFragmentViewCreated(Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/statusbar/-$$Lambda$NavigationBarController$qVlCTOvToBbgR1PLV26YdGJ6hZc;->f$0:Lcom/android/systemui/statusbar/NavigationBarController;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/-$$Lambda$NavigationBarController$qVlCTOvToBbgR1PLV26YdGJ6hZc;->f$1:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/-$$Lambda$NavigationBarController$qVlCTOvToBbgR1PLV26YdGJ6hZc;->f$2:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/-$$Lambda$NavigationBarController$qVlCTOvToBbgR1PLV26YdGJ6hZc;->f$3:Lcom/android/systemui/statusbar/NavigationBarController$SystemUiVisibility;

    iget v4, p0, Lcom/android/systemui/statusbar/-$$Lambda$NavigationBarController$qVlCTOvToBbgR1PLV26YdGJ6hZc;->f$4:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/-$$Lambda$NavigationBarController$qVlCTOvToBbgR1PLV26YdGJ6hZc;->f$5:Lcom/android/internal/statusbar/RegisterStatusBarResult;

    iget-object v6, p0, Lcom/android/systemui/statusbar/-$$Lambda$NavigationBarController$qVlCTOvToBbgR1PLV26YdGJ6hZc;->f$6:Landroid/view/Display;

    move-object v7, p1

    move-object v8, p2

    invoke-virtual/range {v0 .. v8}, Lcom/android/systemui/statusbar/NavigationBarController;->lambda$createNavigationBar$0$NavigationBarController(ZLandroid/content/Context;Lcom/android/systemui/statusbar/NavigationBarController$SystemUiVisibility;ILcom/android/internal/statusbar/RegisterStatusBarResult;Landroid/view/Display;Ljava/lang/String;Landroid/app/Fragment;)V

    return-void
.end method
