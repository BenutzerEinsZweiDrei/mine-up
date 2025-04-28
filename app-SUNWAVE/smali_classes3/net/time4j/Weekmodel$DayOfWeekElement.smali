.class Lnet/time4j/Weekmodel$DayOfWeekElement;
.super Lnet/time4j/AbstractDateElement;
.source "Weekmodel.java"

# interfaces
.implements Lnet/time4j/NavigableElement;
.implements Lnet/time4j/format/NumericalElement;
.implements Lnet/time4j/format/TextElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/Weekmodel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DayOfWeekElement"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/AbstractDateElement<",
        "Lnet/time4j/Weekday;",
        ">;",
        "Lnet/time4j/NavigableElement<",
        "Lnet/time4j/Weekday;",
        ">;",
        "Lnet/time4j/format/NumericalElement<",
        "Lnet/time4j/Weekday;",
        ">;",
        "Lnet/time4j/format/TextElement<",
        "Lnet/time4j/Weekday;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1b006946351b84d6L


# instance fields
.field final synthetic this$0:Lnet/time4j/Weekmodel;


# direct methods
.method constructor <init>(Lnet/time4j/Weekmodel;)V
    .locals 0

    .line 966
    iput-object p1, p0, Lnet/time4j/Weekmodel$DayOfWeekElement;->this$0:Lnet/time4j/Weekmodel;

    const-string p1, "LOCAL_DAY_OF_WEEK"

    .line 967
    invoke-direct {p0, p1}, Lnet/time4j/AbstractDateElement;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lnet/time4j/Weekmodel$DayOfWeekElement;)Lnet/time4j/Weekmodel;
    .locals 0

    .line 954
    invoke-direct {p0}, Lnet/time4j/Weekmodel$DayOfWeekElement;->getModel()Lnet/time4j/Weekmodel;

    move-result-object p0

    return-object p0
.end method

.method private accessor(Lnet/time4j/engine/AttributeQuery;Lnet/time4j/format/OutputContext;)Lnet/time4j/format/TextAccessor;
    .locals 3

    .line 1175
    sget-object v0, Lnet/time4j/format/Attributes;->LANGUAGE:Lnet/time4j/engine/AttributeKey;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 1176
    invoke-interface {p1, v0, v1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    invoke-static {v0}, Lnet/time4j/format/CalendarText;->getIsoInstance(Ljava/util/Locale;)Lnet/time4j/format/CalendarText;

    move-result-object v0

    .line 1178
    sget-object v1, Lnet/time4j/format/Attributes;->TEXT_WIDTH:Lnet/time4j/engine/AttributeKey;

    sget-object v2, Lnet/time4j/format/TextWidth;->WIDE:Lnet/time4j/format/TextWidth;

    .line 1179
    invoke-interface {p1, v1, v2}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/format/TextWidth;

    .line 1178
    invoke-virtual {v0, p1, p2}, Lnet/time4j/format/CalendarText;->getWeekdays(Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)Lnet/time4j/format/TextAccessor;

    move-result-object p1

    return-object p1
.end method

.method private getModel()Lnet/time4j/Weekmodel;
    .locals 1

    .line 1186
    iget-object v0, p0, Lnet/time4j/Weekmodel$DayOfWeekElement;->this$0:Lnet/time4j/Weekmodel;

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 1192
    iget-object v0, p0, Lnet/time4j/Weekmodel$DayOfWeekElement;->this$0:Lnet/time4j/Weekmodel;

    invoke-virtual {v0}, Lnet/time4j/Weekmodel;->localDayOfWeek()Lnet/time4j/NavigableElement;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 954
    check-cast p1, Lnet/time4j/engine/ChronoDisplay;

    check-cast p2, Lnet/time4j/engine/ChronoDisplay;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/Weekmodel$DayOfWeekElement;->compare(Lnet/time4j/engine/ChronoDisplay;Lnet/time4j/engine/ChronoDisplay;)I

    move-result p1

    return p1
.end method

.method public compare(Lnet/time4j/engine/ChronoDisplay;Lnet/time4j/engine/ChronoDisplay;)I
    .locals 1

    .line 1025
    invoke-interface {p1, p0}, Lnet/time4j/engine/ChronoDisplay;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/Weekday;

    iget-object v0, p0, Lnet/time4j/Weekmodel$DayOfWeekElement;->this$0:Lnet/time4j/Weekmodel;

    invoke-virtual {p1, v0}, Lnet/time4j/Weekday;->getValue(Lnet/time4j/Weekmodel;)I

    move-result p1

    .line 1026
    invoke-interface {p2, p0}, Lnet/time4j/engine/ChronoDisplay;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/time4j/Weekday;

    iget-object v0, p0, Lnet/time4j/Weekmodel$DayOfWeekElement;->this$0:Lnet/time4j/Weekmodel;

    invoke-virtual {p2, v0}, Lnet/time4j/Weekday;->getValue(Lnet/time4j/Weekmodel;)I

    move-result p2

    if-ge p1, p2, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method protected derive(Lnet/time4j/engine/Chronology;)Lnet/time4j/engine/ElementRule;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/time4j/engine/ChronoEntity<",
            "TT;>;>(",
            "Lnet/time4j/engine/Chronology<",
            "TT;>;)",
            "Lnet/time4j/engine/ElementRule<",
            "TT;",
            "Lnet/time4j/Weekday;",
            ">;"
        }
    .end annotation

    .line 1155
    sget-object v0, Lnet/time4j/PlainDate;->CALENDAR_DATE:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, v0}, Lnet/time4j/engine/Chronology;->isRegistered(Lnet/time4j/engine/ChronoElement;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1156
    new-instance p1, Lnet/time4j/Weekmodel$DRule;

    invoke-direct {p1, p0, v0}, Lnet/time4j/Weekmodel$DRule;-><init>(Lnet/time4j/Weekmodel$DayOfWeekElement;Lnet/time4j/Weekmodel$1;)V

    return-object p1

    :cond_0
    return-object v0
.end method

.method protected doEquals(Lnet/time4j/engine/BasicElement;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/BasicElement<",
            "*>;)Z"
        }
    .end annotation

    .line 1148
    invoke-direct {p0}, Lnet/time4j/Weekmodel$DayOfWeekElement;->getModel()Lnet/time4j/Weekmodel;

    move-result-object v0

    check-cast p1, Lnet/time4j/Weekmodel$DayOfWeekElement;

    invoke-direct {p1}, Lnet/time4j/Weekmodel$DayOfWeekElement;->getModel()Lnet/time4j/Weekmodel;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/time4j/Weekmodel;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic getDefaultMaximum()Ljava/lang/Object;
    .locals 1

    .line 954
    invoke-virtual {p0}, Lnet/time4j/Weekmodel$DayOfWeekElement;->getDefaultMaximum()Lnet/time4j/Weekday;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMaximum()Lnet/time4j/Weekday;
    .locals 2

    .line 1041
    iget-object v0, p0, Lnet/time4j/Weekmodel$DayOfWeekElement;->this$0:Lnet/time4j/Weekmodel;

    invoke-virtual {v0}, Lnet/time4j/Weekmodel;->getFirstDayOfWeek()Lnet/time4j/Weekday;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lnet/time4j/Weekday;->roll(I)Lnet/time4j/Weekday;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultMinimum()Ljava/lang/Object;
    .locals 1

    .line 954
    invoke-virtual {p0}, Lnet/time4j/Weekmodel$DayOfWeekElement;->getDefaultMinimum()Lnet/time4j/Weekday;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMinimum()Lnet/time4j/Weekday;
    .locals 1

    .line 1034
    iget-object v0, p0, Lnet/time4j/Weekmodel$DayOfWeekElement;->this$0:Lnet/time4j/Weekmodel;

    invoke-virtual {v0}, Lnet/time4j/Weekmodel;->getFirstDayOfWeek()Lnet/time4j/Weekday;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 1106
    invoke-static {p1}, Lnet/time4j/format/CalendarText;->getIsoInstance(Ljava/util/Locale;)Lnet/time4j/format/CalendarText;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/format/CalendarText;->getTextForms()Ljava/util/Map;

    move-result-object p1

    const-string v0, "L_weekday"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    .line 1107
    invoke-virtual {p0}, Lnet/time4j/Weekmodel$DayOfWeekElement;->name()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method protected getParent()Lnet/time4j/engine/ChronoElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 1166
    sget-object v0, Lnet/time4j/PlainDate;->DAY_OF_WEEK:Lnet/time4j/NavigableElement;

    return-object v0
.end method

.method public getSymbol()C
    .locals 1

    const/16 v0, 0x65

    return v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lnet/time4j/Weekday;",
            ">;"
        }
    .end annotation

    .line 976
    const-class v0, Lnet/time4j/Weekday;

    return-object v0
.end method

.method public isDateElement()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isTimeElement()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic numerical(Ljava/lang/Object;)I
    .locals 0

    .line 954
    check-cast p1, Lnet/time4j/Weekday;

    invoke-virtual {p0, p1}, Lnet/time4j/Weekmodel$DayOfWeekElement;->numerical(Lnet/time4j/Weekday;)I

    move-result p1

    return p1
.end method

.method public numerical(Lnet/time4j/Weekday;)I
    .locals 1

    .line 990
    iget-object v0, p0, Lnet/time4j/Weekmodel$DayOfWeekElement;->this$0:Lnet/time4j/Weekmodel;

    invoke-virtual {p1, v0}, Lnet/time4j/Weekday;->getValue(Lnet/time4j/Weekmodel;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Object;
    .locals 0

    .line 954
    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/Weekmodel$DayOfWeekElement;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/Weekday;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/Weekday;
    .locals 5

    .line 1130
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 1131
    sget-object v1, Lnet/time4j/format/Attributes;->OUTPUT_CONTEXT:Lnet/time4j/engine/AttributeKey;

    sget-object v2, Lnet/time4j/format/OutputContext;->FORMAT:Lnet/time4j/format/OutputContext;

    invoke-interface {p3, v1, v2}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/format/OutputContext;

    .line 1132
    invoke-direct {p0, p3, v1}, Lnet/time4j/Weekmodel$DayOfWeekElement;->accessor(Lnet/time4j/engine/AttributeQuery;Lnet/time4j/format/OutputContext;)Lnet/time4j/format/TextAccessor;

    move-result-object v2

    invoke-virtual {p0}, Lnet/time4j/Weekmodel$DayOfWeekElement;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, p1, p2, v3, p3}, Lnet/time4j/format/TextAccessor;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Ljava/lang/Class;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Enum;

    move-result-object v2

    check-cast v2, Lnet/time4j/Weekday;

    if-nez v2, :cond_1

    .line 1134
    sget-object v3, Lnet/time4j/format/Attributes;->PARSE_MULTIPLE_CONTEXT:Lnet/time4j/engine/AttributeKey;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p3, v3, v4}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, -0x1

    .line 1135
    invoke-virtual {p2, v2}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1136
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1137
    sget-object v0, Lnet/time4j/format/OutputContext;->FORMAT:Lnet/time4j/format/OutputContext;

    if-ne v1, v0, :cond_0

    sget-object v0, Lnet/time4j/format/OutputContext;->STANDALONE:Lnet/time4j/format/OutputContext;

    goto :goto_0

    :cond_0
    sget-object v0, Lnet/time4j/format/OutputContext;->FORMAT:Lnet/time4j/format/OutputContext;

    .line 1138
    :goto_0
    invoke-direct {p0, p3, v0}, Lnet/time4j/Weekmodel$DayOfWeekElement;->accessor(Lnet/time4j/engine/AttributeQuery;Lnet/time4j/format/OutputContext;)Lnet/time4j/format/TextAccessor;

    move-result-object v0

    invoke-virtual {p0}, Lnet/time4j/Weekmodel$DayOfWeekElement;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1, p3}, Lnet/time4j/format/TextAccessor;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Ljava/lang/Class;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Enum;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lnet/time4j/Weekday;

    :cond_1
    return-object v2
.end method

.method public parseFromInt(Lnet/time4j/engine/ChronoEntity;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoEntity<",
            "*>;I)Z"
        }
    .end annotation

    .line 1008
    invoke-static {}, Lnet/time4j/Weekday;->values()[Lnet/time4j/Weekday;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 1009
    iget-object v5, p0, Lnet/time4j/Weekmodel$DayOfWeekElement;->this$0:Lnet/time4j/Weekmodel;

    invoke-virtual {v4, v5}, Lnet/time4j/Weekday;->getValue(Lnet/time4j/Weekmodel;)I

    move-result v5

    if-ne v5, p2, :cond_0

    .line 1010
    invoke-virtual {p1, p0, v4}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public print(Lnet/time4j/engine/ChronoDisplay;Ljava/lang/Appendable;Lnet/time4j/engine/AttributeQuery;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1118
    sget-object v0, Lnet/time4j/format/Attributes;->OUTPUT_CONTEXT:Lnet/time4j/engine/AttributeKey;

    sget-object v1, Lnet/time4j/format/OutputContext;->FORMAT:Lnet/time4j/format/OutputContext;

    invoke-interface {p3, v0, v1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/format/OutputContext;

    .line 1119
    invoke-direct {p0, p3, v0}, Lnet/time4j/Weekmodel$DayOfWeekElement;->accessor(Lnet/time4j/engine/AttributeQuery;Lnet/time4j/format/OutputContext;)Lnet/time4j/format/TextAccessor;

    move-result-object p3

    invoke-interface {p1, p0}, Lnet/time4j/engine/ChronoDisplay;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p3, p1}, Lnet/time4j/format/TextAccessor;->print(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method public bridge synthetic printToInt(Ljava/lang/Object;Lnet/time4j/engine/ChronoDisplay;Lnet/time4j/engine/AttributeQuery;)I
    .locals 0

    .line 954
    check-cast p1, Lnet/time4j/Weekday;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/Weekmodel$DayOfWeekElement;->printToInt(Lnet/time4j/Weekday;Lnet/time4j/engine/ChronoDisplay;Lnet/time4j/engine/AttributeQuery;)I

    move-result p1

    return p1
.end method

.method public printToInt(Lnet/time4j/Weekday;Lnet/time4j/engine/ChronoDisplay;Lnet/time4j/engine/AttributeQuery;)I
    .locals 0

    .line 1001
    invoke-virtual {p0, p1}, Lnet/time4j/Weekmodel$DayOfWeekElement;->numerical(Lnet/time4j/Weekday;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic setToNext(Ljava/lang/Enum;)Lnet/time4j/ElementOperator;
    .locals 0

    .line 954
    check-cast p1, Lnet/time4j/Weekday;

    invoke-virtual {p0, p1}, Lnet/time4j/Weekmodel$DayOfWeekElement;->setToNext(Lnet/time4j/Weekday;)Lnet/time4j/ElementOperator;

    move-result-object p1

    return-object p1
.end method

.method public setToNext(Lnet/time4j/Weekday;)Lnet/time4j/ElementOperator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/Weekday;",
            ")",
            "Lnet/time4j/ElementOperator<",
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation

    .line 1062
    new-instance v0, Lnet/time4j/NavigationOperator;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1, p1}, Lnet/time4j/NavigationOperator;-><init>(Lnet/time4j/engine/ChronoElement;ILjava/lang/Enum;)V

    return-object v0
.end method

.method public bridge synthetic setToNextOrSame(Ljava/lang/Enum;)Lnet/time4j/ElementOperator;
    .locals 0

    .line 954
    check-cast p1, Lnet/time4j/Weekday;

    invoke-virtual {p0, p1}, Lnet/time4j/Weekmodel$DayOfWeekElement;->setToNextOrSame(Lnet/time4j/Weekday;)Lnet/time4j/ElementOperator;

    move-result-object p1

    return-object p1
.end method

.method public setToNextOrSame(Lnet/time4j/Weekday;)Lnet/time4j/ElementOperator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/Weekday;",
            ")",
            "Lnet/time4j/ElementOperator<",
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation

    .line 1084
    new-instance v0, Lnet/time4j/NavigationOperator;

    const/16 v1, 0xb

    invoke-direct {v0, p0, v1, p1}, Lnet/time4j/NavigationOperator;-><init>(Lnet/time4j/engine/ChronoElement;ILjava/lang/Enum;)V

    return-object v0
.end method

.method public bridge synthetic setToPrevious(Ljava/lang/Enum;)Lnet/time4j/ElementOperator;
    .locals 0

    .line 954
    check-cast p1, Lnet/time4j/Weekday;

    invoke-virtual {p0, p1}, Lnet/time4j/Weekmodel$DayOfWeekElement;->setToPrevious(Lnet/time4j/Weekday;)Lnet/time4j/ElementOperator;

    move-result-object p1

    return-object p1
.end method

.method public setToPrevious(Lnet/time4j/Weekday;)Lnet/time4j/ElementOperator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/Weekday;",
            ")",
            "Lnet/time4j/ElementOperator<",
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation

    .line 1073
    new-instance v0, Lnet/time4j/NavigationOperator;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1, p1}, Lnet/time4j/NavigationOperator;-><init>(Lnet/time4j/engine/ChronoElement;ILjava/lang/Enum;)V

    return-object v0
.end method

.method public bridge synthetic setToPreviousOrSame(Ljava/lang/Enum;)Lnet/time4j/ElementOperator;
    .locals 0

    .line 954
    check-cast p1, Lnet/time4j/Weekday;

    invoke-virtual {p0, p1}, Lnet/time4j/Weekmodel$DayOfWeekElement;->setToPreviousOrSame(Lnet/time4j/Weekday;)Lnet/time4j/ElementOperator;

    move-result-object p1

    return-object p1
.end method

.method public setToPreviousOrSame(Lnet/time4j/Weekday;)Lnet/time4j/ElementOperator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/Weekday;",
            ")",
            "Lnet/time4j/ElementOperator<",
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation

    .line 1095
    new-instance v0, Lnet/time4j/NavigationOperator;

    const/16 v1, 0xc

    invoke-direct {v0, p0, v1, p1}, Lnet/time4j/NavigationOperator;-><init>(Lnet/time4j/engine/ChronoElement;ILjava/lang/Enum;)V

    return-object v0
.end method
