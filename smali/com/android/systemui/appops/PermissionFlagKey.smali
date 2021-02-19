.class final Lcom/android/systemui/appops/PermissionFlagKey;
.super Ljava/lang/Object;
.source "PermissionFlagsCache.kt"


# instance fields
.field private final packageName:Ljava/lang/String;

.field private final permission:Ljava/lang/String;

.field private final user:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1

    const-string v0, "permission"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "user"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/appops/PermissionFlagKey;->permission:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/appops/PermissionFlagKey;->packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/appops/PermissionFlagKey;->user:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/android/systemui/appops/PermissionFlagKey;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/appops/PermissionFlagKey;

    iget-object v0, p0, Lcom/android/systemui/appops/PermissionFlagKey;->permission:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/systemui/appops/PermissionFlagKey;->permission:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/appops/PermissionFlagKey;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/systemui/appops/PermissionFlagKey;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/appops/PermissionFlagKey;->user:Landroid/os/UserHandle;

    iget-object p1, p1, Lcom/android/systemui/appops/PermissionFlagKey;->user:Landroid/os/UserHandle;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/android/systemui/appops/PermissionFlagKey;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public final getPermission()Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/android/systemui/appops/PermissionFlagKey;->permission:Ljava/lang/String;

    return-object p0
.end method

.method public final getUser()Landroid/os/UserHandle;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/android/systemui/appops/PermissionFlagKey;->user:Landroid/os/UserHandle;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/appops/PermissionFlagKey;->permission:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/android/systemui/appops/PermissionFlagKey;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/android/systemui/appops/PermissionFlagKey;->user:Landroid/os/UserHandle;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/os/UserHandle;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PermissionFlagKey(permission="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/appops/PermissionFlagKey;->permission:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/appops/PermissionFlagKey;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/appops/PermissionFlagKey;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
