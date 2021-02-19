.class Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ProfilesTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/ProfilesTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProfileAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Llineageos/app/Profile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/ProfilesTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/ProfilesTile;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Llineageos/app/Profile;",
            ">;)V"
        }
    .end annotation

    .line 209
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileAdapter;->this$0:Lcom/android/systemui/qs/tiles/ProfilesTile;

    const p1, 0x109000f

    .line 210
    invoke-direct {p0, p2, p1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-eqz p2, :cond_0

    .line 216
    check-cast p2, Landroid/widget/CheckedTextView;

    goto :goto_0

    .line 217
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileAdapter;->this$0:Lcom/android/systemui/qs/tiles/ProfilesTile;

    invoke-static {p2}, Lcom/android/systemui/qs/tiles/ProfilesTile;->access$100(Lcom/android/systemui/qs/tiles/ProfilesTile;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x109000f

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckedTextView;

    .line 220
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Llineageos/app/Profile;

    .line 221
    invoke-virtual {p0}, Llineageos/app/Profile;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
