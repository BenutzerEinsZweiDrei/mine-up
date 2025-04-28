.class Lnet/time4j/calendar/bahai/BadiCalendar$DowElement;
.super Lnet/time4j/calendar/service/StdWeekdayElement;
.source "BadiCalendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/bahai/BadiCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DowElement"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/calendar/service/StdWeekdayElement<",
        "Lnet/time4j/calendar/bahai/BadiCalendar;",
        ">;"
    }
.end annotation


# static fields
.field static final SINGLETON:Lnet/time4j/calendar/bahai/BadiCalendar$DowElement;

.field private static final serialVersionUID:J = -0x180f74a938164473L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2137
    new-instance v0, Lnet/time4j/calendar/bahai/BadiCalendar$DowElement;

    invoke-direct {v0}, Lnet/time4j/calendar/bahai/BadiCalendar$DowElement;-><init>()V

    sput-object v0, Lnet/time4j/calendar/bahai/BadiCalendar$DowElement;->SINGLETON:Lnet/time4j/calendar/bahai/BadiCalendar$DowElement;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 2144
    const-class v0, Lnet/time4j/calendar/bahai/BadiCalendar;

    invoke-static {}, Lnet/time4j/calendar/bahai/BadiCalendar;->access$1600()Lnet/time4j/Weekmodel;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/time4j/calendar/service/StdWeekdayElement;-><init>(Ljava/lang/Class;Lnet/time4j/Weekmodel;)V

    return-void
.end method

.method private accessor(Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/format/TextAccessor;
    .locals 4

    .line 2184
    invoke-static {p1}, Lnet/time4j/calendar/bahai/BadiCalendar;->access$1400(Lnet/time4j/engine/AttributeQuery;)Ljava/util/Locale;

    move-result-object v0

    .line 2185
    invoke-static {p1}, Lnet/time4j/calendar/bahai/BadiCalendar;->access$1500(Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/calendar/bahai/FormattedContent;

    move-result-object p1

    const-string v1, "bahai"

    .line 2186
    invoke-static {v1, v0}, Lnet/time4j/format/CalendarText;->getInstance(Ljava/lang/String;Ljava/util/Locale;)Lnet/time4j/format/CalendarText;

    move-result-object v0

    .line 2187
    const-class v1, Lnet/time4j/Weekday;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p1}, Lnet/time4j/calendar/bahai/FormattedContent;->variant()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "D"

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

    .line 2132
    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/bahai/BadiCalendar$DowElement;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/Weekday;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Object;
    .locals 0

    .line 2132
    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/bahai/BadiCalendar$DowElement;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/Weekday;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/Weekday;
    .locals 2

    .line 2177
    invoke-direct {p0, p3}, Lnet/time4j/calendar/bahai/BadiCalendar$DowElement;->accessor(Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/format/TextAccessor;

    move-result-object v0

    const-class v1, Lnet/time4j/Weekday;

    invoke-virtual {v0, p1, p2, v1, p3}, Lnet/time4j/format/TextAccessor;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Ljava/lang/Class;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Enum;

    move-result-object p1

    check-cast p1, Lnet/time4j/Weekday;

    const/4 p2, -0x2

    .line 2178
    invoke-virtual {p1, p2}, Lnet/time4j/Weekday;->roll(I)Lnet/time4j/Weekday;

    move-result-object p1

    return-object p1
.end method

.method public print(Lnet/time4j/engine/ChronoDisplay;Ljava/lang/Appendable;Lnet/time4j/engine/AttributeQuery;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2164
    invoke-interface {p1, p0}, Lnet/time4j/engine/ChronoDisplay;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/Weekday;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lnet/time4j/Weekday;->roll(I)Lnet/time4j/Weekday;

    move-result-object p1

    .line 2165
    invoke-direct {p0, p3}, Lnet/time4j/calendar/bahai/BadiCalendar$DowElement;->accessor(Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/format/TextAccessor;

    move-result-object p3

    invoke-virtual {p3, p1}, Lnet/time4j/format/TextAccessor;->print(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method
