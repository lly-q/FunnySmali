.class public Lcom/android/systemui/statusbar/phone/TickerView;
.super Landroid/widget/TextSwitcher;
.source "TickerView.java"


# instance fields
.field private mLyricTicker:Lcom/android/systemui/statusbar/phone/LyricTicker;

.field private mTicker:Lcom/android/systemui/statusbar/phone/Ticker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/TextSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 0

    .line 35
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextSwitcher;->onSizeChanged(IIII)V

    .line 36
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/TickerView;->mTicker:Lcom/android/systemui/statusbar/phone/Ticker;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/Ticker;->reflowText()V

    .line 37
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/TickerView;->mLyricTicker:Lcom/android/systemui/statusbar/phone/LyricTicker;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LyricTicker;->reflowText()V

    :cond_1
    return-void
.end method

.method public setLyricTicker(Lcom/android/systemui/statusbar/phone/LyricTicker;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/TickerView;->mLyricTicker:Lcom/android/systemui/statusbar/phone/LyricTicker;

    return-void
.end method

.method public setTicker(Lcom/android/systemui/statusbar/phone/Ticker;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/TickerView;->mTicker:Lcom/android/systemui/statusbar/phone/Ticker;

    return-void
.end method
