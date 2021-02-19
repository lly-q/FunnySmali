.class final Lcom/android/systemui/statusbar/phone/Ticker$Segment;
.super Ljava/lang/Object;
.source "Ticker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/Ticker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Segment"
.end annotation


# instance fields
.field current:I

.field first:Z

.field icon:Landroid/graphics/drawable/Drawable;

.field next:I

.field notification:Landroid/service/notification/StatusBarNotification;

.field text:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/Ticker;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/Ticker;Landroid/service/notification/StatusBarNotification;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->this$0:Lcom/android/systemui/statusbar/phone/Ticker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->notification:Landroid/service/notification/StatusBarNotification;

    .line 169
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->icon:Landroid/graphics/drawable/Drawable;

    .line 170
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->text:Ljava/lang/CharSequence;

    .line 172
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    .line 173
    invoke-interface {p4, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p3

    invoke-static {p3}, Lcom/android/systemui/statusbar/phone/Ticker;->isGraphicOrEmoji(C)Z

    move-result p3

    if-nez p3, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 176
    :cond_0
    iput p2, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->current:I

    .line 177
    iput p2, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->next:I

    const/4 p1, 0x1

    .line 178
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->first:Z

    return-void
.end method


# virtual methods
.method advance()Ljava/lang/CharSequence;
    .locals 10

    const/4 v0, 0x0

    .line 132
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->first:Z

    .line 133
    iget v1, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->next:I

    .line 134
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->text:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_0

    .line 135
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->text:Ljava/lang/CharSequence;

    invoke-interface {v3, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/Ticker;->isGraphicOrEmoji(C)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    if-lt v1, v2, :cond_1

    return-object v3

    .line 142
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->text:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-interface {v4, v1, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 143
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->getLayout(Ljava/lang/CharSequence;)Landroid/text/StaticLayout;

    move-result-object v5

    if-nez v5, :cond_2

    return-object v3

    .line 147
    :cond_2
    invoke-virtual {v5}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v6

    :goto_1
    if-ge v0, v6, :cond_5

    .line 150
    invoke-virtual {v5, v0}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v7

    .line 151
    invoke-virtual {v5, v0}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v8

    add-int/lit8 v9, v6, -0x1

    if-ne v0, v9, :cond_3

    .line 153
    iput v2, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->next:I

    goto :goto_2

    :cond_3
    add-int/lit8 v9, v0, 0x1

    .line 155
    invoke-virtual {v5, v9}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v9

    add-int/2addr v9, v1

    iput v9, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->next:I

    .line 157
    :goto_2
    invoke-virtual {p0, v4, v7, v8}, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->rtrim(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v8

    if-eqz v8, :cond_4

    add-int/2addr v1, v7

    .line 159
    iput v1, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->current:I

    return-object v8

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 163
    :cond_5
    iput v2, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->current:I

    return-object v3
.end method

.method getLayout(Ljava/lang/CharSequence;)Landroid/text/StaticLayout;
    .locals 10

    .line 90
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->this$0:Lcom/android/systemui/statusbar/phone/Ticker;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/Ticker;->access$000(Lcom/android/systemui/statusbar/phone/Ticker;)Landroid/widget/TextSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextSwitcher;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->this$0:Lcom/android/systemui/statusbar/phone/Ticker;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/Ticker;->access$000(Lcom/android/systemui/statusbar/phone/Ticker;)Landroid/widget/TextSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextSwitcher;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->this$0:Lcom/android/systemui/statusbar/phone/Ticker;

    .line 91
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/Ticker;->access$000(Lcom/android/systemui/statusbar/phone/Ticker;)Landroid/widget/TextSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextSwitcher;->getPaddingRight()I

    move-result v1

    sub-int v5, v0, v1

    if-lez v5, :cond_0

    .line 93
    new-instance v0, Landroid/text/StaticLayout;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->this$0:Lcom/android/systemui/statusbar/phone/Ticker;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/Ticker;->access$100(Lcom/android/systemui/statusbar/phone/Ticker;)Landroid/text/TextPaint;

    move-result-object v4

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v2, v0

    move-object v3, p1

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method getText()Ljava/lang/CharSequence;
    .locals 4

    .line 110
    iget v0, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->current:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->text:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return-object v2

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->text:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->current:I

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-interface {v0, v1, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 114
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->getLayout(Ljava/lang/CharSequence;)Landroid/text/StaticLayout;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v2

    .line 118
    :cond_1
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v2, 0x0

    .line 120
    invoke-virtual {v1, v2}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v3

    .line 121
    invoke-virtual {v1, v2}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v1

    .line 122
    iget v2, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->current:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->next:I

    .line 123
    invoke-virtual {p0, v0, v3, v1}, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->rtrim(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 125
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lineCount="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " current="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->current:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " text="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->text:Ljava/lang/CharSequence;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method rtrim(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;
    .locals 0

    :goto_0
    if-le p3, p2, :cond_0

    add-int/lit8 p0, p3, -0x1

    .line 99
    invoke-interface {p1, p0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/Ticker;->isGraphicOrEmoji(C)Z

    move-result p0

    if-nez p0, :cond_0

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_0
    if-le p3, p2, :cond_1

    .line 103
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
