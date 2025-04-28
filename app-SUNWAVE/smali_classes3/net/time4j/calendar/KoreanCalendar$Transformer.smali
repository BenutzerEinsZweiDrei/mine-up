.class Lnet/time4j/calendar/KoreanCalendar$Transformer;
.super Lnet/time4j/calendar/EastAsianCS;
.source "KoreanCalendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/KoreanCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Transformer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/calendar/EastAsianCS<",
        "Lnet/time4j/calendar/KoreanCalendar;",
        ">;"
    }
.end annotation


# static fields
.field private static final DATE_1908_04_01:J

.field private static final DATE_1912_01_01:J

.field private static final DATE_1954_03_21:J

.field private static final DATE_1961_08_10:J

.field private static final OFFSETS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/time4j/tz/ZonalOffset;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 810
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 811
    sget-object v1, Lnet/time4j/tz/OffsetSign;->AHEAD_OF_UTC:Lnet/time4j/tz/OffsetSign;

    const/16 v2, 0x7e

    const/16 v3, 0x3a

    const-wide/16 v4, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lnet/time4j/tz/ZonalOffset;->atLongitude(Lnet/time4j/tz/OffsetSign;IID)Lnet/time4j/tz/ZonalOffset;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 812
    sget-object v1, Lnet/time4j/tz/OffsetSign;->AHEAD_OF_UTC:Lnet/time4j/tz/OffsetSign;

    const/16 v2, 0x8

    const/16 v3, 0x1e

    invoke-static {v1, v2, v3}, Lnet/time4j/tz/ZonalOffset;->ofHoursMinutes(Lnet/time4j/tz/OffsetSign;II)Lnet/time4j/tz/ZonalOffset;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 813
    sget-object v1, Lnet/time4j/tz/OffsetSign;->AHEAD_OF_UTC:Lnet/time4j/tz/OffsetSign;

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lnet/time4j/tz/ZonalOffset;->ofHoursMinutes(Lnet/time4j/tz/OffsetSign;II)Lnet/time4j/tz/ZonalOffset;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 814
    sget-object v1, Lnet/time4j/tz/OffsetSign;->AHEAD_OF_UTC:Lnet/time4j/tz/OffsetSign;

    invoke-static {v1, v2, v3}, Lnet/time4j/tz/ZonalOffset;->ofHoursMinutes(Lnet/time4j/tz/OffsetSign;II)Lnet/time4j/tz/ZonalOffset;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 815
    sget-object v1, Lnet/time4j/tz/OffsetSign;->AHEAD_OF_UTC:Lnet/time4j/tz/OffsetSign;

    invoke-static {v1, v4, v5}, Lnet/time4j/tz/ZonalOffset;->ofHoursMinutes(Lnet/time4j/tz/OffsetSign;II)Lnet/time4j/tz/ZonalOffset;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 816
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lnet/time4j/calendar/KoreanCalendar$Transformer;->OFFSETS:Ljava/util/List;

    const/16 v0, 0x774

    const/4 v1, 0x4

    const/4 v3, 0x1

    .line 819
    invoke-static {v0, v1, v3}, Lnet/time4j/PlainDate;->of(III)Lnet/time4j/PlainDate;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/PlainDate;->getDaysSinceEpochUTC()J

    move-result-wide v0

    sput-wide v0, Lnet/time4j/calendar/KoreanCalendar$Transformer;->DATE_1908_04_01:J

    const/16 v0, 0x778

    .line 820
    invoke-static {v0, v3, v3}, Lnet/time4j/PlainDate;->of(III)Lnet/time4j/PlainDate;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/PlainDate;->getDaysSinceEpochUTC()J

    move-result-wide v0

    sput-wide v0, Lnet/time4j/calendar/KoreanCalendar$Transformer;->DATE_1912_01_01:J

    const/16 v0, 0x7a2

    const/4 v1, 0x3

    const/16 v3, 0x15

    .line 821
    invoke-static {v0, v1, v3}, Lnet/time4j/PlainDate;->of(III)Lnet/time4j/PlainDate;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/PlainDate;->getDaysSinceEpochUTC()J

    move-result-wide v0

    sput-wide v0, Lnet/time4j/calendar/KoreanCalendar$Transformer;->DATE_1954_03_21:J

    const/16 v0, 0x7a9

    const/16 v1, 0xa

    .line 822
    invoke-static {v0, v2, v1}, Lnet/time4j/PlainDate;->of(III)Lnet/time4j/PlainDate;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/PlainDate;->getDaysSinceEpochUTC()J

    move-result-wide v0

    sput-wide v0, Lnet/time4j/calendar/KoreanCalendar$Transformer;->DATE_1961_08_10:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 802
    invoke-direct {p0}, Lnet/time4j/calendar/EastAsianCS;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/calendar/KoreanCalendar$1;)V
    .locals 0

    .line 802
    invoke-direct {p0}, Lnet/time4j/calendar/KoreanCalendar$Transformer;-><init>()V

    return-void
.end method


# virtual methods
.method bridge synthetic create(IILnet/time4j/calendar/EastAsianMonth;IJ)Lnet/time4j/calendar/EastAsianCalendar;
    .locals 0

    .line 802
    invoke-virtual/range {p0 .. p6}, Lnet/time4j/calendar/KoreanCalendar$Transformer;->create(IILnet/time4j/calendar/EastAsianMonth;IJ)Lnet/time4j/calendar/KoreanCalendar;

    move-result-object p1

    return-object p1
.end method

.method create(IILnet/time4j/calendar/EastAsianMonth;IJ)Lnet/time4j/calendar/KoreanCalendar;
    .locals 9

    .line 839
    new-instance v8, Lnet/time4j/calendar/KoreanCalendar;

    const/4 v7, 0x0

    move-object v0, v8

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-wide v5, p5

    invoke-direct/range {v0 .. v7}, Lnet/time4j/calendar/KoreanCalendar;-><init>(IILnet/time4j/calendar/EastAsianMonth;IJLnet/time4j/calendar/KoreanCalendar$1;)V

    return-object v8
.end method

.method public getEras()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/time4j/engine/CalendarEra;",
            ">;"
        }
    .end annotation

    .line 828
    sget-object v0, Lnet/time4j/calendar/KoreanEra;->DANGI:Lnet/time4j/calendar/KoreanEra;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getLeapMonths()[I
    .locals 1

    .line 859
    invoke-static {}, Lnet/time4j/calendar/KoreanCalendar;->access$500()[I

    move-result-object v0

    return-object v0
.end method

.method getOffset(J)Lnet/time4j/tz/ZonalOffset;
    .locals 2

    .line 844
    sget-wide v0, Lnet/time4j/calendar/KoreanCalendar$Transformer;->DATE_1908_04_01:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 845
    sget-object p1, Lnet/time4j/calendar/KoreanCalendar$Transformer;->OFFSETS:Ljava/util/List;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/tz/ZonalOffset;

    return-object p1

    .line 846
    :cond_0
    sget-wide v0, Lnet/time4j/calendar/KoreanCalendar$Transformer;->DATE_1912_01_01:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 847
    sget-object p1, Lnet/time4j/calendar/KoreanCalendar$Transformer;->OFFSETS:Ljava/util/List;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/tz/ZonalOffset;

    return-object p1

    .line 848
    :cond_1
    sget-wide v0, Lnet/time4j/calendar/KoreanCalendar$Transformer;->DATE_1954_03_21:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    .line 849
    sget-object p1, Lnet/time4j/calendar/KoreanCalendar$Transformer;->OFFSETS:Ljava/util/List;

    const/4 p2, 0x2

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/tz/ZonalOffset;

    return-object p1

    .line 850
    :cond_2
    sget-wide v0, Lnet/time4j/calendar/KoreanCalendar$Transformer;->DATE_1961_08_10:J

    cmp-long p1, p1, v0

    if-gez p1, :cond_3

    .line 851
    sget-object p1, Lnet/time4j/calendar/KoreanCalendar$Transformer;->OFFSETS:Ljava/util/List;

    const/4 p2, 0x3

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/tz/ZonalOffset;

    return-object p1

    .line 853
    :cond_3
    sget-object p1, Lnet/time4j/calendar/KoreanCalendar$Transformer;->OFFSETS:Ljava/util/List;

    const/4 p2, 0x4

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/tz/ZonalOffset;

    return-object p1
.end method
