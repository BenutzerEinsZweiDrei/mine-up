.class public interface abstract Lnet/time4j/format/TemporalFormatter;
.super Ljava/lang/Object;
.source "TemporalFormatter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract format(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract getAttributes()Lnet/time4j/engine/AttributeQuery;
.end method

.method public abstract parse(Ljava/lang/CharSequence;)Ljava/lang/Object;
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
.end method

.method public abstract parse(Ljava/lang/CharSequence;Lnet/time4j/format/RawValues;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lnet/time4j/format/RawValues;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract print(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract with(Ljava/util/Locale;)Lnet/time4j/format/TemporalFormatter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            ")",
            "Lnet/time4j/format/TemporalFormatter<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract with(Lnet/time4j/format/Leniency;)Lnet/time4j/format/TemporalFormatter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/format/Leniency;",
            ")",
            "Lnet/time4j/format/TemporalFormatter<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract withTimezone(Ljava/lang/String;)Lnet/time4j/format/TemporalFormatter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lnet/time4j/format/TemporalFormatter<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract withTimezone(Lnet/time4j/tz/TZID;)Lnet/time4j/format/TemporalFormatter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/tz/TZID;",
            ")",
            "Lnet/time4j/format/TemporalFormatter<",
            "TT;>;"
        }
    .end annotation
.end method
