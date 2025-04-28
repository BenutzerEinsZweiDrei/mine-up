.class Lnet/time4j/calendar/Nengo$TST;
.super Ljava/lang/Object;
.source "Nengo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/Nengo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TST"
.end annotation


# instance fields
.field private root:Lnet/time4j/calendar/Nengo$Node;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1661
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1665
    iput-object v0, p0, Lnet/time4j/calendar/Nengo$TST;->root:Lnet/time4j/calendar/Nengo$Node;

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/calendar/Nengo$1;)V
    .locals 0

    .line 1661
    invoke-direct {p0}, Lnet/time4j/calendar/Nengo$TST;-><init>()V

    return-void
.end method

.method private static find(Lnet/time4j/calendar/Nengo$Node;Ljava/lang/String;I)Lnet/time4j/calendar/Nengo$Node;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1695
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1697
    invoke-static {p0}, Lnet/time4j/calendar/Nengo$Node;->access$1600(Lnet/time4j/calendar/Nengo$Node;)C

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1698
    invoke-static {p0}, Lnet/time4j/calendar/Nengo$Node;->access$1700(Lnet/time4j/calendar/Nengo$Node;)Lnet/time4j/calendar/Nengo$Node;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lnet/time4j/calendar/Nengo$TST;->find(Lnet/time4j/calendar/Nengo$Node;Ljava/lang/String;I)Lnet/time4j/calendar/Nengo$Node;

    move-result-object p0

    return-object p0

    .line 1699
    :cond_1
    invoke-static {p0}, Lnet/time4j/calendar/Nengo$Node;->access$1600(Lnet/time4j/calendar/Nengo$Node;)C

    move-result v1

    if-le v0, v1, :cond_2

    .line 1700
    invoke-static {p0}, Lnet/time4j/calendar/Nengo$Node;->access$1800(Lnet/time4j/calendar/Nengo$Node;)Lnet/time4j/calendar/Nengo$Node;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lnet/time4j/calendar/Nengo$TST;->find(Lnet/time4j/calendar/Nengo$Node;Ljava/lang/String;I)Lnet/time4j/calendar/Nengo$Node;

    move-result-object p0

    return-object p0

    .line 1701
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p2, v0, :cond_3

    .line 1702
    invoke-static {p0}, Lnet/time4j/calendar/Nengo$Node;->access$1900(Lnet/time4j/calendar/Nengo$Node;)Lnet/time4j/calendar/Nengo$Node;

    move-result-object p0

    add-int/lit8 p2, p2, 0x1

    invoke-static {p0, p1, p2}, Lnet/time4j/calendar/Nengo$TST;->find(Lnet/time4j/calendar/Nengo$Node;Ljava/lang/String;I)Lnet/time4j/calendar/Nengo$Node;

    move-result-object p0

    :cond_3
    return-object p0
.end method

.method private static insert(Lnet/time4j/calendar/Nengo$Node;Ljava/lang/String;Lnet/time4j/calendar/Nengo;I)Lnet/time4j/calendar/Nengo$Node;
    .locals 2

    .line 1729
    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-nez p0, :cond_0

    .line 1732
    new-instance p0, Lnet/time4j/calendar/Nengo$Node;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lnet/time4j/calendar/Nengo$Node;-><init>(Lnet/time4j/calendar/Nengo$1;)V

    .line 1733
    invoke-static {p0, v0}, Lnet/time4j/calendar/Nengo$Node;->access$1602(Lnet/time4j/calendar/Nengo$Node;C)C

    .line 1736
    :cond_0
    invoke-static {p0}, Lnet/time4j/calendar/Nengo$Node;->access$1600(Lnet/time4j/calendar/Nengo$Node;)C

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1737
    invoke-static {p0}, Lnet/time4j/calendar/Nengo$Node;->access$1700(Lnet/time4j/calendar/Nengo$Node;)Lnet/time4j/calendar/Nengo$Node;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lnet/time4j/calendar/Nengo$TST;->insert(Lnet/time4j/calendar/Nengo$Node;Ljava/lang/String;Lnet/time4j/calendar/Nengo;I)Lnet/time4j/calendar/Nengo$Node;

    move-result-object p1

    invoke-static {p0, p1}, Lnet/time4j/calendar/Nengo$Node;->access$1702(Lnet/time4j/calendar/Nengo$Node;Lnet/time4j/calendar/Nengo$Node;)Lnet/time4j/calendar/Nengo$Node;

    goto :goto_0

    .line 1738
    :cond_1
    invoke-static {p0}, Lnet/time4j/calendar/Nengo$Node;->access$1600(Lnet/time4j/calendar/Nengo$Node;)C

    move-result v1

    if-le v0, v1, :cond_2

    .line 1739
    invoke-static {p0}, Lnet/time4j/calendar/Nengo$Node;->access$1800(Lnet/time4j/calendar/Nengo$Node;)Lnet/time4j/calendar/Nengo$Node;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lnet/time4j/calendar/Nengo$TST;->insert(Lnet/time4j/calendar/Nengo$Node;Ljava/lang/String;Lnet/time4j/calendar/Nengo;I)Lnet/time4j/calendar/Nengo$Node;

    move-result-object p1

    invoke-static {p0, p1}, Lnet/time4j/calendar/Nengo$Node;->access$1802(Lnet/time4j/calendar/Nengo$Node;Lnet/time4j/calendar/Nengo$Node;)Lnet/time4j/calendar/Nengo$Node;

    goto :goto_0

    .line 1740
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p3, v0, :cond_3

    .line 1741
    invoke-static {p0}, Lnet/time4j/calendar/Nengo$Node;->access$1900(Lnet/time4j/calendar/Nengo$Node;)Lnet/time4j/calendar/Nengo$Node;

    move-result-object v0

    add-int/lit8 p3, p3, 0x1

    invoke-static {v0, p1, p2, p3}, Lnet/time4j/calendar/Nengo$TST;->insert(Lnet/time4j/calendar/Nengo$Node;Ljava/lang/String;Lnet/time4j/calendar/Nengo;I)Lnet/time4j/calendar/Nengo$Node;

    move-result-object p1

    invoke-static {p0, p1}, Lnet/time4j/calendar/Nengo$Node;->access$1902(Lnet/time4j/calendar/Nengo$Node;Lnet/time4j/calendar/Nengo$Node;)Lnet/time4j/calendar/Nengo$Node;

    goto :goto_0

    .line 1743
    :cond_3
    invoke-static {p0}, Lnet/time4j/calendar/Nengo$Node;->access$1500(Lnet/time4j/calendar/Nengo$Node;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_4

    .line 1744
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, p1}, Lnet/time4j/calendar/Nengo$Node;->access$1502(Lnet/time4j/calendar/Nengo$Node;Ljava/util/List;)Ljava/util/List;

    .line 1746
    :cond_4
    invoke-static {p0}, Lnet/time4j/calendar/Nengo$Node;->access$1500(Lnet/time4j/calendar/Nengo$Node;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object p0
.end method


# virtual methods
.method find(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lnet/time4j/calendar/Nengo;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1671
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1675
    :cond_0
    iget-object v0, p0, Lnet/time4j/calendar/Nengo$TST;->root:Lnet/time4j/calendar/Nengo$Node;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lnet/time4j/calendar/Nengo$TST;->find(Lnet/time4j/calendar/Nengo$Node;Ljava/lang/String;I)Lnet/time4j/calendar/Nengo$Node;

    move-result-object p1

    if-nez p1, :cond_1

    .line 1678
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 1680
    :cond_1
    invoke-static {p1}, Lnet/time4j/calendar/Nengo$Node;->access$1500(Lnet/time4j/calendar/Nengo$Node;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 1672
    :cond_2
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method insert(Ljava/lang/String;Lnet/time4j/calendar/Nengo;)V
    .locals 2

    .line 1714
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1718
    iget-object v0, p0, Lnet/time4j/calendar/Nengo$TST;->root:Lnet/time4j/calendar/Nengo$Node;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lnet/time4j/calendar/Nengo$TST;->insert(Lnet/time4j/calendar/Nengo$Node;Ljava/lang/String;Lnet/time4j/calendar/Nengo;I)Lnet/time4j/calendar/Nengo$Node;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/calendar/Nengo$TST;->root:Lnet/time4j/calendar/Nengo$Node;

    return-void

    .line 1715
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Empty key cannot be inserted."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method longestPrefixOf(Ljava/lang/CharSequence;I)Ljava/lang/String;
    .locals 6

    .line 1759
    iget-object v0, p0, Lnet/time4j/calendar/Nengo$TST;->root:Lnet/time4j/calendar/Nengo$Node;

    .line 1761
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    move v2, p2

    move v3, v2

    :goto_0
    if-eqz v0, :cond_3

    if-ge v2, v1, :cond_3

    .line 1764
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 1766
    invoke-static {v0}, Lnet/time4j/calendar/Nengo$Node;->access$1600(Lnet/time4j/calendar/Nengo$Node;)C

    move-result v5

    if-ge v4, v5, :cond_0

    .line 1767
    invoke-static {v0}, Lnet/time4j/calendar/Nengo$Node;->access$1700(Lnet/time4j/calendar/Nengo$Node;)Lnet/time4j/calendar/Nengo$Node;

    move-result-object v0

    goto :goto_0

    .line 1768
    :cond_0
    invoke-static {v0}, Lnet/time4j/calendar/Nengo$Node;->access$1600(Lnet/time4j/calendar/Nengo$Node;)C

    move-result v5

    if-le v4, v5, :cond_1

    .line 1769
    invoke-static {v0}, Lnet/time4j/calendar/Nengo$Node;->access$1800(Lnet/time4j/calendar/Nengo$Node;)Lnet/time4j/calendar/Nengo$Node;

    move-result-object v0

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 1772
    invoke-static {v0}, Lnet/time4j/calendar/Nengo$Node;->access$1500(Lnet/time4j/calendar/Nengo$Node;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    move v3, v2

    .line 1775
    :cond_2
    invoke-static {v0}, Lnet/time4j/calendar/Nengo$Node;->access$1900(Lnet/time4j/calendar/Nengo$Node;)Lnet/time4j/calendar/Nengo$Node;

    move-result-object v0

    goto :goto_0

    :cond_3
    if-lt p2, v3, :cond_4

    const/4 p1, 0x0

    goto :goto_1

    .line 1779
    :cond_4
    invoke-interface {p1, p2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1
.end method
