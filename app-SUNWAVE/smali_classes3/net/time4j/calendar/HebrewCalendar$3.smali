.class synthetic Lnet/time4j/calendar/HebrewCalendar$3;
.super Ljava/lang/Object;
.source "HebrewCalendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/HebrewCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$net$time4j$calendar$HebrewCalendar$Unit:[I

.field static final synthetic $SwitchMap$net$time4j$calendar$HebrewMonth:[I

.field static final synthetic $SwitchMap$net$time4j$calendar$HebrewMonth$Order:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1980
    invoke-static {}, Lnet/time4j/calendar/HebrewCalendar$Unit;->values()[Lnet/time4j/calendar/HebrewCalendar$Unit;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lnet/time4j/calendar/HebrewCalendar$3;->$SwitchMap$net$time4j$calendar$HebrewCalendar$Unit:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lnet/time4j/calendar/HebrewCalendar$Unit;->YEARS:Lnet/time4j/calendar/HebrewCalendar$Unit;

    invoke-virtual {v2}, Lnet/time4j/calendar/HebrewCalendar$Unit;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lnet/time4j/calendar/HebrewCalendar$3;->$SwitchMap$net$time4j$calendar$HebrewCalendar$Unit:[I

    sget-object v3, Lnet/time4j/calendar/HebrewCalendar$Unit;->MONTHS:Lnet/time4j/calendar/HebrewCalendar$Unit;

    invoke-virtual {v3}, Lnet/time4j/calendar/HebrewCalendar$Unit;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lnet/time4j/calendar/HebrewCalendar$3;->$SwitchMap$net$time4j$calendar$HebrewCalendar$Unit:[I

    sget-object v4, Lnet/time4j/calendar/HebrewCalendar$Unit;->WEEKS:Lnet/time4j/calendar/HebrewCalendar$Unit;

    invoke-virtual {v4}, Lnet/time4j/calendar/HebrewCalendar$Unit;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lnet/time4j/calendar/HebrewCalendar$3;->$SwitchMap$net$time4j$calendar$HebrewCalendar$Unit:[I

    sget-object v5, Lnet/time4j/calendar/HebrewCalendar$Unit;->DAYS:Lnet/time4j/calendar/HebrewCalendar$Unit;

    invoke-virtual {v5}, Lnet/time4j/calendar/HebrewCalendar$Unit;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 1150
    :catch_3
    invoke-static {}, Lnet/time4j/calendar/HebrewMonth;->values()[Lnet/time4j/calendar/HebrewMonth;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lnet/time4j/calendar/HebrewCalendar$3;->$SwitchMap$net$time4j$calendar$HebrewMonth:[I

    :try_start_4
    sget-object v5, Lnet/time4j/calendar/HebrewMonth;->IYAR:Lnet/time4j/calendar/HebrewMonth;

    invoke-virtual {v5}, Lnet/time4j/calendar/HebrewMonth;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v4, Lnet/time4j/calendar/HebrewCalendar$3;->$SwitchMap$net$time4j$calendar$HebrewMonth:[I

    sget-object v5, Lnet/time4j/calendar/HebrewMonth;->TAMUZ:Lnet/time4j/calendar/HebrewMonth;

    invoke-virtual {v5}, Lnet/time4j/calendar/HebrewMonth;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v4, Lnet/time4j/calendar/HebrewCalendar$3;->$SwitchMap$net$time4j$calendar$HebrewMonth:[I

    sget-object v5, Lnet/time4j/calendar/HebrewMonth;->ELUL:Lnet/time4j/calendar/HebrewMonth;

    invoke-virtual {v5}, Lnet/time4j/calendar/HebrewMonth;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v2, Lnet/time4j/calendar/HebrewCalendar$3;->$SwitchMap$net$time4j$calendar$HebrewMonth:[I

    sget-object v4, Lnet/time4j/calendar/HebrewMonth;->TEVET:Lnet/time4j/calendar/HebrewMonth;

    invoke-virtual {v4}, Lnet/time4j/calendar/HebrewMonth;->ordinal()I

    move-result v4

    aput v3, v2, v4
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v2, Lnet/time4j/calendar/HebrewCalendar$3;->$SwitchMap$net$time4j$calendar$HebrewMonth:[I

    sget-object v3, Lnet/time4j/calendar/HebrewMonth;->ADAR_II:Lnet/time4j/calendar/HebrewMonth;

    invoke-virtual {v3}, Lnet/time4j/calendar/HebrewMonth;->ordinal()I

    move-result v3

    const/4 v4, 0x5

    aput v4, v2, v3
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v2, Lnet/time4j/calendar/HebrewCalendar$3;->$SwitchMap$net$time4j$calendar$HebrewMonth:[I

    sget-object v3, Lnet/time4j/calendar/HebrewMonth;->HESHVAN:Lnet/time4j/calendar/HebrewMonth;

    invoke-virtual {v3}, Lnet/time4j/calendar/HebrewMonth;->ordinal()I

    move-result v3

    const/4 v4, 0x6

    aput v4, v2, v3
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v2, Lnet/time4j/calendar/HebrewCalendar$3;->$SwitchMap$net$time4j$calendar$HebrewMonth:[I

    sget-object v3, Lnet/time4j/calendar/HebrewMonth;->KISLEV:Lnet/time4j/calendar/HebrewMonth;

    invoke-virtual {v3}, Lnet/time4j/calendar/HebrewMonth;->ordinal()I

    move-result v3

    const/4 v4, 0x7

    aput v4, v2, v3
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    .line 244
    :catch_a
    invoke-static {}, Lnet/time4j/calendar/HebrewMonth$Order;->values()[Lnet/time4j/calendar/HebrewMonth$Order;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lnet/time4j/calendar/HebrewCalendar$3;->$SwitchMap$net$time4j$calendar$HebrewMonth$Order:[I

    :try_start_b
    sget-object v3, Lnet/time4j/calendar/HebrewMonth$Order;->CIVIL:Lnet/time4j/calendar/HebrewMonth$Order;

    invoke-virtual {v3}, Lnet/time4j/calendar/HebrewMonth$Order;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v1, Lnet/time4j/calendar/HebrewCalendar$3;->$SwitchMap$net$time4j$calendar$HebrewMonth$Order:[I

    sget-object v2, Lnet/time4j/calendar/HebrewMonth$Order;->BIBLICAL:Lnet/time4j/calendar/HebrewMonth$Order;

    invoke-virtual {v2}, Lnet/time4j/calendar/HebrewMonth$Order;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    return-void
.end method
