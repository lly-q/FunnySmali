.class public Lcom/android/systemui/qs/QSCarrierGroup;
.super Landroid/widget/LinearLayout;
.source "QSCarrierGroup.java"

# interfaces
.implements Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;
.implements Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;
    }
.end annotation


# instance fields
.field private mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private mCarrierDividers:[Landroid/view/View;

.field private mCarrierGroups:[Lcom/android/systemui/qs/QSCarrier;

.field private mCarrierTextController:Lcom/android/keyguard/CarrierTextController;

.field private final mInfos:[Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;

.field private mListening:Z

.field private final mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private mNoSimTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 75
    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 76
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    const-class v1, Lcom/android/systemui/plugins/ActivityStarter;

    .line 77
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/ActivityStarter;

    .line 75
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/systemui/qs/QSCarrierGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/plugins/ActivityStarter;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/plugins/ActivityStarter;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    new-array p1, p1, [Landroid/view/View;

    .line 56
    iput-object p1, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mCarrierDividers:[Landroid/view/View;

    const/4 p1, 0x3

    new-array p2, p1, [Lcom/android/systemui/qs/QSCarrier;

    .line 57
    iput-object p2, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mCarrierGroups:[Lcom/android/systemui/qs/QSCarrier;

    new-array p1, p1, [Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;

    .line 59
    iput-object p1, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mInfos:[Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;

    .line 69
    iput-object p3, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 70
    iput-object p4, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-void
.end method

.method private handleUpdateState()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 141
    iget-object v2, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mCarrierGroups:[Lcom/android/systemui/qs/QSCarrier;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mInfos:[Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/QSCarrier;->updateState(Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mCarrierDividers:[Landroid/view/View;

    aget-object v1, v1, v0

    .line 145
    iget-object v2, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mInfos:[Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;

    aget-object v3, v2, v0

    iget-boolean v3, v3, Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;->visible:Z

    const/16 v4, 0x8

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    aget-object v2, v2, v5

    iget-boolean v2, v2, Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;->visible:Z

    if-eqz v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v4

    .line 144
    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 149
    iget-object v1, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mCarrierDividers:[Landroid/view/View;

    aget-object v1, v1, v5

    .line 151
    iget-object v2, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mInfos:[Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;

    aget-object v3, v2, v5

    iget-boolean v3, v3, Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;->visible:Z

    const/4 v5, 0x2

    if-eqz v3, :cond_2

    aget-object v2, v2, v5

    iget-boolean v2, v2, Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;->visible:Z

    if-nez v2, :cond_4

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mInfos:[Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;

    aget-object v2, p0, v0

    iget-boolean v2, v2, Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;->visible:Z

    if-eqz v2, :cond_3

    aget-object p0, p0, v5

    iget-boolean p0, p0, Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;->visible:Z

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move v0, v4

    .line 149
    :cond_4
    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateListeners()V
    .locals 1

    .line 128
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mListening:Z

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasVoiceCallingFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mCarrierTextController:Lcom/android/keyguard/CarrierTextController;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/CarrierTextController;->setListening(Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;)V

    goto :goto_0

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 135
    iget-object p0, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mCarrierTextController:Lcom/android/keyguard/CarrierTextController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/CarrierTextController;->setListening(Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected getSlotIndex(I)I
    .locals 0

    .line 156
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result p0

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 82
    invoke-virtual {p1}, Landroid/view/View;->isVisibleToUser()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 83
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    .line 123
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSCarrierGroup;->setListening(Z)V

    .line 124
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .line 89
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 91
    iget-object v0, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mCarrierGroups:[Lcom/android/systemui/qs/QSCarrier;

    sget v1, Lcom/android/systemui/R$id;->carrier1:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSCarrier;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 92
    iget-object v0, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mCarrierGroups:[Lcom/android/systemui/qs/QSCarrier;

    sget v1, Lcom/android/systemui/R$id;->carrier2:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSCarrier;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 93
    iget-object v0, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mCarrierGroups:[Lcom/android/systemui/qs/QSCarrier;

    sget v1, Lcom/android/systemui/R$id;->carrier3:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSCarrier;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 95
    iget-object v0, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mCarrierDividers:[Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->qs_carrier_divider1:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, v2

    .line 96
    iget-object v0, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mCarrierDividers:[Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->qs_carrier_divider2:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, v3

    .line 98
    sget v0, Lcom/android/systemui/R$id;->no_carrier_text:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mNoSimTextView:Landroid/widget/TextView;

    move v0, v2

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mInfos:[Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;

    new-instance v4, Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;

    invoke-direct {v4}, Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;-><init>()V

    aput-object v4, v1, v0

    .line 102
    iget-object v1, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mCarrierGroups:[Lcom/android/systemui/qs/QSCarrier;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mNoSimTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const v1, 0x1040365

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 108
    new-instance v1, Lcom/android/keyguard/CarrierTextController;

    iget-object v4, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4, v0, v2, v2}, Lcom/android/keyguard/CarrierTextController;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;ZZ)V

    iput-object v1, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mCarrierTextController:Lcom/android/keyguard/CarrierTextController;

    .line 109
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    return-void
.end method

.method public setListening(Z)V
    .locals 1

    .line 113
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mListening:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 116
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mListening:Z

    .line 117
    invoke-direct {p0}, Lcom/android/systemui/qs/QSCarrierGroup;->updateListeners()V

    return-void
.end method

.method public setMobileDataIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIZZLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZIZ)V
    .locals 0

    .line 213
    invoke-virtual {p0, p11}, Lcom/android/systemui/qs/QSCarrierGroup;->getSlotIndex(I)I

    move-result p2

    const-string p3, "QSCarrierGroup"

    const/4 p4, 0x3

    if-lt p2, p4, :cond_0

    .line 215
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "setMobileDataIndicators - slot: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 p4, -0x1

    if-ne p2, p4, :cond_1

    .line 219
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid SIM slot index for subscription: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 222
    :cond_1
    iget-object p3, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mInfos:[Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;

    aget-object p4, p3, p2

    iget-boolean p5, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    iput-boolean p5, p4, Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;->visible:Z

    .line 223
    aget-object p4, p3, p2

    iget p5, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    iput p5, p4, Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;->mobileSignalIconId:I

    .line 224
    aget-object p4, p3, p2

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    iput-object p1, p4, Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;->contentDescription:Ljava/lang/String;

    .line 225
    aget-object p1, p3, p2

    invoke-interface {p7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p1, Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;->typeContentDescription:Ljava/lang/String;

    .line 226
    iget-object p1, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mInfos:[Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;

    aget-object p1, p1, p2

    iput-boolean p12, p1, Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;->roaming:Z

    .line 227
    invoke-direct {p0}, Lcom/android/systemui/qs/QSCarrierGroup;->handleUpdateState()V

    return-void
.end method

.method public setNoSims(ZZ)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    const/4 v0, 0x3

    if-ge p2, v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mInfos:[Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;

    aget-object v0, v0, p2

    iput-boolean p1, v0, Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;->visible:Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 237
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/QSCarrierGroup;->handleUpdateState()V

    return-void
.end method

.method public updateCarrierInfo(Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;)V
    .locals 9

    .line 161
    iget-object v0, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mNoSimTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    iget-boolean v0, p1, Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;->airplaneMode:Z

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-nez v0, :cond_5

    iget-boolean v0, p1, Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;->anySimReady:Z

    if-eqz v0, :cond_5

    new-array v0, v2, [Z

    .line 164
    iget-object v4, p1, Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;->listOfCarriers:[Ljava/lang/CharSequence;

    array-length v4, v4

    iget-object v5, p1, Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;->subscriptionIds:[I

    array-length v5, v5

    const-string v6, "QSCarrierGroup"

    if-ne v4, v5, :cond_4

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    .line 165
    iget-object v5, p1, Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;->listOfCarriers:[Ljava/lang/CharSequence;

    array-length v5, v5

    if-ge v4, v5, :cond_2

    .line 166
    iget-object v5, p1, Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;->subscriptionIds:[I

    aget v5, v5, v4

    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/QSCarrierGroup;->getSlotIndex(I)I

    move-result v5

    if-lt v5, v2, :cond_0

    .line 168
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateInfoCarrier - slot: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    const/4 v7, -0x1

    if-ne v5, v7, :cond_1

    .line 172
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid SIM slot index for subscription: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;->subscriptionIds:[I

    aget v7, v7, v4

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 177
    :cond_1
    iget-object v7, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mInfos:[Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;

    aget-object v7, v7, v5

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;->visible:Z

    .line 178
    aput-boolean v8, v0, v5

    .line 179
    iget-object v7, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mCarrierGroups:[Lcom/android/systemui/qs/QSCarrier;

    aget-object v7, v7, v5

    iget-object v8, p1, Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;->listOfCarriers:[Ljava/lang/CharSequence;

    aget-object v8, v8, v4

    .line 180
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 179
    invoke-virtual {v7, v8}, Lcom/android/systemui/qs/QSCarrier;->setCarrierText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v7, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mCarrierGroups:[Lcom/android/systemui/qs/QSCarrier;

    aget-object v5, v7, v5

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move p1, v3

    :goto_2
    if-ge p1, v2, :cond_7

    .line 184
    aget-boolean v4, v0, p1

    if-nez v4, :cond_3

    .line 185
    iget-object v4, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mInfos:[Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;

    aget-object v4, v4, p1

    iput-boolean v3, v4, Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;->visible:Z

    .line 186
    iget-object v4, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mCarrierGroups:[Lcom/android/systemui/qs/QSCarrier;

    aget-object v4, v4, p1

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_4
    const-string p1, "Carrier information arrays not of same length"

    .line 190
    invoke-static {v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_5
    move v0, v3

    :goto_3
    if-ge v0, v2, :cond_6

    .line 196
    iget-object v4, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mInfos:[Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;

    aget-object v4, v4, v0

    iput-boolean v3, v4, Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;->visible:Z

    .line 197
    iget-object v4, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mCarrierGroups:[Lcom/android/systemui/qs/QSCarrier;

    aget-object v4, v4, v0

    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/QSCarrier;->setCarrierText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v4, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mCarrierGroups:[Lcom/android/systemui/qs/QSCarrier;

    aget-object v4, v4, v0

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 200
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mNoSimTextView:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;->carrierText:Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object p1, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mNoSimTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    :cond_7
    :goto_4
    invoke-direct {p0}, Lcom/android/systemui/qs/QSCarrierGroup;->handleUpdateState()V

    return-void
.end method
