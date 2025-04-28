.class final Lnet/time4j/format/expert/ChronoFormatter$1;
.super Ljava/lang/Object;
.source "ChronoFormatter.java"

# interfaces
.implements Lnet/time4j/format/expert/ChronoPrinter;


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
        "Lnet/time4j/format/expert/ChronoPrinter<",
        "Lnet/time4j/tz/TZID;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2857
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic print(Ljava/lang/Object;Ljava/lang/Appendable;Lnet/time4j/engine/AttributeQuery;Lnet/time4j/engine/ChronoFunction;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2857
    check-cast p1, Lnet/time4j/tz/TZID;

    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/time4j/format/expert/ChronoFormatter$1;->print(Lnet/time4j/tz/TZID;Ljava/lang/Appendable;Lnet/time4j/engine/AttributeQuery;Lnet/time4j/engine/ChronoFunction;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public print(Lnet/time4j/tz/TZID;Ljava/lang/Appendable;Lnet/time4j/engine/AttributeQuery;Lnet/time4j/engine/ChronoFunction;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/tz/TZID;",
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

    const/4 p1, 0x0

    return-object p1
.end method
