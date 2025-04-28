.class final Lnet/time4j/format/expert/Iso8601Format$1;
.super Ljava/lang/Object;
.source "Iso8601Format.java"

# interfaces
.implements Lnet/time4j/format/expert/ChronoPrinter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/time4j/format/expert/Iso8601Format;->generalDatePrinter(Z)Lnet/time4j/format/expert/ChronoPrinter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/format/expert/ChronoPrinter<",
        "Lnet/time4j/PlainDate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$extended:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .line 612
    iput-boolean p1, p0, Lnet/time4j/format/expert/Iso8601Format$1;->val$extended:Z

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

    .line 612
    check-cast p1, Lnet/time4j/PlainDate;

    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/time4j/format/expert/Iso8601Format$1;->print(Lnet/time4j/PlainDate;Ljava/lang/Appendable;Lnet/time4j/engine/AttributeQuery;Lnet/time4j/engine/ChronoFunction;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public print(Lnet/time4j/PlainDate;Ljava/lang/Appendable;Lnet/time4j/engine/AttributeQuery;Lnet/time4j/engine/ChronoFunction;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/PlainDate;",
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

    .line 620
    iget-boolean p4, p0, Lnet/time4j/format/expert/Iso8601Format$1;->val$extended:Z

    if-eqz p4, :cond_0

    sget-object p4, Lnet/time4j/format/expert/Iso8601Format;->EXTENDED_CALENDAR_DATE:Lnet/time4j/format/expert/ChronoFormatter;

    goto :goto_0

    :cond_0
    sget-object p4, Lnet/time4j/format/expert/Iso8601Format;->BASIC_CALENDAR_DATE:Lnet/time4j/format/expert/ChronoFormatter;

    .line 621
    :goto_0
    invoke-virtual {p4, p1, p2, p3}, Lnet/time4j/format/expert/ChronoFormatter;->print(Ljava/lang/Object;Ljava/lang/Appendable;Lnet/time4j/engine/AttributeQuery;)Ljava/util/Set;

    const/4 p1, 0x0

    return-object p1
.end method
