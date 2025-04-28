.class public Lcom/polidea/multiplatformbleadapter/utils/IdGenerator;
.super Ljava/lang/Object;
.source "IdGenerator.java"


# static fields
.field private static idMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/polidea/multiplatformbleadapter/utils/IdGeneratorKey;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static nextKey:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/polidea/multiplatformbleadapter/utils/IdGenerator;->idMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 7
    sput v0, Lcom/polidea/multiplatformbleadapter/utils/IdGenerator;->nextKey:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear()V
    .locals 1

    .line 19
    sget-object v0, Lcom/polidea/multiplatformbleadapter/utils/IdGenerator;->idMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    .line 20
    sput v0, Lcom/polidea/multiplatformbleadapter/utils/IdGenerator;->nextKey:I

    return-void
.end method

.method public static getIdForKey(Lcom/polidea/multiplatformbleadapter/utils/IdGeneratorKey;)I
    .locals 2

    .line 10
    sget-object v0, Lcom/polidea/multiplatformbleadapter/utils/IdGenerator;->idMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 14
    :cond_0
    sget-object v0, Lcom/polidea/multiplatformbleadapter/utils/IdGenerator;->idMap:Ljava/util/HashMap;

    sget v1, Lcom/polidea/multiplatformbleadapter/utils/IdGenerator;->nextKey:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/polidea/multiplatformbleadapter/utils/IdGenerator;->nextKey:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget p0, Lcom/polidea/multiplatformbleadapter/utils/IdGenerator;->nextKey:I

    return p0
.end method
