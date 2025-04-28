.class public abstract enum Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;
.super Ljava/lang/Enum;
.source "FrenchRepublicanAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;

.field private static final ABOLITION:J

.field private static final ATTRIBUTE:Lnet/time4j/engine/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/AttributeKey<",
            "Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;",
            ">;"
        }
    .end annotation
.end field

.field private static final EPOCH:J

.field public static final enum EQUINOX:Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;

.field private static final PARIS_OBSERVATORY:Lnet/time4j/tz/ZonalOffset;

.field public static final enum ROMME:Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 58
    new-instance v0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm$1;

    const-string v1, "EQUINOX"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;->EQUINOX:Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;

    .line 124
    new-instance v1, Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm$2;

    const-string v3, "ROMME"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;->ROMME:Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;

    const/4 v3, 0x2

    new-array v5, v3, [Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    .line 47
    sput-object v5, Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;->$VALUES:[Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;

    .line 170
    sget-object v0, Lnet/time4j/tz/OffsetSign;->AHEAD_OF_UTC:Lnet/time4j/tz/OffsetSign;

    const/16 v1, 0x14

    const-wide v5, 0x402c0ccccccccccdL    # 14.025

    .line 171
    invoke-static {v0, v3, v1, v5, v6}, Lnet/time4j/tz/ZonalOffset;->atLongitude(Lnet/time4j/tz/OffsetSign;IID)Lnet/time4j/tz/ZonalOffset;

    move-result-object v0

    sput-object v0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;->PARIS_OBSERVATORY:Lnet/time4j/tz/ZonalOffset;

    const/16 v0, 0x70e

    .line 173
    invoke-static {v0, v4, v4}, Lnet/time4j/PlainDate;->of(III)Lnet/time4j/PlainDate;

    move-result-object v0

    sget-object v1, Lnet/time4j/engine/EpochDays;->UTC:Lnet/time4j/engine/EpochDays;

    invoke-virtual {v0, v1}, Lnet/time4j/PlainDate;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;->ABOLITION:J

    const/16 v0, 0x700

    const/16 v1, 0x9

    const/16 v2, 0x16

    .line 174
    invoke-static {v0, v1, v2}, Lnet/time4j/PlainDate;->of(III)Lnet/time4j/PlainDate;

    move-result-object v0

    sget-object v1, Lnet/time4j/engine/EpochDays;->UTC:Lnet/time4j/engine/EpochDays;

    invoke-virtual {v0, v1}, Lnet/time4j/PlainDate;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;->EPOCH:J

    .line 176
    const-class v0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;

    const-string v1, "FRENCH_REPUBLICAN_ALGORITHM"

    .line 177
    invoke-static {v1, v0}, Lnet/time4j/format/Attributes;->createKey(Ljava/lang/String;Ljava/lang/Class;)Lnet/time4j/engine/AttributeKey;

    move-result-object v0

    sput-object v0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;->ATTRIBUTE:Lnet/time4j/engine/AttributeKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm$1;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100(J)V
    .locals 0

    .line 47
    invoke-static {p0, p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;->check(J)V

    return-void
.end method

.method static synthetic access$200()Lnet/time4j/tz/ZonalOffset;
    .locals 1

    .line 47
    sget-object v0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;->PARIS_OBSERVATORY:Lnet/time4j/tz/ZonalOffset;

    return-object v0
.end method

.method static synthetic access$300()J
    .locals 2

    .line 47
    sget-wide v0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;->ABOLITION:J

    return-wide v0
.end method

.method static synthetic access$400()J
    .locals 2

    .line 47
    sget-wide v0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;->EPOCH:J

    return-wide v0
.end method

.method public static attribute()Lnet/time4j/engine/AttributeKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/AttributeKey<",
            "Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;",
            ">;"
        }
    .end annotation

    .line 198
    sget-object v0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;->ATTRIBUTE:Lnet/time4j/engine/AttributeKey;

    return-object v0
.end method

.method private static check(J)V
    .locals 3

    const-wide/32 v0, -0xffc6

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const-wide/32 v0, 0x5b326

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    return-void

    .line 225
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;
    .locals 1

    .line 47
    const-class v0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;

    return-object p0
.end method

.method public static values()[Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;
    .locals 1

    .line 47
    sget-object v0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;->$VALUES:[Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;

    invoke-virtual {v0}, [Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;

    return-object v0
.end method


# virtual methods
.method public isLeapYear(I)Z
    .locals 0

    .line 215
    new-instance p1, Ljava/lang/AbstractMethodError;

    invoke-direct {p1}, Ljava/lang/AbstractMethodError;-><init>()V

    throw p1
.end method

.method abstract transform(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)J
.end method

.method abstract transform(J)Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;
.end method
