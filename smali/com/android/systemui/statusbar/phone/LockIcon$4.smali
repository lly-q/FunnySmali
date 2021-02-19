.class Lcom/android/systemui/statusbar/phone/LockIcon$4;
.super Landroid/graphics/drawable/Animatable2$AnimationCallback;
.source "LockIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/LockIcon;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

.field final synthetic val$animation:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field final synthetic val$lockAnimIndex:I

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/LockIcon;Landroid/graphics/drawable/AnimatedVectorDrawable;II)V
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon$4;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/LockIcon$4;->val$animation:Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput p3, p0, Lcom/android/systemui/statusbar/phone/LockIcon$4;->val$state:I

    iput p4, p0, Lcom/android/systemui/statusbar/phone/LockIcon$4;->val$lockAnimIndex:I

    invoke-direct {p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 312
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon$4;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon$4;->val$animation:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon$4;->val$state:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon$4;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->access$700(Lcom/android/systemui/statusbar/phone/LockIcon;)I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon$4;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon$4;->val$lockAnimIndex:I

    .line 313
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->access$800(Lcom/android/systemui/statusbar/phone/LockIcon;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 314
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockIcon$4;->val$animation:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    goto :goto_0

    .line 316
    :cond_0
    iget p0, p0, Lcom/android/systemui/statusbar/phone/LockIcon$4;->val$state:I

    const-string p1, "LockIcon#Animation"

    invoke-static {p1, p0}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method
