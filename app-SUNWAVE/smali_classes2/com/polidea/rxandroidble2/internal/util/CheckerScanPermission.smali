.class public Lcom/polidea/rxandroidble2/internal/util/CheckerScanPermission;
.super Ljava/lang/Object;
.source "CheckerScanPermission.java"


# annotations
.annotation runtime Lcom/polidea/rxandroidble2/ClientScope;
.end annotation


# instance fields
.field private final checkerPermission:Lcom/polidea/rxandroidble2/internal/util/CheckerPermission;

.field private final scanPermissions:[[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/internal/util/CheckerPermission;[[Ljava/lang/String;)V
    .locals 0
    .param p2    # [[Ljava/lang/String;
        .annotation runtime Lbleshadow/javax/inject/Named;
            value = "scan-permissions"
        .end annotation
    .end param
    .annotation runtime Lbleshadow/javax/inject/Inject;
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/util/CheckerScanPermission;->checkerPermission:Lcom/polidea/rxandroidble2/internal/util/CheckerPermission;

    .line 22
    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/util/CheckerScanPermission;->scanPermissions:[[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getRecommendedScanRuntimePermissions()[Ljava/lang/String;
    .locals 11

    .line 35
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/util/CheckerScanPermission;->scanPermissions:[[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v5, v0, v3

    .line 36
    array-length v5, v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 38
    :cond_0
    new-array v0, v4, [Ljava/lang/String;

    .line 40
    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/util/CheckerScanPermission;->scanPermissions:[[Ljava/lang/String;

    array-length v3, v1

    move v4, v2

    move v5, v4

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v6, v1, v4

    .line 41
    array-length v7, v6

    move v8, v2

    :goto_2
    if-ge v8, v7, :cond_1

    aget-object v9, v6, v8

    add-int/lit8 v10, v5, 0x1

    .line 42
    aput-object v9, v0, v5

    add-int/lit8 v8, v8, 0x1

    move v5, v10

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public isScanRuntimePermissionGranted()Z
    .locals 6

    .line 27
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/util/CheckerScanPermission;->scanPermissions:[[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 28
    iget-object v5, p0, Lcom/polidea/rxandroidble2/internal/util/CheckerScanPermission;->checkerPermission:Lcom/polidea/rxandroidble2/internal/util/CheckerPermission;

    invoke-virtual {v5, v4}, Lcom/polidea/rxandroidble2/internal/util/CheckerPermission;->isAnyPermissionGranted([Ljava/lang/String;)Z

    move-result v4

    and-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method
