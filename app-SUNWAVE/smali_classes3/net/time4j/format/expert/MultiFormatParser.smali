.class public final Lnet/time4j/format/expert/MultiFormatParser;
.super Ljava/lang/Object;
.source "MultiFormatParser.java"

# interfaces
.implements Lnet/time4j/format/expert/ChronoParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lnet/time4j/engine/ChronoEntity<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lnet/time4j/format/expert/ChronoParser<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final parsers:[Lnet/time4j/format/expert/ChronoFormatter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>([Lnet/time4j/format/expert/ChronoFormatter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "TT;>;)V"
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lnet/time4j/format/expert/MultiFormatParser;->parsers:[Lnet/time4j/format/expert/ChronoFormatter;

    .line 96
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    const-string v3, "Null format cannot be set."

    .line 98
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static of(Ljava/util/List;)Lnet/time4j/format/expert/MultiFormatParser;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/time4j/engine/ChronoEntity<",
            "TT;>;>(",
            "Ljava/util/List<",
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "TT;>;>;)",
            "Lnet/time4j/format/expert/MultiFormatParser<",
            "TT;>;"
        }
    .end annotation

    .line 149
    const-class v0, Lnet/time4j/format/expert/ChronoFormatter;

    .line 150
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/time4j/format/expert/ChronoFormatter;

    check-cast v0, [Lnet/time4j/format/expert/ChronoFormatter;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lnet/time4j/format/expert/ChronoFormatter;

    .line 151
    new-instance v0, Lnet/time4j/format/expert/MultiFormatParser;

    invoke-direct {v0, p0}, Lnet/time4j/format/expert/MultiFormatParser;-><init>([Lnet/time4j/format/expert/ChronoFormatter;)V

    return-object v0
.end method

.method public static varargs of([Lnet/time4j/format/expert/ChronoFormatter;)Lnet/time4j/format/expert/MultiFormatParser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/time4j/engine/ChronoEntity<",
            "TT;>;>([",
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "TT;>;)",
            "Lnet/time4j/format/expert/MultiFormatParser<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 125
    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lnet/time4j/format/expert/ChronoFormatter;

    .line 126
    new-instance v0, Lnet/time4j/format/expert/MultiFormatParser;

    invoke-direct {v0, p0}, Lnet/time4j/format/expert/MultiFormatParser;-><init>([Lnet/time4j/format/expert/ChronoFormatter;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic parse(Ljava/lang/CharSequence;Lnet/time4j/format/expert/ParseLog;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Object;
    .locals 0

    .line 82
    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/format/expert/MultiFormatParser;->parse(Ljava/lang/CharSequence;Lnet/time4j/format/expert/ParseLog;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/lang/CharSequence;)Lnet/time4j/engine/ChronoEntity;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 178
    new-instance v0, Lnet/time4j/format/expert/ParseLog;

    invoke-direct {v0}, Lnet/time4j/format/expert/ParseLog;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 180
    :goto_0
    iget-object v3, p0, Lnet/time4j/format/expert/MultiFormatParser;->parsers:[Lnet/time4j/format/expert/ChronoFormatter;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 181
    invoke-virtual {v0}, Lnet/time4j/format/expert/ParseLog;->reset()V

    .line 182
    invoke-virtual {v0, v1}, Lnet/time4j/format/expert/ParseLog;->setPosition(I)V

    .line 185
    iget-object v3, p0, Lnet/time4j/format/expert/MultiFormatParser;->parsers:[Lnet/time4j/format/expert/ChronoFormatter;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1, v0}, Lnet/time4j/format/expert/ChronoFormatter;->parse(Ljava/lang/CharSequence;Lnet/time4j/format/expert/ParseLog;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/time4j/engine/ChronoEntity;

    if-eqz v3, :cond_1

    .line 187
    invoke-virtual {v0}, Lnet/time4j/format/expert/ParseLog;->isError()Z

    move-result v4

    if-nez v4, :cond_1

    .line 188
    iget-object v4, p0, Lnet/time4j/format/expert/MultiFormatParser;->parsers:[Lnet/time4j/format/expert/ChronoFormatter;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lnet/time4j/format/expert/ChronoFormatter;->isToleratingTrailingChars()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lnet/time4j/format/expert/ParseLog;->getPosition()I

    move-result v4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ne v4, v5, :cond_1

    :cond_0
    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 195
    :cond_2
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not matched by any format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-direct {v0, v1, p1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public parse(Ljava/lang/CharSequence;Lnet/time4j/format/expert/ParseLog;)Lnet/time4j/engine/ChronoEntity;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lnet/time4j/format/expert/ParseLog;",
            ")TT;"
        }
    .end annotation

    .line 300
    invoke-virtual {p2}, Lnet/time4j/format/expert/ParseLog;->getPosition()I

    move-result v0

    const/4 v1, 0x0

    .line 302
    :goto_0
    iget-object v2, p0, Lnet/time4j/format/expert/MultiFormatParser;->parsers:[Lnet/time4j/format/expert/ChronoFormatter;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 303
    invoke-virtual {p2}, Lnet/time4j/format/expert/ParseLog;->reset()V

    .line 304
    invoke-virtual {p2, v0}, Lnet/time4j/format/expert/ParseLog;->setPosition(I)V

    .line 307
    iget-object v2, p0, Lnet/time4j/format/expert/MultiFormatParser;->parsers:[Lnet/time4j/format/expert/ChronoFormatter;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2}, Lnet/time4j/format/expert/ChronoFormatter;->parse(Ljava/lang/CharSequence;Lnet/time4j/format/expert/ParseLog;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/time4j/engine/ChronoEntity;

    if-eqz v2, :cond_0

    .line 309
    invoke-virtual {p2}, Lnet/time4j/format/expert/ParseLog;->isError()Z

    move-result v3

    if-nez v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 315
    :cond_1
    invoke-virtual {p2}, Lnet/time4j/format/expert/ParseLog;->getErrorIndex()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not matched by any format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lnet/time4j/format/expert/ParseLog;->setError(ILjava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public parse(Ljava/lang/CharSequence;Lnet/time4j/format/expert/ParseLog;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/engine/ChronoEntity;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lnet/time4j/format/expert/ParseLog;",
            "Lnet/time4j/engine/AttributeQuery;",
            ")TT;"
        }
    .end annotation

    .line 327
    invoke-virtual {p2}, Lnet/time4j/format/expert/ParseLog;->getPosition()I

    move-result v0

    const/4 v1, 0x0

    .line 329
    :goto_0
    iget-object v2, p0, Lnet/time4j/format/expert/MultiFormatParser;->parsers:[Lnet/time4j/format/expert/ChronoFormatter;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 330
    invoke-virtual {p2}, Lnet/time4j/format/expert/ParseLog;->reset()V

    .line 331
    invoke-virtual {p2, v0}, Lnet/time4j/format/expert/ParseLog;->setPosition(I)V

    .line 335
    iget-object v2, p0, Lnet/time4j/format/expert/MultiFormatParser;->parsers:[Lnet/time4j/format/expert/ChronoFormatter;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2, p3}, Lnet/time4j/format/expert/ChronoFormatter;->parse(Ljava/lang/CharSequence;Lnet/time4j/format/expert/ParseLog;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/time4j/engine/ChronoEntity;

    if-eqz v2, :cond_0

    .line 337
    invoke-virtual {p2}, Lnet/time4j/format/expert/ParseLog;->isError()Z

    move-result v3

    if-nez v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 343
    :cond_1
    invoke-virtual {p2}, Lnet/time4j/format/expert/ParseLog;->getErrorIndex()I

    move-result p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not matched by any format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lnet/time4j/format/expert/ParseLog;->setError(ILjava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
