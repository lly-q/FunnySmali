.class public final Lcom/android/systemui/privacy/PrivacyApplication;
.super Ljava/lang/Object;
.source "PrivacyItem.kt"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/systemui/privacy/PrivacyApplication;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPrivacyItem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PrivacyItem.kt\ncom/android/systemui/privacy/PrivacyApplication\n*L\n1#1,81:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private final applicationInfo$delegate:Lkotlin/Lazy;

.field private final applicationName$delegate:Lkotlin/Lazy;

.field private final context:Landroid/content/Context;

.field private final icon$delegate:Lkotlin/Lazy;

.field private final packageName:Ljava/lang/String;

.field private final uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/android/systemui/privacy/PrivacyApplication;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "applicationInfo"

    const-string v4, "getApplicationInfo()Landroid/content/pm/ApplicationInfo;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/android/systemui/privacy/PrivacyApplication;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "icon"

    const-string v4, "getIcon()Landroid/graphics/drawable/Drawable;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/android/systemui/privacy/PrivacyApplication;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "applicationName"

    const-string v4, "getApplicationName()Ljava/lang/String;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/privacy/PrivacyApplication;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILandroid/content/Context;)V
    .locals 1

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyApplication;->packageName:Ljava/lang/String;

    iput p2, p0, Lcom/android/systemui/privacy/PrivacyApplication;->uid:I

    iput-object p3, p0, Lcom/android/systemui/privacy/PrivacyApplication;->context:Landroid/content/Context;

    .line 53
    new-instance p1, Lcom/android/systemui/privacy/PrivacyApplication$applicationInfo$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/privacy/PrivacyApplication$applicationInfo$2;-><init>(Lcom/android/systemui/privacy/PrivacyApplication;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyApplication;->applicationInfo$delegate:Lkotlin/Lazy;

    .line 62
    new-instance p1, Lcom/android/systemui/privacy/PrivacyApplication$icon$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/privacy/PrivacyApplication$icon$2;-><init>(Lcom/android/systemui/privacy/PrivacyApplication;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyApplication;->icon$delegate:Lkotlin/Lazy;

    .line 73
    new-instance p1, Lcom/android/systemui/privacy/PrivacyApplication$applicationName$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/privacy/PrivacyApplication$applicationName$2;-><init>(Lcom/android/systemui/privacy/PrivacyApplication;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyApplication;->applicationName$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getApplicationInfo$p(Lcom/android/systemui/privacy/PrivacyApplication;)Landroid/content/pm/ApplicationInfo;
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/android/systemui/privacy/PrivacyApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0
.end method

.method private final getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyApplication;->applicationInfo$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/android/systemui/privacy/PrivacyApplication;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ApplicationInfo;

    return-object p0
.end method


# virtual methods
.method public compareTo(Lcom/android/systemui/privacy/PrivacyApplication;)I
    .locals 1

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lcom/android/systemui/privacy/PrivacyApplication;->getApplicationName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/systemui/privacy/PrivacyApplication;->getApplicationName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 46
    check-cast p1, Lcom/android/systemui/privacy/PrivacyApplication;

    invoke-virtual {p0, p1}, Lcom/android/systemui/privacy/PrivacyApplication;->compareTo(Lcom/android/systemui/privacy/PrivacyApplication;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_2

    instance-of v1, p1, Lcom/android/systemui/privacy/PrivacyApplication;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/android/systemui/privacy/PrivacyApplication;

    iget-object v1, p0, Lcom/android/systemui/privacy/PrivacyApplication;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/privacy/PrivacyApplication;->packageName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/systemui/privacy/PrivacyApplication;->uid:I

    iget v3, p1, Lcom/android/systemui/privacy/PrivacyApplication;->uid:I

    if-ne v1, v3, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyApplication;->context:Landroid/content/Context;

    iget-object p1, p1, Lcom/android/systemui/privacy/PrivacyApplication;->context:Landroid/content/Context;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    :goto_1
    return v0
.end method

.method public final getApplicationName()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyApplication;->applicationName$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/android/systemui/privacy/PrivacyApplication;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyApplication;->context:Landroid/content/Context;

    return-object p0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyApplication;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public final getUid()I
    .locals 0

    .line 46
    iget p0, p0, Lcom/android/systemui/privacy/PrivacyApplication;->uid:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyApplication;->packageName:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/android/systemui/privacy/PrivacyApplication;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyApplication;->context:Landroid/content/Context;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PrivacyApplication(packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/privacy/PrivacyApplication;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/privacy/PrivacyApplication;->uid:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
