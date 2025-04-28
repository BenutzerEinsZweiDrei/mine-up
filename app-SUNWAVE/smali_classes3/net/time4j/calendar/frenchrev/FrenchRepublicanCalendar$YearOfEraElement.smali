.class Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$YearOfEraElement;
.super Lnet/time4j/calendar/service/DualYearOfEraElement;
.source "FrenchRepublicanCalendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "YearOfEraElement"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/calendar/service/DualYearOfEraElement<",
        "Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x65d2b4fa3292e680L


# direct methods
.method private constructor <init>()V
    .locals 4

    .line 1668
    const-class v0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    const/4 v1, 0x1

    const/16 v2, 0x4b2

    const/16 v3, 0x59

    invoke-direct {p0, v0, v1, v2, v3}, Lnet/time4j/calendar/service/DualYearOfEraElement;-><init>(Ljava/lang/Class;IIC)V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$1;)V
    .locals 0

    .line 1658
    invoke-direct {p0}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$YearOfEraElement;-><init>()V

    return-void
.end method


# virtual methods
.method protected getNumberSystem(Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/format/NumberSystem;
    .locals 2

    .line 1677
    sget-object v0, Lnet/time4j/format/Attributes;->FORMAT_PATTERN:Lnet/time4j/engine/AttributeKey;

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "Y"

    .line 1680
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lnet/time4j/format/Attributes;->LANGUAGE:Lnet/time4j/engine/AttributeKey;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 1681
    invoke-interface {p1, v0, v1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1683
    sget-object p1, Lnet/time4j/format/NumberSystem;->ROMAN:Lnet/time4j/format/NumberSystem;

    return-object p1

    .line 1686
    :cond_0
    sget-object v0, Lnet/time4j/format/Attributes;->NUMBER_SYSTEM:Lnet/time4j/engine/AttributeKey;

    sget-object v1, Lnet/time4j/format/NumberSystem;->ROMAN:Lnet/time4j/format/NumberSystem;

    invoke-interface {p1, v0, v1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/format/NumberSystem;

    return-object p1
.end method
