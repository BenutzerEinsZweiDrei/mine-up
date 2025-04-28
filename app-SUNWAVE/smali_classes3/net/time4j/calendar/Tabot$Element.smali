.class final enum Lnet/time4j/calendar/Tabot$Element;
.super Ljava/lang/Enum;
.source "Tabot.java"

# interfaces
.implements Lnet/time4j/format/TextElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/Tabot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Element"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/time4j/calendar/Tabot$Element;",
        ">;",
        "Lnet/time4j/format/TextElement<",
        "Lnet/time4j/calendar/Tabot;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/time4j/calendar/Tabot$Element;

.field public static final enum TABOT:Lnet/time4j/calendar/Tabot$Element;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 229
    new-instance v0, Lnet/time4j/calendar/Tabot$Element;

    const-string v1, "TABOT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/time4j/calendar/Tabot$Element;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/time4j/calendar/Tabot$Element;->TABOT:Lnet/time4j/calendar/Tabot$Element;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/time4j/calendar/Tabot$Element;

    aput-object v0, v1, v2

    .line 224
    sput-object v1, Lnet/time4j/calendar/Tabot$Element;->$VALUES:[Lnet/time4j/calendar/Tabot$Element;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 224
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/time4j/calendar/Tabot$Element;
    .locals 1

    .line 224
    const-class v0, Lnet/time4j/calendar/Tabot$Element;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/time4j/calendar/Tabot$Element;

    return-object p0
.end method

.method public static values()[Lnet/time4j/calendar/Tabot$Element;
    .locals 1

    .line 224
    sget-object v0, Lnet/time4j/calendar/Tabot$Element;->$VALUES:[Lnet/time4j/calendar/Tabot$Element;

    invoke-virtual {v0}, [Lnet/time4j/calendar/Tabot$Element;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/time4j/calendar/Tabot$Element;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 224
    check-cast p1, Lnet/time4j/engine/ChronoDisplay;

    check-cast p2, Lnet/time4j/engine/ChronoDisplay;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/Tabot$Element;->compare(Lnet/time4j/engine/ChronoDisplay;Lnet/time4j/engine/ChronoDisplay;)I

    move-result p1

    return p1
.end method

.method public compare(Lnet/time4j/engine/ChronoDisplay;Lnet/time4j/engine/ChronoDisplay;)I
    .locals 1

    .line 253
    sget-object v0, Lnet/time4j/calendar/Tabot$Element;->TABOT:Lnet/time4j/calendar/Tabot$Element;

    invoke-interface {p1, v0}, Lnet/time4j/engine/ChronoDisplay;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/Tabot;

    invoke-virtual {p1}, Lnet/time4j/calendar/Tabot;->getDayOfMonth()I

    move-result p1

    invoke-interface {p2, v0}, Lnet/time4j/engine/ChronoDisplay;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/time4j/calendar/Tabot;

    invoke-virtual {p2}, Lnet/time4j/calendar/Tabot;->getDayOfMonth()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic getDefaultMaximum()Ljava/lang/Object;
    .locals 1

    .line 224
    invoke-virtual {p0}, Lnet/time4j/calendar/Tabot$Element;->getDefaultMaximum()Lnet/time4j/calendar/Tabot;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMaximum()Lnet/time4j/calendar/Tabot;
    .locals 1

    const/16 v0, 0x1e

    .line 267
    invoke-static {v0}, Lnet/time4j/calendar/Tabot;->of(I)Lnet/time4j/calendar/Tabot;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultMinimum()Ljava/lang/Object;
    .locals 1

    .line 224
    invoke-virtual {p0}, Lnet/time4j/calendar/Tabot$Element;->getDefaultMinimum()Lnet/time4j/calendar/Tabot;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMinimum()Lnet/time4j/calendar/Tabot;
    .locals 1

    const/4 v0, 0x1

    .line 260
    invoke-static {v0}, Lnet/time4j/calendar/Tabot;->of(I)Lnet/time4j/calendar/Tabot;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 295
    invoke-virtual {p0}, Lnet/time4j/calendar/Tabot$Element;->name()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSymbol()C
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lnet/time4j/calendar/Tabot;",
            ">;"
        }
    .end annotation

    .line 236
    const-class v0, Lnet/time4j/calendar/Tabot;

    return-object v0
.end method

.method public isDateElement()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isLenient()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTimeElement()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Object;
    .locals 0

    .line 224
    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/Tabot$Element;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/calendar/Tabot;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/calendar/Tabot;
    .locals 5

    .line 317
    sget-object v0, Lnet/time4j/format/Attributes;->LANGUAGE:Lnet/time4j/engine/AttributeKey;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-interface {p3, v0, v1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Locale;

    .line 318
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    const/16 v2, 0x1e

    if-gt v1, v2, :cond_1

    .line 321
    invoke-static {v1}, Lnet/time4j/calendar/Tabot;->of(I)Lnet/time4j/calendar/Tabot;

    move-result-object v2

    invoke-virtual {v2, p3}, Lnet/time4j/calendar/Tabot;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 322
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v0

    .line 325
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-gt v3, v4, :cond_0

    .line 326
    invoke-interface {p1, v0, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 328
    invoke-virtual {p2, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 329
    invoke-static {v1}, Lnet/time4j/calendar/Tabot;->of(I)Lnet/time4j/calendar/Tabot;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public print(Lnet/time4j/engine/ChronoDisplay;Ljava/lang/Appendable;Lnet/time4j/engine/AttributeQuery;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    sget-object v0, Lnet/time4j/calendar/Tabot$Element;->TABOT:Lnet/time4j/calendar/Tabot$Element;

    invoke-interface {p1, v0}, Lnet/time4j/engine/ChronoDisplay;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/Tabot;

    sget-object v0, Lnet/time4j/format/Attributes;->LANGUAGE:Lnet/time4j/engine/AttributeKey;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-interface {p3, v0, v1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Locale;

    invoke-virtual {p1, p3}, Lnet/time4j/calendar/Tabot;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method
