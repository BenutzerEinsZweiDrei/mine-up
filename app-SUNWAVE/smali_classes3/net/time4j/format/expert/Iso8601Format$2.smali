.class final Lnet/time4j/format/expert/Iso8601Format$2;
.super Ljava/lang/Object;
.source "Iso8601Format.java"

# interfaces
.implements Lnet/time4j/format/expert/ChronoParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/time4j/format/expert/Iso8601Format;->generalDateParser(Z)Lnet/time4j/format/expert/ChronoParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/format/expert/ChronoParser<",
        "Lnet/time4j/PlainDate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$extended:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .line 630
    iput-boolean p1, p0, Lnet/time4j/format/expert/Iso8601Format$2;->val$extended:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic parse(Ljava/lang/CharSequence;Lnet/time4j/format/expert/ParseLog;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Object;
    .locals 0

    .line 630
    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/format/expert/Iso8601Format$2;->parse(Ljava/lang/CharSequence;Lnet/time4j/format/expert/ParseLog;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/PlainDate;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/lang/CharSequence;Lnet/time4j/format/expert/ParseLog;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/PlainDate;
    .locals 7

    .line 638
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    .line 639
    invoke-virtual {p2}, Lnet/time4j/format/expert/ParseLog;->getPosition()I

    move-result v0

    sub-int v1, p3, v0

    add-int/lit8 v2, v0, 0x1

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x2d

    if-ge v2, p3, :cond_4

    .line 644
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eq v5, v4, :cond_3

    const/16 v6, 0x2f

    if-eq v5, v6, :cond_2

    const/16 v6, 0x54

    if-eq v5, v6, :cond_2

    const/16 v4, 0x57

    if-eq v5, v4, :cond_0

    goto :goto_1

    .line 649
    :cond_0
    iget-boolean p3, p0, Lnet/time4j/format/expert/Iso8601Format$2;->val$extended:Z

    if-eqz p3, :cond_1

    .line 650
    sget-object p3, Lnet/time4j/format/expert/Iso8601Format;->EXTENDED_WEEK_DATE:Lnet/time4j/format/expert/ChronoFormatter;

    invoke-virtual {p3, p1, p2}, Lnet/time4j/format/expert/ChronoFormatter;->parse(Ljava/lang/CharSequence;Lnet/time4j/format/expert/ParseLog;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainDate;

    return-object p1

    .line 652
    :cond_1
    sget-object p3, Lnet/time4j/format/expert/Iso8601Format;->BASIC_WEEK_DATE:Lnet/time4j/format/expert/ChronoFormatter;

    invoke-virtual {p3, p1, p2}, Lnet/time4j/format/expert/ChronoFormatter;->parse(Ljava/lang/CharSequence;Lnet/time4j/format/expert/ParseLog;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainDate;

    return-object p1

    :cond_2
    sub-int v1, v2, v0

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 663
    :cond_4
    :goto_2
    iget-boolean p3, p0, Lnet/time4j/format/expert/Iso8601Format$2;->val$extended:Z

    if-eqz p3, :cond_6

    const/4 p3, 0x1

    if-ne v3, p3, :cond_5

    .line 665
    sget-object p3, Lnet/time4j/format/expert/Iso8601Format;->EXTENDED_ORDINAL_DATE:Lnet/time4j/format/expert/ChronoFormatter;

    invoke-virtual {p3, p1, p2}, Lnet/time4j/format/expert/ChronoFormatter;->parse(Ljava/lang/CharSequence;Lnet/time4j/format/expert/ParseLog;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainDate;

    return-object p1

    .line 667
    :cond_5
    sget-object p3, Lnet/time4j/format/expert/Iso8601Format;->EXTENDED_CALENDAR_DATE:Lnet/time4j/format/expert/ChronoFormatter;

    invoke-virtual {p3, p1, p2}, Lnet/time4j/format/expert/ChronoFormatter;->parse(Ljava/lang/CharSequence;Lnet/time4j/format/expert/ParseLog;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainDate;

    return-object p1

    :cond_6
    add-int/lit8 v1, v1, -0x4

    .line 671
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p3

    const/16 v0, 0x2b

    if-eq p3, v0, :cond_7

    if-ne p3, v4, :cond_8

    :cond_7
    add-int/lit8 v1, v1, -0x2

    :cond_8
    const/4 p3, 0x3

    if-ne v1, p3, :cond_9

    .line 676
    sget-object p3, Lnet/time4j/format/expert/Iso8601Format;->BASIC_ORDINAL_DATE:Lnet/time4j/format/expert/ChronoFormatter;

    invoke-virtual {p3, p1, p2}, Lnet/time4j/format/expert/ChronoFormatter;->parse(Ljava/lang/CharSequence;Lnet/time4j/format/expert/ParseLog;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainDate;

    return-object p1

    .line 678
    :cond_9
    sget-object p3, Lnet/time4j/format/expert/Iso8601Format;->BASIC_CALENDAR_DATE:Lnet/time4j/format/expert/ChronoFormatter;

    invoke-virtual {p3, p1, p2}, Lnet/time4j/format/expert/ChronoFormatter;->parse(Ljava/lang/CharSequence;Lnet/time4j/format/expert/ParseLog;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainDate;

    return-object p1
.end method
