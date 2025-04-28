.class public abstract enum Lnet/time4j/calendar/PersianAlgorithm;
.super Ljava/lang/Enum;
.source "PersianAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/time4j/calendar/PersianAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/time4j/calendar/PersianAlgorithm;

.field public static final enum ASTRONOMICAL:Lnet/time4j/calendar/PersianAlgorithm;

.field private static final ATTRIBUTE:Lnet/time4j/engine/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/AttributeKey<",
            "Lnet/time4j/calendar/PersianAlgorithm;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum BIRASHK:Lnet/time4j/calendar/PersianAlgorithm;

.field public static final enum BORKOWSKI:Lnet/time4j/calendar/PersianAlgorithm;

.field public static final enum KHAYYAM:Lnet/time4j/calendar/PersianAlgorithm;

.field private static final LENGTH_OF_KHAYYAM_CYCLE:I = 0x2f15

.field private static final REFERENCE_ZERO_KHAYYAM:J = 0x78733L

.field private static final START_OF_BIRASHK_CYCLE:J = -0x4e180L

.field static final STD_OFFSET:Lnet/time4j/tz/ZonalOffset;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 94
    new-instance v0, Lnet/time4j/calendar/PersianAlgorithm$1;

    const-string v1, "BORKOWSKI"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/time4j/calendar/PersianAlgorithm$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/time4j/calendar/PersianAlgorithm;->BORKOWSKI:Lnet/time4j/calendar/PersianAlgorithm;

    .line 194
    new-instance v1, Lnet/time4j/calendar/PersianAlgorithm$2;

    const-string v3, "KHAYYAM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/time4j/calendar/PersianAlgorithm$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/time4j/calendar/PersianAlgorithm;->KHAYYAM:Lnet/time4j/calendar/PersianAlgorithm;

    .line 279
    new-instance v3, Lnet/time4j/calendar/PersianAlgorithm$3;

    const-string v5, "BIRASHK"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lnet/time4j/calendar/PersianAlgorithm$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/time4j/calendar/PersianAlgorithm;->BIRASHK:Lnet/time4j/calendar/PersianAlgorithm;

    .line 366
    new-instance v5, Lnet/time4j/calendar/PersianAlgorithm$4;

    const-string v7, "ASTRONOMICAL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lnet/time4j/calendar/PersianAlgorithm$4;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lnet/time4j/calendar/PersianAlgorithm;->ASTRONOMICAL:Lnet/time4j/calendar/PersianAlgorithm;

    const/4 v7, 0x4

    new-array v7, v7, [Lnet/time4j/calendar/PersianAlgorithm;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 48
    sput-object v7, Lnet/time4j/calendar/PersianAlgorithm;->$VALUES:[Lnet/time4j/calendar/PersianAlgorithm;

    .line 441
    sget-object v0, Lnet/time4j/tz/OffsetSign;->AHEAD_OF_UTC:Lnet/time4j/tz/OffsetSign;

    const/16 v1, 0x1e

    invoke-static {v0, v8, v1}, Lnet/time4j/tz/ZonalOffset;->ofHoursMinutes(Lnet/time4j/tz/OffsetSign;II)Lnet/time4j/tz/ZonalOffset;

    move-result-object v0

    sput-object v0, Lnet/time4j/calendar/PersianAlgorithm;->STD_OFFSET:Lnet/time4j/tz/ZonalOffset;

    .line 447
    const-class v0, Lnet/time4j/calendar/PersianAlgorithm;

    const-string v1, "PERSIAN_ALGORITHM"

    .line 448
    invoke-static {v1, v0}, Lnet/time4j/format/Attributes;->createKey(Ljava/lang/String;Ljava/lang/Class;)Lnet/time4j/engine/AttributeKey;

    move-result-object v0

    sput-object v0, Lnet/time4j/calendar/PersianAlgorithm;->ATTRIBUTE:Lnet/time4j/engine/AttributeKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILnet/time4j/calendar/PersianAlgorithm$1;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lnet/time4j/calendar/PersianAlgorithm;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100(I)V
    .locals 0

    .line 48
    invoke-static {p0}, Lnet/time4j/calendar/PersianAlgorithm;->checkYear(I)V

    return-void
.end method

.method static synthetic access$200(J)V
    .locals 0

    .line 48
    invoke-static {p0, p1}, Lnet/time4j/calendar/PersianAlgorithm;->checkRange(J)V

    return-void
.end method

.method public static attribute()Lnet/time4j/engine/AttributeKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/AttributeKey<",
            "Lnet/time4j/calendar/PersianAlgorithm;",
            ">;"
        }
    .end annotation

    .line 500
    sget-object v0, Lnet/time4j/calendar/PersianAlgorithm;->ATTRIBUTE:Lnet/time4j/engine/AttributeKey;

    return-object v0
.end method

.method private static checkRange(J)V
    .locals 3

    .line 571
    invoke-static {}, Lnet/time4j/calendar/PersianCalendar;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/engine/TimeAxis;->getCalendarSystem()Lnet/time4j/engine/CalendarSystem;

    move-result-object v0

    .line 573
    invoke-interface {v0}, Lnet/time4j/engine/CalendarSystem;->getMinimumSinceUTC()J

    move-result-wide v1

    cmp-long v1, p0, v1

    if-ltz v1, :cond_0

    invoke-interface {v0}, Lnet/time4j/engine/CalendarSystem;->getMaximumSinceUTC()J

    move-result-wide v0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    return-void

    .line 574
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

.method private static checkYear(I)V
    .locals 3

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/16 v0, 0xbb8

    if-gt p0, v0, :cond_0

    return-void

    .line 582
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/time4j/calendar/PersianAlgorithm;
    .locals 1

    .line 48
    const-class v0, Lnet/time4j/calendar/PersianAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/time4j/calendar/PersianAlgorithm;

    return-object p0
.end method

.method public static values()[Lnet/time4j/calendar/PersianAlgorithm;
    .locals 1

    .line 48
    sget-object v0, Lnet/time4j/calendar/PersianAlgorithm;->$VALUES:[Lnet/time4j/calendar/PersianAlgorithm;

    invoke-virtual {v0}, [Lnet/time4j/calendar/PersianAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/time4j/calendar/PersianAlgorithm;

    return-object v0
.end method


# virtual methods
.method getMaxPersianYear()I
    .locals 1

    const/16 v0, 0xbb8

    return v0
.end method

.method public isLeapYear(I)Z
    .locals 1

    .line 520
    sget-object v0, Lnet/time4j/calendar/PersianAlgorithm;->STD_OFFSET:Lnet/time4j/tz/ZonalOffset;

    invoke-virtual {p0, p1, v0}, Lnet/time4j/calendar/PersianAlgorithm;->isLeapYear(ILnet/time4j/tz/ZonalOffset;)Z

    move-result p1

    return p1
.end method

.method abstract isLeapYear(ILnet/time4j/tz/ZonalOffset;)Z
.end method

.method isValid(IIILnet/time4j/tz/ZonalOffset;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lt p1, v1, :cond_6

    .line 557
    invoke-virtual {p0}, Lnet/time4j/calendar/PersianAlgorithm;->getMaxPersianYear()I

    move-result v2

    if-gt p1, v2, :cond_6

    if-lt p2, v1, :cond_6

    const/16 v2, 0xc

    if-gt p2, v2, :cond_6

    if-ge p3, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x6

    if-gt p2, v2, :cond_2

    const/16 p1, 0x1f

    if-gt p3, p1, :cond_1

    move v0, v1

    :cond_1
    return v0

    :cond_2
    const/16 v2, 0xb

    const/16 v3, 0x1e

    if-gt p2, v2, :cond_4

    if-gt p3, v3, :cond_3

    move v0, v1

    :cond_3
    return v0

    .line 564
    :cond_4
    invoke-virtual {p0, p1, p4}, Lnet/time4j/calendar/PersianAlgorithm;->isLeapYear(ILnet/time4j/tz/ZonalOffset;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    const/16 v3, 0x1d

    :goto_0
    if-gt p3, v3, :cond_6

    move v0, v1

    :cond_6
    :goto_1
    return v0
.end method

.method abstract transform(Lnet/time4j/calendar/PersianCalendar;Lnet/time4j/tz/ZonalOffset;)J
.end method

.method abstract transform(JLnet/time4j/tz/ZonalOffset;)Lnet/time4j/calendar/PersianCalendar;
.end method
