.class abstract enum Lnet/time4j/history/CalendarAlgorithm;
.super Ljava/lang/Enum;
.source "CalendarAlgorithm.java"

# interfaces
.implements Lnet/time4j/history/Calculus;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/time4j/history/CalendarAlgorithm;",
        ">;",
        "Lnet/time4j/history/Calculus;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/time4j/history/CalendarAlgorithm;

.field public static final enum GREGORIAN:Lnet/time4j/history/CalendarAlgorithm;

.field public static final enum JULIAN:Lnet/time4j/history/CalendarAlgorithm;

.field public static final enum SWEDISH:Lnet/time4j/history/CalendarAlgorithm;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 36
    new-instance v0, Lnet/time4j/history/CalendarAlgorithm$1;

    const-string v1, "GREGORIAN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/time4j/history/CalendarAlgorithm$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/time4j/history/CalendarAlgorithm;->GREGORIAN:Lnet/time4j/history/CalendarAlgorithm;

    .line 67
    new-instance v1, Lnet/time4j/history/CalendarAlgorithm$2;

    const-string v3, "JULIAN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/time4j/history/CalendarAlgorithm$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/time4j/history/CalendarAlgorithm;->JULIAN:Lnet/time4j/history/CalendarAlgorithm;

    .line 102
    new-instance v3, Lnet/time4j/history/CalendarAlgorithm$3;

    const-string v5, "SWEDISH"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lnet/time4j/history/CalendarAlgorithm$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/time4j/history/CalendarAlgorithm;->SWEDISH:Lnet/time4j/history/CalendarAlgorithm;

    const/4 v5, 0x3

    new-array v5, v5, [Lnet/time4j/history/CalendarAlgorithm;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 31
    sput-object v5, Lnet/time4j/history/CalendarAlgorithm;->$VALUES:[Lnet/time4j/history/CalendarAlgorithm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILnet/time4j/history/CalendarAlgorithm$1;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lnet/time4j/history/CalendarAlgorithm;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100(Lnet/time4j/history/HistoricDate;)I
    .locals 0

    .line 31
    invoke-static {p0}, Lnet/time4j/history/CalendarAlgorithm;->getProlepticYear(Lnet/time4j/history/HistoricDate;)I

    move-result p0

    return p0
.end method

.method private static getProlepticYear(Lnet/time4j/history/HistoricDate;)I
    .locals 1

    .line 154
    invoke-virtual {p0}, Lnet/time4j/history/HistoricDate;->getEra()Lnet/time4j/history/HistoricEra;

    move-result-object v0

    invoke-virtual {p0}, Lnet/time4j/history/HistoricDate;->getYearOfEra()I

    move-result p0

    invoke-virtual {v0, p0}, Lnet/time4j/history/HistoricEra;->annoDomini(I)I

    move-result p0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/time4j/history/CalendarAlgorithm;
    .locals 1

    .line 31
    const-class v0, Lnet/time4j/history/CalendarAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/time4j/history/CalendarAlgorithm;

    return-object p0
.end method

.method public static values()[Lnet/time4j/history/CalendarAlgorithm;
    .locals 1

    .line 31
    sget-object v0, Lnet/time4j/history/CalendarAlgorithm;->$VALUES:[Lnet/time4j/history/CalendarAlgorithm;

    invoke-virtual {v0}, [Lnet/time4j/history/CalendarAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/time4j/history/CalendarAlgorithm;

    return-object v0
.end method
