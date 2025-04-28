.class public final enum Lnet/time4j/tz/olson/ATLANTIC;
.super Ljava/lang/Enum;
.source "ATLANTIC.java"

# interfaces
.implements Lnet/time4j/tz/olson/StdZoneIdentifier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/time4j/tz/olson/ATLANTIC;",
        ">;",
        "Lnet/time4j/tz/olson/StdZoneIdentifier;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/time4j/tz/olson/ATLANTIC;

.field public static final enum AZORES:Lnet/time4j/tz/olson/ATLANTIC;

.field public static final enum BERMUDA:Lnet/time4j/tz/olson/ATLANTIC;

.field public static final enum CANARY:Lnet/time4j/tz/olson/ATLANTIC;

.field public static final enum CAPE_VERDE:Lnet/time4j/tz/olson/ATLANTIC;

.field public static final enum FAROE:Lnet/time4j/tz/olson/ATLANTIC;

.field public static final enum MADEIRA:Lnet/time4j/tz/olson/ATLANTIC;

.field public static final enum REYKJAVIK:Lnet/time4j/tz/olson/ATLANTIC;

.field public static final enum SOUTH_GEORGIA:Lnet/time4j/tz/olson/ATLANTIC;

.field public static final enum STANLEY:Lnet/time4j/tz/olson/ATLANTIC;

.field public static final enum ST_HELENA:Lnet/time4j/tz/olson/ATLANTIC;


# instance fields
.field private final city:Ljava/lang/String;

.field private final country:Ljava/lang/String;

.field private final id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 34
    new-instance v0, Lnet/time4j/tz/olson/ATLANTIC;

    const-string v1, "AZORES"

    const/4 v2, 0x0

    const-string v3, "Azores"

    const-string v4, "PT"

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/time4j/tz/olson/ATLANTIC;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/time4j/tz/olson/ATLANTIC;->AZORES:Lnet/time4j/tz/olson/ATLANTIC;

    .line 35
    new-instance v1, Lnet/time4j/tz/olson/ATLANTIC;

    const-string v3, "BERMUDA"

    const/4 v5, 0x1

    const-string v6, "Bermuda"

    const-string v7, "BM"

    invoke-direct {v1, v3, v5, v6, v7}, Lnet/time4j/tz/olson/ATLANTIC;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lnet/time4j/tz/olson/ATLANTIC;->BERMUDA:Lnet/time4j/tz/olson/ATLANTIC;

    .line 36
    new-instance v3, Lnet/time4j/tz/olson/ATLANTIC;

    const-string v6, "CANARY"

    const/4 v7, 0x2

    const-string v8, "Canary"

    const-string v9, "ES"

    invoke-direct {v3, v6, v7, v8, v9}, Lnet/time4j/tz/olson/ATLANTIC;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lnet/time4j/tz/olson/ATLANTIC;->CANARY:Lnet/time4j/tz/olson/ATLANTIC;

    .line 37
    new-instance v6, Lnet/time4j/tz/olson/ATLANTIC;

    const-string v8, "CAPE_VERDE"

    const/4 v9, 0x3

    const-string v10, "Cape_Verde"

    const-string v11, "CV"

    invoke-direct {v6, v8, v9, v10, v11}, Lnet/time4j/tz/olson/ATLANTIC;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lnet/time4j/tz/olson/ATLANTIC;->CAPE_VERDE:Lnet/time4j/tz/olson/ATLANTIC;

    .line 38
    new-instance v8, Lnet/time4j/tz/olson/ATLANTIC;

    const-string v10, "FAROE"

    const/4 v11, 0x4

    const-string v12, "Faroe"

    const-string v13, "FO"

    invoke-direct {v8, v10, v11, v12, v13}, Lnet/time4j/tz/olson/ATLANTIC;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v8, Lnet/time4j/tz/olson/ATLANTIC;->FAROE:Lnet/time4j/tz/olson/ATLANTIC;

    .line 39
    new-instance v10, Lnet/time4j/tz/olson/ATLANTIC;

    const-string v12, "MADEIRA"

    const/4 v13, 0x5

    const-string v14, "Madeira"

    invoke-direct {v10, v12, v13, v14, v4}, Lnet/time4j/tz/olson/ATLANTIC;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v10, Lnet/time4j/tz/olson/ATLANTIC;->MADEIRA:Lnet/time4j/tz/olson/ATLANTIC;

    .line 40
    new-instance v4, Lnet/time4j/tz/olson/ATLANTIC;

    const-string v12, "REYKJAVIK"

    const/4 v14, 0x6

    const-string v15, "Reykjavik"

    const-string v13, "IS"

    invoke-direct {v4, v12, v14, v15, v13}, Lnet/time4j/tz/olson/ATLANTIC;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lnet/time4j/tz/olson/ATLANTIC;->REYKJAVIK:Lnet/time4j/tz/olson/ATLANTIC;

    .line 41
    new-instance v12, Lnet/time4j/tz/olson/ATLANTIC;

    const-string v13, "SOUTH_GEORGIA"

    const/4 v15, 0x7

    const-string v14, "South_Georgia"

    const-string v11, "GS"

    invoke-direct {v12, v13, v15, v14, v11}, Lnet/time4j/tz/olson/ATLANTIC;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v12, Lnet/time4j/tz/olson/ATLANTIC;->SOUTH_GEORGIA:Lnet/time4j/tz/olson/ATLANTIC;

    .line 42
    new-instance v11, Lnet/time4j/tz/olson/ATLANTIC;

    const-string v13, "ST_HELENA"

    const/16 v14, 0x8

    const-string v15, "St_Helena"

    const-string v9, "SH"

    invoke-direct {v11, v13, v14, v15, v9}, Lnet/time4j/tz/olson/ATLANTIC;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v11, Lnet/time4j/tz/olson/ATLANTIC;->ST_HELENA:Lnet/time4j/tz/olson/ATLANTIC;

    .line 43
    new-instance v9, Lnet/time4j/tz/olson/ATLANTIC;

    const-string v13, "STANLEY"

    const/16 v15, 0x9

    const-string v14, "Stanley"

    const-string v7, "FK"

    invoke-direct {v9, v13, v15, v14, v7}, Lnet/time4j/tz/olson/ATLANTIC;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v9, Lnet/time4j/tz/olson/ATLANTIC;->STANLEY:Lnet/time4j/tz/olson/ATLANTIC;

    const/16 v7, 0xa

    new-array v7, v7, [Lnet/time4j/tz/olson/ATLANTIC;

    aput-object v0, v7, v2

    aput-object v1, v7, v5

    const/4 v0, 0x2

    aput-object v3, v7, v0

    const/4 v0, 0x3

    aput-object v6, v7, v0

    const/4 v0, 0x4

    aput-object v8, v7, v0

    const/4 v0, 0x5

    aput-object v10, v7, v0

    const/4 v0, 0x6

    aput-object v4, v7, v0

    const/4 v0, 0x7

    aput-object v12, v7, v0

    const/16 v0, 0x8

    aput-object v11, v7, v0

    aput-object v9, v7, v15

    .line 29
    sput-object v7, Lnet/time4j/tz/olson/ATLANTIC;->$VALUES:[Lnet/time4j/tz/olson/ATLANTIC;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 58
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Atlantic/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/tz/olson/ATLANTIC;->id:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lnet/time4j/tz/olson/ATLANTIC;->city:Ljava/lang/String;

    .line 60
    iput-object p4, p0, Lnet/time4j/tz/olson/ATLANTIC;->country:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/time4j/tz/olson/ATLANTIC;
    .locals 1

    .line 29
    const-class v0, Lnet/time4j/tz/olson/ATLANTIC;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/time4j/tz/olson/ATLANTIC;

    return-object p0
.end method

.method public static values()[Lnet/time4j/tz/olson/ATLANTIC;
    .locals 1

    .line 29
    sget-object v0, Lnet/time4j/tz/olson/ATLANTIC;->$VALUES:[Lnet/time4j/tz/olson/ATLANTIC;

    invoke-virtual {v0}, [Lnet/time4j/tz/olson/ATLANTIC;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/time4j/tz/olson/ATLANTIC;

    return-object v0
.end method


# virtual methods
.method public canonical()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lnet/time4j/tz/olson/ATLANTIC;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lnet/time4j/tz/olson/ATLANTIC;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lnet/time4j/tz/olson/ATLANTIC;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    const-string v0, "Atlantic"

    return-object v0
.end method
