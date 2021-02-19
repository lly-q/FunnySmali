.class final Lcom/android/systemui/qs/tiles/VpnTile$UsernameAndPasswordWatcher;
.super Ljava/lang/Object;
.source "VpnTile.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/VpnTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UsernameAndPasswordWatcher"
.end annotation


# instance fields
.field private final mOkButton:Landroid/widget/Button;

.field private final mPasswordEditor:Landroid/widget/EditText;

.field private final mUserNameEditor:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Button;)V
    .locals 0

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/VpnTile$UsernameAndPasswordWatcher;->mUserNameEditor:Landroid/widget/EditText;

    .line 242
    iput-object p2, p0, Lcom/android/systemui/qs/tiles/VpnTile$UsernameAndPasswordWatcher;->mPasswordEditor:Landroid/widget/EditText;

    .line 243
    iput-object p3, p0, Lcom/android/systemui/qs/tiles/VpnTile$UsernameAndPasswordWatcher;->mOkButton:Landroid/widget/Button;

    .line 244
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/VpnTile$UsernameAndPasswordWatcher;->updateOkButtonState()V

    return-void
.end method

.method private updateOkButtonState()V
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VpnTile$UsernameAndPasswordWatcher;->mOkButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VpnTile$UsernameAndPasswordWatcher;->mUserNameEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/VpnTile$UsernameAndPasswordWatcher;->mPasswordEditor:Landroid/widget/EditText;

    .line 262
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 261
    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 257
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/VpnTile$UsernameAndPasswordWatcher;->updateOkButtonState()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
