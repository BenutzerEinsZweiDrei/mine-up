.class synthetic Lnet/time4j/history/ChronoHistory$1;
.super Ljava/lang/Object;
.source "ChronoHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/history/ChronoHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$net$time4j$history$HistoricEra:[I

.field static final synthetic $SwitchMap$net$time4j$history$YearDefinition:[I

.field static final synthetic $SwitchMap$net$time4j$history$internal$HistoricVariant:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1566
    invoke-static {}, Lnet/time4j/history/YearDefinition;->values()[Lnet/time4j/history/YearDefinition;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lnet/time4j/history/ChronoHistory$1;->$SwitchMap$net$time4j$history$YearDefinition:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lnet/time4j/history/YearDefinition;->DUAL_DATING:Lnet/time4j/history/YearDefinition;

    invoke-virtual {v2}, Lnet/time4j/history/YearDefinition;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lnet/time4j/history/ChronoHistory$1;->$SwitchMap$net$time4j$history$YearDefinition:[I

    sget-object v3, Lnet/time4j/history/YearDefinition;->AFTER_NEW_YEAR:Lnet/time4j/history/YearDefinition;

    invoke-virtual {v3}, Lnet/time4j/history/YearDefinition;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lnet/time4j/history/ChronoHistory$1;->$SwitchMap$net$time4j$history$YearDefinition:[I

    sget-object v4, Lnet/time4j/history/YearDefinition;->BEFORE_NEW_YEAR:Lnet/time4j/history/YearDefinition;

    invoke-virtual {v4}, Lnet/time4j/history/YearDefinition;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 950
    :catch_2
    invoke-static {}, Lnet/time4j/history/HistoricEra;->values()[Lnet/time4j/history/HistoricEra;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lnet/time4j/history/ChronoHistory$1;->$SwitchMap$net$time4j$history$HistoricEra:[I

    :try_start_3
    sget-object v4, Lnet/time4j/history/HistoricEra;->HISPANIC:Lnet/time4j/history/HistoricEra;

    invoke-virtual {v4}, Lnet/time4j/history/HistoricEra;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v3, Lnet/time4j/history/ChronoHistory$1;->$SwitchMap$net$time4j$history$HistoricEra:[I

    sget-object v4, Lnet/time4j/history/HistoricEra;->BYZANTINE:Lnet/time4j/history/HistoricEra;

    invoke-virtual {v4}, Lnet/time4j/history/HistoricEra;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v3, Lnet/time4j/history/ChronoHistory$1;->$SwitchMap$net$time4j$history$HistoricEra:[I

    sget-object v4, Lnet/time4j/history/HistoricEra;->AB_URBE_CONDITA:Lnet/time4j/history/HistoricEra;

    invoke-virtual {v4}, Lnet/time4j/history/HistoricEra;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    .line 879
    :catch_5
    invoke-static {}, Lnet/time4j/history/internal/HistoricVariant;->values()[Lnet/time4j/history/internal/HistoricVariant;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lnet/time4j/history/ChronoHistory$1;->$SwitchMap$net$time4j$history$internal$HistoricVariant:[I

    :try_start_6
    sget-object v4, Lnet/time4j/history/internal/HistoricVariant;->PROLEPTIC_GREGORIAN:Lnet/time4j/history/internal/HistoricVariant;

    invoke-virtual {v4}, Lnet/time4j/history/internal/HistoricVariant;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v1, Lnet/time4j/history/ChronoHistory$1;->$SwitchMap$net$time4j$history$internal$HistoricVariant:[I

    sget-object v3, Lnet/time4j/history/internal/HistoricVariant;->PROLEPTIC_JULIAN:Lnet/time4j/history/internal/HistoricVariant;

    invoke-virtual {v3}, Lnet/time4j/history/internal/HistoricVariant;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lnet/time4j/history/ChronoHistory$1;->$SwitchMap$net$time4j$history$internal$HistoricVariant:[I

    sget-object v1, Lnet/time4j/history/internal/HistoricVariant;->PROLEPTIC_BYZANTINE:Lnet/time4j/history/internal/HistoricVariant;

    invoke-virtual {v1}, Lnet/time4j/history/internal/HistoricVariant;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Lnet/time4j/history/ChronoHistory$1;->$SwitchMap$net$time4j$history$internal$HistoricVariant:[I

    sget-object v1, Lnet/time4j/history/internal/HistoricVariant;->SWEDEN:Lnet/time4j/history/internal/HistoricVariant;

    invoke-virtual {v1}, Lnet/time4j/history/internal/HistoricVariant;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, Lnet/time4j/history/ChronoHistory$1;->$SwitchMap$net$time4j$history$internal$HistoricVariant:[I

    sget-object v1, Lnet/time4j/history/internal/HistoricVariant;->INTRODUCTION_ON_1582_10_15:Lnet/time4j/history/internal/HistoricVariant;

    invoke-virtual {v1}, Lnet/time4j/history/internal/HistoricVariant;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v0, Lnet/time4j/history/ChronoHistory$1;->$SwitchMap$net$time4j$history$internal$HistoricVariant:[I

    sget-object v1, Lnet/time4j/history/internal/HistoricVariant;->SINGLE_CUTOVER_DATE:Lnet/time4j/history/internal/HistoricVariant;

    invoke-virtual {v1}, Lnet/time4j/history/internal/HistoricVariant;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    return-void
.end method
