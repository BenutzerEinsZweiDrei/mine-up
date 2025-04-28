.class public enum Lnet/time4j/calendar/HebrewAnniversary;
.super Ljava/lang/Enum;
.source "HebrewAnniversary.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/time4j/calendar/HebrewAnniversary;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/time4j/calendar/HebrewAnniversary;

.field public static final enum BIRTHDAY:Lnet/time4j/calendar/HebrewAnniversary;

.field public static final enum YAHRZEIT:Lnet/time4j/calendar/HebrewAnniversary;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 90
    new-instance v0, Lnet/time4j/calendar/HebrewAnniversary$1;

    const-string v1, "BIRTHDAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/time4j/calendar/HebrewAnniversary$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/time4j/calendar/HebrewAnniversary;->BIRTHDAY:Lnet/time4j/calendar/HebrewAnniversary;

    .line 131
    new-instance v1, Lnet/time4j/calendar/HebrewAnniversary$2;

    const-string v3, "YAHRZEIT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/time4j/calendar/HebrewAnniversary$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/time4j/calendar/HebrewAnniversary;->YAHRZEIT:Lnet/time4j/calendar/HebrewAnniversary;

    const/4 v3, 0x2

    new-array v3, v3, [Lnet/time4j/calendar/HebrewAnniversary;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 53
    sput-object v3, Lnet/time4j/calendar/HebrewAnniversary;->$VALUES:[Lnet/time4j/calendar/HebrewAnniversary;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILnet/time4j/calendar/HebrewAnniversary$1;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lnet/time4j/calendar/HebrewAnniversary;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100(Lnet/time4j/engine/CalendarDate;)Lnet/time4j/calendar/HebrewCalendar;
    .locals 0

    .line 53
    invoke-static {p0}, Lnet/time4j/calendar/HebrewAnniversary;->convert(Lnet/time4j/engine/CalendarDate;)Lnet/time4j/calendar/HebrewCalendar;

    move-result-object p0

    return-object p0
.end method

.method private static convert(Lnet/time4j/engine/CalendarDate;)Lnet/time4j/calendar/HebrewCalendar;
    .locals 3

    .line 216
    instance-of v0, p0, Lnet/time4j/calendar/HebrewCalendar;

    if-eqz v0, :cond_0

    .line 217
    check-cast p0, Lnet/time4j/calendar/HebrewCalendar;

    return-object p0

    .line 220
    :cond_0
    invoke-static {}, Lnet/time4j/calendar/HebrewCalendar;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/engine/TimeAxis;->getCalendarSystem()Lnet/time4j/engine/CalendarSystem;

    move-result-object v0

    invoke-interface {p0}, Lnet/time4j/engine/CalendarDate;->getDaysSinceEpochUTC()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lnet/time4j/engine/CalendarSystem;->transform(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/time4j/calendar/HebrewCalendar;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/time4j/calendar/HebrewAnniversary;
    .locals 1

    .line 53
    const-class v0, Lnet/time4j/calendar/HebrewAnniversary;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/time4j/calendar/HebrewAnniversary;

    return-object p0
.end method

.method public static values()[Lnet/time4j/calendar/HebrewAnniversary;
    .locals 1

    .line 53
    sget-object v0, Lnet/time4j/calendar/HebrewAnniversary;->$VALUES:[Lnet/time4j/calendar/HebrewAnniversary;

    invoke-virtual {v0}, [Lnet/time4j/calendar/HebrewAnniversary;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/time4j/calendar/HebrewAnniversary;

    return-object v0
.end method


# virtual methods
.method public inGregorianYear(I)Lnet/time4j/engine/ChronoFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lnet/time4j/engine/ChronoFunction<",
            "Lnet/time4j/engine/CalendarDate;",
            "Ljava/util/List<",
            "Lnet/time4j/PlainDate;",
            ">;>;"
        }
    .end annotation

    .line 194
    new-instance v0, Lnet/time4j/calendar/HebrewAnniversary$3;

    invoke-direct {v0, p0, p1}, Lnet/time4j/calendar/HebrewAnniversary$3;-><init>(Lnet/time4j/calendar/HebrewAnniversary;I)V

    return-object v0
.end method

.method public inHebrewYear(I)Lnet/time4j/engine/ChronoFunction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lnet/time4j/engine/ChronoFunction<",
            "Lnet/time4j/engine/CalendarDate;",
            "Lnet/time4j/calendar/HebrewCalendar;",
            ">;"
        }
    .end annotation

    .line 175
    new-instance p1, Ljava/lang/AbstractMethodError;

    invoke-direct {p1}, Ljava/lang/AbstractMethodError;-><init>()V

    throw p1
.end method
