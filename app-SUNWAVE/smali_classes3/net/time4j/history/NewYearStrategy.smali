.class public final Lnet/time4j/history/NewYearStrategy;
.super Ljava/lang/Object;
.source "NewYearStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/time4j/history/NewYearStrategy$NYSComparator;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final DEFAULT:Lnet/time4j/history/NewYearStrategy;

.field private static final STD_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lnet/time4j/history/NewYearStrategy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final lastAnnoDomini:I

.field private final lastRule:Lnet/time4j/history/NewYearRule;

.field private final strategies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/time4j/history/NewYearStrategy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 50
    new-instance v0, Lnet/time4j/history/NewYearStrategy;

    sget-object v1, Lnet/time4j/history/NewYearRule;->BEGIN_OF_JANUARY:Lnet/time4j/history/NewYearRule;

    const v2, 0x7fffffff

    invoke-direct {v0, v1, v2}, Lnet/time4j/history/NewYearStrategy;-><init>(Lnet/time4j/history/NewYearRule;I)V

    sput-object v0, Lnet/time4j/history/NewYearStrategy;->DEFAULT:Lnet/time4j/history/NewYearStrategy;

    .line 52
    new-instance v0, Lnet/time4j/history/NewYearStrategy$NYSComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/time4j/history/NewYearStrategy$NYSComparator;-><init>(Lnet/time4j/history/NewYearStrategy$1;)V

    sput-object v0, Lnet/time4j/history/NewYearStrategy;->STD_ORDER:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/time4j/history/NewYearStrategy;",
            ">;)V"
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    sget-object v0, Lnet/time4j/history/NewYearStrategy;->STD_ORDER:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 79
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 81
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 82
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/time4j/history/NewYearStrategy;

    if-eqz v1, :cond_1

    .line 84
    iget v3, v2, Lnet/time4j/history/NewYearStrategy;->lastAnnoDomini:I

    iget v4, v1, Lnet/time4j/history/NewYearStrategy;->lastAnnoDomini:I

    if-ne v3, v4, :cond_1

    .line 85
    iget-object v2, v2, Lnet/time4j/history/NewYearStrategy;->lastRule:Lnet/time4j/history/NewYearRule;

    iget-object v3, v1, Lnet/time4j/history/NewYearStrategy;->lastRule:Lnet/time4j/history/NewYearRule;

    if-ne v2, v3, :cond_0

    .line 86
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 88
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Multiple strategies with overlapping validity range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object v1, v2

    goto :goto_0

    .line 98
    :cond_2
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/history/NewYearStrategy;->strategies:Ljava/util/List;

    .line 99
    sget-object p1, Lnet/time4j/history/NewYearRule;->BEGIN_OF_JANUARY:Lnet/time4j/history/NewYearRule;

    iput-object p1, p0, Lnet/time4j/history/NewYearStrategy;->lastRule:Lnet/time4j/history/NewYearRule;

    const p1, 0x7fffffff

    .line 100
    iput p1, p0, Lnet/time4j/history/NewYearStrategy;->lastAnnoDomini:I

    return-void
.end method

.method constructor <init>(Lnet/time4j/history/NewYearRule;I)V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lnet/time4j/history/NewYearStrategy;->strategies:Ljava/util/List;

    .line 69
    iput-object p1, p0, Lnet/time4j/history/NewYearStrategy;->lastRule:Lnet/time4j/history/NewYearRule;

    .line 70
    iput p2, p0, Lnet/time4j/history/NewYearStrategy;->lastAnnoDomini:I

    return-void
.end method

.method static synthetic access$100(Lnet/time4j/history/NewYearStrategy;)I
    .locals 0

    .line 46
    iget p0, p0, Lnet/time4j/history/NewYearStrategy;->lastAnnoDomini:I

    return p0
.end method

.method static readFromStream(Ljava/io/DataInput;)Lnet/time4j/history/NewYearStrategy;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 307
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    if-nez v0, :cond_1

    .line 310
    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/time4j/history/NewYearRule;->valueOf(Ljava/lang/String;)Lnet/time4j/history/NewYearRule;

    move-result-object v0

    .line 311
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result p0

    const v1, 0x7fffffff

    if-ne p0, v1, :cond_0

    .line 313
    sget-object v1, Lnet/time4j/history/NewYearRule;->BEGIN_OF_JANUARY:Lnet/time4j/history/NewYearRule;

    if-ne v0, v1, :cond_0

    .line 314
    sget-object p0, Lnet/time4j/history/NewYearStrategy;->DEFAULT:Lnet/time4j/history/NewYearStrategy;

    return-object p0

    .line 316
    :cond_0
    new-instance v1, Lnet/time4j/history/NewYearStrategy;

    invoke-direct {v1, v0, p0}, Lnet/time4j/history/NewYearStrategy;-><init>(Lnet/time4j/history/NewYearRule;I)V

    return-object v1

    .line 320
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 323
    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnet/time4j/history/NewYearRule;->valueOf(Ljava/lang/String;)Lnet/time4j/history/NewYearRule;

    move-result-object v3

    .line 324
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v4

    .line 325
    new-instance v5, Lnet/time4j/history/NewYearStrategy;

    invoke-direct {v5, v3, v4}, Lnet/time4j/history/NewYearStrategy;-><init>(Lnet/time4j/history/NewYearRule;I)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 328
    :cond_2
    new-instance p0, Lnet/time4j/history/NewYearStrategy;

    invoke-direct {p0, v1}, Lnet/time4j/history/NewYearStrategy;-><init>(Ljava/util/List;)V

    return-object p0
.end method


# virtual methods
.method public and(Lnet/time4j/history/NewYearStrategy;)Lnet/time4j/history/NewYearStrategy;
    .locals 2

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 125
    iget-object v1, p0, Lnet/time4j/history/NewYearStrategy;->strategies:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 127
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_0
    iget-object v1, p1, Lnet/time4j/history/NewYearStrategy;->strategies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 132
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 134
    :cond_1
    iget-object p1, p1, Lnet/time4j/history/NewYearStrategy;->strategies:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 137
    :goto_0
    new-instance p1, Lnet/time4j/history/NewYearStrategy;

    invoke-direct {p1, v0}, Lnet/time4j/history/NewYearStrategy;-><init>(Ljava/util/List;)V

    return-object p1
.end method

.method displayedYear(Lnet/time4j/history/HistoricDate;)I
    .locals 5

    .line 267
    invoke-virtual {p1}, Lnet/time4j/history/HistoricDate;->getEra()Lnet/time4j/history/HistoricEra;

    move-result-object v0

    .line 268
    invoke-virtual {p1}, Lnet/time4j/history/HistoricDate;->getYearOfEra()I

    move-result v1

    .line 269
    invoke-virtual {v0, v1}, Lnet/time4j/history/HistoricEra;->annoDomini(I)I

    move-result v0

    .line 272
    iget-object v1, p0, Lnet/time4j/history/NewYearStrategy;->strategies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/high16 v2, -0x80000000

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 273
    iget-object v4, p0, Lnet/time4j/history/NewYearStrategy;->strategies:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/time4j/history/NewYearStrategy;

    if-lt v0, v2, :cond_0

    .line 274
    iget v2, v4, Lnet/time4j/history/NewYearStrategy;->lastAnnoDomini:I

    if-ge v0, v2, :cond_0

    .line 275
    iget-object v0, v4, Lnet/time4j/history/NewYearStrategy;->lastRule:Lnet/time4j/history/NewYearRule;

    invoke-virtual {v0, p0, p1}, Lnet/time4j/history/NewYearRule;->displayedYear(Lnet/time4j/history/NewYearStrategy;Lnet/time4j/history/HistoricDate;)I

    move-result p1

    return p1

    .line 277
    :cond_0
    iget v2, v4, Lnet/time4j/history/NewYearStrategy;->lastAnnoDomini:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 280
    :cond_1
    iget-object v0, p0, Lnet/time4j/history/NewYearStrategy;->lastRule:Lnet/time4j/history/NewYearRule;

    invoke-virtual {v0, p0, p1}, Lnet/time4j/history/NewYearRule;->displayedYear(Lnet/time4j/history/NewYearStrategy;Lnet/time4j/history/HistoricDate;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 146
    :cond_0
    instance-of v1, p1, Lnet/time4j/history/NewYearStrategy;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 147
    check-cast p1, Lnet/time4j/history/NewYearStrategy;

    .line 148
    iget-object v1, p0, Lnet/time4j/history/NewYearStrategy;->strategies:Ljava/util/List;

    iget-object v3, p1, Lnet/time4j/history/NewYearStrategy;->strategies:Ljava/util/List;

    .line 149
    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/time4j/history/NewYearStrategy;->lastRule:Lnet/time4j/history/NewYearRule;

    iget-object v3, p1, Lnet/time4j/history/NewYearStrategy;->lastRule:Lnet/time4j/history/NewYearRule;

    if-ne v1, v3, :cond_1

    iget v1, p0, Lnet/time4j/history/NewYearStrategy;->lastAnnoDomini:I

    iget p1, p1, Lnet/time4j/history/NewYearStrategy;->lastAnnoDomini:I

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 2

    .line 161
    iget-object v0, p0, Lnet/time4j/history/NewYearStrategy;->strategies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x11

    iget-object v1, p0, Lnet/time4j/history/NewYearStrategy;->lastRule:Lnet/time4j/history/NewYearRule;

    invoke-virtual {v1}, Lnet/time4j/history/NewYearRule;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    iget v1, p0, Lnet/time4j/history/NewYearStrategy;->lastAnnoDomini:I

    add-int/2addr v0, v1

    return v0
.end method

.method newYear(Lnet/time4j/history/HistoricEra;I)Lnet/time4j/history/HistoricDate;
    .locals 1

    .line 218
    invoke-virtual {p0, p1, p2}, Lnet/time4j/history/NewYearStrategy;->rule(Lnet/time4j/history/HistoricEra;I)Lnet/time4j/history/NewYearRule;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/time4j/history/NewYearRule;->newYear(Lnet/time4j/history/HistoricEra;I)Lnet/time4j/history/HistoricDate;

    move-result-object p1

    return-object p1
.end method

.method rule(Lnet/time4j/history/HistoricEra;I)Lnet/time4j/history/NewYearRule;
    .locals 4

    .line 235
    invoke-virtual {p1, p2}, Lnet/time4j/history/HistoricEra;->annoDomini(I)I

    move-result p2

    .line 239
    iget-object v0, p0, Lnet/time4j/history/NewYearStrategy;->strategies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 240
    iget-object v2, p0, Lnet/time4j/history/NewYearStrategy;->strategies:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/time4j/history/NewYearStrategy;

    if-lt p2, v1, :cond_0

    .line 241
    iget v1, v2, Lnet/time4j/history/NewYearStrategy;->lastAnnoDomini:I

    if-ge p2, v1, :cond_0

    .line 242
    iget-object p1, v2, Lnet/time4j/history/NewYearStrategy;->lastRule:Lnet/time4j/history/NewYearRule;

    return-object p1

    .line 244
    :cond_0
    iget v1, v2, Lnet/time4j/history/NewYearStrategy;->lastAnnoDomini:I

    .line 245
    iget-object v2, v2, Lnet/time4j/history/NewYearStrategy;->lastRule:Lnet/time4j/history/NewYearRule;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-ne p2, v1, :cond_2

    .line 248
    sget-object p2, Lnet/time4j/history/HistoricEra;->BYZANTINE:Lnet/time4j/history/HistoricEra;

    if-ne p1, p2, :cond_2

    sget-object p1, Lnet/time4j/history/NewYearRule;->BEGIN_OF_SEPTEMBER:Lnet/time4j/history/NewYearRule;

    if-ne v2, p1, :cond_2

    return-object v2

    .line 252
    :cond_2
    iget-object p1, p0, Lnet/time4j/history/NewYearStrategy;->lastRule:Lnet/time4j/history/NewYearRule;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    iget-object v1, p0, Lnet/time4j/history/NewYearStrategy;->strategies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-string v2, "->"

    const/16 v3, 0x5b

    if-eqz v1, :cond_0

    .line 180
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 181
    iget-object v1, p0, Lnet/time4j/history/NewYearStrategy;->lastRule:Lnet/time4j/history/NewYearRule;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 182
    iget v1, p0, Lnet/time4j/history/NewYearStrategy;->lastAnnoDomini:I

    const v3, 0x7fffffff

    if-eq v1, v3, :cond_2

    .line 183
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    iget v1, p0, Lnet/time4j/history/NewYearStrategy;->lastAnnoDomini:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    const/4 v1, 0x1

    .line 188
    iget-object v4, p0, Lnet/time4j/history/NewYearStrategy;->strategies:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/time4j/history/NewYearStrategy;

    if-eqz v1, :cond_1

    .line 190
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/16 v6, 0x2c

    .line 193
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 195
    :goto_1
    iget-object v6, v5, Lnet/time4j/history/NewYearStrategy;->lastRule:Lnet/time4j/history/NewYearRule;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    iget v5, v5, Lnet/time4j/history/NewYearStrategy;->lastAnnoDomini:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    :goto_2
    const/16 v1, 0x5d

    .line 200
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeToStream(Ljava/io/DataOutput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 287
    iget-object v0, p0, Lnet/time4j/history/NewYearStrategy;->strategies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 288
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    if-nez v0, :cond_0

    .line 291
    iget-object v0, p0, Lnet/time4j/history/NewYearStrategy;->lastRule:Lnet/time4j/history/NewYearRule;

    invoke-virtual {v0}, Lnet/time4j/history/NewYearRule;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 292
    iget v0, p0, Lnet/time4j/history/NewYearStrategy;->lastAnnoDomini:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    return-void

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 297
    iget-object v2, p0, Lnet/time4j/history/NewYearStrategy;->strategies:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/time4j/history/NewYearStrategy;

    .line 298
    iget-object v3, v2, Lnet/time4j/history/NewYearStrategy;->lastRule:Lnet/time4j/history/NewYearRule;

    invoke-virtual {v3}, Lnet/time4j/history/NewYearRule;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 299
    iget v2, v2, Lnet/time4j/history/NewYearStrategy;->lastAnnoDomini:I

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
