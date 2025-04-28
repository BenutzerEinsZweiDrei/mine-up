.class Lnet/time4j/format/expert/TimezoneNameProcessor$TZNames;
.super Ljava/lang/Object;
.source "TimezoneNameProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/format/expert/TimezoneNameProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TZNames"
.end annotation


# instance fields
.field private final dstNames:Lnet/time4j/format/expert/ZoneLabels;

.field private final stdNames:Lnet/time4j/format/expert/ZoneLabels;


# direct methods
.method constructor <init>(Lnet/time4j/format/expert/ZoneLabels;Lnet/time4j/format/expert/ZoneLabels;)V
    .locals 0

    .line 635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 637
    iput-object p1, p0, Lnet/time4j/format/expert/TimezoneNameProcessor$TZNames;->stdNames:Lnet/time4j/format/expert/ZoneLabels;

    .line 638
    iput-object p2, p0, Lnet/time4j/format/expert/TimezoneNameProcessor$TZNames;->dstNames:Lnet/time4j/format/expert/ZoneLabels;

    return-void
.end method


# virtual methods
.method search(Ljava/lang/CharSequence;ILjava/util/List;Ljava/util/List;[I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "I",
            "Ljava/util/List<",
            "Lnet/time4j/tz/TZID;",
            ">;",
            "Ljava/util/List<",
            "Lnet/time4j/tz/TZID;",
            ">;[I)V"
        }
    .end annotation

    .line 652
    iget-object v0, p0, Lnet/time4j/format/expert/TimezoneNameProcessor$TZNames;->stdNames:Lnet/time4j/format/expert/ZoneLabels;

    invoke-virtual {v0, p1, p2}, Lnet/time4j/format/expert/ZoneLabels;->longestPrefixOf(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v0

    .line 653
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int v2, p2, v1

    const/4 v3, 0x0

    .line 654
    aput v2, p5, v3

    .line 656
    iget-object v2, p0, Lnet/time4j/format/expert/TimezoneNameProcessor$TZNames;->dstNames:Lnet/time4j/format/expert/ZoneLabels;

    invoke-virtual {v2, p1, p2}, Lnet/time4j/format/expert/ZoneLabels;->longestPrefixOf(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object p1

    .line 657
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr p2, v2

    const/4 v3, 0x1

    .line 658
    aput p2, p5, v3

    if-le v2, v1, :cond_0

    .line 661
    iget-object p2, p0, Lnet/time4j/format/expert/TimezoneNameProcessor$TZNames;->dstNames:Lnet/time4j/format/expert/ZoneLabels;

    invoke-virtual {p2, p1}, Lnet/time4j/format/expert/ZoneLabels;->find(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p4, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    if-ge v2, v1, :cond_1

    .line 663
    iget-object p1, p0, Lnet/time4j/format/expert/TimezoneNameProcessor$TZNames;->stdNames:Lnet/time4j/format/expert/ZoneLabels;

    invoke-virtual {p1, v0}, Lnet/time4j/format/expert/ZoneLabels;->find(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    if-lez v1, :cond_2

    .line 665
    iget-object p2, p0, Lnet/time4j/format/expert/TimezoneNameProcessor$TZNames;->stdNames:Lnet/time4j/format/expert/ZoneLabels;

    invoke-virtual {p2, v0}, Lnet/time4j/format/expert/ZoneLabels;->find(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 666
    iget-object p2, p0, Lnet/time4j/format/expert/TimezoneNameProcessor$TZNames;->dstNames:Lnet/time4j/format/expert/ZoneLabels;

    invoke-virtual {p2, p1}, Lnet/time4j/format/expert/ZoneLabels;->find(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p4, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    :goto_0
    return-void
.end method
