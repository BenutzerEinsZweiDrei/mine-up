.class Lnet/time4j/format/expert/ChronoFormatter$TraditionalFormat;
.super Ljava/text/Format;
.source "ChronoFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/format/expert/ChronoFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TraditionalFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/text/Format;"
    }
.end annotation


# static fields
.field private static final FIELD_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/text/DateFormat$Field;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final formatter:Lnet/time4j/format/expert/ChronoFormatter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 7043
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7045
    sget-object v1, Ljava/text/DateFormat$Field;->YEAR:Ljava/text/DateFormat$Field;

    const-string v2, "YEAR"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7046
    sget-object v1, Ljava/text/DateFormat$Field;->YEAR:Ljava/text/DateFormat$Field;

    const-string v2, "YEAR_OF_ERA"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7047
    sget-object v1, Ljava/text/DateFormat$Field;->YEAR:Ljava/text/DateFormat$Field;

    const-string v2, "YEAR_OF_WEEKDATE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7048
    sget-object v1, Ljava/text/DateFormat$Field;->WEEK_OF_YEAR:Ljava/text/DateFormat$Field;

    const-string v2, "WEEK_OF_YEAR"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7049
    sget-object v1, Ljava/text/DateFormat$Field;->WEEK_OF_MONTH:Ljava/text/DateFormat$Field;

    const-string v2, "WEEK_OF_MONTH"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7050
    sget-object v1, Ljava/text/DateFormat$Field;->WEEK_OF_YEAR:Ljava/text/DateFormat$Field;

    const-string v2, "BOUNDED_WEEK_OF_YEAR"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7051
    sget-object v1, Ljava/text/DateFormat$Field;->WEEK_OF_MONTH:Ljava/text/DateFormat$Field;

    const-string v2, "BOUNDED_WEEK_OF_MONTH"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7052
    sget-object v1, Ljava/text/DateFormat$Field;->MONTH:Ljava/text/DateFormat$Field;

    const-string v2, "MONTH_OF_YEAR"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7053
    sget-object v1, Ljava/text/DateFormat$Field;->MONTH:Ljava/text/DateFormat$Field;

    const-string v2, "MONTH_AS_NUMBER"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7054
    sget-object v1, Ljava/text/DateFormat$Field;->MONTH:Ljava/text/DateFormat$Field;

    const-string v2, "HISTORIC_MONTH"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7055
    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_WEEK_IN_MONTH:Ljava/text/DateFormat$Field;

    const-string v2, "WEEKDAY_IN_MONTH"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7056
    sget-object v1, Ljava/text/DateFormat$Field;->SECOND:Ljava/text/DateFormat$Field;

    const-string v2, "SECOND_OF_MINUTE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7057
    sget-object v1, Ljava/text/DateFormat$Field;->MINUTE:Ljava/text/DateFormat$Field;

    const-string v2, "MINUTE_OF_HOUR"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7058
    sget-object v1, Ljava/text/DateFormat$Field;->MILLISECOND:Ljava/text/DateFormat$Field;

    const-string v2, "MILLI_OF_SECOND"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7059
    sget-object v1, Ljava/text/DateFormat$Field;->HOUR_OF_DAY0:Ljava/text/DateFormat$Field;

    const-string v2, "DIGITAL_HOUR_OF_DAY"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7060
    sget-object v1, Ljava/text/DateFormat$Field;->HOUR0:Ljava/text/DateFormat$Field;

    const-string v2, "DIGITAL_HOUR_OF_AMPM"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7061
    sget-object v1, Ljava/text/DateFormat$Field;->HOUR_OF_DAY1:Ljava/text/DateFormat$Field;

    const-string v2, "CLOCK_HOUR_OF_DAY"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7062
    sget-object v1, Ljava/text/DateFormat$Field;->HOUR1:Ljava/text/DateFormat$Field;

    const-string v2, "CLOCK_HOUR_OF_AMPM"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7063
    sget-object v1, Ljava/text/DateFormat$Field;->AM_PM:Ljava/text/DateFormat$Field;

    const-string v2, "AM_PM_OF_DAY"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7064
    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_MONTH:Ljava/text/DateFormat$Field;

    const-string v2, "DAY_OF_MONTH"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7065
    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_MONTH:Ljava/text/DateFormat$Field;

    const-string v2, "HISTORIC_DAY_OF_MONTH"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7066
    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_WEEK:Ljava/text/DateFormat$Field;

    const-string v2, "DAY_OF_WEEK"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7067
    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_WEEK:Ljava/text/DateFormat$Field;

    const-string v2, "LOCAL_DAY_OF_WEEK"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7068
    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_YEAR:Ljava/text/DateFormat$Field;

    const-string v2, "DAY_OF_YEAR"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7069
    sget-object v1, Ljava/text/DateFormat$Field;->TIME_ZONE:Ljava/text/DateFormat$Field;

    const-string v2, "TIMEZONE_ID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7070
    sget-object v1, Ljava/text/DateFormat$Field;->ERA:Ljava/text/DateFormat$Field;

    const-string v2, "ERA"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7071
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lnet/time4j/format/expert/ChronoFormatter$TraditionalFormat;->FIELD_MAP:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Lnet/time4j/format/expert/ChronoFormatter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "TT;>;)V"
        }
    .end annotation

    .line 7081
    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    .line 7083
    iput-object p1, p0, Lnet/time4j/format/expert/ChronoFormatter$TraditionalFormat;->formatter:Lnet/time4j/format/expert/ChronoFormatter;

    return-void
.end method

.method private static toField(Lnet/time4j/engine/ChronoElement;)Ljava/text/DateFormat$Field;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;)",
            "Ljava/text/DateFormat$Field;"
        }
    .end annotation

    .line 7199
    sget-object v0, Lnet/time4j/format/expert/ChronoFormatter$TraditionalFormat;->FIELD_MAP:Ljava/util/Map;

    invoke-interface {p0}, Lnet/time4j/engine/ChronoElement;->name()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/text/DateFormat$Field;

    return-object p0
.end method


# virtual methods
.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 5

    const-string v0, "iso8601"

    const/4 v1, 0x0

    .line 7096
    invoke-virtual {p3, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 7097
    invoke-virtual {p3, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 7100
    :try_start_0
    iget-object v1, p0, Lnet/time4j/format/expert/ChronoFormatter$TraditionalFormat;->formatter:Lnet/time4j/format/expert/ChronoFormatter;

    invoke-static {v1}, Lnet/time4j/format/expert/ChronoFormatter;->access$700(Lnet/time4j/format/expert/ChronoFormatter;)Lnet/time4j/format/expert/AttributeSet;

    move-result-object v1

    .line 7101
    sget-object v2, Lnet/time4j/format/Attributes;->CALENDAR_TYPE:Lnet/time4j/engine/AttributeKey;

    .line 7102
    invoke-interface {v1, v2, v0}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 7103
    iget-object v3, p0, Lnet/time4j/format/expert/ChronoFormatter$TraditionalFormat;->formatter:Lnet/time4j/format/expert/ChronoFormatter;

    .line 7104
    invoke-virtual {v3}, Lnet/time4j/format/expert/ChronoFormatter;->getChronology()Lnet/time4j/engine/Chronology;

    move-result-object v3

    invoke-virtual {v3}, Lnet/time4j/engine/Chronology;->getChronoType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 7105
    iget-object v4, p0, Lnet/time4j/format/expert/ChronoFormatter$TraditionalFormat;->formatter:Lnet/time4j/format/expert/ChronoFormatter;

    .line 7106
    invoke-virtual {v4, v3, p2, v1}, Lnet/time4j/format/expert/ChronoFormatter;->print(Ljava/lang/Object;Ljava/lang/Appendable;Lnet/time4j/engine/AttributeQuery;)Ljava/util/Set;

    move-result-object v1

    .line 7108
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7109
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/format/expert/ElementPosition;

    .line 7110
    invoke-virtual {v1}, Lnet/time4j/format/expert/ElementPosition;->getElement()Lnet/time4j/engine/ChronoElement;

    move-result-object v2

    invoke-static {v2}, Lnet/time4j/format/expert/ChronoFormatter$TraditionalFormat;->toField(Lnet/time4j/engine/ChronoElement;)Ljava/text/DateFormat$Field;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7113
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat$Field;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 7114
    invoke-virtual {v2}, Ljava/text/DateFormat$Field;->getCalendarField()I

    move-result v3

    invoke-virtual {p3}, Ljava/text/FieldPosition;->getField()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 7115
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getField()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_4

    :cond_1
    sget-object v3, Ljava/text/DateFormat$Field;->TIME_ZONE:Ljava/text/DateFormat$Field;

    .line 7116
    invoke-virtual {v2, v3}, Ljava/text/DateFormat$Field;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7117
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getField()I

    move-result v3

    const/16 v4, 0x11

    if-eq v3, v4, :cond_4

    :cond_2
    sget-object v3, Ljava/text/DateFormat$Field;->HOUR_OF_DAY1:Ljava/text/DateFormat$Field;

    .line 7118
    invoke-virtual {v2, v3}, Ljava/text/DateFormat$Field;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 7119
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getField()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_4

    :cond_3
    sget-object v3, Ljava/text/DateFormat$Field;->HOUR1:Ljava/text/DateFormat$Field;

    .line 7120
    invoke-virtual {v2, v3}, Ljava/text/DateFormat$Field;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7121
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getField()I

    move-result v2

    const/16 v3, 0xf

    if-ne v2, v3, :cond_0

    .line 7124
    :cond_4
    invoke-virtual {v1}, Lnet/time4j/format/expert/ElementPosition;->getStartIndex()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 7125
    invoke-virtual {v1}, Lnet/time4j/format/expert/ElementPosition;->getEndIndex()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/text/FieldPosition;->setEndIndex(I)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return-object p2

    :catch_0
    move-exception p2

    .line 7137
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot print object: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    :catch_1
    move-exception p2

    .line 7134
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not formattable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
.end method

.method public formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .locals 5

    .line 7145
    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter$TraditionalFormat;->formatter:Lnet/time4j/format/expert/ChronoFormatter;

    .line 7146
    invoke-static {v0}, Lnet/time4j/format/expert/ChronoFormatter;->access$700(Lnet/time4j/format/expert/ChronoFormatter;)Lnet/time4j/format/expert/AttributeSet;

    move-result-object v0

    sget-object v1, Lnet/time4j/format/Attributes;->CALENDAR_TYPE:Lnet/time4j/engine/AttributeKey;

    const-string v2, "iso8601"

    invoke-virtual {v0, v1, v2}, Lnet/time4j/format/expert/AttributeSet;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 7148
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7150
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7151
    iget-object v1, p0, Lnet/time4j/format/expert/ChronoFormatter$TraditionalFormat;->formatter:Lnet/time4j/format/expert/ChronoFormatter;

    .line 7152
    invoke-virtual {v1}, Lnet/time4j/format/expert/ChronoFormatter;->getChronology()Lnet/time4j/engine/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lnet/time4j/engine/Chronology;->getChronoType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 7153
    iget-object v2, p0, Lnet/time4j/format/expert/ChronoFormatter$TraditionalFormat;->formatter:Lnet/time4j/format/expert/ChronoFormatter;

    .line 7154
    invoke-virtual {v2, v1, v0}, Lnet/time4j/format/expert/ChronoFormatter;->print(Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/util/Set;

    move-result-object v1

    .line 7155
    new-instance v2, Ljava/text/AttributedString;

    .line 7156
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    .line 7157
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/format/expert/ElementPosition;

    .line 7158
    invoke-virtual {v1}, Lnet/time4j/format/expert/ElementPosition;->getElement()Lnet/time4j/engine/ChronoElement;

    move-result-object v3

    invoke-static {v3}, Lnet/time4j/format/expert/ChronoFormatter$TraditionalFormat;->toField(Lnet/time4j/engine/ChronoElement;)Ljava/text/DateFormat$Field;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 7163
    invoke-virtual {v1}, Lnet/time4j/format/expert/ElementPosition;->getStartIndex()I

    move-result v4

    .line 7164
    invoke-virtual {v1}, Lnet/time4j/format/expert/ElementPosition;->getEndIndex()I

    move-result v1

    .line 7160
    invoke-virtual {v2, v3, v3, v4, v1}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    goto :goto_0

    .line 7167
    :cond_1
    invoke-virtual {v2}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 7169
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not formattable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 7174
    :cond_2
    invoke-super {p0, p1}, Ljava/text/Format;->formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;

    move-result-object p1

    return-object p1
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 2

    .line 7184
    new-instance v0, Lnet/time4j/format/expert/ParseLog;

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-direct {v0, v1}, Lnet/time4j/format/expert/ParseLog;-><init>(I)V

    .line 7185
    iget-object v1, p0, Lnet/time4j/format/expert/ChronoFormatter$TraditionalFormat;->formatter:Lnet/time4j/format/expert/ChronoFormatter;

    invoke-virtual {v1, p1, v0}, Lnet/time4j/format/expert/ChronoFormatter;->parse(Ljava/lang/CharSequence;Lnet/time4j/format/expert/ParseLog;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 7188
    invoke-virtual {v0}, Lnet/time4j/format/expert/ParseLog;->getErrorIndex()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    goto :goto_0

    .line 7190
    :cond_0
    invoke-virtual {v0}, Lnet/time4j/format/expert/ParseLog;->getPosition()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    :goto_0
    return-object p1
.end method
