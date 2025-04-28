.class public final enum Lnet/time4j/Quarter;
.super Ljava/lang/Enum;
.source "Quarter.java"

# interfaces
.implements Lnet/time4j/engine/ChronoCondition;
.implements Lnet/time4j/engine/ChronoOperator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/time4j/Quarter;",
        ">;",
        "Lnet/time4j/engine/ChronoCondition<",
        "Lnet/time4j/base/GregorianDate;",
        ">;",
        "Lnet/time4j/engine/ChronoOperator<",
        "Lnet/time4j/PlainDate;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/time4j/Quarter;

.field private static final ENUMS:[Lnet/time4j/Quarter;

.field public static final enum Q1:Lnet/time4j/Quarter;

.field public static final enum Q2:Lnet/time4j/Quarter;

.field public static final enum Q3:Lnet/time4j/Quarter;

.field public static final enum Q4:Lnet/time4j/Quarter;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 55
    new-instance v0, Lnet/time4j/Quarter;

    const-string v1, "Q1"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/time4j/Quarter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/time4j/Quarter;->Q1:Lnet/time4j/Quarter;

    .line 63
    new-instance v1, Lnet/time4j/Quarter;

    const-string v3, "Q2"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/time4j/Quarter;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/time4j/Quarter;->Q2:Lnet/time4j/Quarter;

    .line 71
    new-instance v3, Lnet/time4j/Quarter;

    const-string v5, "Q3"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lnet/time4j/Quarter;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/time4j/Quarter;->Q3:Lnet/time4j/Quarter;

    .line 79
    new-instance v5, Lnet/time4j/Quarter;

    const-string v7, "Q4"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lnet/time4j/Quarter;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lnet/time4j/Quarter;->Q4:Lnet/time4j/Quarter;

    const/4 v7, 0x4

    new-array v7, v7, [Lnet/time4j/Quarter;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 44
    sput-object v7, Lnet/time4j/Quarter;->$VALUES:[Lnet/time4j/Quarter;

    .line 81
    invoke-static {}, Lnet/time4j/Quarter;->values()[Lnet/time4j/Quarter;

    move-result-object v0

    sput-object v0, Lnet/time4j/Quarter;->ENUMS:[Lnet/time4j/Quarter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static parse(Ljava/lang/CharSequence;Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)Lnet/time4j/Quarter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 283
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    .line 284
    invoke-static {p1}, Lnet/time4j/format/CalendarText;->getIsoInstance(Ljava/util/Locale;)Lnet/time4j/format/CalendarText;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lnet/time4j/format/CalendarText;->getQuarters(Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)Lnet/time4j/format/TextAccessor;

    move-result-object p1

    const-class p2, Lnet/time4j/Quarter;

    invoke-virtual {p1, p0, v0, p2}, Lnet/time4j/format/TextAccessor;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object p1

    check-cast p1, Lnet/time4j/Quarter;

    if-eqz p1, :cond_0

    return-object p1

    .line 287
    :cond_0
    new-instance p1, Ljava/text/ParseException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot parse: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result p2

    invoke-direct {p1, p0, p2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public static valueOf(I)Lnet/time4j/Quarter;
    .locals 3

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/4 v1, 0x4

    if-gt p0, v1, :cond_0

    .line 107
    sget-object v1, Lnet/time4j/Quarter;->ENUMS:[Lnet/time4j/Quarter;

    sub-int/2addr p0, v0

    aget-object p0, v1, p0

    return-object p0

    .line 104
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/time4j/Quarter;
    .locals 1

    .line 44
    const-class v0, Lnet/time4j/Quarter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/time4j/Quarter;

    return-object p0
.end method

.method public static values()[Lnet/time4j/Quarter;
    .locals 1

    .line 44
    sget-object v0, Lnet/time4j/Quarter;->$VALUES:[Lnet/time4j/Quarter;

    invoke-virtual {v0}, [Lnet/time4j/Quarter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/time4j/Quarter;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    check-cast p1, Lnet/time4j/PlainDate;

    invoke-virtual {p0, p1}, Lnet/time4j/Quarter;->apply(Lnet/time4j/PlainDate;)Lnet/time4j/PlainDate;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lnet/time4j/PlainDate;)Lnet/time4j/PlainDate;
    .locals 1

    .line 305
    sget-object v0, Lnet/time4j/PlainDate;->QUARTER_OF_YEAR:Lnet/time4j/NavigableElement;

    invoke-virtual {p1, v0, p0}, Lnet/time4j/PlainDate;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainDate;

    return-object p1
.end method

.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    .line 207
    sget-object v0, Lnet/time4j/format/TextWidth;->WIDE:Lnet/time4j/format/TextWidth;

    sget-object v1, Lnet/time4j/format/OutputContext;->FORMAT:Lnet/time4j/format/OutputContext;

    invoke-virtual {p0, p1, v0, v1}, Lnet/time4j/Quarter;->getDisplayName(Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDisplayName(Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)Ljava/lang/String;
    .locals 0

    .line 248
    invoke-static {p1}, Lnet/time4j/format/CalendarText;->getIsoInstance(Ljava/util/Locale;)Lnet/time4j/format/CalendarText;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lnet/time4j/format/CalendarText;->getQuarters(Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)Lnet/time4j/format/TextAccessor;

    move-result-object p1

    invoke-virtual {p1, p0}, Lnet/time4j/format/TextAccessor;->print(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getValue()I
    .locals 1

    .line 123
    invoke-virtual {p0}, Lnet/time4j/Quarter;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public next()Lnet/time4j/Quarter;
    .locals 1

    const/4 v0, 0x1

    .line 143
    invoke-virtual {p0, v0}, Lnet/time4j/Quarter;->roll(I)Lnet/time4j/Quarter;

    move-result-object v0

    return-object v0
.end method

.method public previous()Lnet/time4j/Quarter;
    .locals 1

    const/4 v0, -0x1

    .line 163
    invoke-virtual {p0, v0}, Lnet/time4j/Quarter;->roll(I)Lnet/time4j/Quarter;

    move-result-object v0

    return-object v0
.end method

.method public roll(I)Lnet/time4j/Quarter;
    .locals 1

    .line 183
    invoke-virtual {p0}, Lnet/time4j/Quarter;->ordinal()I

    move-result v0

    rem-int/lit8 p1, p1, 0x4

    add-int/lit8 p1, p1, 0x4

    add-int/2addr v0, p1

    rem-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x1

    .line 182
    invoke-static {v0}, Lnet/time4j/Quarter;->valueOf(I)Lnet/time4j/Quarter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 44
    check-cast p1, Lnet/time4j/base/GregorianDate;

    invoke-virtual {p0, p1}, Lnet/time4j/Quarter;->test(Lnet/time4j/base/GregorianDate;)Z

    move-result p1

    return p1
.end method

.method public test(Lnet/time4j/base/GregorianDate;)Z
    .locals 2

    .line 297
    invoke-interface {p1}, Lnet/time4j/base/GregorianDate;->getMonth()I

    move-result p1

    .line 298
    invoke-virtual {p0}, Lnet/time4j/Quarter;->getValue()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, v1

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
