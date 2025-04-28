.class Lnet/time4j/calendar/bahai/BadiCalendar$MonthElement;
.super Lnet/time4j/calendar/service/StdEnumDateElement;
.source "BadiCalendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/bahai/BadiCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MonthElement"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/calendar/service/StdEnumDateElement<",
        "Lnet/time4j/calendar/bahai/BadiMonth;",
        "Lnet/time4j/calendar/bahai/BadiCalendar;",
        ">;"
    }
.end annotation


# static fields
.field static final SINGLETON:Lnet/time4j/calendar/bahai/BadiCalendar$MonthElement;

.field private static final serialVersionUID:J = -0x4c17d9e3c068aeeeL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2078
    new-instance v0, Lnet/time4j/calendar/bahai/BadiCalendar$MonthElement;

    invoke-direct {v0}, Lnet/time4j/calendar/bahai/BadiCalendar$MonthElement;-><init>()V

    sput-object v0, Lnet/time4j/calendar/bahai/BadiCalendar$MonthElement;->SINGLETON:Lnet/time4j/calendar/bahai/BadiCalendar$MonthElement;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 2085
    const-class v0, Lnet/time4j/calendar/bahai/BadiCalendar;

    const-class v1, Lnet/time4j/calendar/bahai/BadiMonth;

    const-string v2, "MONTH_OF_YEAR"

    const/16 v3, 0x4d

    invoke-direct {p0, v2, v0, v1, v3}, Lnet/time4j/calendar/service/StdEnumDateElement;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;C)V

    return-void
.end method

.method private accessor(Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/format/TextAccessor;
    .locals 4

    .line 2123
    invoke-static {p1}, Lnet/time4j/calendar/bahai/BadiCalendar;->access$1400(Lnet/time4j/engine/AttributeQuery;)Ljava/util/Locale;

    move-result-object v0

    .line 2124
    invoke-static {p1}, Lnet/time4j/calendar/bahai/BadiCalendar;->access$1500(Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/calendar/bahai/FormattedContent;

    move-result-object p1

    const-string v1, "bahai"

    .line 2125
    invoke-static {v1, v0}, Lnet/time4j/format/CalendarText;->getInstance(Ljava/lang/String;Ljava/util/Locale;)Lnet/time4j/format/CalendarText;

    move-result-object v0

    .line 2126
    const-class v1, Lnet/time4j/calendar/bahai/BadiMonth;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p1}, Lnet/time4j/calendar/bahai/FormattedContent;->variant()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "M"

    invoke-virtual {v0, p1, v1, v2}, Lnet/time4j/format/CalendarText;->getTextForms(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/String;)Lnet/time4j/format/TextAccessor;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected isSingleton()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Enum;
    .locals 0

    .line 2073
    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/bahai/BadiCalendar$MonthElement;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/calendar/bahai/BadiMonth;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Object;
    .locals 0

    .line 2073
    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/bahai/BadiCalendar$MonthElement;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/calendar/bahai/BadiMonth;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/calendar/bahai/BadiMonth;
    .locals 2

    .line 2117
    invoke-direct {p0, p3}, Lnet/time4j/calendar/bahai/BadiCalendar$MonthElement;->accessor(Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/format/TextAccessor;

    move-result-object v0

    const-class v1, Lnet/time4j/calendar/bahai/BadiMonth;

    invoke-virtual {v0, p1, p2, v1, p3}, Lnet/time4j/format/TextAccessor;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Ljava/lang/Class;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Enum;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/bahai/BadiMonth;

    return-object p1
.end method

.method public print(Lnet/time4j/engine/ChronoDisplay;Ljava/lang/Appendable;Lnet/time4j/engine/AttributeQuery;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2105
    invoke-interface {p1, p0}, Lnet/time4j/engine/ChronoDisplay;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/bahai/BadiMonth;

    .line 2106
    invoke-direct {p0, p3}, Lnet/time4j/calendar/bahai/BadiCalendar$MonthElement;->accessor(Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/format/TextAccessor;

    move-result-object p3

    invoke-virtual {p3, p1}, Lnet/time4j/format/TextAccessor;->print(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method
