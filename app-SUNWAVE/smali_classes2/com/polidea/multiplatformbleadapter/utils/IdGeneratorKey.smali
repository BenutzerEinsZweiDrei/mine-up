.class public Lcom/polidea/multiplatformbleadapter/utils/IdGeneratorKey;
.super Ljava/lang/Object;
.source "IdGeneratorKey.java"


# instance fields
.field private final deviceAddress:Ljava/lang/String;

.field private final id:I

.field private final uuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/UUID;I)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/polidea/multiplatformbleadapter/utils/IdGeneratorKey;->deviceAddress:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/polidea/multiplatformbleadapter/utils/IdGeneratorKey;->uuid:Ljava/util/UUID;

    .line 15
    iput p3, p0, Lcom/polidea/multiplatformbleadapter/utils/IdGeneratorKey;->id:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 23
    :cond_1
    check-cast p1, Lcom/polidea/multiplatformbleadapter/utils/IdGeneratorKey;

    .line 25
    iget v1, p0, Lcom/polidea/multiplatformbleadapter/utils/IdGeneratorKey;->id:I

    iget v2, p1, Lcom/polidea/multiplatformbleadapter/utils/IdGeneratorKey;->id:I

    if-eq v1, v2, :cond_2

    return v0

    .line 26
    :cond_2
    iget-object v1, p0, Lcom/polidea/multiplatformbleadapter/utils/IdGeneratorKey;->deviceAddress:Ljava/lang/String;

    iget-object v2, p1, Lcom/polidea/multiplatformbleadapter/utils/IdGeneratorKey;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 27
    :cond_3
    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/utils/IdGeneratorKey;->uuid:Ljava/util/UUID;

    iget-object p1, p1, Lcom/polidea/multiplatformbleadapter/utils/IdGeneratorKey;->uuid:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/utils/IdGeneratorKey;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 33
    iget-object v1, p0, Lcom/polidea/multiplatformbleadapter/utils/IdGeneratorKey;->uuid:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 34
    iget v1, p0, Lcom/polidea/multiplatformbleadapter/utils/IdGeneratorKey;->id:I

    add-int/2addr v0, v1

    return v0
.end method
