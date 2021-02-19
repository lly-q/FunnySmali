.class Llineageos/preference/RemotePreferenceManager$1;
.super Landroid/content/BroadcastReceiver;
.source "RemotePreferenceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llineageos/preference/RemotePreferenceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llineageos/preference/RemotePreferenceManager;


# direct methods
.method constructor <init>(Llineageos/preference/RemotePreferenceManager;)V
    .locals 0

    .line 140
    iput-object p1, p0, Llineageos/preference/RemotePreferenceManager$1;->this$0:Llineageos/preference/RemotePreferenceManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 143
    invoke-static {}, Llineageos/preference/RemotePreferenceManager;->access$000()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Llineageos/preference/RemotePreferenceManager;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive: intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "lineageos.intent.action.REFRESH_PREFERENCE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, ":lineage:pref_key"

    .line 146
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 147
    iget-object p2, p0, Llineageos/preference/RemotePreferenceManager$1;->this$0:Llineageos/preference/RemotePreferenceManager;

    invoke-static {p2}, Llineageos/preference/RemotePreferenceManager;->access$200(Llineageos/preference/RemotePreferenceManager;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    if-eqz p1, :cond_1

    .line 148
    :try_start_0
    iget-object p2, p0, Llineageos/preference/RemotePreferenceManager$1;->this$0:Llineageos/preference/RemotePreferenceManager;

    invoke-static {p2}, Llineageos/preference/RemotePreferenceManager;->access$200(Llineageos/preference/RemotePreferenceManager;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 149
    iget-object p0, p0, Llineageos/preference/RemotePreferenceManager$1;->this$0:Llineageos/preference/RemotePreferenceManager;

    invoke-static {p0, p1}, Llineageos/preference/RemotePreferenceManager;->access$300(Llineageos/preference/RemotePreferenceManager;Ljava/lang/String;)V

    .line 151
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 152
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "lineageos.intent.action.UPDATE_PREFERENCE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 153
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getAbortBroadcast()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 154
    invoke-static {}, Llineageos/preference/RemotePreferenceManager;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Broadcast aborted, code="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getResultCode()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const/4 p1, 0x1

    .line 157
    invoke-virtual {p0, p1}, Landroid/content/BroadcastReceiver;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, ":lineage:pref_key"

    .line 158
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 159
    iget-object v0, p0, Llineageos/preference/RemotePreferenceManager$1;->this$0:Llineageos/preference/RemotePreferenceManager;

    invoke-static {v0}, Llineageos/preference/RemotePreferenceManager;->access$200(Llineageos/preference/RemotePreferenceManager;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    if-eqz p2, :cond_4

    .line 160
    :try_start_1
    iget-object v1, p0, Llineageos/preference/RemotePreferenceManager$1;->this$0:Llineageos/preference/RemotePreferenceManager;

    invoke-static {v1}, Llineageos/preference/RemotePreferenceManager;->access$200(Llineageos/preference/RemotePreferenceManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 161
    iget-object v1, p0, Llineageos/preference/RemotePreferenceManager$1;->this$0:Llineageos/preference/RemotePreferenceManager;

    invoke-static {v1}, Llineageos/preference/RemotePreferenceManager;->access$400(Llineageos/preference/RemotePreferenceManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Llineageos/preference/RemotePreferenceManager$1$1;

    invoke-direct {v2, p0, p2, p1}, Llineageos/preference/RemotePreferenceManager$1$1;-><init>(Llineageos/preference/RemotePreferenceManager$1;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 177
    :cond_4
    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_5
    :goto_0
    return-void
.end method
