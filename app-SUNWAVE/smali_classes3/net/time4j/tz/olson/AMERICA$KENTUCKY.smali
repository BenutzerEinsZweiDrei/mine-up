.class public final enum Lnet/time4j/tz/olson/AMERICA$KENTUCKY;
.super Ljava/lang/Enum;
.source "AMERICA.java"

# interfaces
.implements Lnet/time4j/tz/olson/StdZoneIdentifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/tz/olson/AMERICA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KENTUCKY"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/time4j/tz/olson/AMERICA$KENTUCKY;",
        ">;",
        "Lnet/time4j/tz/olson/StdZoneIdentifier;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/time4j/tz/olson/AMERICA$KENTUCKY;

.field public static final enum LOUISVILLE:Lnet/time4j/tz/olson/AMERICA$KENTUCKY;

.field public static final enum MONTICELLO:Lnet/time4j/tz/olson/AMERICA$KENTUCKY;


# instance fields
.field private final city:Ljava/lang/String;

.field private final id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 355
    new-instance v0, Lnet/time4j/tz/olson/AMERICA$KENTUCKY;

    const-string v1, "LOUISVILLE"

    const/4 v2, 0x0

    const-string v3, "Louisville"

    invoke-direct {v0, v1, v2, v3}, Lnet/time4j/tz/olson/AMERICA$KENTUCKY;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/time4j/tz/olson/AMERICA$KENTUCKY;->LOUISVILLE:Lnet/time4j/tz/olson/AMERICA$KENTUCKY;

    .line 356
    new-instance v1, Lnet/time4j/tz/olson/AMERICA$KENTUCKY;

    const-string v3, "MONTICELLO"

    const/4 v4, 0x1

    const-string v5, "Monticello"

    invoke-direct {v1, v3, v4, v5}, Lnet/time4j/tz/olson/AMERICA$KENTUCKY;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lnet/time4j/tz/olson/AMERICA$KENTUCKY;->MONTICELLO:Lnet/time4j/tz/olson/AMERICA$KENTUCKY;

    const/4 v3, 0x2

    new-array v3, v3, [Lnet/time4j/tz/olson/AMERICA$KENTUCKY;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 350
    sput-object v3, Lnet/time4j/tz/olson/AMERICA$KENTUCKY;->$VALUES:[Lnet/time4j/tz/olson/AMERICA$KENTUCKY;

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

    .line 365
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 367
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "America/Kentucky/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/tz/olson/AMERICA$KENTUCKY;->id:Ljava/lang/String;

    .line 368
    iput-object p3, p0, Lnet/time4j/tz/olson/AMERICA$KENTUCKY;->city:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/time4j/tz/olson/AMERICA$KENTUCKY;
    .locals 1

    .line 350
    const-class v0, Lnet/time4j/tz/olson/AMERICA$KENTUCKY;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/time4j/tz/olson/AMERICA$KENTUCKY;

    return-object p0
.end method

.method public static values()[Lnet/time4j/tz/olson/AMERICA$KENTUCKY;
    .locals 1

    .line 350
    sget-object v0, Lnet/time4j/tz/olson/AMERICA$KENTUCKY;->$VALUES:[Lnet/time4j/tz/olson/AMERICA$KENTUCKY;

    invoke-virtual {v0}, [Lnet/time4j/tz/olson/AMERICA$KENTUCKY;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/time4j/tz/olson/AMERICA$KENTUCKY;

    return-object v0
.end method


# virtual methods
.method public canonical()Ljava/lang/String;
    .locals 1

    .line 377
    iget-object v0, p0, Lnet/time4j/tz/olson/AMERICA$KENTUCKY;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .line 391
    iget-object v0, p0, Lnet/time4j/tz/olson/AMERICA$KENTUCKY;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    const-string v0, "US"

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    const-string v0, "America/Kentucky"

    return-object v0
.end method
