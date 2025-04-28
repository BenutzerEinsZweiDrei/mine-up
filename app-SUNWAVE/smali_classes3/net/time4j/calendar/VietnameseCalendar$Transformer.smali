.class Lnet/time4j/calendar/VietnameseCalendar$Transformer;
.super Lnet/time4j/calendar/EastAsianCS;
.source "VietnameseCalendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/VietnameseCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Transformer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/calendar/EastAsianCS<",
        "Lnet/time4j/calendar/VietnameseCalendar;",
        ">;"
    }
.end annotation


# static fields
.field private static final MIN_LIMIT:J

.field private static final OFFSETS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/time4j/tz/ZonalOffset;",
            ">;"
        }
    .end annotation
.end field

.field private static final OFFSET_SWITCH_1841:J

.field private static final OFFSET_SWITCH_1954:J

.field private static final OFFSET_SWITCH_1968:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 738
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 739
    sget-object v1, Lnet/time4j/tz/OffsetSign;->AHEAD_OF_UTC:Lnet/time4j/tz/OffsetSign;

    const/16 v2, 0x74

    const/16 v3, 0x19

    const-wide/16 v4, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lnet/time4j/tz/ZonalOffset;->atLongitude(Lnet/time4j/tz/OffsetSign;IID)Lnet/time4j/tz/ZonalOffset;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 740
    sget-object v1, Lnet/time4j/tz/OffsetSign;->AHEAD_OF_UTC:Lnet/time4j/tz/OffsetSign;

    const/16 v2, 0x6b

    const/16 v3, 0x23

    invoke-static {v1, v2, v3, v4, v5}, Lnet/time4j/tz/ZonalOffset;->atLongitude(Lnet/time4j/tz/OffsetSign;IID)Lnet/time4j/tz/ZonalOffset;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 741
    sget-object v1, Lnet/time4j/tz/OffsetSign;->AHEAD_OF_UTC:Lnet/time4j/tz/OffsetSign;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lnet/time4j/tz/ZonalOffset;->ofHours(Lnet/time4j/tz/OffsetSign;I)Lnet/time4j/tz/ZonalOffset;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 742
    sget-object v1, Lnet/time4j/tz/OffsetSign;->AHEAD_OF_UTC:Lnet/time4j/tz/OffsetSign;

    const/4 v2, 0x7

    invoke-static {v1, v2}, Lnet/time4j/tz/ZonalOffset;->ofHours(Lnet/time4j/tz/OffsetSign;I)Lnet/time4j/tz/ZonalOffset;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 743
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lnet/time4j/calendar/VietnameseCalendar$Transformer;->OFFSETS:Ljava/util/List;

    const/16 v0, 0x731

    const/4 v1, 0x1

    .line 746
    invoke-static {v0, v1, v1}, Lnet/time4j/PlainDate;->of(III)Lnet/time4j/PlainDate;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/PlainDate;->getDaysSinceEpochUTC()J

    move-result-wide v3

    sput-wide v3, Lnet/time4j/calendar/VietnameseCalendar$Transformer;->OFFSET_SWITCH_1841:J

    const/16 v0, 0x7a2

    .line 747
    invoke-static {v0, v2, v1}, Lnet/time4j/PlainDate;->of(III)Lnet/time4j/PlainDate;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/PlainDate;->getDaysSinceEpochUTC()J

    move-result-wide v2

    sput-wide v2, Lnet/time4j/calendar/VietnameseCalendar$Transformer;->OFFSET_SWITCH_1954:J

    const/16 v0, 0x7b0

    .line 748
    invoke-static {v0, v1, v1}, Lnet/time4j/PlainDate;->of(III)Lnet/time4j/PlainDate;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/PlainDate;->getDaysSinceEpochUTC()J

    move-result-wide v2

    sput-wide v2, Lnet/time4j/calendar/VietnameseCalendar$Transformer;->OFFSET_SWITCH_1968:J

    const/16 v0, 0x715

    const/4 v2, 0x2

    .line 750
    invoke-static {v0, v2, v1}, Lnet/time4j/PlainDate;->of(III)Lnet/time4j/PlainDate;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/PlainDate;->getDaysSinceEpochUTC()J

    move-result-wide v0

    sput-wide v0, Lnet/time4j/calendar/VietnameseCalendar$Transformer;->MIN_LIMIT:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 730
    invoke-direct {p0}, Lnet/time4j/calendar/EastAsianCS;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/calendar/VietnameseCalendar$1;)V
    .locals 0

    .line 730
    invoke-direct {p0}, Lnet/time4j/calendar/VietnameseCalendar$Transformer;-><init>()V

    return-void
.end method


# virtual methods
.method bridge synthetic create(IILnet/time4j/calendar/EastAsianMonth;IJ)Lnet/time4j/calendar/EastAsianCalendar;
    .locals 0

    .line 730
    invoke-virtual/range {p0 .. p6}, Lnet/time4j/calendar/VietnameseCalendar$Transformer;->create(IILnet/time4j/calendar/EastAsianMonth;IJ)Lnet/time4j/calendar/VietnameseCalendar;

    move-result-object p1

    return-object p1
.end method

.method create(IILnet/time4j/calendar/EastAsianMonth;IJ)Lnet/time4j/calendar/VietnameseCalendar;
    .locals 9

    .line 772
    new-instance v8, Lnet/time4j/calendar/VietnameseCalendar;

    const/4 v7, 0x0

    move-object v0, v8

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-wide v5, p5

    invoke-direct/range {v0 .. v7}, Lnet/time4j/calendar/VietnameseCalendar;-><init>(IILnet/time4j/calendar/EastAsianMonth;IJLnet/time4j/calendar/VietnameseCalendar$1;)V

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

    .line 761
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getLeapMonths()[I
    .locals 1

    .line 786
    invoke-static {}, Lnet/time4j/calendar/VietnameseCalendar;->access$300()[I

    move-result-object v0

    return-object v0
.end method

.method public getMinimumSinceUTC()J
    .locals 2

    .line 756
    sget-wide v0, Lnet/time4j/calendar/VietnameseCalendar$Transformer;->MIN_LIMIT:J

    return-wide v0
.end method

.method getOffset(J)Lnet/time4j/tz/ZonalOffset;
    .locals 2

    .line 777
    sget-wide v0, Lnet/time4j/calendar/VietnameseCalendar$Transformer;->OFFSET_SWITCH_1841:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    sget-object p1, Lnet/time4j/calendar/VietnameseCalendar$Transformer;->OFFSETS:Ljava/util/List;

    const/4 p2, 0x0

    .line 778
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/tz/ZonalOffset;

    goto :goto_1

    :cond_0
    sget-wide v0, Lnet/time4j/calendar/VietnameseCalendar$Transformer;->OFFSET_SWITCH_1954:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    sget-object p1, Lnet/time4j/calendar/VietnameseCalendar$Transformer;->OFFSETS:Ljava/util/List;

    const/4 p2, 0x1

    .line 780
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/tz/ZonalOffset;

    goto :goto_1

    :cond_1
    sget-wide v0, Lnet/time4j/calendar/VietnameseCalendar$Transformer;->OFFSET_SWITCH_1968:J

    cmp-long p1, p1, v0

    if-gez p1, :cond_2

    sget-object p1, Lnet/time4j/calendar/VietnameseCalendar$Transformer;->OFFSETS:Ljava/util/List;

    const/4 p2, 0x2

    goto :goto_0

    .line 781
    :cond_2
    sget-object p1, Lnet/time4j/calendar/VietnameseCalendar$Transformer;->OFFSETS:Ljava/util/List;

    const/4 p2, 0x3

    :goto_0
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/tz/ZonalOffset;

    :goto_1
    return-object p1
.end method

.method isValid(IILnet/time4j/calendar/EastAsianMonth;I)Z
    .locals 1

    const/16 v0, 0x4b

    if-lt p1, v0, :cond_1

    if-ne p1, v0, :cond_0

    const/16 v0, 0xa

    if-ge p2, v0, :cond_0

    goto :goto_0

    .line 799
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lnet/time4j/calendar/EastAsianCS;->isValid(IILnet/time4j/calendar/EastAsianMonth;I)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
