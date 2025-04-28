.class synthetic Lnet/time4j/history/HistoricEra$1;
.super Ljava/lang/Object;
.source "HistoricEra.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/history/HistoricEra;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$net$time4j$history$HistoricEra:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 226
    invoke-static {}, Lnet/time4j/history/HistoricEra;->values()[Lnet/time4j/history/HistoricEra;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lnet/time4j/history/HistoricEra$1;->$SwitchMap$net$time4j$history$HistoricEra:[I

    :try_start_0
    sget-object v1, Lnet/time4j/history/HistoricEra;->BC:Lnet/time4j/history/HistoricEra;

    invoke-virtual {v1}, Lnet/time4j/history/HistoricEra;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lnet/time4j/history/HistoricEra$1;->$SwitchMap$net$time4j$history$HistoricEra:[I

    sget-object v1, Lnet/time4j/history/HistoricEra;->AD:Lnet/time4j/history/HistoricEra;

    invoke-virtual {v1}, Lnet/time4j/history/HistoricEra;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lnet/time4j/history/HistoricEra$1;->$SwitchMap$net$time4j$history$HistoricEra:[I

    sget-object v1, Lnet/time4j/history/HistoricEra;->HISPANIC:Lnet/time4j/history/HistoricEra;

    invoke-virtual {v1}, Lnet/time4j/history/HistoricEra;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lnet/time4j/history/HistoricEra$1;->$SwitchMap$net$time4j$history$HistoricEra:[I

    sget-object v1, Lnet/time4j/history/HistoricEra;->BYZANTINE:Lnet/time4j/history/HistoricEra;

    invoke-virtual {v1}, Lnet/time4j/history/HistoricEra;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lnet/time4j/history/HistoricEra$1;->$SwitchMap$net$time4j$history$HistoricEra:[I

    sget-object v1, Lnet/time4j/history/HistoricEra;->AB_URBE_CONDITA:Lnet/time4j/history/HistoricEra;

    invoke-virtual {v1}, Lnet/time4j/history/HistoricEra;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method
