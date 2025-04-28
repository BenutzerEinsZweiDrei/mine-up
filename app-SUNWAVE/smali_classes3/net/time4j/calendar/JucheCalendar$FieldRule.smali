.class Lnet/time4j/calendar/JucheCalendar$FieldRule;
.super Ljava/lang/Object;
.source "JucheCalendar.java"

# interfaces
.implements Lnet/time4j/engine/ElementRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/JucheCalendar;
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
        "Lnet/time4j/calendar/JucheCalendar;",
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

    .line 869
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 871
    iput-object p1, p0, Lnet/time4j/calendar/JucheCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    return-void
.end method

.method static of(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/calendar/JucheCalendar$FieldRule;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Ljava/lang/Comparable<",
            "TV;>;>(",
            "Lnet/time4j/engine/ChronoElement<",
            "TV;>;)",
            "Lnet/time4j/calendar/JucheCalendar$FieldRule<",
            "TV;>;"
        }
    .end annotation

    .line 879
    new-instance v0, Lnet/time4j/calendar/JucheCalendar$FieldRule;

    invoke-direct {v0, p0}, Lnet/time4j/calendar/JucheCalendar$FieldRule;-><init>(Lnet/time4j/engine/ChronoElement;)V

    return-object v0
.end method

.method private static toNumber(Ljava/lang/Object;)I
    .locals 1

    .line 1016
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

    .line 859
    check-cast p1, Lnet/time4j/calendar/JucheCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/JucheCalendar$FieldRule;->getChildAtCeiling(Lnet/time4j/calendar/JucheCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtCeiling(Lnet/time4j/calendar/JucheCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/JucheCalendar;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 1010
    invoke-static {}, Lnet/time4j/calendar/JucheCalendar;->access$500()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lnet/time4j/calendar/JucheCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/engine/ChronoElement;

    return-object p1
.end method

.method public bridge synthetic getChildAtFloor(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 859
    check-cast p1, Lnet/time4j/calendar/JucheCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/JucheCalendar$FieldRule;->getChildAtFloor(Lnet/time4j/calendar/JucheCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtFloor(Lnet/time4j/calendar/JucheCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/JucheCalendar;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 1002
    invoke-static {}, Lnet/time4j/calendar/JucheCalendar;->access$500()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lnet/time4j/calendar/JucheCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/engine/ChronoElement;

    return-object p1
.end method

.method public getMaximum(Lnet/time4j/calendar/JucheCalendar;)Ljava/lang/Comparable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/JucheCalendar;",
            ")TV;"
        }
    .end annotation

    .line 930
    iget-object v0, p0, Lnet/time4j/calendar/JucheCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v1, Lnet/time4j/calendar/JucheCalendar;->ERA:Lnet/time4j/engine/ChronoElement;

    if-ne v0, v1, :cond_0

    .line 931
    sget-object p1, Lnet/time4j/calendar/JucheEra;->JUCHE:Lnet/time4j/calendar/JucheEra;

    goto :goto_0

    .line 932
    :cond_0
    iget-object v0, p0, Lnet/time4j/calendar/JucheCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v1, Lnet/time4j/calendar/JucheCalendar;->YEAR_OF_ERA:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const p1, 0x3b9ac288

    .line 933
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    .line 934
    :cond_1
    iget-object v0, p0, Lnet/time4j/calendar/JucheCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v1, Lnet/time4j/calendar/JucheCalendar;->MONTH_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 935
    sget-object p1, Lnet/time4j/Month;->DECEMBER:Lnet/time4j/Month;

    goto :goto_0

    .line 936
    :cond_2
    iget-object v0, p0, Lnet/time4j/calendar/JucheCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v1, Lnet/time4j/calendar/JucheCalendar;->DAY_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 937
    invoke-static {p1}, Lnet/time4j/calendar/JucheCalendar;->access$400(Lnet/time4j/calendar/JucheCalendar;)Lnet/time4j/PlainDate;

    move-result-object p1

    sget-object v0, Lnet/time4j/PlainDate;->DAY_OF_MONTH:Lnet/time4j/ProportionalElement;

    invoke-virtual {p1, v0}, Lnet/time4j/PlainDate;->getMaximum(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 938
    :cond_3
    iget-object v0, p0, Lnet/time4j/calendar/JucheCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v1, Lnet/time4j/calendar/JucheCalendar;->DAY_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 939
    invoke-static {p1}, Lnet/time4j/calendar/JucheCalendar;->access$400(Lnet/time4j/calendar/JucheCalendar;)Lnet/time4j/PlainDate;

    move-result-object p1

    sget-object v0, Lnet/time4j/PlainDate;->DAY_OF_YEAR:Lnet/time4j/ProportionalElement;

    invoke-virtual {p1, v0}, Lnet/time4j/PlainDate;->getMaximum(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    .line 944
    :goto_0
    iget-object v0, p0, Lnet/time4j/calendar/JucheCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    invoke-interface {v0}, Lnet/time4j/engine/ChronoElement;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Comparable;

    return-object p1

    .line 941
    :cond_4
    new-instance p1, Lnet/time4j/engine/ChronoException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing rule for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/time4j/calendar/JucheCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

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

    .line 859
    check-cast p1, Lnet/time4j/calendar/JucheCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/JucheCalendar$FieldRule;->getMaximum(Lnet/time4j/calendar/JucheCalendar;)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/calendar/JucheCalendar;)Ljava/lang/Comparable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/JucheCalendar;",
            ")TV;"
        }
    .end annotation

    .line 911
    iget-object p1, p0, Lnet/time4j/calendar/JucheCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v0, Lnet/time4j/calendar/JucheCalendar;->ERA:Lnet/time4j/engine/ChronoElement;

    if-ne p1, v0, :cond_0

    .line 912
    sget-object p1, Lnet/time4j/calendar/JucheEra;->JUCHE:Lnet/time4j/calendar/JucheEra;

    goto :goto_0

    .line 913
    :cond_0
    const-class p1, Ljava/lang/Integer;

    iget-object v0, p0, Lnet/time4j/calendar/JucheCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    invoke-interface {v0}, Lnet/time4j/engine/ChronoElement;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 914
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    .line 915
    :cond_1
    iget-object p1, p0, Lnet/time4j/calendar/JucheCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v0, Lnet/time4j/calendar/JucheCalendar;->MONTH_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 916
    sget-object p1, Lnet/time4j/Month;->JANUARY:Lnet/time4j/Month;

    .line 921
    :goto_0
    iget-object v0, p0, Lnet/time4j/calendar/JucheCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    invoke-interface {v0}, Lnet/time4j/engine/ChronoElement;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Comparable;

    return-object p1

    .line 918
    :cond_2
    new-instance p1, Lnet/time4j/engine/ChronoException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing rule for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/time4j/calendar/JucheCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

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

    .line 859
    check-cast p1, Lnet/time4j/calendar/JucheCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/JucheCalendar$FieldRule;->getMinimum(Lnet/time4j/calendar/JucheCalendar;)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lnet/time4j/calendar/JucheCalendar;)Ljava/lang/Comparable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/JucheCalendar;",
            ")TV;"
        }
    .end annotation

    .line 888
    iget-object v0, p0, Lnet/time4j/calendar/JucheCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v1, Lnet/time4j/calendar/JucheCalendar;->ERA:Lnet/time4j/engine/ChronoElement;

    if-ne v0, v1, :cond_0

    .line 889
    sget-object p1, Lnet/time4j/calendar/JucheEra;->JUCHE:Lnet/time4j/calendar/JucheEra;

    goto :goto_0

    .line 890
    :cond_0
    iget-object v0, p0, Lnet/time4j/calendar/JucheCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v1, Lnet/time4j/calendar/JucheCalendar;->YEAR_OF_ERA:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 891
    invoke-virtual {p1}, Lnet/time4j/calendar/JucheCalendar;->getYear()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    .line 892
    :cond_1
    iget-object v0, p0, Lnet/time4j/calendar/JucheCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v1, Lnet/time4j/calendar/JucheCalendar;->MONTH_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 893
    invoke-virtual {p1}, Lnet/time4j/calendar/JucheCalendar;->getMonth()Lnet/time4j/Month;

    move-result-object p1

    goto :goto_0

    .line 894
    :cond_2
    iget-object v0, p0, Lnet/time4j/calendar/JucheCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v1, Lnet/time4j/calendar/JucheCalendar;->DAY_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 895
    invoke-virtual {p1}, Lnet/time4j/calendar/JucheCalendar;->getDayOfMonth()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    .line 896
    :cond_3
    iget-object v0, p0, Lnet/time4j/calendar/JucheCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v1, Lnet/time4j/calendar/JucheCalendar;->DAY_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 897
    invoke-virtual {p1}, Lnet/time4j/calendar/JucheCalendar;->getDayOfYear()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 902
    :goto_0
    iget-object v0, p0, Lnet/time4j/calendar/JucheCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    invoke-interface {v0}, Lnet/time4j/engine/ChronoElement;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Comparable;

    return-object p1

    .line 899
    :cond_4
    new-instance p1, Lnet/time4j/engine/ChronoException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing rule for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/time4j/calendar/JucheCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

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

    .line 859
    check-cast p1, Lnet/time4j/calendar/JucheCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/JucheCalendar$FieldRule;->getValue(Lnet/time4j/calendar/JucheCalendar;)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 859
    check-cast p1, Lnet/time4j/calendar/JucheCalendar;

    check-cast p2, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/JucheCalendar$FieldRule;->isValid(Lnet/time4j/calendar/JucheCalendar;Ljava/lang/Comparable;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/calendar/JucheCalendar;Ljava/lang/Comparable;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/JucheCalendar;",
            "TV;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 956
    :cond_0
    iget-object v1, p0, Lnet/time4j/calendar/JucheCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v2, Lnet/time4j/calendar/JucheCalendar;->ERA:Lnet/time4j/engine/ChronoElement;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    return v3

    .line 960
    :cond_1
    invoke-virtual {p0, p1}, Lnet/time4j/calendar/JucheCalendar$FieldRule;->getMinimum(Lnet/time4j/calendar/JucheCalendar;)Ljava/lang/Comparable;

    move-result-object v1

    .line 961
    invoke-virtual {p0, p1}, Lnet/time4j/calendar/JucheCalendar$FieldRule;->getMaximum(Lnet/time4j/calendar/JucheCalendar;)Ljava/lang/Comparable;

    move-result-object p1

    .line 963
    invoke-interface {v1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_2

    invoke-interface {p2, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    if-gtz p1, :cond_2

    move v0, v3

    :cond_2
    return v0
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0

    .line 859
    check-cast p1, Lnet/time4j/calendar/JucheCalendar;

    check-cast p2, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/JucheCalendar$FieldRule;->withValue(Lnet/time4j/calendar/JucheCalendar;Ljava/lang/Comparable;Z)Lnet/time4j/calendar/JucheCalendar;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/calendar/JucheCalendar;Ljava/lang/Comparable;Z)Lnet/time4j/calendar/JucheCalendar;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/JucheCalendar;",
            "TV;Z)",
            "Lnet/time4j/calendar/JucheCalendar;"
        }
    .end annotation

    .line 974
    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/JucheCalendar$FieldRule;->isValid(Lnet/time4j/calendar/JucheCalendar;Ljava/lang/Comparable;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 978
    iget-object p3, p0, Lnet/time4j/calendar/JucheCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v0, Lnet/time4j/calendar/JucheCalendar;->ERA:Lnet/time4j/engine/ChronoElement;

    if-ne p3, v0, :cond_0

    return-object p1

    .line 980
    :cond_0
    iget-object p3, p0, Lnet/time4j/calendar/JucheCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v0, Lnet/time4j/calendar/JucheCalendar;->YEAR_OF_ERA:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 981
    invoke-static {p2}, Lnet/time4j/calendar/JucheCalendar$FieldRule;->toNumber(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {p1}, Lnet/time4j/calendar/JucheCalendar;->getMonth()Lnet/time4j/Month;

    move-result-object p3

    const/4 v0, 0x1

    invoke-static {p2, p3, v0}, Lnet/time4j/calendar/JucheCalendar;->of(ILnet/time4j/Month;I)Lnet/time4j/calendar/JucheCalendar;

    move-result-object p2

    .line 982
    sget-object p3, Lnet/time4j/calendar/JucheCalendar;->DAY_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p1}, Lnet/time4j/calendar/JucheCalendar;->getDayOfMonth()I

    move-result p1

    invoke-virtual {p2}, Lnet/time4j/calendar/JucheCalendar;->lengthOfMonth()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p2, p3, p1}, Lnet/time4j/calendar/JucheCalendar;->with(Lnet/time4j/engine/ChronoElement;I)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/JucheCalendar;

    return-object p1

    .line 983
    :cond_1
    iget-object p3, p0, Lnet/time4j/calendar/JucheCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v0, Lnet/time4j/calendar/JucheCalendar;->MONTH_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 984
    invoke-static {p1}, Lnet/time4j/calendar/JucheCalendar;->access$400(Lnet/time4j/calendar/JucheCalendar;)Lnet/time4j/PlainDate;

    move-result-object p1

    sget-object p3, Lnet/time4j/PlainDate;->MONTH_OF_YEAR:Lnet/time4j/NavigableElement;

    const-class v0, Lnet/time4j/Month;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lnet/time4j/PlainDate;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainDate;

    .line 985
    new-instance p2, Lnet/time4j/calendar/JucheCalendar;

    invoke-direct {p2, p1}, Lnet/time4j/calendar/JucheCalendar;-><init>(Lnet/time4j/PlainDate;)V

    return-object p2

    .line 986
    :cond_2
    iget-object p3, p0, Lnet/time4j/calendar/JucheCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v0, Lnet/time4j/calendar/JucheCalendar;->DAY_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 987
    invoke-static {p1}, Lnet/time4j/calendar/JucheCalendar;->access$400(Lnet/time4j/calendar/JucheCalendar;)Lnet/time4j/PlainDate;

    move-result-object p1

    sget-object p3, Lnet/time4j/PlainDate;->DAY_OF_MONTH:Lnet/time4j/ProportionalElement;

    invoke-static {p2}, Lnet/time4j/calendar/JucheCalendar$FieldRule;->toNumber(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {p1, p3, p2}, Lnet/time4j/PlainDate;->with(Lnet/time4j/engine/ChronoElement;I)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainDate;

    .line 988
    new-instance p2, Lnet/time4j/calendar/JucheCalendar;

    invoke-direct {p2, p1}, Lnet/time4j/calendar/JucheCalendar;-><init>(Lnet/time4j/PlainDate;)V

    return-object p2

    .line 989
    :cond_3
    iget-object p3, p0, Lnet/time4j/calendar/JucheCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v0, Lnet/time4j/calendar/JucheCalendar;->DAY_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 990
    invoke-static {p1}, Lnet/time4j/calendar/JucheCalendar;->access$400(Lnet/time4j/calendar/JucheCalendar;)Lnet/time4j/PlainDate;

    move-result-object p1

    sget-object p3, Lnet/time4j/PlainDate;->DAY_OF_YEAR:Lnet/time4j/ProportionalElement;

    invoke-static {p2}, Lnet/time4j/calendar/JucheCalendar$FieldRule;->toNumber(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {p1, p3, p2}, Lnet/time4j/PlainDate;->with(Lnet/time4j/engine/ChronoElement;I)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainDate;

    .line 991
    new-instance p2, Lnet/time4j/calendar/JucheCalendar;

    invoke-direct {p2, p1}, Lnet/time4j/calendar/JucheCalendar;-><init>(Lnet/time4j/PlainDate;)V

    return-object p2

    .line 994
    :cond_4
    new-instance p1, Lnet/time4j/engine/ChronoException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Missing rule for: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lnet/time4j/calendar/JucheCalendar$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    invoke-interface {p3}, Lnet/time4j/engine/ChronoElement;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/time4j/engine/ChronoException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 975
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
