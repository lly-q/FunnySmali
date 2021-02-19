.class public interface abstract Llineageos/preference/RemotePreferenceManager$OnRemoteUpdateListener;
.super Ljava/lang/Object;
.source "RemotePreferenceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llineageos/preference/RemotePreferenceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnRemoteUpdateListener"
.end annotation


# virtual methods
.method public abstract getReceiverIntent()Landroid/content/Intent;
.end method

.method public abstract onRemoteUpdated(Landroid/os/Bundle;)V
.end method
