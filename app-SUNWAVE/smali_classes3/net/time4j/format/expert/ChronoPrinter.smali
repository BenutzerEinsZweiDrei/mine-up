.class public interface abstract Lnet/time4j/format/expert/ChronoPrinter;
.super Ljava/lang/Object;
.source "ChronoPrinter.java"


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
.method public abstract print(Ljava/lang/Object;Ljava/lang/Appendable;Lnet/time4j/engine/AttributeQuery;Lnet/time4j/engine/ChronoFunction;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Appendable;",
            "Lnet/time4j/engine/AttributeQuery;",
            "Lnet/time4j/engine/ChronoFunction<",
            "Lnet/time4j/engine/ChronoDisplay;",
            "TR;>;)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
