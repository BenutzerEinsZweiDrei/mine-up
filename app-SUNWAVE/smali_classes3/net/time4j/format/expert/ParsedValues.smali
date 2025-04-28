.class Lnet/time4j/format/expert/ParsedValues;
.super Lnet/time4j/format/expert/ParsedEntity;
.source "ParsedValues.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/time4j/format/expert/ParsedValues$KeySet;,
        Lnet/time4j/format/expert/ParsedValues$KeyIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/format/expert/ParsedEntity<",
        "Lnet/time4j/format/expert/ParsedValues;",
        ">;"
    }
.end annotation


# static fields
.field private static final INDEXED_ELEMENTS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final INT_PHI:I = -0x61c88647

.field private static final LOAD_FACTOR:F = 0.75f


# instance fields
.field private count:I

.field private duplicateKeysAllowed:Z

.field private ints:[I

.field private keys:[Ljava/lang/Object;

.field private len:I

.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mask:I

.field private position:I

.field private threshold:I

.field private values:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 55
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 56
    sget-object v1, Lnet/time4j/PlainDate;->YEAR:Lnet/time4j/AdjustableElement;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v1, Lnet/time4j/PlainDate;->MONTH_AS_NUMBER:Lnet/time4j/ProportionalElement;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v1, Lnet/time4j/PlainDate;->DAY_OF_MONTH:Lnet/time4j/ProportionalElement;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v1, Lnet/time4j/PlainTime;->DIGITAL_HOUR_OF_DAY:Lnet/time4j/ProportionalElement;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v1, Lnet/time4j/PlainTime;->MINUTE_OF_HOUR:Lnet/time4j/ProportionalElement;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v1, Lnet/time4j/PlainTime;->SECOND_OF_MINUTE:Lnet/time4j/ProportionalElement;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v1, Lnet/time4j/PlainTime;->NANO_OF_SECOND:Lnet/time4j/ProportionalElement;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lnet/time4j/format/expert/ParsedValues;->INDEXED_ELEMENTS:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(IZ)V
    .locals 3

    .line 96
    invoke-direct {p0}, Lnet/time4j/format/expert/ParsedEntity;-><init>()V

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lnet/time4j/format/expert/ParsedValues;->duplicateKeysAllowed:Z

    const/4 v1, -0x1

    .line 82
    iput v1, p0, Lnet/time4j/format/expert/ParsedValues;->position:I

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/high16 p1, -0x80000000

    .line 99
    iput p1, p0, Lnet/time4j/format/expert/ParsedValues;->len:I

    .line 100
    iput p1, p0, Lnet/time4j/format/expert/ParsedValues;->mask:I

    .line 101
    iput p1, p0, Lnet/time4j/format/expert/ParsedValues;->threshold:I

    .line 102
    iput p1, p0, Lnet/time4j/format/expert/ParsedValues;->count:I

    .line 103
    iput-object v1, p0, Lnet/time4j/format/expert/ParsedValues;->keys:[Ljava/lang/Object;

    .line 104
    iput-object v1, p0, Lnet/time4j/format/expert/ParsedValues;->values:[Ljava/lang/Object;

    const/4 p2, 0x3

    new-array v2, p2, [I

    .line 105
    iput-object v2, p0, Lnet/time4j/format/expert/ParsedValues;->ints:[I

    :goto_0
    if-ge v0, p2, :cond_1

    .line 107
    iget-object v2, p0, Lnet/time4j/format/expert/ParsedValues;->ints:[I

    aput p1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    :cond_0
    invoke-static {p1}, Lnet/time4j/format/expert/ParsedValues;->arraySize(I)I

    move-result p1

    iput p1, p0, Lnet/time4j/format/expert/ParsedValues;->len:I

    add-int/lit8 p2, p1, -0x1

    .line 111
    iput p2, p0, Lnet/time4j/format/expert/ParsedValues;->mask:I

    .line 112
    invoke-static {p1}, Lnet/time4j/format/expert/ParsedValues;->maxFill(I)I

    move-result p1

    iput p1, p0, Lnet/time4j/format/expert/ParsedValues;->threshold:I

    .line 113
    iget p1, p0, Lnet/time4j/format/expert/ParsedValues;->len:I

    new-array p2, p1, [Ljava/lang/Object;

    iput-object p2, p0, Lnet/time4j/format/expert/ParsedValues;->keys:[Ljava/lang/Object;

    .line 114
    iput-object v1, p0, Lnet/time4j/format/expert/ParsedValues;->values:[Ljava/lang/Object;

    .line 115
    new-array p1, p1, [I

    iput-object p1, p0, Lnet/time4j/format/expert/ParsedValues;->ints:[I

    .line 116
    iput v0, p0, Lnet/time4j/format/expert/ParsedValues;->count:I

    .line 119
    :cond_1
    iput-object v1, p0, Lnet/time4j/format/expert/ParsedValues;->map:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$100(Lnet/time4j/format/expert/ParsedValues;)I
    .locals 0

    .line 44
    iget p0, p0, Lnet/time4j/format/expert/ParsedValues;->len:I

    return p0
.end method

.method static synthetic access$200(Lnet/time4j/format/expert/ParsedValues;)I
    .locals 0

    .line 44
    iget p0, p0, Lnet/time4j/format/expert/ParsedValues;->count:I

    return p0
.end method

.method static synthetic access$300(Lnet/time4j/format/expert/ParsedValues;)[Ljava/lang/Object;
    .locals 0

    .line 44
    iget-object p0, p0, Lnet/time4j/format/expert/ParsedValues;->keys:[Ljava/lang/Object;

    return-object p0
.end method

.method private static arraySize(I)I
    .locals 2

    int-to-float p0, p0

    const/high16 v0, 0x3f400000    # 0.75f

    div-float/2addr p0, v0

    float-to-double v0, p0

    .line 698
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p0, v0

    invoke-static {p0}, Lnet/time4j/format/expert/ParsedValues;->nextPowerOfTwo(I)I

    move-result p0

    const/4 v0, 0x2

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private static getIndexedElement(I)Lnet/time4j/engine/ChronoElement;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    packed-switch p0, :pswitch_data_0

    .line 781
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No element index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 779
    :pswitch_0
    sget-object p0, Lnet/time4j/PlainTime;->NANO_OF_SECOND:Lnet/time4j/ProportionalElement;

    return-object p0

    .line 777
    :pswitch_1
    sget-object p0, Lnet/time4j/PlainTime;->SECOND_OF_MINUTE:Lnet/time4j/ProportionalElement;

    return-object p0

    .line 775
    :pswitch_2
    sget-object p0, Lnet/time4j/PlainTime;->MINUTE_OF_HOUR:Lnet/time4j/ProportionalElement;

    return-object p0

    .line 773
    :pswitch_3
    sget-object p0, Lnet/time4j/PlainTime;->DIGITAL_HOUR_OF_DAY:Lnet/time4j/ProportionalElement;

    return-object p0

    .line 771
    :pswitch_4
    sget-object p0, Lnet/time4j/PlainDate;->DAY_OF_MONTH:Lnet/time4j/ProportionalElement;

    return-object p0

    .line 769
    :pswitch_5
    sget-object p0, Lnet/time4j/PlainDate;->MONTH_AS_NUMBER:Lnet/time4j/ProportionalElement;

    return-object p0

    .line 767
    :pswitch_6
    sget-object p0, Lnet/time4j/PlainDate;->YEAR:Lnet/time4j/AdjustableElement;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getInt0(Lnet/time4j/engine/ChronoElement;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;)I"
        }
    .end annotation

    .line 564
    iget-object v0, p0, Lnet/time4j/format/expert/ParsedValues;->keys:[Ljava/lang/Object;

    const/4 v1, 0x1

    const/high16 v2, -0x80000000

    if-nez v0, :cond_8

    .line 567
    sget-object v0, Lnet/time4j/PlainDate;->YEAR:Lnet/time4j/AdjustableElement;

    if-ne p1, v0, :cond_0

    .line 568
    iget-object p1, p0, Lnet/time4j/format/expert/ParsedValues;->ints:[I

    const/4 v0, 0x0

    aget p1, p1, v0

    return p1

    .line 569
    :cond_0
    sget-object v0, Lnet/time4j/PlainDate;->MONTH_AS_NUMBER:Lnet/time4j/ProportionalElement;

    if-ne p1, v0, :cond_1

    .line 570
    iget-object p1, p0, Lnet/time4j/format/expert/ParsedValues;->ints:[I

    aget p1, p1, v1

    return p1

    .line 571
    :cond_1
    sget-object v0, Lnet/time4j/PlainDate;->DAY_OF_MONTH:Lnet/time4j/ProportionalElement;

    if-ne p1, v0, :cond_2

    .line 572
    iget-object p1, p0, Lnet/time4j/format/expert/ParsedValues;->ints:[I

    const/4 v0, 0x2

    aget p1, p1, v0

    return p1

    .line 573
    :cond_2
    sget-object v0, Lnet/time4j/PlainTime;->DIGITAL_HOUR_OF_DAY:Lnet/time4j/ProportionalElement;

    if-ne p1, v0, :cond_3

    .line 574
    iget p1, p0, Lnet/time4j/format/expert/ParsedValues;->len:I

    return p1

    .line 575
    :cond_3
    sget-object v0, Lnet/time4j/PlainTime;->MINUTE_OF_HOUR:Lnet/time4j/ProportionalElement;

    if-ne p1, v0, :cond_4

    .line 576
    iget p1, p0, Lnet/time4j/format/expert/ParsedValues;->mask:I

    return p1

    .line 577
    :cond_4
    sget-object v0, Lnet/time4j/PlainTime;->SECOND_OF_MINUTE:Lnet/time4j/ProportionalElement;

    if-ne p1, v0, :cond_5

    .line 578
    iget p1, p0, Lnet/time4j/format/expert/ParsedValues;->threshold:I

    return p1

    .line 579
    :cond_5
    sget-object v0, Lnet/time4j/PlainTime;->NANO_OF_SECOND:Lnet/time4j/ProportionalElement;

    if-ne p1, v0, :cond_6

    .line 580
    iget p1, p0, Lnet/time4j/format/expert/ParsedValues;->count:I

    return p1

    .line 583
    :cond_6
    iget-object v0, p0, Lnet/time4j/format/expert/ParsedValues;->map:Ljava/util/Map;

    if-eqz v0, :cond_7

    .line 585
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 586
    const-class v1, Ljava/lang/Integer;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_7
    return v2

    .line 595
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Lnet/time4j/format/expert/ParsedValues;->mix(I)I

    move-result v3

    iget v4, p0, Lnet/time4j/format/expert/ParsedValues;->mask:I

    and-int/2addr v3, v4

    aget-object v4, v0, v3

    if-nez v4, :cond_9

    return v2

    .line 599
    :cond_9
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 600
    iget-object p1, p0, Lnet/time4j/format/expert/ParsedValues;->ints:[I

    aget p1, p1, v3

    return p1

    :cond_a
    add-int/2addr v3, v1

    .line 604
    iget v4, p0, Lnet/time4j/format/expert/ParsedValues;->mask:I

    and-int/2addr v3, v4

    aget-object v4, v0, v3

    if-nez v4, :cond_b

    return v2

    .line 607
    :cond_b
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 608
    iget-object p1, p0, Lnet/time4j/format/expert/ParsedValues;->ints:[I

    aget p1, p1, v3

    return p1
.end method

.method static isIndexed(Lnet/time4j/engine/ChronoElement;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;)Z"
        }
    .end annotation

    .line 293
    sget-object v0, Lnet/time4j/format/expert/ParsedValues;->INDEXED_ELEMENTS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static maxFill(I)I
    .locals 2

    int-to-float v0, p0

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr v0, v1

    float-to-double v0, v0

    .line 719
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 p0, p0, -0x1

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private static mix(I)I
    .locals 1

    const v0, -0x61c88647

    mul-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr p0, v0

    return p0
.end method

.method private static nextPowerOfTwo(I)I
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    add-int/lit8 p0, p0, -0x1

    shr-int/lit8 v1, p0, 0x1

    or-int/2addr p0, v1

    shr-int/lit8 v1, p0, 0x2

    or-int/2addr p0, v1

    shr-int/lit8 v1, p0, 0x4

    or-int/2addr p0, v1

    shr-int/lit8 v1, p0, 0x8

    or-int/2addr p0, v1

    shr-int/lit8 v1, p0, 0x10

    or-int/2addr p0, v1

    add-int/2addr p0, v0

    return p0
.end method

.method private rehash(I)V
    .locals 12

    .line 732
    iget-object v0, p0, Lnet/time4j/format/expert/ParsedValues;->keys:[Ljava/lang/Object;

    .line 733
    iget-object v1, p0, Lnet/time4j/format/expert/ParsedValues;->values:[Ljava/lang/Object;

    .line 734
    iget-object v2, p0, Lnet/time4j/format/expert/ParsedValues;->ints:[I

    add-int/lit8 v3, p1, -0x1

    .line 736
    new-array v4, p1, [Ljava/lang/Object;

    if-nez v1, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    .line 737
    :cond_0
    new-array v5, p1, [Ljava/lang/Object;

    .line 738
    :goto_0
    new-array v6, p1, [I

    .line 739
    iget v7, p0, Lnet/time4j/format/expert/ParsedValues;->len:I

    const/4 v8, 0x0

    .line 741
    iget v9, p0, Lnet/time4j/format/expert/ParsedValues;->count:I

    :goto_1
    if-ge v8, v9, :cond_4

    :goto_2
    add-int/lit8 v7, v7, -0x1

    .line 743
    aget-object v10, v0, v7

    if-nez v10, :cond_1

    goto :goto_2

    .line 745
    :cond_1
    aget-object v10, v0, v7

    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v10

    invoke-static {v10}, Lnet/time4j/format/expert/ParsedValues;->mix(I)I

    move-result v10

    and-int/2addr v10, v3

    aget-object v11, v4, v10

    if-eqz v11, :cond_2

    :goto_3
    add-int/lit8 v10, v10, 0x1

    and-int/2addr v10, v3

    .line 746
    aget-object v11, v4, v10

    if-eqz v11, :cond_2

    goto :goto_3

    .line 749
    :cond_2
    aget-object v11, v0, v7

    aput-object v11, v4, v10

    if-eqz v1, :cond_3

    .line 751
    aget-object v11, v1, v7

    aput-object v11, v5, v10

    .line 753
    :cond_3
    aget v11, v2, v7

    aput v11, v6, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 755
    :cond_4
    iput p1, p0, Lnet/time4j/format/expert/ParsedValues;->len:I

    .line 756
    iput v3, p0, Lnet/time4j/format/expert/ParsedValues;->mask:I

    .line 757
    invoke-static {p1}, Lnet/time4j/format/expert/ParsedValues;->maxFill(I)I

    move-result p1

    iput p1, p0, Lnet/time4j/format/expert/ParsedValues;->threshold:I

    .line 758
    iput-object v4, p0, Lnet/time4j/format/expert/ParsedValues;->keys:[Ljava/lang/Object;

    .line 759
    iput-object v5, p0, Lnet/time4j/format/expert/ParsedValues;->values:[Ljava/lang/Object;

    .line 760
    iput-object v6, p0, Lnet/time4j/format/expert/ParsedValues;->ints:[I

    return-void
.end method

.method private remove(Ljava/lang/Object;)V
    .locals 4

    .line 616
    iget-object v0, p0, Lnet/time4j/format/expert/ParsedValues;->keys:[Ljava/lang/Object;

    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 619
    sget-object v0, Lnet/time4j/PlainDate;->YEAR:Lnet/time4j/AdjustableElement;

    const/high16 v2, -0x80000000

    if-ne p1, v0, :cond_0

    .line 620
    iget-object p1, p0, Lnet/time4j/format/expert/ParsedValues;->ints:[I

    const/4 v0, 0x0

    aput v2, p1, v0

    goto :goto_0

    .line 621
    :cond_0
    sget-object v0, Lnet/time4j/PlainDate;->MONTH_AS_NUMBER:Lnet/time4j/ProportionalElement;

    if-ne p1, v0, :cond_1

    .line 622
    iget-object p1, p0, Lnet/time4j/format/expert/ParsedValues;->ints:[I

    aput v2, p1, v1

    goto :goto_0

    .line 623
    :cond_1
    sget-object v0, Lnet/time4j/PlainDate;->DAY_OF_MONTH:Lnet/time4j/ProportionalElement;

    if-ne p1, v0, :cond_2

    .line 624
    iget-object p1, p0, Lnet/time4j/format/expert/ParsedValues;->ints:[I

    const/4 v0, 0x2

    aput v2, p1, v0

    goto :goto_0

    .line 625
    :cond_2
    sget-object v0, Lnet/time4j/PlainTime;->DIGITAL_HOUR_OF_DAY:Lnet/time4j/ProportionalElement;

    if-ne p1, v0, :cond_3

    .line 626
    iput v2, p0, Lnet/time4j/format/expert/ParsedValues;->len:I

    goto :goto_0

    .line 627
    :cond_3
    sget-object v0, Lnet/time4j/PlainTime;->MINUTE_OF_HOUR:Lnet/time4j/ProportionalElement;

    if-ne p1, v0, :cond_4

    .line 628
    iput v2, p0, Lnet/time4j/format/expert/ParsedValues;->mask:I

    goto :goto_0

    .line 629
    :cond_4
    sget-object v0, Lnet/time4j/PlainTime;->SECOND_OF_MINUTE:Lnet/time4j/ProportionalElement;

    if-ne p1, v0, :cond_5

    .line 630
    iput v2, p0, Lnet/time4j/format/expert/ParsedValues;->threshold:I

    goto :goto_0

    .line 631
    :cond_5
    sget-object v0, Lnet/time4j/PlainTime;->NANO_OF_SECOND:Lnet/time4j/ProportionalElement;

    if-ne p1, v0, :cond_6

    .line 632
    iput v2, p0, Lnet/time4j/format/expert/ParsedValues;->count:I

    goto :goto_0

    .line 634
    :cond_6
    iget-object v0, p0, Lnet/time4j/format/expert/ParsedValues;->map:Ljava/util/Map;

    if-eqz v0, :cond_7

    .line 637
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_0
    return-void

    .line 646
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Lnet/time4j/format/expert/ParsedValues;->mix(I)I

    move-result v2

    iget v3, p0, Lnet/time4j/format/expert/ParsedValues;->mask:I

    and-int/2addr v2, v3

    aget-object v3, v0, v2

    if-nez v3, :cond_9

    return-void

    .line 650
    :cond_9
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 651
    invoke-direct {p0, v2}, Lnet/time4j/format/expert/ParsedValues;->removeEntry(I)V

    return-void

    :cond_a
    add-int/2addr v2, v1

    .line 656
    iget v3, p0, Lnet/time4j/format/expert/ParsedValues;->mask:I

    and-int/2addr v2, v3

    aget-object v3, v0, v2

    if-nez v3, :cond_b

    return-void

    .line 659
    :cond_b
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 660
    invoke-direct {p0, v2}, Lnet/time4j/format/expert/ParsedValues;->removeEntry(I)V

    return-void
.end method

.method private removeEntry(I)V
    .locals 5

    .line 669
    iget v0, p0, Lnet/time4j/format/expert/ParsedValues;->count:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnet/time4j/format/expert/ParsedValues;->count:I

    .line 672
    iget-object v0, p0, Lnet/time4j/format/expert/ParsedValues;->keys:[Ljava/lang/Object;

    :goto_0
    add-int/lit8 v1, p1, 0x1

    .line 675
    iget v2, p0, Lnet/time4j/format/expert/ParsedValues;->mask:I

    and-int/2addr v1, v2

    .line 677
    :goto_1
    aget-object v2, v0, v1

    if-nez v2, :cond_0

    const/4 v1, 0x0

    .line 678
    aput-object v1, v0, p1

    return-void

    .line 681
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Lnet/time4j/format/expert/ParsedValues;->mix(I)I

    move-result v3

    iget v4, p0, Lnet/time4j/format/expert/ParsedValues;->mask:I

    and-int/2addr v3, v4

    if-gt p1, v1, :cond_1

    if-ge p1, v3, :cond_2

    if-le v3, v1, :cond_4

    goto :goto_2

    :cond_1
    if-lt p1, v3, :cond_4

    if-le v3, v1, :cond_4

    .line 687
    :cond_2
    :goto_2
    aput-object v2, v0, p1

    .line 688
    iget-object v2, p0, Lnet/time4j/format/expert/ParsedValues;->values:[Ljava/lang/Object;

    if-eqz v2, :cond_3

    .line 689
    aget-object v3, v2, v1

    aput-object v3, v2, p1

    .line 691
    :cond_3
    iget-object v2, p0, Lnet/time4j/format/expert/ParsedValues;->ints:[I

    aget v3, v2, v1

    aput v3, v2, p1

    move p1, v1

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    and-int/2addr v1, v4

    goto :goto_1
.end method


# virtual methods
.method public contains(Lnet/time4j/engine/ChronoElement;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 132
    :cond_0
    iget-object v1, p0, Lnet/time4j/format/expert/ParsedValues;->keys:[Ljava/lang/Object;

    const/4 v2, 0x1

    if-nez v1, :cond_10

    .line 135
    sget-object v1, Lnet/time4j/PlainDate;->YEAR:Lnet/time4j/AdjustableElement;

    const/high16 v3, -0x80000000

    if-ne p1, v1, :cond_2

    .line 136
    iget-object p1, p0, Lnet/time4j/format/expert/ParsedValues;->ints:[I

    aget p1, p1, v0

    if-eq p1, v3, :cond_1

    move v0, v2

    :cond_1
    return v0

    .line 137
    :cond_2
    sget-object v1, Lnet/time4j/PlainDate;->MONTH_AS_NUMBER:Lnet/time4j/ProportionalElement;

    if-ne p1, v1, :cond_4

    .line 138
    iget-object p1, p0, Lnet/time4j/format/expert/ParsedValues;->ints:[I

    aget p1, p1, v2

    if-eq p1, v3, :cond_3

    move v0, v2

    :cond_3
    return v0

    .line 139
    :cond_4
    sget-object v1, Lnet/time4j/PlainDate;->DAY_OF_MONTH:Lnet/time4j/ProportionalElement;

    if-ne p1, v1, :cond_6

    .line 140
    iget-object p1, p0, Lnet/time4j/format/expert/ParsedValues;->ints:[I

    const/4 v1, 0x2

    aget p1, p1, v1

    if-eq p1, v3, :cond_5

    move v0, v2

    :cond_5
    return v0

    .line 141
    :cond_6
    sget-object v1, Lnet/time4j/PlainTime;->DIGITAL_HOUR_OF_DAY:Lnet/time4j/ProportionalElement;

    if-ne p1, v1, :cond_8

    .line 142
    iget p1, p0, Lnet/time4j/format/expert/ParsedValues;->len:I

    if-eq p1, v3, :cond_7

    move v0, v2

    :cond_7
    return v0

    .line 143
    :cond_8
    sget-object v1, Lnet/time4j/PlainTime;->MINUTE_OF_HOUR:Lnet/time4j/ProportionalElement;

    if-ne p1, v1, :cond_a

    .line 144
    iget p1, p0, Lnet/time4j/format/expert/ParsedValues;->mask:I

    if-eq p1, v3, :cond_9

    move v0, v2

    :cond_9
    return v0

    .line 145
    :cond_a
    sget-object v1, Lnet/time4j/PlainTime;->SECOND_OF_MINUTE:Lnet/time4j/ProportionalElement;

    if-ne p1, v1, :cond_c

    .line 146
    iget p1, p0, Lnet/time4j/format/expert/ParsedValues;->threshold:I

    if-eq p1, v3, :cond_b

    move v0, v2

    :cond_b
    return v0

    .line 147
    :cond_c
    sget-object v1, Lnet/time4j/PlainTime;->NANO_OF_SECOND:Lnet/time4j/ProportionalElement;

    if-ne p1, v1, :cond_e

    .line 148
    iget p1, p0, Lnet/time4j/format/expert/ParsedValues;->count:I

    if-eq p1, v3, :cond_d

    move v0, v2

    :cond_d
    return v0

    .line 150
    :cond_e
    iget-object v1, p0, Lnet/time4j/format/expert/ParsedValues;->map:Ljava/util/Map;

    if-eqz v1, :cond_f

    .line 151
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    move v0, v2

    :cond_f
    return v0

    .line 158
    :cond_10
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Lnet/time4j/format/expert/ParsedValues;->mix(I)I

    move-result v3

    iget v4, p0, Lnet/time4j/format/expert/ParsedValues;->mask:I

    and-int/2addr v3, v4

    aget-object v4, v1, v3

    if-nez v4, :cond_11

    return v0

    .line 162
    :cond_11
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    return v2

    :cond_12
    add-int/2addr v3, v2

    .line 167
    iget v4, p0, Lnet/time4j/format/expert/ParsedValues;->mask:I

    and-int/2addr v3, v4

    aget-object v4, v1, v3

    if-nez v4, :cond_13

    return v0

    .line 170
    :cond_13
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    return v2
.end method

.method public get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/engine/ChronoElement<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 180
    invoke-interface {p1}, Lnet/time4j/engine/ChronoElement;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 182
    const-class v1, Ljava/lang/Integer;

    const-string v2, "No value found for: "

    if-ne v0, v1, :cond_1

    .line 183
    invoke-direct {p0, p1}, Lnet/time4j/format/expert/ParsedValues;->getInt0(Lnet/time4j/engine/ChronoElement;)I

    move-result v1

    const/high16 v3, -0x80000000

    if-eq v1, v3, :cond_0

    .line 188
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 186
    :cond_0
    new-instance v0, Lnet/time4j/engine/ChronoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lnet/time4j/engine/ChronoElement;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/time4j/engine/ChronoException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_1
    iget-object v1, p0, Lnet/time4j/format/expert/ParsedValues;->keys:[Ljava/lang/Object;

    if-nez v1, :cond_3

    .line 195
    iget-object v0, p0, Lnet/time4j/format/expert/ParsedValues;->map:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 197
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 198
    invoke-interface {p1}, Lnet/time4j/engine/ChronoElement;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 201
    :cond_2
    new-instance v0, Lnet/time4j/engine/ChronoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lnet/time4j/engine/ChronoElement;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/time4j/engine/ChronoException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_3
    iget-object v3, p0, Lnet/time4j/format/expert/ParsedValues;->values:[Ljava/lang/Object;

    if-eqz v3, :cond_6

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Lnet/time4j/format/expert/ParsedValues;->mix(I)I

    move-result v3

    iget v4, p0, Lnet/time4j/format/expert/ParsedValues;->mask:I

    and-int/2addr v3, v4

    aget-object v4, v1, v3

    if-eqz v4, :cond_6

    .line 211
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 212
    iget-object p1, p0, Lnet/time4j/format/expert/ParsedValues;->values:[Ljava/lang/Object;

    aget-object p1, p1, v3

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 216
    iget v4, p0, Lnet/time4j/format/expert/ParsedValues;->mask:I

    and-int/2addr v3, v4

    aget-object v4, v1, v3

    if-eqz v4, :cond_5

    .line 219
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 220
    iget-object p1, p0, Lnet/time4j/format/expert/ParsedValues;->values:[Ljava/lang/Object;

    aget-object p1, p1, v3

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 217
    :cond_5
    new-instance v0, Lnet/time4j/engine/ChronoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lnet/time4j/engine/ChronoElement;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/time4j/engine/ChronoException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_6
    new-instance v0, Lnet/time4j/engine/ChronoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lnet/time4j/engine/ChronoElement;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/time4j/engine/ChronoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInt(Lnet/time4j/engine/ChronoElement;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 229
    invoke-direct {p0, p1}, Lnet/time4j/format/expert/ParsedValues;->getInt0(Lnet/time4j/engine/ChronoElement;)I

    move-result p1

    return p1
.end method

.method getPosition()I
    .locals 1

    .line 279
    iget v0, p0, Lnet/time4j/format/expert/ParsedValues;->position:I

    return v0
.end method

.method public getRegisteredElements()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;>;"
        }
    .end annotation

    .line 236
    iget-object v0, p0, Lnet/time4j/format/expert/ParsedValues;->keys:[Ljava/lang/Object;

    if-nez v0, :cond_8

    .line 237
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 238
    iget-object v1, p0, Lnet/time4j/format/expert/ParsedValues;->ints:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    .line 239
    sget-object v1, Lnet/time4j/PlainDate;->YEAR:Lnet/time4j/AdjustableElement;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 241
    :cond_0
    iget-object v1, p0, Lnet/time4j/format/expert/ParsedValues;->ints:[I

    const/4 v3, 0x1

    aget v1, v1, v3

    if-eq v1, v2, :cond_1

    .line 242
    sget-object v1, Lnet/time4j/PlainDate;->MONTH_AS_NUMBER:Lnet/time4j/ProportionalElement;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 244
    :cond_1
    iget-object v1, p0, Lnet/time4j/format/expert/ParsedValues;->ints:[I

    const/4 v3, 0x2

    aget v1, v1, v3

    if-eq v1, v2, :cond_2

    .line 245
    sget-object v1, Lnet/time4j/PlainDate;->DAY_OF_MONTH:Lnet/time4j/ProportionalElement;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 247
    :cond_2
    iget v1, p0, Lnet/time4j/format/expert/ParsedValues;->len:I

    if-eq v1, v2, :cond_3

    .line 248
    sget-object v1, Lnet/time4j/PlainTime;->DIGITAL_HOUR_OF_DAY:Lnet/time4j/ProportionalElement;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 250
    :cond_3
    iget v1, p0, Lnet/time4j/format/expert/ParsedValues;->mask:I

    if-eq v1, v2, :cond_4

    .line 251
    sget-object v1, Lnet/time4j/PlainTime;->MINUTE_OF_HOUR:Lnet/time4j/ProportionalElement;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 253
    :cond_4
    iget v1, p0, Lnet/time4j/format/expert/ParsedValues;->threshold:I

    if-eq v1, v2, :cond_5

    .line 254
    sget-object v1, Lnet/time4j/PlainTime;->SECOND_OF_MINUTE:Lnet/time4j/ProportionalElement;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 256
    :cond_5
    iget v1, p0, Lnet/time4j/format/expert/ParsedValues;->count:I

    if-eq v1, v2, :cond_6

    .line 257
    sget-object v1, Lnet/time4j/PlainTime;->NANO_OF_SECOND:Lnet/time4j/ProportionalElement;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 259
    :cond_6
    iget-object v1, p0, Lnet/time4j/format/expert/ParsedValues;->map:Ljava/util/Map;

    if-eqz v1, :cond_7

    .line 260
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 262
    :cond_7
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 265
    :cond_8
    new-instance v0, Lnet/time4j/format/expert/ParsedValues$KeySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnet/time4j/format/expert/ParsedValues$KeySet;-><init>(Lnet/time4j/format/expert/ParsedValues;Lnet/time4j/format/expert/ParsedValues$1;)V

    return-object v0
.end method

.method getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()TE;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method put(Lnet/time4j/engine/ChronoElement;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;I)V"
        }
    .end annotation

    .line 373
    iget-object v0, p0, Lnet/time4j/format/expert/ParsedValues;->keys:[Ljava/lang/Object;

    const/4 v1, 0x1

    if-nez v0, :cond_18

    .line 376
    sget-object v0, Lnet/time4j/PlainDate;->YEAR:Lnet/time4j/AdjustableElement;

    const/high16 v2, -0x80000000

    if-ne p1, v0, :cond_2

    .line 377
    iget-boolean v0, p0, Lnet/time4j/format/expert/ParsedValues;->duplicateKeysAllowed:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/time4j/format/expert/ParsedValues;->ints:[I

    aget v3, v0, v1

    if-eq v3, v2, :cond_1

    aget v0, v0, v1

    if-ne v0, p2, :cond_0

    goto :goto_0

    .line 380
    :cond_0
    new-instance p2, Lnet/time4j/format/expert/AmbivalentValueException;

    invoke-direct {p2, p1}, Lnet/time4j/format/expert/AmbivalentValueException;-><init>(Lnet/time4j/engine/ChronoElement;)V

    throw p2

    .line 378
    :cond_1
    :goto_0
    iget-object p1, p0, Lnet/time4j/format/expert/ParsedValues;->ints:[I

    aput p2, p1, v1

    goto/16 :goto_7

    .line 382
    :cond_2
    sget-object v0, Lnet/time4j/PlainDate;->MONTH_AS_NUMBER:Lnet/time4j/ProportionalElement;

    if-ne p1, v0, :cond_5

    .line 383
    iget-boolean v0, p0, Lnet/time4j/format/expert/ParsedValues;->duplicateKeysAllowed:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lnet/time4j/format/expert/ParsedValues;->ints:[I

    aget v3, v0, v1

    if-eq v3, v2, :cond_4

    aget v0, v0, v1

    if-ne v0, p2, :cond_3

    goto :goto_1

    .line 386
    :cond_3
    new-instance p2, Lnet/time4j/format/expert/AmbivalentValueException;

    invoke-direct {p2, p1}, Lnet/time4j/format/expert/AmbivalentValueException;-><init>(Lnet/time4j/engine/ChronoElement;)V

    throw p2

    .line 384
    :cond_4
    :goto_1
    iget-object p1, p0, Lnet/time4j/format/expert/ParsedValues;->ints:[I

    aput p2, p1, v1

    goto/16 :goto_7

    .line 388
    :cond_5
    sget-object v0, Lnet/time4j/PlainDate;->DAY_OF_MONTH:Lnet/time4j/ProportionalElement;

    if-ne p1, v0, :cond_8

    .line 389
    iget-boolean v0, p0, Lnet/time4j/format/expert/ParsedValues;->duplicateKeysAllowed:Z

    const/4 v1, 0x2

    if-nez v0, :cond_7

    iget-object v0, p0, Lnet/time4j/format/expert/ParsedValues;->ints:[I

    aget v3, v0, v1

    if-eq v3, v2, :cond_7

    aget v0, v0, v1

    if-ne v0, p2, :cond_6

    goto :goto_2

    .line 392
    :cond_6
    new-instance p2, Lnet/time4j/format/expert/AmbivalentValueException;

    invoke-direct {p2, p1}, Lnet/time4j/format/expert/AmbivalentValueException;-><init>(Lnet/time4j/engine/ChronoElement;)V

    throw p2

    .line 390
    :cond_7
    :goto_2
    iget-object p1, p0, Lnet/time4j/format/expert/ParsedValues;->ints:[I

    aput p2, p1, v1

    goto/16 :goto_7

    .line 394
    :cond_8
    sget-object v0, Lnet/time4j/PlainTime;->DIGITAL_HOUR_OF_DAY:Lnet/time4j/ProportionalElement;

    if-ne p1, v0, :cond_b

    .line 395
    iget-boolean v0, p0, Lnet/time4j/format/expert/ParsedValues;->duplicateKeysAllowed:Z

    if-nez v0, :cond_a

    iget v0, p0, Lnet/time4j/format/expert/ParsedValues;->len:I

    if-eq v0, v2, :cond_a

    if-ne v0, p2, :cond_9

    goto :goto_3

    .line 398
    :cond_9
    new-instance p2, Lnet/time4j/format/expert/AmbivalentValueException;

    invoke-direct {p2, p1}, Lnet/time4j/format/expert/AmbivalentValueException;-><init>(Lnet/time4j/engine/ChronoElement;)V

    throw p2

    .line 396
    :cond_a
    :goto_3
    iput p2, p0, Lnet/time4j/format/expert/ParsedValues;->len:I

    goto :goto_7

    .line 400
    :cond_b
    sget-object v0, Lnet/time4j/PlainTime;->MINUTE_OF_HOUR:Lnet/time4j/ProportionalElement;

    if-ne p1, v0, :cond_e

    .line 401
    iget-boolean v0, p0, Lnet/time4j/format/expert/ParsedValues;->duplicateKeysAllowed:Z

    if-nez v0, :cond_d

    iget v0, p0, Lnet/time4j/format/expert/ParsedValues;->mask:I

    if-eq v0, v2, :cond_d

    if-ne v0, p2, :cond_c

    goto :goto_4

    .line 404
    :cond_c
    new-instance p2, Lnet/time4j/format/expert/AmbivalentValueException;

    invoke-direct {p2, p1}, Lnet/time4j/format/expert/AmbivalentValueException;-><init>(Lnet/time4j/engine/ChronoElement;)V

    throw p2

    .line 402
    :cond_d
    :goto_4
    iput p2, p0, Lnet/time4j/format/expert/ParsedValues;->mask:I

    goto :goto_7

    .line 406
    :cond_e
    sget-object v0, Lnet/time4j/PlainTime;->SECOND_OF_MINUTE:Lnet/time4j/ProportionalElement;

    if-ne p1, v0, :cond_11

    .line 407
    iget-boolean v0, p0, Lnet/time4j/format/expert/ParsedValues;->duplicateKeysAllowed:Z

    if-nez v0, :cond_10

    iget v0, p0, Lnet/time4j/format/expert/ParsedValues;->threshold:I

    if-eq v0, v2, :cond_10

    if-ne v0, p2, :cond_f

    goto :goto_5

    .line 410
    :cond_f
    new-instance p2, Lnet/time4j/format/expert/AmbivalentValueException;

    invoke-direct {p2, p1}, Lnet/time4j/format/expert/AmbivalentValueException;-><init>(Lnet/time4j/engine/ChronoElement;)V

    throw p2

    .line 408
    :cond_10
    :goto_5
    iput p2, p0, Lnet/time4j/format/expert/ParsedValues;->threshold:I

    goto :goto_7

    .line 412
    :cond_11
    sget-object v0, Lnet/time4j/PlainTime;->NANO_OF_SECOND:Lnet/time4j/ProportionalElement;

    if-ne p1, v0, :cond_14

    .line 413
    iget-boolean v0, p0, Lnet/time4j/format/expert/ParsedValues;->duplicateKeysAllowed:Z

    if-nez v0, :cond_13

    iget v0, p0, Lnet/time4j/format/expert/ParsedValues;->count:I

    if-eq v0, v2, :cond_13

    if-ne v0, p2, :cond_12

    goto :goto_6

    .line 416
    :cond_12
    new-instance p2, Lnet/time4j/format/expert/AmbivalentValueException;

    invoke-direct {p2, p1}, Lnet/time4j/format/expert/AmbivalentValueException;-><init>(Lnet/time4j/engine/ChronoElement;)V

    throw p2

    .line 414
    :cond_13
    :goto_6
    iput p2, p0, Lnet/time4j/format/expert/ParsedValues;->count:I

    :goto_7
    return-void

    .line 419
    :cond_14
    iget-object v0, p0, Lnet/time4j/format/expert/ParsedValues;->map:Ljava/util/Map;

    if-nez v0, :cond_15

    .line 421
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 422
    iput-object v0, p0, Lnet/time4j/format/expert/ParsedValues;->map:Ljava/util/Map;

    .line 424
    :cond_15
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 425
    iget-boolean v1, p0, Lnet/time4j/format/expert/ParsedValues;->duplicateKeysAllowed:Z

    if-nez v1, :cond_17

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_8

    .line 429
    :cond_16
    new-instance p2, Lnet/time4j/format/expert/AmbivalentValueException;

    invoke-direct {p2, p1}, Lnet/time4j/format/expert/AmbivalentValueException;-><init>(Lnet/time4j/engine/ChronoElement;)V

    throw p2

    .line 426
    :cond_17
    :goto_8
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 435
    :cond_18
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Lnet/time4j/format/expert/ParsedValues;->mix(I)I

    move-result v2

    iget v3, p0, Lnet/time4j/format/expert/ParsedValues;->mask:I

    and-int/2addr v2, v3

    aget-object v3, v0, v2

    if-eqz v3, :cond_1e

    .line 436
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 437
    iget-boolean v0, p0, Lnet/time4j/format/expert/ParsedValues;->duplicateKeysAllowed:Z

    if-nez v0, :cond_1a

    iget-object v0, p0, Lnet/time4j/format/expert/ParsedValues;->ints:[I

    aget v0, v0, v2

    if-ne v0, p2, :cond_19

    goto :goto_9

    .line 441
    :cond_19
    new-instance p2, Lnet/time4j/format/expert/AmbivalentValueException;

    invoke-direct {p2, p1}, Lnet/time4j/format/expert/AmbivalentValueException;-><init>(Lnet/time4j/engine/ChronoElement;)V

    throw p2

    .line 438
    :cond_1a
    :goto_9
    iget-object p1, p0, Lnet/time4j/format/expert/ParsedValues;->ints:[I

    aput p2, p1, v2

    return-void

    :cond_1b
    add-int/2addr v2, v1

    .line 444
    iget v3, p0, Lnet/time4j/format/expert/ParsedValues;->mask:I

    and-int/2addr v2, v3

    aget-object v3, v0, v2

    if-eqz v3, :cond_1e

    .line 445
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 446
    iget-boolean v0, p0, Lnet/time4j/format/expert/ParsedValues;->duplicateKeysAllowed:Z

    if-nez v0, :cond_1d

    iget-object v0, p0, Lnet/time4j/format/expert/ParsedValues;->ints:[I

    aget v0, v0, v2

    if-ne v0, p2, :cond_1c

    goto :goto_a

    .line 450
    :cond_1c
    new-instance p2, Lnet/time4j/format/expert/AmbivalentValueException;

    invoke-direct {p2, p1}, Lnet/time4j/format/expert/AmbivalentValueException;-><init>(Lnet/time4j/engine/ChronoElement;)V

    throw p2

    .line 447
    :cond_1d
    :goto_a
    iget-object p1, p0, Lnet/time4j/format/expert/ParsedValues;->ints:[I

    aput p2, p1, v2

    return-void

    .line 456
    :cond_1e
    aput-object p1, v0, v2

    .line 457
    iget-object p1, p0, Lnet/time4j/format/expert/ParsedValues;->ints:[I

    aput p2, p1, v2

    .line 459
    iget p1, p0, Lnet/time4j/format/expert/ParsedValues;->count:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lnet/time4j/format/expert/ParsedValues;->count:I

    iget v0, p0, Lnet/time4j/format/expert/ParsedValues;->threshold:I

    if-lt p1, v0, :cond_1f

    .line 460
    invoke-static {p2}, Lnet/time4j/format/expert/ParsedValues;->arraySize(I)I

    move-result p1

    invoke-direct {p0, p1}, Lnet/time4j/format/expert/ParsedValues;->rehash(I)V

    :cond_1f
    return-void
.end method

.method put(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 469
    invoke-direct {p0, p1}, Lnet/time4j/format/expert/ParsedValues;->remove(Ljava/lang/Object;)V

    return-void

    .line 471
    :cond_0
    invoke-interface {p1}, Lnet/time4j/engine/ChronoElement;->getType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_1

    .line 472
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lnet/time4j/format/expert/ParsedValues;->put(Lnet/time4j/engine/ChronoElement;I)V

    return-void

    .line 478
    :cond_1
    iget-object v0, p0, Lnet/time4j/format/expert/ParsedValues;->keys:[Ljava/lang/Object;

    if-nez v0, :cond_5

    .line 481
    iget-object v0, p0, Lnet/time4j/format/expert/ParsedValues;->map:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 483
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 484
    iput-object v0, p0, Lnet/time4j/format/expert/ParsedValues;->map:Ljava/util/Map;

    .line 486
    :cond_2
    iget-boolean v1, p0, Lnet/time4j/format/expert/ParsedValues;->duplicateKeysAllowed:Z

    if-nez v1, :cond_4

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 490
    :cond_3
    new-instance p2, Lnet/time4j/format/expert/AmbivalentValueException;

    invoke-direct {p2, p1}, Lnet/time4j/format/expert/AmbivalentValueException;-><init>(Lnet/time4j/engine/ChronoElement;)V

    throw p2

    .line 487
    :cond_4
    :goto_0
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 494
    :cond_5
    iget-object v1, p0, Lnet/time4j/format/expert/ParsedValues;->values:[Ljava/lang/Object;

    if-nez v1, :cond_6

    .line 495
    iget v1, p0, Lnet/time4j/format/expert/ParsedValues;->len:I

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Lnet/time4j/format/expert/ParsedValues;->values:[Ljava/lang/Object;

    .line 498
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lnet/time4j/format/expert/ParsedValues;->mix(I)I

    move-result v1

    iget v2, p0, Lnet/time4j/format/expert/ParsedValues;->mask:I

    and-int/2addr v1, v2

    aget-object v2, v0, v1

    if-eqz v2, :cond_c

    .line 499
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 500
    iget-boolean v0, p0, Lnet/time4j/format/expert/ParsedValues;->duplicateKeysAllowed:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lnet/time4j/format/expert/ParsedValues;->values:[Ljava/lang/Object;

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_1

    .line 504
    :cond_7
    new-instance p2, Lnet/time4j/format/expert/AmbivalentValueException;

    invoke-direct {p2, p1}, Lnet/time4j/format/expert/AmbivalentValueException;-><init>(Lnet/time4j/engine/ChronoElement;)V

    throw p2

    .line 501
    :cond_8
    :goto_1
    iget-object p1, p0, Lnet/time4j/format/expert/ParsedValues;->values:[Ljava/lang/Object;

    aput-object p2, p1, v1

    return-void

    :cond_9
    add-int/lit8 v1, v1, 0x1

    .line 507
    iget v2, p0, Lnet/time4j/format/expert/ParsedValues;->mask:I

    and-int/2addr v1, v2

    aget-object v2, v0, v1

    if-eqz v2, :cond_c

    .line 508
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 509
    iget-boolean v0, p0, Lnet/time4j/format/expert/ParsedValues;->duplicateKeysAllowed:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lnet/time4j/format/expert/ParsedValues;->values:[Ljava/lang/Object;

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_2

    .line 513
    :cond_a
    new-instance p2, Lnet/time4j/format/expert/AmbivalentValueException;

    invoke-direct {p2, p1}, Lnet/time4j/format/expert/AmbivalentValueException;-><init>(Lnet/time4j/engine/ChronoElement;)V

    throw p2

    .line 510
    :cond_b
    :goto_2
    iget-object p1, p0, Lnet/time4j/format/expert/ParsedValues;->values:[Ljava/lang/Object;

    aput-object p2, p1, v1

    return-void

    .line 519
    :cond_c
    aput-object p1, v0, v1

    .line 520
    iget-object p1, p0, Lnet/time4j/format/expert/ParsedValues;->values:[Ljava/lang/Object;

    aput-object p2, p1, v1

    .line 522
    iget p1, p0, Lnet/time4j/format/expert/ParsedValues;->count:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lnet/time4j/format/expert/ParsedValues;->count:I

    iget v0, p0, Lnet/time4j/format/expert/ParsedValues;->threshold:I

    if-lt p1, v0, :cond_d

    .line 523
    invoke-static {p2}, Lnet/time4j/format/expert/ParsedValues;->arraySize(I)I

    move-result p1

    invoke-direct {p0, p1}, Lnet/time4j/format/expert/ParsedValues;->rehash(I)V

    :cond_d
    return-void
.end method

.method putAll(Lnet/time4j/format/expert/ParsedValues;)V
    .locals 5

    .line 300
    iget-object v0, p0, Lnet/time4j/format/expert/ParsedValues;->keys:[Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 301
    iget v0, p1, Lnet/time4j/format/expert/ParsedValues;->len:I

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_2

    .line 303
    iget v3, p0, Lnet/time4j/format/expert/ParsedValues;->len:I

    if-eq v3, v2, :cond_1

    iget-boolean v4, p0, Lnet/time4j/format/expert/ParsedValues;->duplicateKeysAllowed:Z

    if-nez v4, :cond_1

    if-ne v3, v0, :cond_0

    goto :goto_0

    .line 306
    :cond_0
    new-instance p1, Lnet/time4j/format/expert/AmbivalentValueException;

    sget-object v0, Lnet/time4j/PlainTime;->DIGITAL_HOUR_OF_DAY:Lnet/time4j/ProportionalElement;

    invoke-direct {p1, v0}, Lnet/time4j/format/expert/AmbivalentValueException;-><init>(Lnet/time4j/engine/ChronoElement;)V

    throw p1

    .line 304
    :cond_1
    :goto_0
    iput v0, p0, Lnet/time4j/format/expert/ParsedValues;->len:I

    .line 309
    :cond_2
    iget v0, p1, Lnet/time4j/format/expert/ParsedValues;->mask:I

    if-eq v0, v2, :cond_5

    .line 311
    iget v3, p0, Lnet/time4j/format/expert/ParsedValues;->mask:I

    if-eq v3, v2, :cond_4

    iget-boolean v4, p0, Lnet/time4j/format/expert/ParsedValues;->duplicateKeysAllowed:Z

    if-nez v4, :cond_4

    if-ne v3, v0, :cond_3

    goto :goto_1

    .line 314
    :cond_3
    new-instance p1, Lnet/time4j/format/expert/AmbivalentValueException;

    sget-object v0, Lnet/time4j/PlainTime;->MINUTE_OF_HOUR:Lnet/time4j/ProportionalElement;

    invoke-direct {p1, v0}, Lnet/time4j/format/expert/AmbivalentValueException;-><init>(Lnet/time4j/engine/ChronoElement;)V

    throw p1

    .line 312
    :cond_4
    :goto_1
    iput v0, p0, Lnet/time4j/format/expert/ParsedValues;->mask:I

    .line 317
    :cond_5
    iget v0, p1, Lnet/time4j/format/expert/ParsedValues;->threshold:I

    if-eq v0, v2, :cond_8

    .line 319
    iget v3, p0, Lnet/time4j/format/expert/ParsedValues;->threshold:I

    if-eq v3, v2, :cond_7

    iget-boolean v4, p0, Lnet/time4j/format/expert/ParsedValues;->duplicateKeysAllowed:Z

    if-nez v4, :cond_7

    if-ne v3, v0, :cond_6

    goto :goto_2

    .line 322
    :cond_6
    new-instance p1, Lnet/time4j/format/expert/AmbivalentValueException;

    sget-object v0, Lnet/time4j/PlainTime;->SECOND_OF_MINUTE:Lnet/time4j/ProportionalElement;

    invoke-direct {p1, v0}, Lnet/time4j/format/expert/AmbivalentValueException;-><init>(Lnet/time4j/engine/ChronoElement;)V

    throw p1

    .line 320
    :cond_7
    :goto_2
    iput v0, p0, Lnet/time4j/format/expert/ParsedValues;->threshold:I

    .line 325
    :cond_8
    iget v0, p1, Lnet/time4j/format/expert/ParsedValues;->count:I

    if-eq v0, v2, :cond_b

    .line 327
    iget v3, p0, Lnet/time4j/format/expert/ParsedValues;->count:I

    if-eq v3, v2, :cond_a

    iget-boolean v4, p0, Lnet/time4j/format/expert/ParsedValues;->duplicateKeysAllowed:Z

    if-nez v4, :cond_a

    if-ne v3, v0, :cond_9

    goto :goto_3

    .line 330
    :cond_9
    new-instance p1, Lnet/time4j/format/expert/AmbivalentValueException;

    sget-object v0, Lnet/time4j/PlainTime;->NANO_OF_SECOND:Lnet/time4j/ProportionalElement;

    invoke-direct {p1, v0}, Lnet/time4j/format/expert/AmbivalentValueException;-><init>(Lnet/time4j/engine/ChronoElement;)V

    throw p1

    .line 328
    :cond_a
    :goto_3
    iput v0, p0, Lnet/time4j/format/expert/ParsedValues;->count:I

    :cond_b
    :goto_4
    const/4 v0, 0x3

    if-ge v1, v0, :cond_f

    .line 334
    iget-object v0, p1, Lnet/time4j/format/expert/ParsedValues;->ints:[I

    aget v0, v0, v1

    if-eq v0, v2, :cond_e

    .line 336
    iget-object v3, p0, Lnet/time4j/format/expert/ParsedValues;->ints:[I

    aget v4, v3, v1

    if-eq v4, v2, :cond_d

    iget-boolean v4, p0, Lnet/time4j/format/expert/ParsedValues;->duplicateKeysAllowed:Z

    if-nez v4, :cond_d

    aget v4, v3, v1

    if-ne v4, v0, :cond_c

    goto :goto_5

    .line 339
    :cond_c
    new-instance p1, Lnet/time4j/format/expert/AmbivalentValueException;

    invoke-static {v1}, Lnet/time4j/format/expert/ParsedValues;->getIndexedElement(I)Lnet/time4j/engine/ChronoElement;

    move-result-object v0

    invoke-direct {p1, v0}, Lnet/time4j/format/expert/AmbivalentValueException;-><init>(Lnet/time4j/engine/ChronoElement;)V

    throw p1

    .line 337
    :cond_d
    :goto_5
    aput v0, v3, v1

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 343
    :cond_f
    iget-object p1, p1, Lnet/time4j/format/expert/ParsedValues;->map:Ljava/util/Map;

    if-eqz p1, :cond_10

    .line 345
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/engine/ChronoElement;

    .line 346
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lnet/time4j/format/expert/ParsedValues;->put(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)V

    goto :goto_6

    :cond_10
    return-void

    .line 352
    :cond_11
    iget-object v0, p1, Lnet/time4j/format/expert/ParsedValues;->keys:[Ljava/lang/Object;

    .line 355
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 356
    aget-object v2, v0, v1

    if-eqz v2, :cond_13

    .line 357
    const-class v3, Lnet/time4j/engine/ChronoElement;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/time4j/engine/ChronoElement;

    .line 358
    invoke-interface {v2}, Lnet/time4j/engine/ChronoElement;->getType()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/lang/Integer;

    if-ne v3, v4, :cond_12

    .line 359
    iget-object v3, p1, Lnet/time4j/format/expert/ParsedValues;->ints:[I

    aget v3, v3, v1

    invoke-virtual {p0, v2, v3}, Lnet/time4j/format/expert/ParsedValues;->put(Lnet/time4j/engine/ChronoElement;I)V

    goto :goto_8

    .line 361
    :cond_12
    iget-object v3, p1, Lnet/time4j/format/expert/ParsedValues;->values:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-virtual {p0, v2, v3}, Lnet/time4j/format/expert/ParsedValues;->put(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)V

    :cond_13
    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_14
    return-void
.end method

.method reset()V
    .locals 4

    .line 545
    iget-object v0, p0, Lnet/time4j/format/expert/ParsedValues;->keys:[Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/high16 v0, -0x80000000

    .line 546
    iput v0, p0, Lnet/time4j/format/expert/ParsedValues;->len:I

    .line 547
    iput v0, p0, Lnet/time4j/format/expert/ParsedValues;->mask:I

    .line 548
    iput v0, p0, Lnet/time4j/format/expert/ParsedValues;->threshold:I

    .line 549
    iput v0, p0, Lnet/time4j/format/expert/ParsedValues;->count:I

    move v2, v1

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    .line 551
    iget-object v3, p0, Lnet/time4j/format/expert/ParsedValues;->ints:[I

    aput v0, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 553
    iput-object v0, p0, Lnet/time4j/format/expert/ParsedValues;->map:Ljava/util/Map;

    goto :goto_1

    .line 555
    :cond_1
    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lnet/time4j/format/expert/ParsedValues;->keys:[Ljava/lang/Object;

    .line 558
    :goto_1
    iput v1, p0, Lnet/time4j/format/expert/ParsedValues;->count:I

    return-void
.end method

.method setNoAmbivalentCheck()V
    .locals 1

    const/4 v0, 0x1

    .line 286
    iput-boolean v0, p0, Lnet/time4j/format/expert/ParsedValues;->duplicateKeysAllowed:Z

    return-void
.end method

.method setPosition(I)V
    .locals 0

    .line 272
    iput p1, p0, Lnet/time4j/format/expert/ParsedValues;->position:I

    return-void
.end method

.method setResult(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
