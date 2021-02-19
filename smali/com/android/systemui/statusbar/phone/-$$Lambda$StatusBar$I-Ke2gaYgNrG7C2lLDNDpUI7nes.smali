.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$I-Ke2gaYgNrG7C2lLDNDpUI7nes;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$I-Ke2gaYgNrG7C2lLDNDpUI7nes;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$I-Ke2gaYgNrG7C2lLDNDpUI7nes;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$setUpQuickSettingsTilePanel$8$StatusBar(Ljava/lang/Boolean;)V

    return-void
.end method
