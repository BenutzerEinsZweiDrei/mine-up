.class public final enum Lnet/time4j/history/internal/HistoricVariant;
.super Ljava/lang/Enum;
.source "HistoricVariant.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/time4j/history/internal/HistoricVariant;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/time4j/history/internal/HistoricVariant;

.field public static final enum INTRODUCTION_ON_1582_10_15:Lnet/time4j/history/internal/HistoricVariant;

.field public static final enum PROLEPTIC_BYZANTINE:Lnet/time4j/history/internal/HistoricVariant;

.field public static final enum PROLEPTIC_GREGORIAN:Lnet/time4j/history/internal/HistoricVariant;

.field public static final enum PROLEPTIC_JULIAN:Lnet/time4j/history/internal/HistoricVariant;

.field public static final enum SINGLE_CUTOVER_DATE:Lnet/time4j/history/internal/HistoricVariant;

.field public static final enum SWEDEN:Lnet/time4j/history/internal/HistoricVariant;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 45
    new-instance v0, Lnet/time4j/history/internal/HistoricVariant;

    const-string v1, "PROLEPTIC_JULIAN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/time4j/history/internal/HistoricVariant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/time4j/history/internal/HistoricVariant;->PROLEPTIC_JULIAN:Lnet/time4j/history/internal/HistoricVariant;

    .line 53
    new-instance v1, Lnet/time4j/history/internal/HistoricVariant;

    const-string v3, "PROLEPTIC_GREGORIAN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/time4j/history/internal/HistoricVariant;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/time4j/history/internal/HistoricVariant;->PROLEPTIC_GREGORIAN:Lnet/time4j/history/internal/HistoricVariant;

    .line 61
    new-instance v3, Lnet/time4j/history/internal/HistoricVariant;

    const-string v5, "SWEDEN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lnet/time4j/history/internal/HistoricVariant;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/time4j/history/internal/HistoricVariant;->SWEDEN:Lnet/time4j/history/internal/HistoricVariant;

    .line 69
    new-instance v5, Lnet/time4j/history/internal/HistoricVariant;

    const-string v7, "INTRODUCTION_ON_1582_10_15"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lnet/time4j/history/internal/HistoricVariant;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lnet/time4j/history/internal/HistoricVariant;->INTRODUCTION_ON_1582_10_15:Lnet/time4j/history/internal/HistoricVariant;

    .line 77
    new-instance v7, Lnet/time4j/history/internal/HistoricVariant;

    const-string v9, "SINGLE_CUTOVER_DATE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lnet/time4j/history/internal/HistoricVariant;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lnet/time4j/history/internal/HistoricVariant;->SINGLE_CUTOVER_DATE:Lnet/time4j/history/internal/HistoricVariant;

    .line 85
    new-instance v9, Lnet/time4j/history/internal/HistoricVariant;

    const-string v11, "PROLEPTIC_BYZANTINE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lnet/time4j/history/internal/HistoricVariant;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lnet/time4j/history/internal/HistoricVariant;->PROLEPTIC_BYZANTINE:Lnet/time4j/history/internal/HistoricVariant;

    const/4 v11, 0x6

    new-array v11, v11, [Lnet/time4j/history/internal/HistoricVariant;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 35
    sput-object v11, Lnet/time4j/history/internal/HistoricVariant;->$VALUES:[Lnet/time4j/history/internal/HistoricVariant;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/time4j/history/internal/HistoricVariant;
    .locals 1

    .line 35
    const-class v0, Lnet/time4j/history/internal/HistoricVariant;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/time4j/history/internal/HistoricVariant;

    return-object p0
.end method

.method public static values()[Lnet/time4j/history/internal/HistoricVariant;
    .locals 1

    .line 35
    sget-object v0, Lnet/time4j/history/internal/HistoricVariant;->$VALUES:[Lnet/time4j/history/internal/HistoricVariant;

    invoke-virtual {v0}, [Lnet/time4j/history/internal/HistoricVariant;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/time4j/history/internal/HistoricVariant;

    return-object v0
.end method


# virtual methods
.method public getSerialValue()I
    .locals 3

    .line 96
    sget-object v0, Lnet/time4j/history/internal/HistoricVariant$1;->$SwitchMap$net$time4j$history$internal$HistoricVariant:[I

    invoke-virtual {p0}, Lnet/time4j/history/internal/HistoricVariant;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v2

    :cond_1
    const/4 v0, 0x7

    return v0

    :cond_2
    return v1

    :cond_3
    return v2

    :cond_4
    return v1
.end method
