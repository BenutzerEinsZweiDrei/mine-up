.class synthetic Lnet/time4j/CalendarUnit$9;
.super Ljava/lang/Object;
.source "CalendarUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/CalendarUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$net$time4j$CalendarUnit:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 277
    invoke-static {}, Lnet/time4j/CalendarUnit;->values()[Lnet/time4j/CalendarUnit;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lnet/time4j/CalendarUnit$9;->$SwitchMap$net$time4j$CalendarUnit:[I

    :try_start_0
    sget-object v1, Lnet/time4j/CalendarUnit;->WEEKS:Lnet/time4j/CalendarUnit;

    invoke-virtual {v1}, Lnet/time4j/CalendarUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lnet/time4j/CalendarUnit$9;->$SwitchMap$net$time4j$CalendarUnit:[I

    sget-object v1, Lnet/time4j/CalendarUnit;->DAYS:Lnet/time4j/CalendarUnit;

    invoke-virtual {v1}, Lnet/time4j/CalendarUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lnet/time4j/CalendarUnit$9;->$SwitchMap$net$time4j$CalendarUnit:[I

    sget-object v1, Lnet/time4j/CalendarUnit;->MILLENNIA:Lnet/time4j/CalendarUnit;

    invoke-virtual {v1}, Lnet/time4j/CalendarUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lnet/time4j/CalendarUnit$9;->$SwitchMap$net$time4j$CalendarUnit:[I

    sget-object v1, Lnet/time4j/CalendarUnit;->CENTURIES:Lnet/time4j/CalendarUnit;

    invoke-virtual {v1}, Lnet/time4j/CalendarUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lnet/time4j/CalendarUnit$9;->$SwitchMap$net$time4j$CalendarUnit:[I

    sget-object v1, Lnet/time4j/CalendarUnit;->DECADES:Lnet/time4j/CalendarUnit;

    invoke-virtual {v1}, Lnet/time4j/CalendarUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lnet/time4j/CalendarUnit$9;->$SwitchMap$net$time4j$CalendarUnit:[I

    sget-object v1, Lnet/time4j/CalendarUnit;->YEARS:Lnet/time4j/CalendarUnit;

    invoke-virtual {v1}, Lnet/time4j/CalendarUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lnet/time4j/CalendarUnit$9;->$SwitchMap$net$time4j$CalendarUnit:[I

    sget-object v1, Lnet/time4j/CalendarUnit;->QUARTERS:Lnet/time4j/CalendarUnit;

    invoke-virtual {v1}, Lnet/time4j/CalendarUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lnet/time4j/CalendarUnit$9;->$SwitchMap$net$time4j$CalendarUnit:[I

    sget-object v1, Lnet/time4j/CalendarUnit;->MONTHS:Lnet/time4j/CalendarUnit;

    invoke-virtual {v1}, Lnet/time4j/CalendarUnit;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    return-void
.end method
