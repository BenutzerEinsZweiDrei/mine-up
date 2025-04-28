.class public final enum Lcom/polidea/multiplatformbleadapter/ConnectionState;
.super Ljava/lang/Enum;
.source "ConnectionState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/polidea/multiplatformbleadapter/ConnectionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/polidea/multiplatformbleadapter/ConnectionState;

.field public static final enum CONNECTED:Lcom/polidea/multiplatformbleadapter/ConnectionState;

.field public static final enum CONNECTING:Lcom/polidea/multiplatformbleadapter/ConnectionState;

.field public static final enum DISCONNECTED:Lcom/polidea/multiplatformbleadapter/ConnectionState;

.field public static final enum DISCONNECTING:Lcom/polidea/multiplatformbleadapter/ConnectionState;


# instance fields
.field public final value:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/polidea/multiplatformbleadapter/ConnectionState;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/polidea/multiplatformbleadapter/ConnectionState;

    .line 3
    sget-object v1, Lcom/polidea/multiplatformbleadapter/ConnectionState;->CONNECTING:Lcom/polidea/multiplatformbleadapter/ConnectionState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/polidea/multiplatformbleadapter/ConnectionState;->CONNECTED:Lcom/polidea/multiplatformbleadapter/ConnectionState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/polidea/multiplatformbleadapter/ConnectionState;->DISCONNECTING:Lcom/polidea/multiplatformbleadapter/ConnectionState;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/polidea/multiplatformbleadapter/ConnectionState;->DISCONNECTED:Lcom/polidea/multiplatformbleadapter/ConnectionState;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 5
    new-instance v0, Lcom/polidea/multiplatformbleadapter/ConnectionState;

    const-string v1, "CONNECTING"

    const/4 v2, 0x0

    const-string v3, "connecting"

    invoke-direct {v0, v1, v2, v3}, Lcom/polidea/multiplatformbleadapter/ConnectionState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/polidea/multiplatformbleadapter/ConnectionState;->CONNECTING:Lcom/polidea/multiplatformbleadapter/ConnectionState;

    new-instance v0, Lcom/polidea/multiplatformbleadapter/ConnectionState;

    const-string v1, "CONNECTED"

    const/4 v2, 0x1

    const-string v3, "connected"

    invoke-direct {v0, v1, v2, v3}, Lcom/polidea/multiplatformbleadapter/ConnectionState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/polidea/multiplatformbleadapter/ConnectionState;->CONNECTED:Lcom/polidea/multiplatformbleadapter/ConnectionState;

    new-instance v0, Lcom/polidea/multiplatformbleadapter/ConnectionState;

    const-string v1, "DISCONNECTING"

    const/4 v2, 0x2

    const-string v3, "disconnecting"

    invoke-direct {v0, v1, v2, v3}, Lcom/polidea/multiplatformbleadapter/ConnectionState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/polidea/multiplatformbleadapter/ConnectionState;->DISCONNECTING:Lcom/polidea/multiplatformbleadapter/ConnectionState;

    new-instance v0, Lcom/polidea/multiplatformbleadapter/ConnectionState;

    const-string v1, "DISCONNECTED"

    const/4 v2, 0x3

    const-string v3, "disconnected"

    invoke-direct {v0, v1, v2, v3}, Lcom/polidea/multiplatformbleadapter/ConnectionState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/polidea/multiplatformbleadapter/ConnectionState;->DISCONNECTED:Lcom/polidea/multiplatformbleadapter/ConnectionState;

    .line 3
    invoke-static {}, Lcom/polidea/multiplatformbleadapter/ConnectionState;->$values()[Lcom/polidea/multiplatformbleadapter/ConnectionState;

    move-result-object v0

    sput-object v0, Lcom/polidea/multiplatformbleadapter/ConnectionState;->$VALUES:[Lcom/polidea/multiplatformbleadapter/ConnectionState;

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

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 10
    iput-object p3, p0, Lcom/polidea/multiplatformbleadapter/ConnectionState;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/ConnectionState;
    .locals 1

    .line 3
    const-class v0, Lcom/polidea/multiplatformbleadapter/ConnectionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/polidea/multiplatformbleadapter/ConnectionState;

    return-object p0
.end method

.method public static values()[Lcom/polidea/multiplatformbleadapter/ConnectionState;
    .locals 1

    .line 3
    sget-object v0, Lcom/polidea/multiplatformbleadapter/ConnectionState;->$VALUES:[Lcom/polidea/multiplatformbleadapter/ConnectionState;

    invoke-virtual {v0}, [Lcom/polidea/multiplatformbleadapter/ConnectionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/polidea/multiplatformbleadapter/ConnectionState;

    return-object v0
.end method
