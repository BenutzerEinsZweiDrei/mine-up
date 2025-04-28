.class Lnet/time4j/calendar/MinguoCalendar$FieldRule;
.super Ljava/lang/Object;
.source "MinguoCalendar.java"

# interfaces
.implements Lnet/time4j/engine/ElementRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/MinguoCalendar;
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
        "Lnet/time4j/calendar/MinguoCalendar;",
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

    .line 919
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 921
    iput-object p1, p0, Lnet/time4j/calendar/MinguoCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    return-void
.end method

.method static of(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/calendar/MinguoCalendar$FieldRule;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Ljava/lang/Comparable<",
            "TV;>;>(",
            "Lnet/time4j/engine/ChronoElement<",
            "TV;>;)",
            "Lnet/time4j/calendar/MinguoCalendar$FieldRule<",
            "TV;>;"
        }
    .end annotation

    .line 929
    new-instance v0, Lnet/time4j/calendar/MinguoCalendar$FieldRule;

    invoke-direct {v0, p0}, Lnet/time4j/calendar/MinguoCalendar$FieldRule;-><init>(Lnet/time4j/engine/ChronoElement;)V

    return-object v0
.end method

.method private static toNumber(Ljava/lang/Object;)I
    .locals 1

    .line 1070
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

    .line 909
    check-cast p1, Lnet/time4j/calendar/MinguoCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/MinguoCalendar$FieldRule;->getChildAtCeiling(Lnet/time4j/calendar/MinguoCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtCeiling(Lnet/time4j/calendar/MinguoCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/MinguoCalendar;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 1064
    invoke-static {}, Lnet/time4j/calendar/MinguoCalendar;->access$600()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lnet/time4j/calendar/MinguoCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/engine/ChronoElement;

    return-object p1
.end method

.method public bridge synthetic getChildAtFloor(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 909
    check-cast p1, Lnet/time4j/calendar/MinguoCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/MinguoCalendar$FieldRule;->getChildAtFloor(Lnet/time4j/calendar/MinguoCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtFloor(Lnet/time4j/calendar/MinguoCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/MinguoCalendar;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 1056
    invoke-static {}, Lnet/time4j/calendar/MinguoCalendar;->access$600()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lnet/time4j/calendar/MinguoCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/engine/ChronoElement;

    return-object p1
.end method

.method public getMaximum(Lnet/time4j/calendar/MinguoCalendar;)Ljava/lang/Comparable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/MinguoCalendar;",
            ")TV;"
        }
    .end annotation

    .line 980
    iget-object v0, p0, Lnet/time4j/calendar/MinguoCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v1, Lnet/time4j/calendar/MinguoCalendar;->ERA:Lnet/time4j/engine/ChronoElement;

    if-ne v0, v1, :cond_0

    .line 981
    sget-object p1, Lnet/time4j/calendar/MinguoEra;->ROC:Lnet/time4j/calendar/MinguoEra;

    goto :goto_0

    .line 982
    :cond_0
    iget-object v0, p0, Lnet/time4j/calendar/MinguoCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v1, Lnet/time4j/calendar/MinguoCalendar;->YEAR_OF_ERA:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 983
    invoke-virtual {p1}, Lnet/time4j/calendar/MinguoCalendar;->getEra()Lnet/time4j/calendar/MinguoEra;

    move-result-object p1

    .line 984
    sget-object v0, Lnet/time4j/calendar/MinguoEra;->ROC:Lnet/time4j/calendar/MinguoEra;

    if-ne p1, v0, :cond_1

    const p1, 0x3b9ac288

    .line 986
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_1
    const p1, 0x3b9ad177

    .line 987
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    .line 988
    :cond_2
    iget-object v0, p0, Lnet/time4j/calendar/MinguoCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v1, Lnet/time4j/calendar/MinguoCalendar;->MONTH_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 989
    sget-object p1, Lnet/time4j/Month;->DECEMBER:Lnet/time4j/Month;

    goto :goto_0

    .line 990
    :cond_3
    iget-object v0, p0, Lnet/time4j/calendar/MinguoCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v1, Lnet/time4j/calendar/MinguoCalendar;->DAY_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 991
    invoke-static {p1}, Lnet/time4j/calendar/MinguoCalendar;->access$500(Lnet/time4j/calendar/MinguoCalendar;)Lnet/time4j/PlainDate;

    move-result-object p1

    sget-object v0, Lnet/time4j/PlainDate;->DAY_OF_MONTH:Lnet/time4j/ProportionalElement;

    invoke-virtual {p1, v0}, Lnet/time4j/PlainDate;->getMaximum(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 992
    :cond_4
    iget-object v0, p0, Lnet/time4j/calendar/MinguoCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v1, Lnet/time4j/calendar/MinguoCalendar;->DAY_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 993
    invoke-static {p1}, Lnet/time4j/calendar/MinguoCalendar;->access$500(Lnet/time4j/calendar/MinguoCalendar;)Lnet/time4j/PlainDate;

    move-result-object p1

    sget-object v0, Lnet/time4j/PlainDate;->DAY_OF_YEAR:Lnet/time4j/ProportionalElement;

    invoke-virtual {p1, v0}, Lnet/time4j/PlainDate;->getMaximum(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    .line 998
    :goto_0
    iget-object v0, p0, Lnet/time4j/calendar/MinguoCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    invoke-interface {v0}, Lnet/time4j/engine/ChronoElement;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Comparable;

    return-object p1

    .line 995
    :cond_5
    new-instance p1, Lnet/time4j/engine/ChronoException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing rule for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/time4j/calendar/MinguoCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

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

    .line 909
    check-cast p1, Lnet/time4j/calendar/MinguoCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/MinguoCalendar$FieldRule;->getMaximum(Lnet/time4j/calendar/MinguoCalendar;)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/calendar/MinguoCalendar;)Ljava/lang/Comparable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/MinguoCalendar;",
            ")TV;"
        }
    .end annotation

    .line 961
    iget-object p1, p0, Lnet/time4j/calendar/MinguoCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v0, Lnet/time4j/calendar/MinguoCalendar;->ERA:Lnet/time4j/engine/ChronoElement;

    if-ne p1, v0, :cond_0

    .line 962
    sget-object p1, Lnet/time4j/calendar/MinguoEra;->BEFORE_ROC:Lnet/time4j/calendar/MinguoEra;

    goto :goto_0

    .line 963
    :cond_0
    const-class p1, Ljava/lang/Integer;

    iget-object v0, p0, Lnet/time4j/calendar/MinguoCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    invoke-interface {v0}, Lnet/time4j/engine/ChronoElement;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 964
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    .line 965
    :cond_1
    iget-object p1, p0, Lnet/time4j/calendar/MinguoCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v0, Lnet/time4j/calendar/MinguoCalendar;->MONTH_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 966
    sget-object p1, Lnet/time4j/Month;->JANUARY:Lnet/time4j/Month;

    .line 971
    :goto_0
    iget-object v0, p0, Lnet/time4j/calendar/MinguoCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    invoke-interface {v0}, Lnet/time4j/engine/ChronoElement;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Comparable;

    return-object p1

    .line 968
    :cond_2
    new-instance p1, Lnet/time4j/engine/ChronoException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing rule for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/time4j/calendar/MinguoCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

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

    .line 909
    check-cast p1, Lnet/time4j/calendar/MinguoCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/MinguoCalendar$FieldRule;->getMinimum(Lnet/time4j/calendar/MinguoCalendar;)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lnet/time4j/calendar/MinguoCalendar;)Ljava/lang/Comparable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/MinguoCalendar;",
            ")TV;"
        }
    .end annotation

    .line 938
    iget-object v0, p0, Lnet/time4j/calendar/MinguoCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v1, Lnet/time4j/calendar/MinguoCalendar;->ERA:Lnet/time4j/engine/ChronoElement;

    if-ne v0, v1, :cond_0

    .line 939
    invoke-virtual {p1}, Lnet/time4j/calendar/MinguoCalendar;->getEra()Lnet/time4j/calendar/MinguoEra;

    move-result-object p1

    goto :goto_0

    .line 940
    :cond_0
    iget-object v0, p0, Lnet/time4j/calendar/MinguoCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v1, Lnet/time4j/calendar/MinguoCalendar;->YEAR_OF_ERA:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 941
    invoke-virtual {p1}, Lnet/time4j/calendar/MinguoCalendar;->getYear()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    .line 942
    :cond_1
    iget-object v0, p0, Lnet/time4j/calendar/MinguoCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v1, Lnet/time4j/calendar/MinguoCalendar;->MONTH_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 943
    invoke-virtual {p1}, Lnet/time4j/calendar/MinguoCalendar;->getMonth()Lnet/time4j/Month;

    move-result-object p1

    goto :goto_0

    .line 944
    :cond_2
    iget-object v0, p0, Lnet/time4j/calendar/MinguoCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v1, Lnet/time4j/calendar/MinguoCalendar;->DAY_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 945
    invoke-virtual {p1}, Lnet/time4j/calendar/MinguoCalendar;->getDayOfMonth()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    .line 946
    :cond_3
    iget-object v0, p0, Lnet/time4j/calendar/MinguoCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v1, Lnet/time4j/calendar/MinguoCalendar;->DAY_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 947
    invoke-virtual {p1}, Lnet/time4j/calendar/MinguoCalendar;->getDayOfYear()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 952
    :goto_0
    iget-object v0, p0, Lnet/time4j/calendar/MinguoCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    invoke-interface {v0}, Lnet/time4j/engine/ChronoElement;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Comparable;

    return-object p1

    .line 949
    :cond_4
    new-instance p1, Lnet/time4j/engine/ChronoException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing rule for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/time4j/calendar/MinguoCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

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

    .line 909
    check-cast p1, Lnet/time4j/calendar/MinguoCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/MinguoCalendar$FieldRule;->getValue(Lnet/time4j/calendar/MinguoCalendar;)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 909
    check-cast p1, Lnet/time4j/calendar/MinguoCalendar;

    check-cast p2, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/MinguoCalendar$FieldRule;->isValid(Lnet/time4j/calendar/MinguoCalendar;Ljava/lang/Comparable;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/calendar/MinguoCalendar;Ljava/lang/Comparable;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/MinguoCalendar;",
            "TV;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 1010
    :cond_0
    iget-object v1, p0, Lnet/time4j/calendar/MinguoCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v2, Lnet/time4j/calendar/MinguoCalendar;->ERA:Lnet/time4j/engine/ChronoElement;

    if-ne v1, v2, :cond_1

    .line 1011
    invoke-virtual {p1}, Lnet/time4j/calendar/MinguoCalendar;->getEra()Lnet/time4j/calendar/MinguoEra;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 1014
    :cond_1
    invoke-virtual {p0, p1}, Lnet/time4j/calendar/MinguoCalendar$FieldRule;->getMinimum(Lnet/time4j/calendar/MinguoCalendar;)Ljava/lang/Comparable;

    move-result-object v1

    .line 1015
    invoke-virtual {p0, p1}, Lnet/time4j/calendar/MinguoCalendar$FieldRule;->getMaximum(Lnet/time4j/calendar/MinguoCalendar;)Ljava/lang/Comparable;

    move-result-object p1

    .line 1017
    invoke-interface {v1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_2

    invoke-interface {p2, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    if-gtz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0

    .line 909
    check-cast p1, Lnet/time4j/calendar/MinguoCalendar;

    check-cast p2, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/MinguoCalendar$FieldRule;->withValue(Lnet/time4j/calendar/MinguoCalendar;Ljava/lang/Comparable;Z)Lnet/time4j/calendar/MinguoCalendar;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/calendar/MinguoCalendar;Ljava/lang/Comparable;Z)Lnet/time4j/calendar/MinguoCalendar;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/MinguoCalendar;",
            "TV;Z)",
            "Lnet/time4j/calendar/MinguoCalendar;"
        }
    .end annotation

    .line 1028
    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/MinguoCalendar$FieldRule;->isValid(Lnet/time4j/calendar/MinguoCalendar;Ljava/lang/Comparable;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 1032
    iget-object p3, p0, Lnet/time4j/calendar/MinguoCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v0, Lnet/time4j/calendar/MinguoCalendar;->ERA:Lnet/time4j/engine/ChronoElement;

    if-ne p3, v0, :cond_0

    return-object p1

    .line 1034
    :cond_0
    iget-object p3, p0, Lnet/time4j/calendar/MinguoCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v0, Lnet/time4j/calendar/MinguoCalendar;->YEAR_OF_ERA:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 1035
    invoke-virtual {p1}, Lnet/time4j/calendar/MinguoCalendar;->getEra()Lnet/time4j/calendar/MinguoEra;

    move-result-object p3

    invoke-static {p2}, Lnet/time4j/calendar/MinguoCalendar$FieldRule;->toNumber(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {p1}, Lnet/time4j/calendar/MinguoCalendar;->getMonth()Lnet/time4j/Month;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p3, p2, v0, v1}, Lnet/time4j/calendar/MinguoCalendar;->of(Lnet/time4j/calendar/MinguoEra;ILnet/time4j/Month;I)Lnet/time4j/calendar/MinguoCalendar;

    move-result-object p2

    .line 1036
    sget-object p3, Lnet/time4j/calendar/MinguoCalendar;->DAY_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p1}, Lnet/time4j/calendar/MinguoCalendar;->getDayOfMonth()I

    move-result p1

    invoke-virtual {p2}, Lnet/time4j/calendar/MinguoCalendar;->lengthOfMonth()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p2, p3, p1}, Lnet/time4j/calendar/MinguoCalendar;->with(Lnet/time4j/engine/ChronoElement;I)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/MinguoCalendar;

    return-object p1

    .line 1037
    :cond_1
    iget-object p3, p0, Lnet/time4j/calendar/MinguoCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v0, Lnet/time4j/calendar/MinguoCalendar;->MONTH_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 1038
    invoke-static {p1}, Lnet/time4j/calendar/MinguoCalendar;->access$500(Lnet/time4j/calendar/MinguoCalendar;)Lnet/time4j/PlainDate;

    move-result-object p1

    sget-object p3, Lnet/time4j/PlainDate;->MONTH_OF_YEAR:Lnet/time4j/NavigableElement;

    const-class v1, Lnet/time4j/Month;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lnet/time4j/PlainDate;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainDate;

    .line 1039
    new-instance p2, Lnet/time4j/calendar/MinguoCalendar;

    invoke-direct {p2, p1, v0}, Lnet/time4j/calendar/MinguoCalendar;-><init>(Lnet/time4j/PlainDate;Lnet/time4j/calendar/MinguoCalendar$1;)V

    return-object p2

    .line 1040
    :cond_2
    iget-object p3, p0, Lnet/time4j/calendar/MinguoCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v1, Lnet/time4j/calendar/MinguoCalendar;->DAY_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 1041
    invoke-static {p1}, Lnet/time4j/calendar/MinguoCalendar;->access$500(Lnet/time4j/calendar/MinguoCalendar;)Lnet/time4j/PlainDate;

    move-result-object p1

    sget-object p3, Lnet/time4j/PlainDate;->DAY_OF_MONTH:Lnet/time4j/ProportionalElement;

    invoke-static {p2}, Lnet/time4j/calendar/MinguoCalendar$FieldRule;->toNumber(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {p1, p3, p2}, Lnet/time4j/PlainDate;->with(Lnet/time4j/engine/ChronoElement;I)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainDate;

    .line 1042
    new-instance p2, Lnet/time4j/calendar/MinguoCalendar;

    invoke-direct {p2, p1, v0}, Lnet/time4j/calendar/MinguoCalendar;-><init>(Lnet/time4j/PlainDate;Lnet/time4j/calendar/MinguoCalendar$1;)V

    return-object p2

    .line 1043
    :cond_3
    iget-object p3, p0, Lnet/time4j/calendar/MinguoCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v1, Lnet/time4j/calendar/MinguoCalendar;->DAY_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 1044
    invoke-static {p1}, Lnet/time4j/calendar/MinguoCalendar;->access$500(Lnet/time4j/calendar/MinguoCalendar;)Lnet/time4j/PlainDate;

    move-result-object p1

    sget-object p3, Lnet/time4j/PlainDate;->DAY_OF_YEAR:Lnet/time4j/ProportionalElement;

    invoke-static {p2}, Lnet/time4j/calendar/MinguoCalendar$FieldRule;->toNumber(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {p1, p3, p2}, Lnet/time4j/PlainDate;->with(Lnet/time4j/engine/ChronoElement;I)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainDate;

    .line 1045
    new-instance p2, Lnet/time4j/calendar/MinguoCalendar;

    invoke-direct {p2, p1, v0}, Lnet/time4j/calendar/MinguoCalendar;-><init>(Lnet/time4j/PlainDate;Lnet/time4j/calendar/MinguoCalendar$1;)V

    return-object p2

    .line 1048
    :cond_4
    new-instance p1, Lnet/time4j/engine/ChronoException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Missing rule for: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lnet/time4j/calendar/MinguoCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    invoke-interface {p3}, Lnet/time4j/engine/ChronoElement;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/time4j/engine/ChronoException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1029
    :cond_5
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
