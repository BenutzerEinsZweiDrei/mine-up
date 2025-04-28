.class Lnet/time4j/format/expert/ZoneLabels;
.super Ljava/lang/Object;
.source "ZoneLabels.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/time4j/format/expert/ZoneLabels$Node;
    }
.end annotation


# instance fields
.field private final root:Lnet/time4j/format/expert/ZoneLabels$Node;


# direct methods
.method constructor <init>(Lnet/time4j/format/expert/ZoneLabels$Node;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lnet/time4j/format/expert/ZoneLabels;->root:Lnet/time4j/format/expert/ZoneLabels$Node;

    return-void
.end method

.method private collect(Lnet/time4j/format/expert/ZoneLabels$Node;Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/format/expert/ZoneLabels$Node;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 200
    :cond_0
    invoke-static {p1}, Lnet/time4j/format/expert/ZoneLabels$Node;->access$100(Lnet/time4j/format/expert/ZoneLabels$Node;)Lnet/time4j/format/expert/ZoneLabels$Node;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lnet/time4j/format/expert/ZoneLabels;->collect(Lnet/time4j/format/expert/ZoneLabels$Node;Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 202
    invoke-static {p1}, Lnet/time4j/format/expert/ZoneLabels$Node;->access$300(Lnet/time4j/format/expert/ZoneLabels$Node;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lnet/time4j/format/expert/ZoneLabels$Node;->access$000(Lnet/time4j/format/expert/ZoneLabels$Node;)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    :cond_1
    invoke-static {p1}, Lnet/time4j/format/expert/ZoneLabels$Node;->access$400(Lnet/time4j/format/expert/ZoneLabels$Node;)Lnet/time4j/format/expert/ZoneLabels$Node;

    move-result-object v0

    invoke-static {p1}, Lnet/time4j/format/expert/ZoneLabels$Node;->access$000(Lnet/time4j/format/expert/ZoneLabels$Node;)C

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0, p2, p3}, Lnet/time4j/format/expert/ZoneLabels;->collect(Lnet/time4j/format/expert/ZoneLabels$Node;Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 207
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 208
    invoke-static {p1}, Lnet/time4j/format/expert/ZoneLabels$Node;->access$200(Lnet/time4j/format/expert/ZoneLabels$Node;)Lnet/time4j/format/expert/ZoneLabels$Node;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lnet/time4j/format/expert/ZoneLabels;->collect(Lnet/time4j/format/expert/ZoneLabels$Node;Ljava/lang/StringBuilder;Ljava/util/List;)V

    return-void
.end method

.method private static find(Lnet/time4j/format/expert/ZoneLabels$Node;Ljava/lang/String;I)Lnet/time4j/format/expert/ZoneLabels$Node;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 149
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 151
    invoke-static {p0}, Lnet/time4j/format/expert/ZoneLabels$Node;->access$000(Lnet/time4j/format/expert/ZoneLabels$Node;)C

    move-result v1

    if-ge v0, v1, :cond_1

    .line 152
    invoke-static {p0}, Lnet/time4j/format/expert/ZoneLabels$Node;->access$100(Lnet/time4j/format/expert/ZoneLabels$Node;)Lnet/time4j/format/expert/ZoneLabels$Node;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lnet/time4j/format/expert/ZoneLabels;->find(Lnet/time4j/format/expert/ZoneLabels$Node;Ljava/lang/String;I)Lnet/time4j/format/expert/ZoneLabels$Node;

    move-result-object p0

    return-object p0

    .line 153
    :cond_1
    invoke-static {p0}, Lnet/time4j/format/expert/ZoneLabels$Node;->access$000(Lnet/time4j/format/expert/ZoneLabels$Node;)C

    move-result v1

    if-le v0, v1, :cond_2

    .line 154
    invoke-static {p0}, Lnet/time4j/format/expert/ZoneLabels$Node;->access$200(Lnet/time4j/format/expert/ZoneLabels$Node;)Lnet/time4j/format/expert/ZoneLabels$Node;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lnet/time4j/format/expert/ZoneLabels;->find(Lnet/time4j/format/expert/ZoneLabels$Node;Ljava/lang/String;I)Lnet/time4j/format/expert/ZoneLabels$Node;

    move-result-object p0

    return-object p0

    .line 155
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p2, v0, :cond_3

    .line 156
    invoke-static {p0}, Lnet/time4j/format/expert/ZoneLabels$Node;->access$400(Lnet/time4j/format/expert/ZoneLabels$Node;)Lnet/time4j/format/expert/ZoneLabels$Node;

    move-result-object p0

    add-int/lit8 p2, p2, 0x1

    invoke-static {p0, p1, p2}, Lnet/time4j/format/expert/ZoneLabels;->find(Lnet/time4j/format/expert/ZoneLabels$Node;Ljava/lang/String;I)Lnet/time4j/format/expert/ZoneLabels$Node;

    move-result-object p0

    :cond_3
    return-object p0
.end method

.method static insert(Lnet/time4j/format/expert/ZoneLabels$Node;Ljava/lang/String;Lnet/time4j/tz/TZID;)Lnet/time4j/format/expert/ZoneLabels$Node;
    .locals 1

    .line 83
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Missing timezone id."

    .line 86
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 89
    invoke-static {p0, p1, p2, v0}, Lnet/time4j/format/expert/ZoneLabels;->insert(Lnet/time4j/format/expert/ZoneLabels$Node;Ljava/lang/String;Lnet/time4j/tz/TZID;I)Lnet/time4j/format/expert/ZoneLabels$Node;

    move-result-object p0

    return-object p0

    .line 84
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Empty key cannot be inserted."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static insert(Lnet/time4j/format/expert/ZoneLabels$Node;Ljava/lang/String;Lnet/time4j/tz/TZID;I)Lnet/time4j/format/expert/ZoneLabels$Node;
    .locals 2

    .line 170
    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-nez p0, :cond_0

    .line 173
    new-instance p0, Lnet/time4j/format/expert/ZoneLabels$Node;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lnet/time4j/format/expert/ZoneLabels$Node;-><init>(CLnet/time4j/format/expert/ZoneLabels$1;)V

    .line 176
    :cond_0
    invoke-static {p0}, Lnet/time4j/format/expert/ZoneLabels$Node;->access$000(Lnet/time4j/format/expert/ZoneLabels$Node;)C

    move-result v1

    if-ge v0, v1, :cond_1

    .line 177
    invoke-static {p0}, Lnet/time4j/format/expert/ZoneLabels$Node;->access$100(Lnet/time4j/format/expert/ZoneLabels$Node;)Lnet/time4j/format/expert/ZoneLabels$Node;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lnet/time4j/format/expert/ZoneLabels;->insert(Lnet/time4j/format/expert/ZoneLabels$Node;Ljava/lang/String;Lnet/time4j/tz/TZID;I)Lnet/time4j/format/expert/ZoneLabels$Node;

    move-result-object p1

    invoke-static {p0, p1}, Lnet/time4j/format/expert/ZoneLabels$Node;->access$600(Lnet/time4j/format/expert/ZoneLabels$Node;Lnet/time4j/format/expert/ZoneLabels$Node;)Lnet/time4j/format/expert/ZoneLabels$Node;

    move-result-object p0

    goto :goto_0

    .line 178
    :cond_1
    invoke-static {p0}, Lnet/time4j/format/expert/ZoneLabels$Node;->access$000(Lnet/time4j/format/expert/ZoneLabels$Node;)C

    move-result v1

    if-le v0, v1, :cond_2

    .line 179
    invoke-static {p0}, Lnet/time4j/format/expert/ZoneLabels$Node;->access$200(Lnet/time4j/format/expert/ZoneLabels$Node;)Lnet/time4j/format/expert/ZoneLabels$Node;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lnet/time4j/format/expert/ZoneLabels;->insert(Lnet/time4j/format/expert/ZoneLabels$Node;Ljava/lang/String;Lnet/time4j/tz/TZID;I)Lnet/time4j/format/expert/ZoneLabels$Node;

    move-result-object p1

    invoke-static {p0, p1}, Lnet/time4j/format/expert/ZoneLabels$Node;->access$700(Lnet/time4j/format/expert/ZoneLabels$Node;Lnet/time4j/format/expert/ZoneLabels$Node;)Lnet/time4j/format/expert/ZoneLabels$Node;

    move-result-object p0

    goto :goto_0

    .line 180
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p3, v0, :cond_3

    .line 181
    invoke-static {p0}, Lnet/time4j/format/expert/ZoneLabels$Node;->access$400(Lnet/time4j/format/expert/ZoneLabels$Node;)Lnet/time4j/format/expert/ZoneLabels$Node;

    move-result-object v0

    add-int/lit8 p3, p3, 0x1

    invoke-static {v0, p1, p2, p3}, Lnet/time4j/format/expert/ZoneLabels;->insert(Lnet/time4j/format/expert/ZoneLabels$Node;Ljava/lang/String;Lnet/time4j/tz/TZID;I)Lnet/time4j/format/expert/ZoneLabels$Node;

    move-result-object p1

    invoke-static {p0, p1}, Lnet/time4j/format/expert/ZoneLabels$Node;->access$800(Lnet/time4j/format/expert/ZoneLabels$Node;Lnet/time4j/format/expert/ZoneLabels$Node;)Lnet/time4j/format/expert/ZoneLabels$Node;

    move-result-object p0

    goto :goto_0

    .line 183
    :cond_3
    invoke-static {p0, p2}, Lnet/time4j/format/expert/ZoneLabels$Node;->access$900(Lnet/time4j/format/expert/ZoneLabels$Node;Lnet/time4j/tz/TZID;)Lnet/time4j/format/expert/ZoneLabels$Node;

    move-result-object p0

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
            "Lnet/time4j/tz/TZID;",
            ">;"
        }
    .end annotation

    .line 125
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 129
    :cond_0
    iget-object v0, p0, Lnet/time4j/format/expert/ZoneLabels;->root:Lnet/time4j/format/expert/ZoneLabels$Node;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lnet/time4j/format/expert/ZoneLabels;->find(Lnet/time4j/format/expert/ZoneLabels$Node;Ljava/lang/String;I)Lnet/time4j/format/expert/ZoneLabels$Node;

    move-result-object p1

    if-nez p1, :cond_1

    .line 132
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 134
    :cond_1
    invoke-static {p1}, Lnet/time4j/format/expert/ZoneLabels$Node;->access$300(Lnet/time4j/format/expert/ZoneLabels$Node;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method longestPrefixOf(Ljava/lang/CharSequence;I)Ljava/lang/String;
    .locals 6

    .line 99
    iget-object v0, p0, Lnet/time4j/format/expert/ZoneLabels;->root:Lnet/time4j/format/expert/ZoneLabels$Node;

    .line 101
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    move v2, p2

    move v3, v2

    :goto_0
    if-eqz v0, :cond_3

    if-ge v2, v1, :cond_3

    .line 104
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 106
    invoke-static {v0}, Lnet/time4j/format/expert/ZoneLabels$Node;->access$000(Lnet/time4j/format/expert/ZoneLabels$Node;)C

    move-result v5

    if-ge v4, v5, :cond_0

    .line 107
    invoke-static {v0}, Lnet/time4j/format/expert/ZoneLabels$Node;->access$100(Lnet/time4j/format/expert/ZoneLabels$Node;)Lnet/time4j/format/expert/ZoneLabels$Node;

    move-result-object v0

    goto :goto_0

    .line 108
    :cond_0
    invoke-static {v0}, Lnet/time4j/format/expert/ZoneLabels$Node;->access$000(Lnet/time4j/format/expert/ZoneLabels$Node;)C

    move-result v5

    if-le v4, v5, :cond_1

    .line 109
    invoke-static {v0}, Lnet/time4j/format/expert/ZoneLabels$Node;->access$200(Lnet/time4j/format/expert/ZoneLabels$Node;)Lnet/time4j/format/expert/ZoneLabels$Node;

    move-result-object v0

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 112
    invoke-static {v0}, Lnet/time4j/format/expert/ZoneLabels$Node;->access$300(Lnet/time4j/format/expert/ZoneLabels$Node;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    move v3, v2

    .line 115
    :cond_2
    invoke-static {v0}, Lnet/time4j/format/expert/ZoneLabels$Node;->access$400(Lnet/time4j/format/expert/ZoneLabels$Node;)Lnet/time4j/format/expert/ZoneLabels$Node;

    move-result-object v0

    goto :goto_0

    :cond_3
    if-lt p2, v3, :cond_4

    const-string p1, ""

    goto :goto_1

    .line 119
    :cond_4
    invoke-interface {p1, p2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    iget-object v1, p0, Lnet/time4j/format/expert/ZoneLabels;->root:Lnet/time4j/format/expert/ZoneLabels$Node;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v1, v2, v0}, Lnet/time4j/format/expert/ZoneLabels;->collect(Lnet/time4j/format/expert/ZoneLabels$Node;Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count="

    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",labels={"

    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "=>"

    .line 68
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {p0, v2}, Lnet/time4j/format/expert/ZoneLabels;->find(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x7d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
