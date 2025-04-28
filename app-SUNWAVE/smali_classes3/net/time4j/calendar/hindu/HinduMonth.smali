.class public final Lnet/time4j/calendar/hindu/HinduMonth;
.super Lnet/time4j/calendar/hindu/HinduPrimitive;
.source "HinduMonth.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lnet/time4j/engine/ChronoCondition;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/calendar/hindu/HinduPrimitive;",
        "Ljava/lang/Comparable<",
        "Lnet/time4j/calendar/hindu/HinduMonth;",
        ">;",
        "Lnet/time4j/engine/ChronoCondition<",
        "Lnet/time4j/calendar/hindu/HinduCalendar;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final RASI_NAMES:Lnet/time4j/engine/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/AttributeKey<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final leap:Z

.field private final value:Lnet/time4j/calendar/IndianMonth;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 71
    const-class v0, Ljava/lang/Boolean;

    const-string v1, "RASI_NAMES"

    .line 72
    invoke-static {v1, v0}, Lnet/time4j/format/Attributes;->createKey(Ljava/lang/String;Ljava/lang/Class;)Lnet/time4j/engine/AttributeKey;

    move-result-object v0

    sput-object v0, Lnet/time4j/calendar/hindu/HinduMonth;->RASI_NAMES:Lnet/time4j/engine/AttributeKey;

    return-void
.end method

.method private constructor <init>(Lnet/time4j/calendar/IndianMonth;Z)V
    .locals 1

    .line 92
    invoke-direct {p0}, Lnet/time4j/calendar/hindu/HinduPrimitive;-><init>()V

    const-string v0, "Missing Indian month."

    .line 95
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 98
    iput-object p1, p0, Lnet/time4j/calendar/hindu/HinduMonth;->value:Lnet/time4j/calendar/IndianMonth;

    .line 99
    iput-boolean p2, p0, Lnet/time4j/calendar/hindu/HinduMonth;->leap:Z

    return-void
.end method

.method private static getAdhika(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hindu"

    invoke-static {v1, p0}, Lnet/time4j/format/CalendarText;->getInstance(Ljava/lang/String;Ljava/util/Locale;)Lnet/time4j/format/CalendarText;

    move-result-object p0

    invoke-virtual {p0}, Lnet/time4j/format/CalendarText;->getTextForms()Ljava/util/Map;

    move-result-object p0

    const-string v1, "adhika"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static of(Lnet/time4j/calendar/IndianMonth;)Lnet/time4j/calendar/hindu/HinduMonth;
    .locals 2

    .line 123
    new-instance v0, Lnet/time4j/calendar/hindu/HinduMonth;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnet/time4j/calendar/hindu/HinduMonth;-><init>(Lnet/time4j/calendar/IndianMonth;Z)V

    return-object v0
.end method

.method public static ofLunisolar(I)Lnet/time4j/calendar/hindu/HinduMonth;
    .locals 2

    .line 147
    new-instance v0, Lnet/time4j/calendar/hindu/HinduMonth;

    invoke-static {p0}, Lnet/time4j/calendar/IndianMonth;->valueOf(I)Lnet/time4j/calendar/IndianMonth;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnet/time4j/calendar/hindu/HinduMonth;-><init>(Lnet/time4j/calendar/IndianMonth;Z)V

    return-object v0
.end method

.method public static ofSolar(I)Lnet/time4j/calendar/hindu/HinduMonth;
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0xc

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr v0, p0

    .line 174
    :goto_0
    new-instance p0, Lnet/time4j/calendar/hindu/HinduMonth;

    invoke-static {v0}, Lnet/time4j/calendar/IndianMonth;->valueOf(I)Lnet/time4j/calendar/IndianMonth;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lnet/time4j/calendar/hindu/HinduMonth;-><init>(Lnet/time4j/calendar/IndianMonth;Z)V

    return-object p0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 47
    check-cast p1, Lnet/time4j/calendar/hindu/HinduMonth;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/hindu/HinduMonth;->compareTo(Lnet/time4j/calendar/hindu/HinduMonth;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lnet/time4j/calendar/hindu/HinduMonth;)I
    .locals 2

    .line 412
    iget-object v0, p0, Lnet/time4j/calendar/hindu/HinduMonth;->value:Lnet/time4j/calendar/IndianMonth;

    iget-object v1, p1, Lnet/time4j/calendar/hindu/HinduMonth;->value:Lnet/time4j/calendar/IndianMonth;

    invoke-virtual {v0, v1}, Lnet/time4j/calendar/IndianMonth;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-nez v0, :cond_2

    .line 415
    iget-boolean v0, p0, Lnet/time4j/calendar/hindu/HinduMonth;->leap:Z

    if-eqz v0, :cond_1

    .line 416
    iget-boolean p1, p1, Lnet/time4j/calendar/hindu/HinduMonth;->leap:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    move v0, p1

    goto :goto_1

    .line 418
    :cond_1
    iget-boolean v0, p1, Lnet/time4j/calendar/hindu/HinduMonth;->leap:Z

    :cond_2
    :goto_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 375
    :cond_0
    instance-of v1, p1, Lnet/time4j/calendar/hindu/HinduMonth;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 376
    check-cast p1, Lnet/time4j/calendar/hindu/HinduMonth;

    .line 377
    iget-object v1, p0, Lnet/time4j/calendar/hindu/HinduMonth;->value:Lnet/time4j/calendar/IndianMonth;

    iget-object v3, p1, Lnet/time4j/calendar/hindu/HinduMonth;->value:Lnet/time4j/calendar/IndianMonth;

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lnet/time4j/calendar/hindu/HinduMonth;->leap:Z

    iget-boolean p1, p1, Lnet/time4j/calendar/hindu/HinduMonth;->leap:Z

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    .line 276
    sget-object v0, Lnet/time4j/format/TextWidth;->WIDE:Lnet/time4j/format/TextWidth;

    sget-object v1, Lnet/time4j/format/OutputContext;->FORMAT:Lnet/time4j/format/OutputContext;

    invoke-virtual {p0, p1, v0, v1}, Lnet/time4j/calendar/hindu/HinduMonth;->getDisplayName(Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDisplayName(Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)Ljava/lang/String;
    .locals 1

    const-string v0, "indian"

    .line 325
    invoke-static {v0, p1}, Lnet/time4j/format/CalendarText;->getInstance(Ljava/lang/String;Ljava/util/Locale;)Lnet/time4j/format/CalendarText;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lnet/time4j/format/CalendarText;->getStdMonths(Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)Lnet/time4j/format/TextAccessor;

    move-result-object p2

    iget-object p3, p0, Lnet/time4j/calendar/hindu/HinduMonth;->value:Lnet/time4j/calendar/IndianMonth;

    invoke-virtual {p2, p3}, Lnet/time4j/format/TextAccessor;->print(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p2

    .line 327
    iget-boolean p3, p0, Lnet/time4j/calendar/hindu/HinduMonth;->leap:Z

    if-eqz p3, :cond_0

    .line 328
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lnet/time4j/calendar/hindu/HinduMonth;->getAdhika(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method public getRasi()I
    .locals 2

    .line 216
    iget-object v0, p0, Lnet/time4j/calendar/hindu/HinduMonth;->value:Lnet/time4j/calendar/IndianMonth;

    sget-object v1, Lnet/time4j/calendar/IndianMonth;->CHAITRA:Lnet/time4j/calendar/IndianMonth;

    if-ne v0, v1, :cond_0

    const/16 v0, 0xc

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/time4j/calendar/hindu/HinduMonth;->value:Lnet/time4j/calendar/IndianMonth;

    invoke-virtual {v0}, Lnet/time4j/calendar/IndianMonth;->getValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    return v0
.end method

.method public getRasi(Ljava/util/Locale;)Ljava/lang/String;
    .locals 4

    const-string v0, "hindu"

    .line 243
    invoke-static {v0, p1}, Lnet/time4j/format/CalendarText;->getInstance(Ljava/lang/String;Ljava/util/Locale;)Lnet/time4j/format/CalendarText;

    move-result-object v0

    .line 244
    const-class v1, Lnet/time4j/calendar/IndianMonth;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "R"

    invoke-virtual {v0, v3, v1, v2}, Lnet/time4j/format/CalendarText;->getTextForms(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/String;)Lnet/time4j/format/TextAccessor;

    move-result-object v0

    invoke-virtual {p0}, Lnet/time4j/calendar/hindu/HinduMonth;->getRasi()I

    move-result v1

    invoke-static {v1}, Lnet/time4j/calendar/IndianMonth;->valueOf(I)Lnet/time4j/calendar/IndianMonth;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/time4j/format/TextAccessor;->print(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    .line 246
    iget-boolean v1, p0, Lnet/time4j/calendar/hindu/HinduMonth;->leap:Z

    if-eqz v1, :cond_0

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lnet/time4j/calendar/hindu/HinduMonth;->getAdhika(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getValue()Lnet/time4j/calendar/IndianMonth;
    .locals 1

    .line 194
    iget-object v0, p0, Lnet/time4j/calendar/hindu/HinduMonth;->value:Lnet/time4j/calendar/IndianMonth;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 385
    iget-object v0, p0, Lnet/time4j/calendar/hindu/HinduMonth;->value:Lnet/time4j/calendar/IndianMonth;

    invoke-virtual {v0}, Lnet/time4j/calendar/IndianMonth;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lnet/time4j/calendar/hindu/HinduMonth;->leap:Z

    if-eqz v1, :cond_0

    const/16 v1, 0xc

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public isLeap()Z
    .locals 1

    .line 350
    iget-boolean v0, p0, Lnet/time4j/calendar/hindu/HinduMonth;->leap:Z

    return v0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 47
    check-cast p1, Lnet/time4j/calendar/hindu/HinduCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/hindu/HinduMonth;->test(Lnet/time4j/calendar/hindu/HinduCalendar;)Z

    move-result p1

    return p1
.end method

.method public test(Lnet/time4j/calendar/hindu/HinduCalendar;)Z
    .locals 0

    .line 427
    invoke-virtual {p1}, Lnet/time4j/calendar/hindu/HinduCalendar;->getMonth()Lnet/time4j/calendar/hindu/HinduMonth;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/hindu/HinduMonth;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 390
    iget-object v0, p0, Lnet/time4j/calendar/hindu/HinduMonth;->value:Lnet/time4j/calendar/IndianMonth;

    invoke-virtual {v0}, Lnet/time4j/calendar/IndianMonth;->toString()Ljava/lang/String;

    move-result-object v0

    .line 391
    iget-boolean v1, p0, Lnet/time4j/calendar/hindu/HinduMonth;->leap:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public withLeap()Lnet/time4j/calendar/hindu/HinduMonth;
    .locals 3

    .line 368
    iget-boolean v0, p0, Lnet/time4j/calendar/hindu/HinduMonth;->leap:Z

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/time4j/calendar/hindu/HinduMonth;

    iget-object v1, p0, Lnet/time4j/calendar/hindu/HinduMonth;->value:Lnet/time4j/calendar/IndianMonth;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lnet/time4j/calendar/hindu/HinduMonth;-><init>(Lnet/time4j/calendar/IndianMonth;Z)V

    :goto_0
    return-object v0
.end method
