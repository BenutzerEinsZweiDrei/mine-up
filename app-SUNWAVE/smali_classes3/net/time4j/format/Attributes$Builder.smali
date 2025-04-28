.class public final Lnet/time4j/format/Attributes$Builder;
.super Ljava/lang/Object;
.source "Attributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/format/Attributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final attrs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 837
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 826
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/time4j/format/Attributes$Builder;->attrs:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lnet/time4j/engine/Chronology;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/Chronology<",
            "*>;)V"
        }
    .end annotation

    .line 856
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 826
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/time4j/format/Attributes$Builder;->attrs:Ljava/util/Map;

    .line 858
    sget-object v0, Lnet/time4j/format/Attributes;->CALENDAR_TYPE:Lnet/time4j/engine/AttributeKey;

    invoke-static {p1}, Lnet/time4j/format/CalendarText;->extractCalendarType(Lnet/time4j/engine/Chronology;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lnet/time4j/format/Attributes$Builder;->setInternal(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)V

    return-void
.end method

.method private setInternal(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/engine/AttributeKey<",
            "TA;>;TA;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1191
    iget-object v0, p0, Lnet/time4j/format/Attributes$Builder;->attrs:Ljava/util/Map;

    invoke-interface {p1}, Lnet/time4j/engine/AttributeKey;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 1188
    :cond_0
    new-instance p2, Ljava/lang/NullPointerException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing attribute value for key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public build()Lnet/time4j/format/Attributes;
    .locals 3

    .line 1178
    new-instance v0, Lnet/time4j/format/Attributes;

    iget-object v1, p0, Lnet/time4j/format/Attributes$Builder;->attrs:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/time4j/format/Attributes;-><init>(Ljava/util/Map;Lnet/time4j/format/Attributes$1;)V

    return-object v0
.end method

.method public remove(Lnet/time4j/engine/AttributeKey;)Lnet/time4j/format/Attributes$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/AttributeKey<",
            "*>;)",
            "Lnet/time4j/format/Attributes$Builder;"
        }
    .end annotation

    .line 1160
    iget-object v0, p0, Lnet/time4j/format/Attributes$Builder;->attrs:Ljava/util/Map;

    invoke-interface {p1}, Lnet/time4j/engine/AttributeKey;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public set(Lnet/time4j/engine/AttributeKey;C)Lnet/time4j/format/Attributes$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/AttributeKey<",
            "Ljava/lang/Character;",
            ">;C)",
            "Lnet/time4j/format/Attributes$Builder;"
        }
    .end annotation

    .line 1050
    iget-object v0, p0, Lnet/time4j/format/Attributes$Builder;->attrs:Ljava/util/Map;

    invoke-interface {p1}, Lnet/time4j/engine/AttributeKey;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public set(Lnet/time4j/engine/AttributeKey;I)Lnet/time4j/format/Attributes$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/AttributeKey<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Lnet/time4j/format/Attributes$Builder;"
        }
    .end annotation

    .line 1021
    sget-object v0, Lnet/time4j/format/Attributes;->PIVOT_YEAR:Lnet/time4j/engine/AttributeKey;

    if-ne p1, v0, :cond_1

    const/16 v0, 0x64

    if-lt p2, v0, :cond_0

    goto :goto_0

    .line 1022
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pivot year in far past not supported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1026
    :cond_1
    :goto_0
    iget-object v0, p0, Lnet/time4j/format/Attributes$Builder;->attrs:Ljava/util/Map;

    invoke-interface {p1}, Lnet/time4j/engine/AttributeKey;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public set(Lnet/time4j/engine/AttributeKey;Ljava/lang/Enum;)Lnet/time4j/format/Attributes$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Enum<",
            "TA;>;>(",
            "Lnet/time4j/engine/AttributeKey<",
            "TA;>;TA;)",
            "Lnet/time4j/format/Attributes$Builder;"
        }
    .end annotation

    if-eqz p2, :cond_6

    .line 1078
    instance-of v0, p2, Ljava/lang/Enum;

    if-eqz v0, :cond_5

    .line 1083
    iget-object v0, p0, Lnet/time4j/format/Attributes$Builder;->attrs:Ljava/util/Map;

    invoke-interface {p1}, Lnet/time4j/engine/AttributeKey;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1087
    sget-object v0, Lnet/time4j/format/Attributes;->LENIENCY:Lnet/time4j/engine/AttributeKey;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_3

    .line 1088
    sget-object p1, Lnet/time4j/format/Attributes$1;->$SwitchMap$net$time4j$format$Leniency:[I

    const-class v0, Lnet/time4j/format/Leniency;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/format/Leniency;

    invoke-virtual {v0}, Lnet/time4j/format/Leniency;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 1102
    sget-object p1, Lnet/time4j/format/Attributes;->PARSE_CASE_INSENSITIVE:Lnet/time4j/engine/AttributeKey;

    invoke-virtual {p0, p1, v0}, Lnet/time4j/format/Attributes$Builder;->set(Lnet/time4j/engine/AttributeKey;Z)Lnet/time4j/format/Attributes$Builder;

    .line 1103
    sget-object p1, Lnet/time4j/format/Attributes;->PARSE_PARTIAL_COMPARE:Lnet/time4j/engine/AttributeKey;

    invoke-virtual {p0, p1, v0}, Lnet/time4j/format/Attributes$Builder;->set(Lnet/time4j/engine/AttributeKey;Z)Lnet/time4j/format/Attributes$Builder;

    .line 1104
    sget-object p1, Lnet/time4j/format/Attributes;->TRAILING_CHARACTERS:Lnet/time4j/engine/AttributeKey;

    invoke-virtual {p0, p1, v0}, Lnet/time4j/format/Attributes$Builder;->set(Lnet/time4j/engine/AttributeKey;Z)Lnet/time4j/format/Attributes$Builder;

    .line 1105
    sget-object p1, Lnet/time4j/format/Attributes;->PARSE_MULTIPLE_CONTEXT:Lnet/time4j/engine/AttributeKey;

    invoke-virtual {p0, p1, v0}, Lnet/time4j/format/Attributes$Builder;->set(Lnet/time4j/engine/AttributeKey;Z)Lnet/time4j/format/Attributes$Builder;

    goto :goto_0

    .line 1108
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1096
    :cond_1
    sget-object p1, Lnet/time4j/format/Attributes;->PARSE_CASE_INSENSITIVE:Lnet/time4j/engine/AttributeKey;

    invoke-virtual {p0, p1, v0}, Lnet/time4j/format/Attributes$Builder;->set(Lnet/time4j/engine/AttributeKey;Z)Lnet/time4j/format/Attributes$Builder;

    .line 1097
    sget-object p1, Lnet/time4j/format/Attributes;->PARSE_PARTIAL_COMPARE:Lnet/time4j/engine/AttributeKey;

    invoke-virtual {p0, p1, v1}, Lnet/time4j/format/Attributes$Builder;->set(Lnet/time4j/engine/AttributeKey;Z)Lnet/time4j/format/Attributes$Builder;

    .line 1098
    sget-object p1, Lnet/time4j/format/Attributes;->TRAILING_CHARACTERS:Lnet/time4j/engine/AttributeKey;

    invoke-virtual {p0, p1, v1}, Lnet/time4j/format/Attributes$Builder;->set(Lnet/time4j/engine/AttributeKey;Z)Lnet/time4j/format/Attributes$Builder;

    .line 1099
    sget-object p1, Lnet/time4j/format/Attributes;->PARSE_MULTIPLE_CONTEXT:Lnet/time4j/engine/AttributeKey;

    invoke-virtual {p0, p1, v0}, Lnet/time4j/format/Attributes$Builder;->set(Lnet/time4j/engine/AttributeKey;Z)Lnet/time4j/format/Attributes$Builder;

    goto :goto_0

    .line 1090
    :cond_2
    sget-object p1, Lnet/time4j/format/Attributes;->PARSE_CASE_INSENSITIVE:Lnet/time4j/engine/AttributeKey;

    invoke-virtual {p0, p1, v1}, Lnet/time4j/format/Attributes$Builder;->set(Lnet/time4j/engine/AttributeKey;Z)Lnet/time4j/format/Attributes$Builder;

    .line 1091
    sget-object p1, Lnet/time4j/format/Attributes;->PARSE_PARTIAL_COMPARE:Lnet/time4j/engine/AttributeKey;

    invoke-virtual {p0, p1, v1}, Lnet/time4j/format/Attributes$Builder;->set(Lnet/time4j/engine/AttributeKey;Z)Lnet/time4j/format/Attributes$Builder;

    .line 1092
    sget-object p1, Lnet/time4j/format/Attributes;->TRAILING_CHARACTERS:Lnet/time4j/engine/AttributeKey;

    invoke-virtual {p0, p1, v1}, Lnet/time4j/format/Attributes$Builder;->set(Lnet/time4j/engine/AttributeKey;Z)Lnet/time4j/format/Attributes$Builder;

    .line 1093
    sget-object p1, Lnet/time4j/format/Attributes;->PARSE_MULTIPLE_CONTEXT:Lnet/time4j/engine/AttributeKey;

    invoke-virtual {p0, p1, v1}, Lnet/time4j/format/Attributes$Builder;->set(Lnet/time4j/engine/AttributeKey;Z)Lnet/time4j/format/Attributes$Builder;

    goto :goto_0

    .line 1110
    :cond_3
    sget-object v0, Lnet/time4j/format/Attributes;->NUMBER_SYSTEM:Lnet/time4j/engine/AttributeKey;

    if-ne p1, v0, :cond_4

    .line 1111
    const-class p1, Lnet/time4j/format/NumberSystem;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/format/NumberSystem;

    .line 1112
    invoke-virtual {p1}, Lnet/time4j/format/NumberSystem;->isDecimal()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1113
    sget-object p2, Lnet/time4j/format/Attributes;->ZERO_DIGIT:Lnet/time4j/engine/AttributeKey;

    invoke-virtual {p1}, Lnet/time4j/format/NumberSystem;->getDigits()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {p0, p2, p1}, Lnet/time4j/format/Attributes$Builder;->set(Lnet/time4j/engine/AttributeKey;C)Lnet/time4j/format/Attributes$Builder;

    :cond_4
    :goto_0
    return-object p0

    .line 1079
    :cond_5
    new-instance p1, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enum expected, but found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1077
    :cond_6
    new-instance p2, Ljava/lang/NullPointerException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing attribute value for key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public set(Lnet/time4j/engine/AttributeKey;Z)Lnet/time4j/format/Attributes$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/AttributeKey<",
            "Ljava/lang/Boolean;",
            ">;Z)",
            "Lnet/time4j/format/Attributes$Builder;"
        }
    .end annotation

    .line 995
    iget-object v0, p0, Lnet/time4j/format/Attributes$Builder;->attrs:Ljava/util/Map;

    invoke-interface {p1}, Lnet/time4j/engine/AttributeKey;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setAll(Lnet/time4j/format/Attributes;)Lnet/time4j/format/Attributes$Builder;
    .locals 1

    .line 1141
    iget-object v0, p0, Lnet/time4j/format/Attributes$Builder;->attrs:Ljava/util/Map;

    invoke-static {p1}, Lnet/time4j/format/Attributes;->access$000(Lnet/time4j/format/Attributes;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public setCalendarVariant(Ljava/lang/String;)Lnet/time4j/format/Attributes$Builder;
    .locals 1

    .line 971
    sget-object v0, Lnet/time4j/format/Attributes;->CALENDAR_VARIANT:Lnet/time4j/engine/AttributeKey;

    invoke-direct {p0, v0, p1}, Lnet/time4j/format/Attributes$Builder;->setInternal(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)V

    return-object p0
.end method

.method public setLanguage(Ljava/util/Locale;)Lnet/time4j/format/Attributes$Builder;
    .locals 1

    .line 880
    sget-object v0, Lnet/time4j/format/Attributes;->LANGUAGE:Lnet/time4j/engine/AttributeKey;

    invoke-direct {p0, v0, p1}, Lnet/time4j/format/Attributes$Builder;->setInternal(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)V

    return-object p0
.end method

.method public setStdTimezone()Lnet/time4j/format/Attributes$Builder;
    .locals 1

    .line 947
    invoke-static {}, Lnet/time4j/tz/Timezone;->ofSystem()Lnet/time4j/tz/Timezone;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/tz/Timezone;->getID()Lnet/time4j/tz/TZID;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/time4j/format/Attributes$Builder;->setTimezone(Lnet/time4j/tz/TZID;)Lnet/time4j/format/Attributes$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setTimezone(Ljava/lang/String;)Lnet/time4j/format/Attributes$Builder;
    .locals 0

    .line 926
    invoke-static {p1}, Lnet/time4j/tz/Timezone;->of(Ljava/lang/String;)Lnet/time4j/tz/Timezone;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/tz/Timezone;->getID()Lnet/time4j/tz/TZID;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/time4j/format/Attributes$Builder;->setTimezone(Lnet/time4j/tz/TZID;)Lnet/time4j/format/Attributes$Builder;

    return-object p0
.end method

.method public setTimezone(Lnet/time4j/tz/TZID;)Lnet/time4j/format/Attributes$Builder;
    .locals 1

    .line 901
    sget-object v0, Lnet/time4j/format/Attributes;->TIMEZONE_ID:Lnet/time4j/engine/AttributeKey;

    invoke-direct {p0, v0, p1}, Lnet/time4j/format/Attributes$Builder;->setInternal(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)V

    return-object p0
.end method
