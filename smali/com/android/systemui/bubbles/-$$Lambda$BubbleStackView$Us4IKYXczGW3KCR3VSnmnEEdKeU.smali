.class public final synthetic Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$Us4IKYXczGW3KCR3VSnmnEEdKeU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/bubbles/BubbleStackView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/bubbles/BubbleStackView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$Us4IKYXczGW3KCR3VSnmnEEdKeU;->f$0:Lcom/android/systemui/bubbles/BubbleStackView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$Us4IKYXczGW3KCR3VSnmnEEdKeU;->f$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->lambda$animateInFlyoutForBubble$17$BubbleStackView()V

    return-void
.end method
