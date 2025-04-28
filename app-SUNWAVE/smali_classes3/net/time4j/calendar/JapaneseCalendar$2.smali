.class synthetic Lnet/time4j/calendar/JapaneseCalendar$2;
.super Ljava/lang/Object;
.source "JapaneseCalendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/JapaneseCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$net$time4j$calendar$JapaneseCalendar$Unit:[I

.field static final synthetic $SwitchMap$net$time4j$format$Leniency:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1830
    invoke-static {}, Lnet/time4j/calendar/JapaneseCalendar$Unit;->values()[Lnet/time4j/calendar/JapaneseCalendar$Unit;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lnet/time4j/calendar/JapaneseCalendar$2;->$SwitchMap$net$time4j$calendar$JapaneseCalendar$Unit:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lnet/time4j/calendar/JapaneseCalendar$Unit;->ERAS:Lnet/time4j/calendar/JapaneseCalendar$Unit;

    invoke-virtual {v2}, Lnet/time4j/calendar/JapaneseCalendar$Unit;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lnet/time4j/calendar/JapaneseCalendar$2;->$SwitchMap$net$time4j$calendar$JapaneseCalendar$Unit:[I

    sget-object v3, Lnet/time4j/calendar/JapaneseCalendar$Unit;->YEARS:Lnet/time4j/calendar/JapaneseCalendar$Unit;

    invoke-virtual {v3}, Lnet/time4j/calendar/JapaneseCalendar$Unit;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v2, Lnet/time4j/calendar/JapaneseCalendar$2;->$SwitchMap$net$time4j$calendar$JapaneseCalendar$Unit:[I

    sget-object v3, Lnet/time4j/calendar/JapaneseCalendar$Unit;->MONTHS:Lnet/time4j/calendar/JapaneseCalendar$Unit;

    invoke-virtual {v3}, Lnet/time4j/calendar/JapaneseCalendar$Unit;->ordinal()I

    move-result v3

    const/4 v4, 0x3

    aput v4, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v2, Lnet/time4j/calendar/JapaneseCalendar$2;->$SwitchMap$net$time4j$calendar$JapaneseCalendar$Unit:[I

    sget-object v3, Lnet/time4j/calendar/JapaneseCalendar$Unit;->WEEKS:Lnet/time4j/calendar/JapaneseCalendar$Unit;

    invoke-virtual {v3}, Lnet/time4j/calendar/JapaneseCalendar$Unit;->ordinal()I

    move-result v3

    const/4 v4, 0x4

    aput v4, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v2, Lnet/time4j/calendar/JapaneseCalendar$2;->$SwitchMap$net$time4j$calendar$JapaneseCalendar$Unit:[I

    sget-object v3, Lnet/time4j/calendar/JapaneseCalendar$Unit;->DAYS:Lnet/time4j/calendar/JapaneseCalendar$Unit;

    invoke-virtual {v3}, Lnet/time4j/calendar/JapaneseCalendar$Unit;->ordinal()I

    move-result v3

    const/4 v4, 0x5

    aput v4, v2, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    .line 899
    :catch_4
    invoke-static {}, Lnet/time4j/format/Leniency;->values()[Lnet/time4j/format/Leniency;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lnet/time4j/calendar/JapaneseCalendar$2;->$SwitchMap$net$time4j$format$Leniency:[I

    :try_start_5
    sget-object v3, Lnet/time4j/format/Leniency;->STRICT:Lnet/time4j/format/Leniency;

    invoke-virtual {v3}, Lnet/time4j/format/Leniency;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v1, Lnet/time4j/calendar/JapaneseCalendar$2;->$SwitchMap$net$time4j$format$Leniency:[I

    sget-object v2, Lnet/time4j/format/Leniency;->SMART:Lnet/time4j/format/Leniency;

    invoke-virtual {v2}, Lnet/time4j/format/Leniency;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    return-void
.end method
