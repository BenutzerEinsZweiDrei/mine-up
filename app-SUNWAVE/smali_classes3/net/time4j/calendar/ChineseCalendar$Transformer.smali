.class Lnet/time4j/calendar/ChineseCalendar$Transformer;
.super Lnet/time4j/calendar/EastAsianCS;
.source "ChineseCalendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/ChineseCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Transformer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/calendar/EastAsianCS<",
        "Lnet/time4j/calendar/ChineseCalendar;",
        ">;"
    }
.end annotation


# static fields
.field private static final OFFSET_NEW_CHINA:Lnet/time4j/tz/ZonalOffset;

.field private static final OFFSET_OLD_CHINA:Lnet/time4j/tz/ZonalOffset;

.field private static final OFFSET_SWITCH_CHINA:J = -0x3d59L


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 962
    sget-object v0, Lnet/time4j/tz/OffsetSign;->AHEAD_OF_UTC:Lnet/time4j/tz/OffsetSign;

    const/16 v1, 0x74

    const/16 v2, 0x19

    const-wide/16 v3, 0x0

    .line 963
    invoke-static {v0, v1, v2, v3, v4}, Lnet/time4j/tz/ZonalOffset;->atLongitude(Lnet/time4j/tz/OffsetSign;IID)Lnet/time4j/tz/ZonalOffset;

    move-result-object v0

    sput-object v0, Lnet/time4j/calendar/ChineseCalendar$Transformer;->OFFSET_OLD_CHINA:Lnet/time4j/tz/ZonalOffset;

    .line 964
    sget-object v0, Lnet/time4j/tz/OffsetSign;->AHEAD_OF_UTC:Lnet/time4j/tz/OffsetSign;

    const/16 v1, 0x8

    .line 965
    invoke-static {v0, v1}, Lnet/time4j/tz/ZonalOffset;->ofHours(Lnet/time4j/tz/OffsetSign;I)Lnet/time4j/tz/ZonalOffset;

    move-result-object v0

    sput-object v0, Lnet/time4j/calendar/ChineseCalendar$Transformer;->OFFSET_NEW_CHINA:Lnet/time4j/tz/ZonalOffset;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 957
    invoke-direct {p0}, Lnet/time4j/calendar/EastAsianCS;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/calendar/ChineseCalendar$1;)V
    .locals 0

    .line 957
    invoke-direct {p0}, Lnet/time4j/calendar/ChineseCalendar$Transformer;-><init>()V

    return-void
.end method


# virtual methods
.method create(IILnet/time4j/calendar/EastAsianMonth;IJ)Lnet/time4j/calendar/ChineseCalendar;
    .locals 9

    .line 983
    new-instance v8, Lnet/time4j/calendar/ChineseCalendar;

    const/4 v7, 0x0

    move-object v0, v8

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-wide v5, p5

    invoke-direct/range {v0 .. v7}, Lnet/time4j/calendar/ChineseCalendar;-><init>(IILnet/time4j/calendar/EastAsianMonth;IJLnet/time4j/calendar/ChineseCalendar$1;)V

    return-object v8
.end method

.method bridge synthetic create(IILnet/time4j/calendar/EastAsianMonth;IJ)Lnet/time4j/calendar/EastAsianCalendar;
    .locals 0

    .line 957
    invoke-virtual/range {p0 .. p6}, Lnet/time4j/calendar/ChineseCalendar$Transformer;->create(IILnet/time4j/calendar/EastAsianMonth;IJ)Lnet/time4j/calendar/ChineseCalendar;

    move-result-object p1

    return-object p1
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

    .line 972
    invoke-static {}, Lnet/time4j/calendar/ChineseEra;->values()[Lnet/time4j/calendar/ChineseEra;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getLeapMonths()[I
    .locals 1

    .line 993
    invoke-static {}, Lnet/time4j/calendar/ChineseCalendar;->access$400()[I

    move-result-object v0

    return-object v0
.end method

.method getOffset(J)Lnet/time4j/tz/ZonalOffset;
    .locals 2

    const-wide/16 v0, -0x3d59

    cmp-long p1, p1, v0

    if-gez p1, :cond_0

    .line 988
    sget-object p1, Lnet/time4j/calendar/ChineseCalendar$Transformer;->OFFSET_OLD_CHINA:Lnet/time4j/tz/ZonalOffset;

    goto :goto_0

    :cond_0
    sget-object p1, Lnet/time4j/calendar/ChineseCalendar$Transformer;->OFFSET_NEW_CHINA:Lnet/time4j/tz/ZonalOffset;

    :goto_0
    return-object p1
.end method
