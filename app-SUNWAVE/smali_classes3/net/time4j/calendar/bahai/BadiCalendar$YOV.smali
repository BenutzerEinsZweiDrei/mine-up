.class Lnet/time4j/calendar/bahai/BadiCalendar$YOV;
.super Lnet/time4j/format/DisplayElement;
.source "BadiCalendar.java"

# interfaces
.implements Lnet/time4j/format/TextElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/bahai/BadiCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "YOV"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/format/DisplayElement<",
        "Ljava/lang/Integer;",
        ">;",
        "Lnet/time4j/format/TextElement<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field static final SINGLETON:Lnet/time4j/calendar/bahai/BadiCalendar$YOV;

.field private static final serialVersionUID:J = -0x72ea87751097f465L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2199
    new-instance v0, Lnet/time4j/calendar/bahai/BadiCalendar$YOV;

    invoke-direct {v0}, Lnet/time4j/calendar/bahai/BadiCalendar$YOV;-><init>()V

    sput-object v0, Lnet/time4j/calendar/bahai/BadiCalendar$YOV;->SINGLETON:Lnet/time4j/calendar/bahai/BadiCalendar$YOV;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "YEAR_OF_VAHID"

    .line 2206
    invoke-direct {p0, v0}, Lnet/time4j/format/DisplayElement;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private accessor(Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/format/TextAccessor;
    .locals 4

    .line 2292
    invoke-static {p1}, Lnet/time4j/calendar/bahai/BadiCalendar;->access$1400(Lnet/time4j/engine/AttributeQuery;)Ljava/util/Locale;

    move-result-object v0

    .line 2293
    invoke-static {p1}, Lnet/time4j/calendar/bahai/BadiCalendar;->access$1500(Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/calendar/bahai/FormattedContent;

    move-result-object p1

    const-string v1, "bahai"

    .line 2294
    invoke-static {v1, v0}, Lnet/time4j/format/CalendarText;->getInstance(Ljava/lang/String;Ljava/util/Locale;)Lnet/time4j/format/CalendarText;

    move-result-object v0

    .line 2295
    invoke-static {}, Lnet/time4j/calendar/bahai/BadiCalendar$YOV;->enumAccess()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p1}, Lnet/time4j/calendar/bahai/FormattedContent;->variant()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "YOV"

    invoke-virtual {v0, p1, v1, v2}, Lnet/time4j/format/CalendarText;->getTextForms(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/String;)Lnet/time4j/format/TextAccessor;

    move-result-object p1

    return-object p1
.end method

.method private static enumAccess()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lnet/time4j/calendar/bahai/BadiMonth;",
            ">;"
        }
    .end annotation

    .line 2302
    const-class v0, Lnet/time4j/calendar/bahai/BadiMonth;

    return-object v0
.end method


# virtual methods
.method public getDefaultMaximum()Ljava/lang/Integer;
    .locals 1

    const/16 v0, 0x13

    .line 2265
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultMaximum()Ljava/lang/Object;
    .locals 1

    .line 2193
    invoke-virtual {p0}, Lnet/time4j/calendar/bahai/BadiCalendar$YOV;->getDefaultMaximum()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMinimum()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x1

    .line 2258
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultMinimum()Ljava/lang/Object;
    .locals 1

    .line 2193
    invoke-virtual {p0}, Lnet/time4j/calendar/bahai/BadiCalendar$YOV;->getDefaultMinimum()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getSymbol()C
    .locals 1

    const/16 v0, 0x58

    return v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2251
    const-class v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public isDateElement()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected isSingleton()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isTimeElement()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Integer;
    .locals 2

    .line 2238
    invoke-direct {p0, p3}, Lnet/time4j/calendar/bahai/BadiCalendar$YOV;->accessor(Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/format/TextAccessor;

    move-result-object v0

    invoke-static {}, Lnet/time4j/calendar/bahai/BadiCalendar$YOV;->enumAccess()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1, p3}, Lnet/time4j/format/TextAccessor;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Ljava/lang/Class;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Enum;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2243
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Object;
    .locals 0

    .line 2193
    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/bahai/BadiCalendar$YOV;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public print(Lnet/time4j/engine/ChronoDisplay;Ljava/lang/Appendable;Lnet/time4j/engine/AttributeQuery;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/time4j/engine/ChronoException;
        }
    .end annotation

    .line 2225
    invoke-interface {p1, p0}, Lnet/time4j/engine/ChronoDisplay;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result p1

    .line 2226
    invoke-static {}, Lnet/time4j/calendar/bahai/BadiCalendar$YOV;->enumAccess()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/time4j/calendar/bahai/BadiMonth;

    add-int/lit8 p1, p1, -0x1

    aget-object p1, v0, p1

    .line 2227
    invoke-direct {p0, p3}, Lnet/time4j/calendar/bahai/BadiCalendar$YOV;->accessor(Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/format/TextAccessor;

    move-result-object p3

    invoke-virtual {p3, p1}, Lnet/time4j/format/TextAccessor;->print(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method
