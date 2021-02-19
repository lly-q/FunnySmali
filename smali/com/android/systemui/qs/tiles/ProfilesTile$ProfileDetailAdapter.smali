.class public Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileDetailAdapter;
.super Ljava/lang/Object;
.source "ProfilesTile.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/ProfilesTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProfileDetailAdapter"
.end annotation


# instance fields
.field private mProfilesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Llineageos/app/Profile;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/ProfilesTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/ProfilesTile;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/ProfilesTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private buildProfilesList()V
    .locals 6

    .line 272
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileDetailAdapter;->mProfilesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 275
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/ProfilesTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/ProfilesTile;->access$600(Lcom/android/systemui/qs/tiles/ProfilesTile;)Llineageos/app/ProfileManager;

    move-result-object v0

    invoke-virtual {v0}, Llineageos/app/ProfileManager;->getProfiles()[Llineageos/app/Profile;

    move-result-object v0

    .line 276
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/ProfilesTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/ProfilesTile;->access$600(Lcom/android/systemui/qs/tiles/ProfilesTile;)Llineageos/app/ProfileManager;

    move-result-object v1

    invoke-virtual {v1}, Llineageos/app/ProfileManager;->getActiveProfile()Llineageos/app/Profile;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 277
    invoke-virtual {v1}, Llineageos/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 279
    :goto_1
    array-length v4, v0

    if-ge v2, v4, :cond_2

    .line 280
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileDetailAdapter;->mProfilesList:Ljava/util/List;

    aget-object v5, v0, v2

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_1

    .line 281
    aget-object v4, v0, v2

    invoke-virtual {v4}, Llineageos/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v3, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 285
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/ProfilesTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/ProfilesTile;->access$400(Lcom/android/systemui/qs/tiles/ProfilesTile;)Lcom/android/systemui/qs/QSDetailItemsList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSDetailItemsList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 286
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/ProfilesTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/ProfilesTile;->access$500(Lcom/android/systemui/qs/tiles/ProfilesTile;)Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 258
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/ProfilesTile;

    invoke-static {p1, p2, p3}, Lcom/android/systemui/qs/QSDetailItemsList;->convertOrInflate(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/QSDetailItemsList;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/systemui/qs/tiles/ProfilesTile;->access$402(Lcom/android/systemui/qs/tiles/ProfilesTile;Lcom/android/systemui/qs/QSDetailItemsList;)Lcom/android/systemui/qs/QSDetailItemsList;

    .line 259
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileDetailAdapter;->mProfilesList:Ljava/util/List;

    .line 260
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/ProfilesTile;

    invoke-static {p2}, Lcom/android/systemui/qs/tiles/ProfilesTile;->access$400(Lcom/android/systemui/qs/tiles/ProfilesTile;)Lcom/android/systemui/qs/QSDetailItemsList;

    move-result-object p2

    iget-object p3, p0, Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/ProfilesTile;

    new-instance v0, Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileAdapter;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileDetailAdapter;->mProfilesList:Ljava/util/List;

    invoke-direct {v0, p3, p1, v1}, Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileAdapter;-><init>(Lcom/android/systemui/qs/tiles/ProfilesTile;Landroid/content/Context;Ljava/util/List;)V

    invoke-static {p3, v0}, Lcom/android/systemui/qs/tiles/ProfilesTile;->access$502(Lcom/android/systemui/qs/tiles/ProfilesTile;Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileAdapter;)Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileAdapter;

    invoke-virtual {p2, v0}, Lcom/android/systemui/qs/QSDetailItemsList;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 262
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/ProfilesTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/ProfilesTile;->access$400(Lcom/android/systemui/qs/tiles/ProfilesTile;)Lcom/android/systemui/qs/QSDetailItemsList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/qs/QSDetailItemsList;->getListView()Landroid/widget/ListView;

    move-result-object p1

    const/4 p2, 0x1

    .line 263
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 264
    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 266
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileDetailAdapter;->buildProfilesList()V

    .line 268
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/ProfilesTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/ProfilesTile;->access$400(Lcom/android/systemui/qs/tiles/ProfilesTile;)Lcom/android/systemui/qs/QSDetailItemsList;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const p0, -0x7fffffde

    return p0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 0

    .line 291
    invoke-static {}, Lcom/android/systemui/qs/tiles/ProfilesTile;->access$700()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 243
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/ProfilesTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/ProfilesTile;->access$200(Lcom/android/systemui/qs/tiles/ProfilesTile;)Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->quick_settings_profiles_label:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 0

    .line 248
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/ProfilesTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/ProfilesTile;->access$300(Lcom/android/systemui/qs/tiles/ProfilesTile;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 302
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Llineageos/app/Profile;

    .line 303
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/ProfilesTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/ProfilesTile;->access$600(Lcom/android/systemui/qs/tiles/ProfilesTile;)Llineageos/app/ProfileManager;

    move-result-object p0

    invoke-virtual {p1}, Llineageos/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p0, p1}, Llineageos/app/ProfileManager;->setActiveProfile(Ljava/util/UUID;)V

    return-void
.end method

.method public setToggleState(Z)V
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/ProfilesTile;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/systemui/qs/tiles/ProfilesTile;->access$800(Lcom/android/systemui/qs/tiles/ProfilesTile;Ljava/lang/Boolean;)V

    .line 297
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/ProfilesTile;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showDetail(Z)V

    return-void
.end method
