.class public final enum Lcom/polidea/multiplatformbleadapter/RefreshGattMoment;
.super Ljava/lang/Enum;
.source "RefreshGattMoment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/polidea/multiplatformbleadapter/RefreshGattMoment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/polidea/multiplatformbleadapter/RefreshGattMoment;

.field public static final enum ON_CONNECTED:Lcom/polidea/multiplatformbleadapter/RefreshGattMoment;


# instance fields
.field final name:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/polidea/multiplatformbleadapter/RefreshGattMoment;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/polidea/multiplatformbleadapter/RefreshGattMoment;

    .line 4
    sget-object v1, Lcom/polidea/multiplatformbleadapter/RefreshGattMoment;->ON_CONNECTED:Lcom/polidea/multiplatformbleadapter/RefreshGattMoment;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 6
    new-instance v0, Lcom/polidea/multiplatformbleadapter/RefreshGattMoment;

    const-string v1, "ON_CONNECTED"

    const/4 v2, 0x0

    const-string v3, "OnConnected"

    invoke-direct {v0, v1, v2, v3}, Lcom/polidea/multiplatformbleadapter/RefreshGattMoment;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/polidea/multiplatformbleadapter/RefreshGattMoment;->ON_CONNECTED:Lcom/polidea/multiplatformbleadapter/RefreshGattMoment;

    .line 4
    invoke-static {}, Lcom/polidea/multiplatformbleadapter/RefreshGattMoment;->$values()[Lcom/polidea/multiplatformbleadapter/RefreshGattMoment;

    move-result-object v0

    sput-object v0, Lcom/polidea/multiplatformbleadapter/RefreshGattMoment;->$VALUES:[Lcom/polidea/multiplatformbleadapter/RefreshGattMoment;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput-object p3, p0, Lcom/polidea/multiplatformbleadapter/RefreshGattMoment;->name:Ljava/lang/String;

    return-void
.end method

.method public static getByName(Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/RefreshGattMoment;
    .locals 5

    .line 15
    invoke-static {}, Lcom/polidea/multiplatformbleadapter/RefreshGattMoment;->values()[Lcom/polidea/multiplatformbleadapter/RefreshGattMoment;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 16
    iget-object v4, v3, Lcom/polidea/multiplatformbleadapter/RefreshGattMoment;->name:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/RefreshGattMoment;
    .locals 1

    .line 4
    const-class v0, Lcom/polidea/multiplatformbleadapter/RefreshGattMoment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/polidea/multiplatformbleadapter/RefreshGattMoment;

    return-object p0
.end method

.method public static values()[Lcom/polidea/multiplatformbleadapter/RefreshGattMoment;
    .locals 1

    .line 4
    sget-object v0, Lcom/polidea/multiplatformbleadapter/RefreshGattMoment;->$VALUES:[Lcom/polidea/multiplatformbleadapter/RefreshGattMoment;

    invoke-virtual {v0}, [Lcom/polidea/multiplatformbleadapter/RefreshGattMoment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/polidea/multiplatformbleadapter/RefreshGattMoment;

    return-object v0
.end method
