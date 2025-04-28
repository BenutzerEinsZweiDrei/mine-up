.class final Lnet/time4j/format/expert/ChronoFormatter$2;
.super Ljava/lang/Object;
.source "ChronoFormatter.java"

# interfaces
.implements Lnet/time4j/format/expert/ChronoParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/time4j/format/expert/ChronoFormatter;->rfc1123()Lnet/time4j/format/expert/ChronoFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/format/expert/ChronoParser<",
        "Lnet/time4j/tz/TZID;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$northAmericanZones:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0

    .line 2868
    iput-object p1, p0, Lnet/time4j/format/expert/ChronoFormatter$2;->val$northAmericanZones:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic parse(Ljava/lang/CharSequence;Lnet/time4j/format/expert/ParseLog;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Object;
    .locals 0

    .line 2868
    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/format/expert/ChronoFormatter$2;->parse(Ljava/lang/CharSequence;Lnet/time4j/format/expert/ParseLog;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/tz/TZID;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/lang/CharSequence;Lnet/time4j/format/expert/ParseLog;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/tz/TZID;
    .locals 2

    .line 2871
    invoke-virtual {p2}, Lnet/time4j/format/expert/ParseLog;->getPosition()I

    move-result p3

    add-int/lit8 v0, p3, 0x3

    .line 2872
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 2873
    invoke-interface {p1, p3, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2874
    iget-object v1, p0, Lnet/time4j/format/expert/ChronoFormatter$2;->val$northAmericanZones:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/tz/TZID;

    if-eqz p1, :cond_0

    .line 2876
    invoke-virtual {p2, v0}, Lnet/time4j/format/expert/ParseLog;->setPosition(I)V

    return-object p1

    :cond_0
    const-string p1, "No time zone information found."

    .line 2879
    invoke-virtual {p2, p3, p1}, Lnet/time4j/format/expert/ParseLog;->setError(ILjava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
