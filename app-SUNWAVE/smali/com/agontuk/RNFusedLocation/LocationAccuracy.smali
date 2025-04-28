.class public final enum Lcom/agontuk/RNFusedLocation/LocationAccuracy;
.super Ljava/lang/Enum;
.source "LocationAccuracy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/agontuk/RNFusedLocation/LocationAccuracy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/agontuk/RNFusedLocation/LocationAccuracy;

.field public static final enum balanced:Lcom/agontuk/RNFusedLocation/LocationAccuracy;

.field public static final enum high:Lcom/agontuk/RNFusedLocation/LocationAccuracy;

.field public static final enum low:Lcom/agontuk/RNFusedLocation/LocationAccuracy;

.field public static final enum passive:Lcom/agontuk/RNFusedLocation/LocationAccuracy;


# direct methods
.method private static synthetic $values()[Lcom/agontuk/RNFusedLocation/LocationAccuracy;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/agontuk/RNFusedLocation/LocationAccuracy;

    .line 3
    sget-object v1, Lcom/agontuk/RNFusedLocation/LocationAccuracy;->high:Lcom/agontuk/RNFusedLocation/LocationAccuracy;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/agontuk/RNFusedLocation/LocationAccuracy;->balanced:Lcom/agontuk/RNFusedLocation/LocationAccuracy;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/agontuk/RNFusedLocation/LocationAccuracy;->low:Lcom/agontuk/RNFusedLocation/LocationAccuracy;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/agontuk/RNFusedLocation/LocationAccuracy;->passive:Lcom/agontuk/RNFusedLocation/LocationAccuracy;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/agontuk/RNFusedLocation/LocationAccuracy;

    const-string v1, "high"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/agontuk/RNFusedLocation/LocationAccuracy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/agontuk/RNFusedLocation/LocationAccuracy;->high:Lcom/agontuk/RNFusedLocation/LocationAccuracy;

    .line 5
    new-instance v0, Lcom/agontuk/RNFusedLocation/LocationAccuracy;

    const-string v1, "balanced"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/agontuk/RNFusedLocation/LocationAccuracy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/agontuk/RNFusedLocation/LocationAccuracy;->balanced:Lcom/agontuk/RNFusedLocation/LocationAccuracy;

    .line 6
    new-instance v0, Lcom/agontuk/RNFusedLocation/LocationAccuracy;

    const-string v1, "low"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/agontuk/RNFusedLocation/LocationAccuracy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/agontuk/RNFusedLocation/LocationAccuracy;->low:Lcom/agontuk/RNFusedLocation/LocationAccuracy;

    .line 7
    new-instance v0, Lcom/agontuk/RNFusedLocation/LocationAccuracy;

    const-string v1, "passive"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/agontuk/RNFusedLocation/LocationAccuracy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/agontuk/RNFusedLocation/LocationAccuracy;->passive:Lcom/agontuk/RNFusedLocation/LocationAccuracy;

    .line 3
    invoke-static {}, Lcom/agontuk/RNFusedLocation/LocationAccuracy;->$values()[Lcom/agontuk/RNFusedLocation/LocationAccuracy;

    move-result-object v0

    sput-object v0, Lcom/agontuk/RNFusedLocation/LocationAccuracy;->$VALUES:[Lcom/agontuk/RNFusedLocation/LocationAccuracy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/agontuk/RNFusedLocation/LocationAccuracy;
    .locals 1

    .line 3
    const-class v0, Lcom/agontuk/RNFusedLocation/LocationAccuracy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/agontuk/RNFusedLocation/LocationAccuracy;

    return-object p0
.end method

.method public static values()[Lcom/agontuk/RNFusedLocation/LocationAccuracy;
    .locals 1

    .line 3
    sget-object v0, Lcom/agontuk/RNFusedLocation/LocationAccuracy;->$VALUES:[Lcom/agontuk/RNFusedLocation/LocationAccuracy;

    invoke-virtual {v0}, [Lcom/agontuk/RNFusedLocation/LocationAccuracy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/agontuk/RNFusedLocation/LocationAccuracy;

    return-object v0
.end method
