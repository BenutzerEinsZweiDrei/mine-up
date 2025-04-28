.class public final enum Lnet/time4j/tz/olson/ANTARCTICA;
.super Ljava/lang/Enum;
.source "ANTARCTICA.java"

# interfaces
.implements Lnet/time4j/tz/olson/StdZoneIdentifier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/time4j/tz/olson/ANTARCTICA;",
        ">;",
        "Lnet/time4j/tz/olson/StdZoneIdentifier;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/time4j/tz/olson/ANTARCTICA;

.field public static final enum CASEY:Lnet/time4j/tz/olson/ANTARCTICA;

.field public static final enum DAVIS:Lnet/time4j/tz/olson/ANTARCTICA;

.field public static final enum DUMONTDURVILLE:Lnet/time4j/tz/olson/ANTARCTICA;

.field public static final enum MACQUARIE:Lnet/time4j/tz/olson/ANTARCTICA;

.field public static final enum MAWSON:Lnet/time4j/tz/olson/ANTARCTICA;

.field public static final enum MCMURDO:Lnet/time4j/tz/olson/ANTARCTICA;

.field public static final enum PALMER:Lnet/time4j/tz/olson/ANTARCTICA;

.field public static final enum ROTHERA:Lnet/time4j/tz/olson/ANTARCTICA;

.field public static final enum SYOWA:Lnet/time4j/tz/olson/ANTARCTICA;

.field public static final enum VOSTOK:Lnet/time4j/tz/olson/ANTARCTICA;


# instance fields
.field private final city:Ljava/lang/String;

.field private final country:Ljava/lang/String;

.field private final id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 34
    new-instance v0, Lnet/time4j/tz/olson/ANTARCTICA;

    const-string v1, "CASEY"

    const/4 v2, 0x0

    const-string v3, "Casey"

    const-string v4, "AQ"

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/time4j/tz/olson/ANTARCTICA;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/time4j/tz/olson/ANTARCTICA;->CASEY:Lnet/time4j/tz/olson/ANTARCTICA;

    .line 35
    new-instance v1, Lnet/time4j/tz/olson/ANTARCTICA;

    const-string v3, "DAVIS"

    const/4 v5, 0x1

    const-string v6, "Davis"

    invoke-direct {v1, v3, v5, v6, v4}, Lnet/time4j/tz/olson/ANTARCTICA;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lnet/time4j/tz/olson/ANTARCTICA;->DAVIS:Lnet/time4j/tz/olson/ANTARCTICA;

    .line 36
    new-instance v3, Lnet/time4j/tz/olson/ANTARCTICA;

    const-string v6, "DUMONTDURVILLE"

    const/4 v7, 0x2

    const-string v8, "DumontDUrville"

    invoke-direct {v3, v6, v7, v8, v4}, Lnet/time4j/tz/olson/ANTARCTICA;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lnet/time4j/tz/olson/ANTARCTICA;->DUMONTDURVILLE:Lnet/time4j/tz/olson/ANTARCTICA;

    .line 37
    new-instance v6, Lnet/time4j/tz/olson/ANTARCTICA;

    const-string v8, "MACQUARIE"

    const/4 v9, 0x3

    const-string v10, "Macquarie"

    const-string v11, "AU"

    invoke-direct {v6, v8, v9, v10, v11}, Lnet/time4j/tz/olson/ANTARCTICA;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lnet/time4j/tz/olson/ANTARCTICA;->MACQUARIE:Lnet/time4j/tz/olson/ANTARCTICA;

    .line 38
    new-instance v8, Lnet/time4j/tz/olson/ANTARCTICA;

    const-string v10, "MAWSON"

    const/4 v11, 0x4

    const-string v12, "Mawson"

    invoke-direct {v8, v10, v11, v12, v4}, Lnet/time4j/tz/olson/ANTARCTICA;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v8, Lnet/time4j/tz/olson/ANTARCTICA;->MAWSON:Lnet/time4j/tz/olson/ANTARCTICA;

    .line 39
    new-instance v10, Lnet/time4j/tz/olson/ANTARCTICA;

    const-string v12, "MCMURDO"

    const/4 v13, 0x5

    const-string v14, "McMurdo"

    invoke-direct {v10, v12, v13, v14, v4}, Lnet/time4j/tz/olson/ANTARCTICA;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v10, Lnet/time4j/tz/olson/ANTARCTICA;->MCMURDO:Lnet/time4j/tz/olson/ANTARCTICA;

    .line 40
    new-instance v12, Lnet/time4j/tz/olson/ANTARCTICA;

    const-string v14, "PALMER"

    const/4 v15, 0x6

    const-string v13, "Palmer"

    invoke-direct {v12, v14, v15, v13, v4}, Lnet/time4j/tz/olson/ANTARCTICA;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v12, Lnet/time4j/tz/olson/ANTARCTICA;->PALMER:Lnet/time4j/tz/olson/ANTARCTICA;

    .line 41
    new-instance v13, Lnet/time4j/tz/olson/ANTARCTICA;

    const-string v14, "ROTHERA"

    const/4 v15, 0x7

    const-string v11, "Rothera"

    invoke-direct {v13, v14, v15, v11, v4}, Lnet/time4j/tz/olson/ANTARCTICA;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v13, Lnet/time4j/tz/olson/ANTARCTICA;->ROTHERA:Lnet/time4j/tz/olson/ANTARCTICA;

    .line 42
    new-instance v11, Lnet/time4j/tz/olson/ANTARCTICA;

    const-string v14, "SYOWA"

    const/16 v15, 0x8

    const-string v9, "Syowa"

    invoke-direct {v11, v14, v15, v9, v4}, Lnet/time4j/tz/olson/ANTARCTICA;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v11, Lnet/time4j/tz/olson/ANTARCTICA;->SYOWA:Lnet/time4j/tz/olson/ANTARCTICA;

    .line 43
    new-instance v9, Lnet/time4j/tz/olson/ANTARCTICA;

    const-string v14, "VOSTOK"

    const/16 v15, 0x9

    const-string v7, "Vostok"

    invoke-direct {v9, v14, v15, v7, v4}, Lnet/time4j/tz/olson/ANTARCTICA;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v9, Lnet/time4j/tz/olson/ANTARCTICA;->VOSTOK:Lnet/time4j/tz/olson/ANTARCTICA;

    const/16 v4, 0xa

    new-array v4, v4, [Lnet/time4j/tz/olson/ANTARCTICA;

    aput-object v0, v4, v2

    aput-object v1, v4, v5

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v6, v4, v0

    const/4 v0, 0x4

    aput-object v8, v4, v0

    const/4 v0, 0x5

    aput-object v10, v4, v0

    const/4 v0, 0x6

    aput-object v12, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v11, v4, v0

    aput-object v9, v4, v15

    .line 29
    sput-object v4, Lnet/time4j/tz/olson/ANTARCTICA;->$VALUES:[Lnet/time4j/tz/olson/ANTARCTICA;

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

    const-string p2, "Antarctica/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/tz/olson/ANTARCTICA;->id:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lnet/time4j/tz/olson/ANTARCTICA;->city:Ljava/lang/String;

    .line 60
    iput-object p4, p0, Lnet/time4j/tz/olson/ANTARCTICA;->country:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/time4j/tz/olson/ANTARCTICA;
    .locals 1

    .line 29
    const-class v0, Lnet/time4j/tz/olson/ANTARCTICA;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/time4j/tz/olson/ANTARCTICA;

    return-object p0
.end method

.method public static values()[Lnet/time4j/tz/olson/ANTARCTICA;
    .locals 1

    .line 29
    sget-object v0, Lnet/time4j/tz/olson/ANTARCTICA;->$VALUES:[Lnet/time4j/tz/olson/ANTARCTICA;

    invoke-virtual {v0}, [Lnet/time4j/tz/olson/ANTARCTICA;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/time4j/tz/olson/ANTARCTICA;

    return-object v0
.end method


# virtual methods
.method public canonical()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lnet/time4j/tz/olson/ANTARCTICA;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lnet/time4j/tz/olson/ANTARCTICA;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lnet/time4j/tz/olson/ANTARCTICA;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    const-string v0, "Antarctica"

    return-object v0
.end method
