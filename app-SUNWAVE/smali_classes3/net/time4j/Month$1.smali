.class synthetic Lnet/time4j/Month$1;
.super Ljava/lang/Object;
.source "Month.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/Month;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$net$time4j$Month:[I

.field static final synthetic $SwitchMap$net$time4j$Quarter:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 194
    invoke-static {}, Lnet/time4j/Quarter;->values()[Lnet/time4j/Quarter;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lnet/time4j/Month$1;->$SwitchMap$net$time4j$Quarter:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lnet/time4j/Quarter;->Q1:Lnet/time4j/Quarter;

    invoke-virtual {v2}, Lnet/time4j/Quarter;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lnet/time4j/Month$1;->$SwitchMap$net$time4j$Quarter:[I

    sget-object v3, Lnet/time4j/Quarter;->Q2:Lnet/time4j/Quarter;

    invoke-virtual {v3}, Lnet/time4j/Quarter;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lnet/time4j/Month$1;->$SwitchMap$net$time4j$Quarter:[I

    sget-object v4, Lnet/time4j/Quarter;->Q3:Lnet/time4j/Quarter;

    invoke-virtual {v4}, Lnet/time4j/Quarter;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 161
    :catch_2
    invoke-static {}, Lnet/time4j/Month;->values()[Lnet/time4j/Month;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lnet/time4j/Month$1;->$SwitchMap$net$time4j$Month:[I

    :try_start_3
    sget-object v4, Lnet/time4j/Month;->JANUARY:Lnet/time4j/Month;

    invoke-virtual {v4}, Lnet/time4j/Month;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Lnet/time4j/Month$1;->$SwitchMap$net$time4j$Month:[I

    sget-object v3, Lnet/time4j/Month;->FEBRUARY:Lnet/time4j/Month;

    invoke-virtual {v3}, Lnet/time4j/Month;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lnet/time4j/Month$1;->$SwitchMap$net$time4j$Month:[I

    sget-object v1, Lnet/time4j/Month;->MARCH:Lnet/time4j/Month;

    invoke-virtual {v1}, Lnet/time4j/Month;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lnet/time4j/Month$1;->$SwitchMap$net$time4j$Month:[I

    sget-object v1, Lnet/time4j/Month;->APRIL:Lnet/time4j/Month;

    invoke-virtual {v1}, Lnet/time4j/Month;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lnet/time4j/Month$1;->$SwitchMap$net$time4j$Month:[I

    sget-object v1, Lnet/time4j/Month;->MAY:Lnet/time4j/Month;

    invoke-virtual {v1}, Lnet/time4j/Month;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lnet/time4j/Month$1;->$SwitchMap$net$time4j$Month:[I

    sget-object v1, Lnet/time4j/Month;->JUNE:Lnet/time4j/Month;

    invoke-virtual {v1}, Lnet/time4j/Month;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Lnet/time4j/Month$1;->$SwitchMap$net$time4j$Month:[I

    sget-object v1, Lnet/time4j/Month;->JULY:Lnet/time4j/Month;

    invoke-virtual {v1}, Lnet/time4j/Month;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, Lnet/time4j/Month$1;->$SwitchMap$net$time4j$Month:[I

    sget-object v1, Lnet/time4j/Month;->AUGUST:Lnet/time4j/Month;

    invoke-virtual {v1}, Lnet/time4j/Month;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v0, Lnet/time4j/Month$1;->$SwitchMap$net$time4j$Month:[I

    sget-object v1, Lnet/time4j/Month;->SEPTEMBER:Lnet/time4j/Month;

    invoke-virtual {v1}, Lnet/time4j/Month;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    return-void
.end method
