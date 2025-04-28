.class public final enum Lnet/time4j/calendar/KoreanEra;
.super Ljava/lang/Enum;
.source "KoreanEra.java"

# interfaces
.implements Lnet/time4j/engine/CalendarEra;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/time4j/calendar/KoreanEra$GregorianYearOfEraRule;,
        Lnet/time4j/calendar/KoreanEra$YearOfEraElement;,
        Lnet/time4j/calendar/KoreanEra$EraRule;,
        Lnet/time4j/calendar/KoreanEra$EraElement;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/time4j/calendar/KoreanEra;",
        ">;",
        "Lnet/time4j/engine/CalendarEra;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/time4j/calendar/KoreanEra;

.field public static final enum DANGI:Lnet/time4j/calendar/KoreanEra;


# instance fields
.field private final transient eraElement:Lnet/time4j/engine/ChronoElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoElement<",
            "Lnet/time4j/calendar/KoreanEra;",
            ">;"
        }
    .end annotation
.end field

.field private final transient yearOfEraElement:Lnet/time4j/engine/ChronoElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 75
    new-instance v0, Lnet/time4j/calendar/KoreanEra;

    const-string v1, "DANGI"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/time4j/calendar/KoreanEra;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/time4j/calendar/KoreanEra;->DANGI:Lnet/time4j/calendar/KoreanEra;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/time4j/calendar/KoreanEra;

    aput-object v0, v1, v2

    .line 59
    sput-object v1, Lnet/time4j/calendar/KoreanEra;->$VALUES:[Lnet/time4j/calendar/KoreanEra;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 79
    new-instance p1, Lnet/time4j/calendar/KoreanEra$EraElement;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lnet/time4j/calendar/KoreanEra$EraElement;-><init>(Lnet/time4j/calendar/KoreanEra$1;)V

    iput-object p1, p0, Lnet/time4j/calendar/KoreanEra;->eraElement:Lnet/time4j/engine/ChronoElement;

    .line 80
    new-instance p1, Lnet/time4j/calendar/KoreanEra$YearOfEraElement;

    invoke-direct {p1, p2}, Lnet/time4j/calendar/KoreanEra$YearOfEraElement;-><init>(Lnet/time4j/calendar/KoreanEra$1;)V

    iput-object p1, p0, Lnet/time4j/calendar/KoreanEra;->yearOfEraElement:Lnet/time4j/engine/ChronoElement;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/time4j/calendar/KoreanEra;
    .locals 1

    .line 59
    const-class v0, Lnet/time4j/calendar/KoreanEra;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/time4j/calendar/KoreanEra;

    return-object p0
.end method

.method public static values()[Lnet/time4j/calendar/KoreanEra;
    .locals 1

    .line 59
    sget-object v0, Lnet/time4j/calendar/KoreanEra;->$VALUES:[Lnet/time4j/calendar/KoreanEra;

    invoke-virtual {v0}, [Lnet/time4j/calendar/KoreanEra;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/time4j/calendar/KoreanEra;

    return-object v0
.end method


# virtual methods
.method era()Lnet/time4j/engine/ChronoElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/ChronoElement<",
            "Lnet/time4j/calendar/KoreanEra;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        format = "G"
    .end annotation

    .line 157
    iget-object v0, p0, Lnet/time4j/calendar/KoreanEra;->eraElement:Lnet/time4j/engine/ChronoElement;

    return-object v0
.end method

.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 100
    sget-object v0, Lnet/time4j/format/TextWidth;->WIDE:Lnet/time4j/format/TextWidth;

    invoke-virtual {p0, p1, v0}, Lnet/time4j/calendar/KoreanEra;->getDisplayName(Ljava/util/Locale;Lnet/time4j/format/TextWidth;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDisplayName(Ljava/util/Locale;Lnet/time4j/format/TextWidth;)Ljava/lang/String;
    .locals 1

    const-string v0, "dangi"

    .line 131
    invoke-static {v0, p1}, Lnet/time4j/format/CalendarText;->getInstance(Ljava/lang/String;Ljava/util/Locale;)Lnet/time4j/format/CalendarText;

    move-result-object p1

    .line 132
    invoke-virtual {p1, p2}, Lnet/time4j/format/CalendarText;->getEras(Lnet/time4j/format/TextWidth;)Lnet/time4j/format/TextAccessor;

    move-result-object p1

    invoke-virtual {p1, p0}, Lnet/time4j/format/TextAccessor;->print(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method yearOfEra()Lnet/time4j/engine/ChronoElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        format = "y"
    .end annotation

    .line 174
    iget-object v0, p0, Lnet/time4j/calendar/KoreanEra;->yearOfEraElement:Lnet/time4j/engine/ChronoElement;

    return-object v0
.end method
