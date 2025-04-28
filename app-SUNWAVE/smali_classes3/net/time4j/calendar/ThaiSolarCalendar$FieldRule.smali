.class Lnet/time4j/calendar/ThaiSolarCalendar$FieldRule;
.super Ljava/lang/Object;
.source "ThaiSolarCalendar.java"

# interfaces
.implements Lnet/time4j/engine/ElementRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/ThaiSolarCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FieldRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Ljava/lang/Comparable<",
        "TV;>;>",
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ElementRule<",
        "Lnet/time4j/calendar/ThaiSolarCalendar;",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final element:Lnet/time4j/engine/ChronoElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoElement<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lnet/time4j/engine/ChronoElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "TV;>;)V"
        }
    .end annotation

    .line 1005
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1007
    iput-object p1, p0, Lnet/time4j/calendar/ThaiSolarCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    return-void
.end method

.method static of(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/calendar/ThaiSolarCalendar$FieldRule;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Ljava/lang/Comparable<",
            "TV;>;>(",
            "Lnet/time4j/engine/ChronoElement<",
            "TV;>;)",
            "Lnet/time4j/calendar/ThaiSolarCalendar$FieldRule<",
            "TV;>;"
        }
    .end annotation

    .line 1015
    new-instance v0, Lnet/time4j/calendar/ThaiSolarCalendar$FieldRule;

    invoke-direct {v0, p0}, Lnet/time4j/calendar/ThaiSolarCalendar$FieldRule;-><init>(Lnet/time4j/engine/ChronoElement;)V

    return-object v0
.end method

.method private static toNumber(Ljava/lang/Object;)I
    .locals 1

    .line 1157
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method


# virtual methods
.method public bridge synthetic getChildAtCeiling(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 995
    check-cast p1, Lnet/time4j/calendar/ThaiSolarCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/ThaiSolarCalendar$FieldRule;->getChildAtCeiling(Lnet/time4j/calendar/ThaiSolarCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtCeiling(Lnet/time4j/calendar/ThaiSolarCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/ThaiSolarCalendar;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 1151
    invoke-static {}, Lnet/time4j/calendar/ThaiSolarCalendar;->access$600()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lnet/time4j/calendar/ThaiSolarCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/engine/ChronoElement;

    return-object p1
.end method

.method public bridge synthetic getChildAtFloor(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 995
    check-cast p1, Lnet/time4j/calendar/ThaiSolarCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/ThaiSolarCalendar$FieldRule;->getChildAtFloor(Lnet/time4j/calendar/ThaiSolarCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtFloor(Lnet/time4j/calendar/ThaiSolarCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/ThaiSolarCalendar;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 1143
    invoke-static {}, Lnet/time4j/calendar/ThaiSolarCalendar;->access$600()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lnet/time4j/calendar/ThaiSolarCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/engine/ChronoElement;

    return-object p1
.end method

.method public getMaximum(Lnet/time4j/calendar/ThaiSolarCalendar;)Ljava/lang/Comparable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/ThaiSolarCalendar;",
            ")TV;"
        }
    .end annotation

    .line 1066
    iget-object v0, p0, Lnet/time4j/calendar/ThaiSolarCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v1, Lnet/time4j/calendar/ThaiSolarCalendar;->ERA:Lnet/time4j/engine/ChronoElement;

    if-ne v0, v1, :cond_0

    .line 1067
    sget-object p1, Lnet/time4j/calendar/ThaiSolarEra;->BUDDHIST:Lnet/time4j/calendar/ThaiSolarEra;

    goto :goto_0

    .line 1068
    :cond_0
    iget-object v0, p0, Lnet/time4j/calendar/ThaiSolarCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v1, Lnet/time4j/calendar/ThaiSolarCalendar;->YEAR_OF_ERA:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const p1, 0x3b9acc1e

    .line 1069
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    .line 1070
    :cond_1
    iget-object v0, p0, Lnet/time4j/calendar/ThaiSolarCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v1, Lnet/time4j/calendar/ThaiSolarCalendar;->MONTH_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1071
    invoke-virtual {p1}, Lnet/time4j/calendar/ThaiSolarCalendar;->getYear()I

    move-result p1

    const/16 v0, 0x9b3

    if-lt p1, v0, :cond_2

    sget-object p1, Lnet/time4j/Month;->DECEMBER:Lnet/time4j/Month;

    goto :goto_0

    :cond_2
    sget-object p1, Lnet/time4j/Month;->MARCH:Lnet/time4j/Month;

    goto :goto_0

    .line 1072
    :cond_3
    iget-object v0, p0, Lnet/time4j/calendar/ThaiSolarCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v1, Lnet/time4j/calendar/ThaiSolarCalendar;->DAY_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1073
    invoke-virtual {p1}, Lnet/time4j/calendar/ThaiSolarCalendar;->lengthOfMonth()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    .line 1074
    :cond_4
    iget-object v0, p0, Lnet/time4j/calendar/ThaiSolarCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v1, Lnet/time4j/calendar/ThaiSolarCalendar;->DAY_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1075
    invoke-virtual {p1}, Lnet/time4j/calendar/ThaiSolarCalendar;->lengthOfYear()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1080
    :goto_0
    iget-object v0, p0, Lnet/time4j/calendar/ThaiSolarCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    invoke-interface {v0}, Lnet/time4j/engine/ChronoElement;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Comparable;

    return-object p1

    .line 1077
    :cond_5
    new-instance p1, Lnet/time4j/engine/ChronoException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing rule for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/time4j/calendar/ThaiSolarCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    invoke-interface {v1}, Lnet/time4j/engine/ChronoElement;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lnet/time4j/engine/ChronoException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic getMaximum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 995
    check-cast p1, Lnet/time4j/calendar/ThaiSolarCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/ThaiSolarCalendar$FieldRule;->getMaximum(Lnet/time4j/calendar/ThaiSolarCalendar;)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/calendar/ThaiSolarCalendar;)Ljava/lang/Comparable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/ThaiSolarCalendar;",
            ")TV;"
        }
    .end annotation

    .line 1047
    iget-object v0, p0, Lnet/time4j/calendar/ThaiSolarCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v1, Lnet/time4j/calendar/ThaiSolarCalendar;->ERA:Lnet/time4j/engine/ChronoElement;

    if-ne v0, v1, :cond_0

    .line 1048
    sget-object p1, Lnet/time4j/calendar/ThaiSolarEra;->BUDDHIST:Lnet/time4j/calendar/ThaiSolarEra;

    goto :goto_0

    .line 1049
    :cond_0
    const-class v0, Ljava/lang/Integer;

    iget-object v1, p0, Lnet/time4j/calendar/ThaiSolarCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    invoke-interface {v1}, Lnet/time4j/engine/ChronoElement;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 1050
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    .line 1051
    :cond_1
    iget-object v0, p0, Lnet/time4j/calendar/ThaiSolarCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v1, Lnet/time4j/calendar/ThaiSolarCalendar;->MONTH_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1052
    invoke-static {p1}, Lnet/time4j/calendar/ThaiSolarCalendar;->access$400(Lnet/time4j/calendar/ThaiSolarCalendar;)Lnet/time4j/PlainDate;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/PlainDate;->getYear()I

    move-result p1

    const/16 v0, 0x795

    if-lt p1, v0, :cond_2

    sget-object p1, Lnet/time4j/Month;->JANUARY:Lnet/time4j/Month;

    goto :goto_0

    :cond_2
    sget-object p1, Lnet/time4j/Month;->APRIL:Lnet/time4j/Month;

    .line 1057
    :goto_0
    iget-object v0, p0, Lnet/time4j/calendar/ThaiSolarCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    invoke-interface {v0}, Lnet/time4j/engine/ChronoElement;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Comparable;

    return-object p1

    .line 1054
    :cond_3
    new-instance p1, Lnet/time4j/engine/ChronoException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing rule for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/time4j/calendar/ThaiSolarCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    invoke-interface {v1}, Lnet/time4j/engine/ChronoElement;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lnet/time4j/engine/ChronoException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 995
    check-cast p1, Lnet/time4j/calendar/ThaiSolarCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/ThaiSolarCalendar$FieldRule;->getMinimum(Lnet/time4j/calendar/ThaiSolarCalendar;)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lnet/time4j/calendar/ThaiSolarCalendar;)Ljava/lang/Comparable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/ThaiSolarCalendar;",
            ")TV;"
        }
    .end annotation

    .line 1024
    iget-object v0, p0, Lnet/time4j/calendar/ThaiSolarCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v1, Lnet/time4j/calendar/ThaiSolarCalendar;->ERA:Lnet/time4j/engine/ChronoElement;

    if-ne v0, v1, :cond_0

    .line 1025
    invoke-virtual {p1}, Lnet/time4j/calendar/ThaiSolarCalendar;->getEra()Lnet/time4j/calendar/ThaiSolarEra;

    move-result-object p1

    goto :goto_0

    .line 1026
    :cond_0
    iget-object v0, p0, Lnet/time4j/calendar/ThaiSolarCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v1, Lnet/time4j/calendar/ThaiSolarCalendar;->YEAR_OF_ERA:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1027
    invoke-virtual {p1}, Lnet/time4j/calendar/ThaiSolarCalendar;->getYear()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    .line 1028
    :cond_1
    iget-object v0, p0, Lnet/time4j/calendar/ThaiSolarCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v1, Lnet/time4j/calendar/ThaiSolarCalendar;->MONTH_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1029
    invoke-virtual {p1}, Lnet/time4j/calendar/ThaiSolarCalendar;->getMonth()Lnet/time4j/Month;

    move-result-object p1

    goto :goto_0

    .line 1030
    :cond_2
    iget-object v0, p0, Lnet/time4j/calendar/ThaiSolarCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v1, Lnet/time4j/calendar/ThaiSolarCalendar;->DAY_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1031
    invoke-virtual {p1}, Lnet/time4j/calendar/ThaiSolarCalendar;->getDayOfMonth()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    .line 1032
    :cond_3
    iget-object v0, p0, Lnet/time4j/calendar/ThaiSolarCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v1, Lnet/time4j/calendar/ThaiSolarCalendar;->DAY_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1033
    invoke-virtual {p1}, Lnet/time4j/calendar/ThaiSolarCalendar;->getDayOfYear()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1038
    :goto_0
    iget-object v0, p0, Lnet/time4j/calendar/ThaiSolarCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    invoke-interface {v0}, Lnet/time4j/engine/ChronoElement;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Comparable;

    return-object p1

    .line 1035
    :cond_4
    new-instance p1, Lnet/time4j/engine/ChronoException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing rule for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/time4j/calendar/ThaiSolarCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    invoke-interface {v1}, Lnet/time4j/engine/ChronoElement;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lnet/time4j/engine/ChronoException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 995
    check-cast p1, Lnet/time4j/calendar/ThaiSolarCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/ThaiSolarCalendar$FieldRule;->getValue(Lnet/time4j/calendar/ThaiSolarCalendar;)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 995
    check-cast p1, Lnet/time4j/calendar/ThaiSolarCalendar;

    check-cast p2, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/ThaiSolarCalendar$FieldRule;->isValid(Lnet/time4j/calendar/ThaiSolarCalendar;Ljava/lang/Comparable;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/calendar/ThaiSolarCalendar;Ljava/lang/Comparable;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/ThaiSolarCalendar;",
            "TV;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 1092
    :cond_0
    iget-object v1, p0, Lnet/time4j/calendar/ThaiSolarCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    invoke-interface {v1}, Lnet/time4j/engine/ChronoElement;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 1093
    iget-object v1, p0, Lnet/time4j/calendar/ThaiSolarCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v3, Lnet/time4j/calendar/ThaiSolarCalendar;->MONTH_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lnet/time4j/calendar/ThaiSolarCalendar;->getYear()I

    move-result p1

    const/16 v1, 0x9b3

    if-ne p1, v1, :cond_2

    .line 1094
    const-class p1, Lnet/time4j/Month;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/Month;

    invoke-virtual {p1}, Lnet/time4j/Month;->getValue()I

    move-result p1

    const/4 p2, 0x4

    if-lt p1, p2, :cond_1

    move v0, v2

    :cond_1
    return v0

    :cond_2
    return v2

    .line 1099
    :cond_3
    invoke-virtual {p0, p1}, Lnet/time4j/calendar/ThaiSolarCalendar$FieldRule;->getMinimum(Lnet/time4j/calendar/ThaiSolarCalendar;)Ljava/lang/Comparable;

    move-result-object v1

    .line 1100
    invoke-virtual {p0, p1}, Lnet/time4j/calendar/ThaiSolarCalendar$FieldRule;->getMaximum(Lnet/time4j/calendar/ThaiSolarCalendar;)Ljava/lang/Comparable;

    move-result-object p1

    .line 1102
    invoke-interface {v1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_4

    invoke-interface {p2, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    if-gtz p1, :cond_4

    move v0, v2

    :cond_4
    return v0
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0

    .line 995
    check-cast p1, Lnet/time4j/calendar/ThaiSolarCalendar;

    check-cast p2, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/ThaiSolarCalendar$FieldRule;->withValue(Lnet/time4j/calendar/ThaiSolarCalendar;Ljava/lang/Comparable;Z)Lnet/time4j/calendar/ThaiSolarCalendar;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/calendar/ThaiSolarCalendar;Ljava/lang/Comparable;Z)Lnet/time4j/calendar/ThaiSolarCalendar;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/ThaiSolarCalendar;",
            "TV;Z)",
            "Lnet/time4j/calendar/ThaiSolarCalendar;"
        }
    .end annotation

    .line 1113
    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/ThaiSolarCalendar$FieldRule;->isValid(Lnet/time4j/calendar/ThaiSolarCalendar;Ljava/lang/Comparable;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 1117
    iget-object p3, p0, Lnet/time4j/calendar/ThaiSolarCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v0, Lnet/time4j/calendar/ThaiSolarCalendar;->ERA:Lnet/time4j/engine/ChronoElement;

    if-ne p3, v0, :cond_0

    return-object p1

    .line 1119
    :cond_0
    iget-object p3, p0, Lnet/time4j/calendar/ThaiSolarCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v0, Lnet/time4j/calendar/ThaiSolarCalendar;->YEAR_OF_ERA:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_1

    .line 1120
    invoke-static {p2}, Lnet/time4j/calendar/ThaiSolarCalendar$FieldRule;->toNumber(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {p1}, Lnet/time4j/calendar/ThaiSolarCalendar;->getMonth()Lnet/time4j/Month;

    move-result-object p3

    invoke-static {p2, p3, v0}, Lnet/time4j/calendar/ThaiSolarCalendar;->ofBuddhist(ILnet/time4j/Month;I)Lnet/time4j/calendar/ThaiSolarCalendar;

    move-result-object p2

    .line 1121
    sget-object p3, Lnet/time4j/calendar/ThaiSolarCalendar;->DAY_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p1}, Lnet/time4j/calendar/ThaiSolarCalendar;->getDayOfMonth()I

    move-result p1

    invoke-virtual {p2}, Lnet/time4j/calendar/ThaiSolarCalendar;->lengthOfMonth()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p2, p3, p1}, Lnet/time4j/calendar/ThaiSolarCalendar;->with(Lnet/time4j/engine/ChronoElement;I)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/ThaiSolarCalendar;

    return-object p1

    .line 1122
    :cond_1
    iget-object p3, p0, Lnet/time4j/calendar/ThaiSolarCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v1, Lnet/time4j/calendar/ThaiSolarCalendar;->MONTH_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 1123
    invoke-virtual {p1}, Lnet/time4j/calendar/ThaiSolarCalendar;->getYear()I

    move-result p3

    const-class v1, Lnet/time4j/Month;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/time4j/Month;

    invoke-static {p3, p2, v0}, Lnet/time4j/calendar/ThaiSolarCalendar;->ofBuddhist(ILnet/time4j/Month;I)Lnet/time4j/calendar/ThaiSolarCalendar;

    move-result-object p2

    .line 1124
    sget-object p3, Lnet/time4j/calendar/ThaiSolarCalendar;->DAY_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p1}, Lnet/time4j/calendar/ThaiSolarCalendar;->getDayOfMonth()I

    move-result p1

    invoke-virtual {p2}, Lnet/time4j/calendar/ThaiSolarCalendar;->lengthOfMonth()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p2, p3, p1}, Lnet/time4j/calendar/ThaiSolarCalendar;->with(Lnet/time4j/engine/ChronoElement;I)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/ThaiSolarCalendar;

    return-object p1

    .line 1125
    :cond_2
    iget-object p3, p0, Lnet/time4j/calendar/ThaiSolarCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v1, Lnet/time4j/calendar/ThaiSolarCalendar;->DAY_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v1, 0x0

    if-eqz p3, :cond_3

    .line 1126
    invoke-static {p1}, Lnet/time4j/calendar/ThaiSolarCalendar;->access$400(Lnet/time4j/calendar/ThaiSolarCalendar;)Lnet/time4j/PlainDate;

    move-result-object p1

    sget-object p3, Lnet/time4j/PlainDate;->DAY_OF_MONTH:Lnet/time4j/ProportionalElement;

    invoke-static {p2}, Lnet/time4j/calendar/ThaiSolarCalendar$FieldRule;->toNumber(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {p1, p3, p2}, Lnet/time4j/PlainDate;->with(Lnet/time4j/engine/ChronoElement;I)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainDate;

    .line 1127
    new-instance p2, Lnet/time4j/calendar/ThaiSolarCalendar;

    invoke-direct {p2, p1, v1}, Lnet/time4j/calendar/ThaiSolarCalendar;-><init>(Lnet/time4j/PlainDate;Lnet/time4j/calendar/ThaiSolarCalendar$1;)V

    return-object p2

    .line 1128
    :cond_3
    iget-object p3, p0, Lnet/time4j/calendar/ThaiSolarCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v2, Lnet/time4j/calendar/ThaiSolarCalendar;->DAY_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 1129
    invoke-static {p1}, Lnet/time4j/calendar/ThaiSolarCalendar;->access$400(Lnet/time4j/calendar/ThaiSolarCalendar;)Lnet/time4j/PlainDate;

    move-result-object p3

    invoke-virtual {p3}, Lnet/time4j/PlainDate;->getYear()I

    move-result p3

    const/16 v2, 0x795

    if-lt p3, v2, :cond_4

    move p3, v0

    goto :goto_0

    :cond_4
    const/4 p3, 0x4

    .line 1130
    :goto_0
    invoke-virtual {p1}, Lnet/time4j/calendar/ThaiSolarCalendar;->getYear()I

    move-result p1

    invoke-static {p1, p3, v0}, Lnet/time4j/calendar/ThaiSolarCalendar;->ofBuddhist(III)Lnet/time4j/calendar/ThaiSolarCalendar;

    move-result-object p1

    .line 1131
    invoke-static {p1}, Lnet/time4j/calendar/ThaiSolarCalendar;->access$400(Lnet/time4j/calendar/ThaiSolarCalendar;)Lnet/time4j/PlainDate;

    move-result-object p1

    invoke-static {p2}, Lnet/time4j/calendar/ThaiSolarCalendar$FieldRule;->toNumber(Ljava/lang/Object;)I

    move-result p2

    sub-int/2addr p2, v0

    int-to-long p2, p2

    sget-object v0, Lnet/time4j/CalendarUnit;->DAYS:Lnet/time4j/CalendarUnit;

    invoke-virtual {p1, p2, p3, v0}, Lnet/time4j/PlainDate;->plus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainDate;

    .line 1132
    new-instance p2, Lnet/time4j/calendar/ThaiSolarCalendar;

    invoke-direct {p2, p1, v1}, Lnet/time4j/calendar/ThaiSolarCalendar;-><init>(Lnet/time4j/PlainDate;Lnet/time4j/calendar/ThaiSolarCalendar$1;)V

    return-object p2

    .line 1135
    :cond_5
    new-instance p1, Lnet/time4j/engine/ChronoException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Missing rule for: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lnet/time4j/calendar/ThaiSolarCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    invoke-interface {p3}, Lnet/time4j/engine/ChronoElement;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/time4j/engine/ChronoException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1114
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Out of range: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
