.class synthetic Lnet/time4j/StdNormalizer$1;
.super Ljava/lang/Object;
.source "StdNormalizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/StdNormalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$net$time4j$CalendarUnit:[I

.field static final synthetic $SwitchMap$net$time4j$ClockUnit:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 158
    invoke-static {}, Lnet/time4j/ClockUnit;->values()[Lnet/time4j/ClockUnit;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lnet/time4j/StdNormalizer$1;->$SwitchMap$net$time4j$ClockUnit:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lnet/time4j/ClockUnit;->HOURS:Lnet/time4j/ClockUnit;

    invoke-virtual {v2}, Lnet/time4j/ClockUnit;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lnet/time4j/StdNormalizer$1;->$SwitchMap$net$time4j$ClockUnit:[I

    sget-object v3, Lnet/time4j/ClockUnit;->MINUTES:Lnet/time4j/ClockUnit;

    invoke-virtual {v3}, Lnet/time4j/ClockUnit;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lnet/time4j/StdNormalizer$1;->$SwitchMap$net$time4j$ClockUnit:[I

    sget-object v4, Lnet/time4j/ClockUnit;->SECONDS:Lnet/time4j/ClockUnit;

    invoke-virtual {v4}, Lnet/time4j/ClockUnit;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lnet/time4j/StdNormalizer$1;->$SwitchMap$net$time4j$ClockUnit:[I

    sget-object v5, Lnet/time4j/ClockUnit;->MILLIS:Lnet/time4j/ClockUnit;

    invoke-virtual {v5}, Lnet/time4j/ClockUnit;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Lnet/time4j/StdNormalizer$1;->$SwitchMap$net$time4j$ClockUnit:[I

    sget-object v6, Lnet/time4j/ClockUnit;->MICROS:Lnet/time4j/ClockUnit;

    invoke-virtual {v6}, Lnet/time4j/ClockUnit;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v5, 0x6

    :try_start_5
    sget-object v6, Lnet/time4j/StdNormalizer$1;->$SwitchMap$net$time4j$ClockUnit:[I

    sget-object v7, Lnet/time4j/ClockUnit;->NANOS:Lnet/time4j/ClockUnit;

    invoke-virtual {v7}, Lnet/time4j/ClockUnit;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    .line 113
    :catch_5
    invoke-static {}, Lnet/time4j/CalendarUnit;->values()[Lnet/time4j/CalendarUnit;

    move-result-object v6

    array-length v6, v6

    new-array v6, v6, [I

    sput-object v6, Lnet/time4j/StdNormalizer$1;->$SwitchMap$net$time4j$CalendarUnit:[I

    :try_start_6
    sget-object v7, Lnet/time4j/CalendarUnit;->MILLENNIA:Lnet/time4j/CalendarUnit;

    invoke-virtual {v7}, Lnet/time4j/CalendarUnit;->ordinal()I

    move-result v7

    aput v1, v6, v7
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v1, Lnet/time4j/StdNormalizer$1;->$SwitchMap$net$time4j$CalendarUnit:[I

    sget-object v6, Lnet/time4j/CalendarUnit;->CENTURIES:Lnet/time4j/CalendarUnit;

    invoke-virtual {v6}, Lnet/time4j/CalendarUnit;->ordinal()I

    move-result v6

    aput v0, v1, v6
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lnet/time4j/StdNormalizer$1;->$SwitchMap$net$time4j$CalendarUnit:[I

    sget-object v1, Lnet/time4j/CalendarUnit;->DECADES:Lnet/time4j/CalendarUnit;

    invoke-virtual {v1}, Lnet/time4j/CalendarUnit;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Lnet/time4j/StdNormalizer$1;->$SwitchMap$net$time4j$CalendarUnit:[I

    sget-object v1, Lnet/time4j/CalendarUnit;->YEARS:Lnet/time4j/CalendarUnit;

    invoke-virtual {v1}, Lnet/time4j/CalendarUnit;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, Lnet/time4j/StdNormalizer$1;->$SwitchMap$net$time4j$CalendarUnit:[I

    sget-object v1, Lnet/time4j/CalendarUnit;->QUARTERS:Lnet/time4j/CalendarUnit;

    invoke-virtual {v1}, Lnet/time4j/CalendarUnit;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v0, Lnet/time4j/StdNormalizer$1;->$SwitchMap$net$time4j$CalendarUnit:[I

    sget-object v1, Lnet/time4j/CalendarUnit;->MONTHS:Lnet/time4j/CalendarUnit;

    invoke-virtual {v1}, Lnet/time4j/CalendarUnit;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v0, Lnet/time4j/StdNormalizer$1;->$SwitchMap$net$time4j$CalendarUnit:[I

    sget-object v1, Lnet/time4j/CalendarUnit;->WEEKS:Lnet/time4j/CalendarUnit;

    invoke-virtual {v1}, Lnet/time4j/CalendarUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v0, Lnet/time4j/StdNormalizer$1;->$SwitchMap$net$time4j$CalendarUnit:[I

    sget-object v1, Lnet/time4j/CalendarUnit;->DAYS:Lnet/time4j/CalendarUnit;

    invoke-virtual {v1}, Lnet/time4j/CalendarUnit;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    return-void
.end method
