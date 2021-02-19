.class public Lcom/android/systemui/qs/QSDetailItemsList;
.super Landroid/widget/FrameLayout;
.source "QSDetailItemsList.java"


# instance fields
.field private mEmpty:Landroid/view/View;

.field private mEmptyIcon:Landroid/widget/ImageView;

.field private mEmptyText:Landroid/widget/TextView;

.field private mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static convertOrInflate(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/QSDetailItemsList;
    .locals 1

    .line 51
    instance-of v0, p1, Lcom/android/systemui/qs/QSDetailItemsList;

    if-eqz v0, :cond_0

    .line 52
    check-cast p1, Lcom/android/systemui/qs/QSDetailItemsList;

    return-object p1

    .line 54
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    .line 55
    sget p1, Lcom/android/systemui/R$layout;->qs_detail_items_list:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QSDetailItemsList;

    return-object p0
.end method


# virtual methods
.method public getListView()Landroid/widget/ListView;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetailItemsList;->mListView:Landroid/widget/ListView;

    return-object p0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 73
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x102000a

    .line 74
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetailItemsList;->mListView:Landroid/widget/ListView;

    .line 75
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItemsList;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/systemui/qs/QSDetailItemsList$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSDetailItemsList$1;-><init>(Lcom/android/systemui/qs/QSDetailItemsList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x1020004

    .line 84
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetailItemsList;->mEmpty:Landroid/view/View;

    .line 85
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItemsList;->mEmpty:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItemsList;->mEmpty:Landroid/view/View;

    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetailItemsList;->mEmptyText:Landroid/widget/TextView;

    .line 87
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItemsList;->mEmpty:Landroid/view/View;

    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetailItemsList;->mEmptyIcon:Landroid/widget/ImageView;

    .line 88
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItemsList;->mListView:Landroid/widget/ListView;

    iget-object p0, p0, Lcom/android/systemui/qs/QSDetailItemsList;->mEmpty:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetailItemsList;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
