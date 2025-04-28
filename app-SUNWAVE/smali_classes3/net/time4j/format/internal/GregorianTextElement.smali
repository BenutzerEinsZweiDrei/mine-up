.class public interface abstract Lnet/time4j/format/internal/GregorianTextElement;
.super Ljava/lang/Object;
.source "GregorianTextElement.java"

# interfaces
.implements Lnet/time4j/format/TextElement;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/time4j/format/TextElement<",
        "TV;>;"
    }
.end annotation


# virtual methods
.method public abstract parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;Lnet/time4j/format/Leniency;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/text/ParsePosition;",
            "Ljava/util/Locale;",
            "Lnet/time4j/format/TextWidth;",
            "Lnet/time4j/format/OutputContext;",
            "Lnet/time4j/format/Leniency;",
            ")TV;"
        }
    .end annotation
.end method

.method public abstract print(Lnet/time4j/engine/ChronoDisplay;Ljava/lang/Appendable;Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/time4j/engine/ChronoException;
        }
    .end annotation
.end method
