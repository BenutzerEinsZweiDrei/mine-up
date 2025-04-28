.class public final enum Lnet/time4j/format/expert/PatternType;
.super Ljava/lang/Enum;
.source "PatternType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/time4j/format/expert/PatternType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/time4j/format/expert/PatternType;

.field public static final enum CLDR:Lnet/time4j/format/expert/PatternType;

.field public static final enum CLDR_24:Lnet/time4j/format/expert/PatternType;

.field public static final enum CLDR_DATE:Lnet/time4j/format/expert/PatternType;

.field public static final enum DYNAMIC:Lnet/time4j/format/expert/PatternType;

.field public static final enum SIMPLE_DATE_FORMAT:Lnet/time4j/format/expert/PatternType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 650
    new-instance v0, Lnet/time4j/format/expert/PatternType;

    const-string v1, "CLDR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/time4j/format/expert/PatternType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/time4j/format/expert/PatternType;->CLDR:Lnet/time4j/format/expert/PatternType;

    .line 881
    new-instance v1, Lnet/time4j/format/expert/PatternType;

    const-string v3, "SIMPLE_DATE_FORMAT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/time4j/format/expert/PatternType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/time4j/format/expert/PatternType;->SIMPLE_DATE_FORMAT:Lnet/time4j/format/expert/PatternType;

    .line 931
    new-instance v3, Lnet/time4j/format/expert/PatternType;

    const-string v5, "CLDR_24"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lnet/time4j/format/expert/PatternType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/time4j/format/expert/PatternType;->CLDR_24:Lnet/time4j/format/expert/PatternType;

    .line 1220
    new-instance v5, Lnet/time4j/format/expert/PatternType;

    const-string v7, "CLDR_DATE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lnet/time4j/format/expert/PatternType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lnet/time4j/format/expert/PatternType;->CLDR_DATE:Lnet/time4j/format/expert/PatternType;

    .line 1258
    new-instance v7, Lnet/time4j/format/expert/PatternType;

    const-string v9, "DYNAMIC"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lnet/time4j/format/expert/PatternType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lnet/time4j/format/expert/PatternType;->DYNAMIC:Lnet/time4j/format/expert/PatternType;

    const/4 v9, 0x5

    new-array v9, v9, [Lnet/time4j/format/expert/PatternType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 67
    sput-object v9, Lnet/time4j/format/expert/PatternType;->$VALUES:[Lnet/time4j/format/expert/PatternType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static addEnumElementAsInteger(Lnet/time4j/format/expert/ChronoFormatter$Builder;Lnet/time4j/engine/ChronoElement;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/format/expert/ChronoFormatter$Builder<",
            "*>;",
            "Lnet/time4j/engine/ChronoElement<",
            "+",
            "Ljava/lang/Enum;",
            ">;I)V"
        }
    .end annotation

    const/16 v0, 0x9

    .line 2140
    invoke-virtual {p0, p1, p2, v0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addNumerical(Lnet/time4j/engine/ChronoElement;II)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    return-void
.end method

.method private static addEnumElementAsText(Lnet/time4j/format/expert/ChronoFormatter$Builder;Lnet/time4j/engine/ChronoElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/format/expert/ChronoFormatter$Builder<",
            "*>;",
            "Lnet/time4j/engine/ChronoElement<",
            "+",
            "Ljava/lang/Enum;",
            ">;)V"
        }
    .end annotation

    .line 2129
    invoke-virtual {p0, p1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addText(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    return-void
.end method

.method private static addMonth(Lnet/time4j/format/expert/ChronoFormatter$Builder;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/format/expert/ChronoFormatter$Builder<",
            "*>;I)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v0, :cond_4

    if-eq p1, v1, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 1869
    sget-object p1, Lnet/time4j/format/Attributes;->TEXT_WIDTH:Lnet/time4j/engine/AttributeKey;

    sget-object v0, Lnet/time4j/format/TextWidth;->NARROW:Lnet/time4j/format/TextWidth;

    invoke-virtual {p0, p1, v0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->startSection(Lnet/time4j/engine/AttributeKey;Ljava/lang/Enum;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 1871
    sget-object p1, Lnet/time4j/PlainDate;->MONTH_OF_YEAR:Lnet/time4j/NavigableElement;

    invoke-virtual {p0, p1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addText(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 1872
    invoke-virtual {p0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->endSection()Lnet/time4j/format/expert/ChronoFormatter$Builder;

    goto :goto_0

    .line 1875
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Too many pattern letters for month: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1863
    :cond_1
    sget-object p1, Lnet/time4j/format/Attributes;->TEXT_WIDTH:Lnet/time4j/engine/AttributeKey;

    sget-object v0, Lnet/time4j/format/TextWidth;->WIDE:Lnet/time4j/format/TextWidth;

    invoke-virtual {p0, p1, v0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->startSection(Lnet/time4j/engine/AttributeKey;Ljava/lang/Enum;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 1865
    sget-object p1, Lnet/time4j/PlainDate;->MONTH_OF_YEAR:Lnet/time4j/NavigableElement;

    invoke-virtual {p0, p1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addText(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 1866
    invoke-virtual {p0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->endSection()Lnet/time4j/format/expert/ChronoFormatter$Builder;

    goto :goto_0

    .line 1857
    :cond_2
    sget-object p1, Lnet/time4j/format/Attributes;->TEXT_WIDTH:Lnet/time4j/engine/AttributeKey;

    sget-object v0, Lnet/time4j/format/TextWidth;->ABBREVIATED:Lnet/time4j/format/TextWidth;

    invoke-virtual {p0, p1, v0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->startSection(Lnet/time4j/engine/AttributeKey;Ljava/lang/Enum;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 1859
    sget-object p1, Lnet/time4j/PlainDate;->MONTH_OF_YEAR:Lnet/time4j/NavigableElement;

    invoke-virtual {p0, p1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addText(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 1860
    invoke-virtual {p0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->endSection()Lnet/time4j/format/expert/ChronoFormatter$Builder;

    goto :goto_0

    .line 1854
    :cond_3
    sget-object p1, Lnet/time4j/PlainDate;->MONTH_AS_NUMBER:Lnet/time4j/ProportionalElement;

    invoke-virtual {p0, p1, v1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addFixedInteger(Lnet/time4j/engine/ChronoElement;I)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    goto :goto_0

    .line 1851
    :cond_4
    sget-object p1, Lnet/time4j/PlainDate;->MONTH_AS_NUMBER:Lnet/time4j/ProportionalElement;

    invoke-virtual {p0, p1, v0, v1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addInteger(Lnet/time4j/engine/ChronoElement;II)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    :goto_0
    return-void
.end method

.method private static addMonth(Lnet/time4j/format/expert/ChronoFormatter$Builder;ILnet/time4j/format/TextElement;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Enum<",
            "TV;>;>(",
            "Lnet/time4j/format/expert/ChronoFormatter$Builder<",
            "*>;I",
            "Lnet/time4j/format/TextElement<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v0, :cond_3

    if-eq p1, v1, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 2339
    sget-object p1, Lnet/time4j/format/Attributes;->TEXT_WIDTH:Lnet/time4j/engine/AttributeKey;

    sget-object v0, Lnet/time4j/format/TextWidth;->NARROW:Lnet/time4j/format/TextWidth;

    invoke-virtual {p0, p1, v0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->startSection(Lnet/time4j/engine/AttributeKey;Ljava/lang/Enum;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 2341
    invoke-virtual {p0, p2}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addText(Lnet/time4j/format/TextElement;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 2342
    invoke-virtual {p0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->endSection()Lnet/time4j/format/expert/ChronoFormatter$Builder;

    goto :goto_0

    .line 2345
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Too many pattern letters for month: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2333
    :cond_1
    sget-object p1, Lnet/time4j/format/Attributes;->TEXT_WIDTH:Lnet/time4j/engine/AttributeKey;

    sget-object v0, Lnet/time4j/format/TextWidth;->WIDE:Lnet/time4j/format/TextWidth;

    invoke-virtual {p0, p1, v0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->startSection(Lnet/time4j/engine/AttributeKey;Ljava/lang/Enum;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 2335
    invoke-virtual {p0, p2}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addText(Lnet/time4j/format/TextElement;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 2336
    invoke-virtual {p0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->endSection()Lnet/time4j/format/expert/ChronoFormatter$Builder;

    goto :goto_0

    .line 2327
    :cond_2
    sget-object p1, Lnet/time4j/format/Attributes;->TEXT_WIDTH:Lnet/time4j/engine/AttributeKey;

    sget-object v0, Lnet/time4j/format/TextWidth;->ABBREVIATED:Lnet/time4j/format/TextWidth;

    invoke-virtual {p0, p1, v0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->startSection(Lnet/time4j/engine/AttributeKey;Ljava/lang/Enum;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 2329
    invoke-virtual {p0, p2}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addText(Lnet/time4j/format/TextElement;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 2330
    invoke-virtual {p0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->endSection()Lnet/time4j/format/expert/ChronoFormatter$Builder;

    goto :goto_0

    .line 2313
    :cond_3
    const-class v2, Ljava/lang/Enum;

    invoke-interface {p2}, Lnet/time4j/format/TextElement;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2314
    invoke-static {p2}, Lnet/time4j/format/expert/PatternType;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/time4j/engine/ChronoElement;

    if-ne p1, v0, :cond_4

    .line 2316
    invoke-virtual {p0, p2, v0, v1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addNumerical(Lnet/time4j/engine/ChronoElement;II)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    goto :goto_0

    :cond_4
    if-ne p1, v1, :cond_6

    .line 2318
    invoke-virtual {p0, p2, v1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addFixedNumerical(Lnet/time4j/engine/ChronoElement;I)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    goto :goto_0

    .line 2321
    :cond_5
    sget-object v0, Lnet/time4j/format/internal/DualFormatElement;->COUNT_OF_PATTERN_SYMBOLS:Lnet/time4j/engine/AttributeKey;

    invoke-virtual {p0, v0, p1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->startSection(Lnet/time4j/engine/AttributeKey;I)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 2322
    invoke-virtual {p0, p2}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addText(Lnet/time4j/format/TextElement;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 2323
    invoke-virtual {p0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->endSection()Lnet/time4j/format/expert/ChronoFormatter$Builder;

    :cond_6
    :goto_0
    return-void
.end method

.method private static addNumber(Lnet/time4j/engine/ChronoElement;CLnet/time4j/format/expert/ChronoFormatter$Builder;IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Integer;",
            ">;C",
            "Lnet/time4j/format/expert/ChronoFormatter$Builder<",
            "*>;IZ)V"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    .line 1834
    invoke-virtual {p2, p0, v1, v0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addInteger(Lnet/time4j/engine/ChronoElement;II)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    goto :goto_1

    :cond_0
    if-eq p3, v0, :cond_2

    if-eqz p4, :cond_1

    goto :goto_0

    .line 1838
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Too many pattern letters ("

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "): "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1836
    :cond_2
    :goto_0
    invoke-virtual {p2, p0, p3}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addFixedInteger(Lnet/time4j/engine/ChronoElement;I)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    :goto_1
    return-void
.end method

.method private static addOffset(Lnet/time4j/format/expert/ChronoFormatter$Builder;CIZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/format/expert/ChronoFormatter$Builder<",
            "*>;CIZ)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "Z"

    if-eq p2, v1, :cond_8

    const/4 v3, 0x2

    const-string v4, "+0000"

    if-eq p2, v3, :cond_6

    const/4 v3, 0x3

    const-string v5, "+00:00"

    if-eq p2, v3, :cond_4

    const/4 v3, 0x4

    if-eq p2, v3, :cond_2

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    .line 1813
    sget-object p1, Lnet/time4j/format/DisplayMode;->LONG:Lnet/time4j/format/DisplayMode;

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v5

    .line 1816
    :goto_0
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 1813
    invoke-virtual {p0, p1, v1, p2}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addTimezoneOffset(Lnet/time4j/format/DisplayMode;ZLjava/util/List;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    goto :goto_5

    .line 1819
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Too many pattern letters ("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "): "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1807
    :cond_2
    sget-object p1, Lnet/time4j/format/DisplayMode;->LONG:Lnet/time4j/format/DisplayMode;

    if-eqz p3, :cond_3

    goto :goto_1

    :cond_3
    move-object v2, v4

    .line 1810
    :goto_1
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 1807
    invoke-virtual {p0, p1, v0, p2}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addTimezoneOffset(Lnet/time4j/format/DisplayMode;ZLjava/util/List;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    goto :goto_5

    .line 1801
    :cond_4
    sget-object p1, Lnet/time4j/format/DisplayMode;->MEDIUM:Lnet/time4j/format/DisplayMode;

    if-eqz p3, :cond_5

    goto :goto_2

    :cond_5
    move-object v2, v5

    .line 1804
    :goto_2
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 1801
    invoke-virtual {p0, p1, v1, p2}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addTimezoneOffset(Lnet/time4j/format/DisplayMode;ZLjava/util/List;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    goto :goto_5

    .line 1795
    :cond_6
    sget-object p1, Lnet/time4j/format/DisplayMode;->MEDIUM:Lnet/time4j/format/DisplayMode;

    if-eqz p3, :cond_7

    goto :goto_3

    :cond_7
    move-object v2, v4

    .line 1798
    :goto_3
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 1795
    invoke-virtual {p0, p1, v0, p2}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addTimezoneOffset(Lnet/time4j/format/DisplayMode;ZLjava/util/List;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    goto :goto_5

    .line 1789
    :cond_8
    sget-object p1, Lnet/time4j/format/DisplayMode;->SHORT:Lnet/time4j/format/DisplayMode;

    if-eqz p3, :cond_9

    goto :goto_4

    :cond_9
    const-string v2, "+00"

    .line 1792
    :goto_4
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 1789
    invoke-virtual {p0, p1, v0, p2}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addTimezoneOffset(Lnet/time4j/format/DisplayMode;ZLjava/util/List;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    :goto_5
    return-void
.end method

.method private static addQuarterOfYear(Lnet/time4j/format/expert/ChronoFormatter$Builder;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/format/expert/ChronoFormatter$Builder<",
            "*>;I)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 1904
    sget-object p1, Lnet/time4j/format/Attributes;->TEXT_WIDTH:Lnet/time4j/engine/AttributeKey;

    sget-object v0, Lnet/time4j/format/TextWidth;->NARROW:Lnet/time4j/format/TextWidth;

    invoke-virtual {p0, p1, v0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->startSection(Lnet/time4j/engine/AttributeKey;Ljava/lang/Enum;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 1906
    sget-object p1, Lnet/time4j/PlainDate;->QUARTER_OF_YEAR:Lnet/time4j/NavigableElement;

    invoke-virtual {p0, p1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addText(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 1907
    invoke-virtual {p0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->endSection()Lnet/time4j/format/expert/ChronoFormatter$Builder;

    goto :goto_0

    .line 1910
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Too many pattern letters for quarter-of-year: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1898
    :cond_1
    sget-object p1, Lnet/time4j/format/Attributes;->TEXT_WIDTH:Lnet/time4j/engine/AttributeKey;

    sget-object v0, Lnet/time4j/format/TextWidth;->WIDE:Lnet/time4j/format/TextWidth;

    invoke-virtual {p0, p1, v0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->startSection(Lnet/time4j/engine/AttributeKey;Ljava/lang/Enum;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 1900
    sget-object p1, Lnet/time4j/PlainDate;->QUARTER_OF_YEAR:Lnet/time4j/NavigableElement;

    invoke-virtual {p0, p1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addText(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 1901
    invoke-virtual {p0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->endSection()Lnet/time4j/format/expert/ChronoFormatter$Builder;

    goto :goto_0

    .line 1892
    :cond_2
    sget-object p1, Lnet/time4j/format/Attributes;->TEXT_WIDTH:Lnet/time4j/engine/AttributeKey;

    sget-object v0, Lnet/time4j/format/TextWidth;->ABBREVIATED:Lnet/time4j/format/TextWidth;

    invoke-virtual {p0, p1, v0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->startSection(Lnet/time4j/engine/AttributeKey;Ljava/lang/Enum;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 1894
    sget-object p1, Lnet/time4j/PlainDate;->QUARTER_OF_YEAR:Lnet/time4j/NavigableElement;

    invoke-virtual {p0, p1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addText(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 1895
    invoke-virtual {p0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->endSection()Lnet/time4j/format/expert/ChronoFormatter$Builder;

    goto :goto_0

    .line 1889
    :cond_3
    sget-object v0, Lnet/time4j/PlainDate;->QUARTER_OF_YEAR:Lnet/time4j/NavigableElement;

    invoke-virtual {p0, v0, p1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addFixedNumerical(Lnet/time4j/engine/ChronoElement;I)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    :goto_0
    return-void
.end method

.method private static capitalized(I)I
    .locals 2

    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v1, 0x5a

    if-gt p0, v1, :cond_0

    return p0

    :cond_0
    add-int/2addr p0, v0

    add-int/lit8 p0, p0, -0x61

    return p0
.end method

.method private static cast(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    return-object p0
.end method

.method private cldr(Lnet/time4j/format/expert/ChronoFormatter$Builder;Ljava/util/Locale;CI)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/format/expert/ChronoFormatter$Builder<",
            "*>;",
            "Ljava/util/Locale;",
            "CI)",
            "Ljava/util/Map<",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;>;"
        }
    .end annotation

    .line 1386
    invoke-static {p1}, Lnet/time4j/format/expert/PatternType;->getEffectiveChronology(Lnet/time4j/format/expert/ChronoFormatter$Builder;)Lnet/time4j/engine/Chronology;

    move-result-object v2

    .line 1388
    invoke-static {p3}, Lnet/time4j/format/expert/PatternType;->isGeneralSymbol(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v2}, Lnet/time4j/format/expert/PatternType;->isISO(Lnet/time4j/engine/Chronology;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move-object v5, p2

    .line 1389
    invoke-direct/range {v0 .. v5}, Lnet/time4j/format/expert/PatternType;->general(Lnet/time4j/format/expert/ChronoFormatter$Builder;Lnet/time4j/engine/Chronology;CILjava/util/Locale;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 v0, 0x68

    if-ne p3, v0, :cond_2

    .line 1390
    invoke-static {v2}, Lnet/time4j/format/expert/PatternType;->getCalendarType(Lnet/time4j/engine/Chronology;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ethiopic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1391
    invoke-static {v2}, Lnet/time4j/format/expert/PatternType;->findEthiopianHour(Lnet/time4j/engine/Chronology;)Lnet/time4j/engine/ChronoElement;

    move-result-object p2

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    .line 1395
    invoke-static {p2, p3, p1, p4, v0}, Lnet/time4j/format/expert/PatternType;->addNumber(Lnet/time4j/engine/ChronoElement;CLnet/time4j/format/expert/ChronoFormatter$Builder;IZ)V

    .line 1396
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 1393
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Ethiopian time not available."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 1398
    invoke-direct/range {v0 .. v6}, Lnet/time4j/format/expert/PatternType;->cldrISO(Lnet/time4j/format/expert/ChronoFormatter$Builder;Lnet/time4j/engine/Chronology;Ljava/util/Locale;CIZ)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method private cldr24(Lnet/time4j/format/expert/ChronoFormatter$Builder;Ljava/util/Locale;CI)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/format/expert/ChronoFormatter$Builder<",
            "*>;",
            "Ljava/util/Locale;",
            "CI)",
            "Ljava/util/Map<",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;>;"
        }
    .end annotation

    const/16 v0, 0x48

    if-ne p3, v0, :cond_0

    .line 1772
    sget-object p2, Lnet/time4j/PlainTime;->HOUR_FROM_0_TO_24:Lnet/time4j/ProportionalElement;

    const/4 v0, 0x0

    invoke-static {p2, p3, p1, p4, v0}, Lnet/time4j/format/expert/PatternType;->addNumber(Lnet/time4j/engine/ChronoElement;CLnet/time4j/format/expert/ChronoFormatter$Builder;IZ)V

    .line 1773
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 1776
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/time4j/format/expert/PatternType;->cldr(Lnet/time4j/format/expert/ChronoFormatter$Builder;Ljava/util/Locale;CI)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method private cldrISO(Lnet/time4j/format/expert/ChronoFormatter$Builder;Lnet/time4j/engine/Chronology;Ljava/util/Locale;CIZ)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/format/expert/ChronoFormatter$Builder<",
            "*>;",
            "Lnet/time4j/engine/Chronology<",
            "*>;",
            "Ljava/util/Locale;",
            "CIZ)",
            "Ljava/util/Map<",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;>;"
        }
    .end annotation

    move-object v0, p1

    move v1, p4

    move v6, p5

    move/from16 v7, p6

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v8, 0x4

    const/4 v9, 0x1

    packed-switch v1, :pswitch_data_0

    .line 1688
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported pattern symbol: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    if-ge v6, v8, :cond_0

    .line 1630
    :try_start_0
    invoke-virtual {p1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addShortTimezoneName()Lnet/time4j/format/expert/ChronoFormatter$Builder;

    goto/16 :goto_c

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    if-eq v6, v8, :cond_2

    if-eqz v7, :cond_1

    goto :goto_0

    .line 1634
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many pattern letters (z): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1632
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addLongTimezoneName()Lnet/time4j/format/expert/ChronoFormatter$Builder;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_c

    .line 1638
    :goto_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_2
    if-ne v6, v5, :cond_3

    .line 1441
    sget-object v1, Lnet/time4j/PlainDate;->YEAR:Lnet/time4j/AdjustableElement;

    invoke-virtual {p1, v1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addTwoDigitYear(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    goto/16 :goto_c

    .line 1443
    :cond_3
    sget-object v1, Lnet/time4j/PlainDate;->YEAR:Lnet/time4j/AdjustableElement;

    invoke-virtual {p1, v1, p5, v3}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addYear(Lnet/time4j/engine/ChronoElement;IZ)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    goto/16 :goto_c

    .line 1685
    :pswitch_3
    invoke-static {p1, p4, p5, v3}, Lnet/time4j/format/expert/PatternType;->addOffset(Lnet/time4j/format/expert/ChronoFormatter$Builder;CIZ)V

    goto/16 :goto_c

    :pswitch_4
    if-gt v6, v5, :cond_6

    .line 1481
    invoke-static {p3}, Lnet/time4j/Weekmodel;->of(Ljava/util/Locale;)Lnet/time4j/Weekmodel;

    move-result-object v2

    invoke-virtual {v2}, Lnet/time4j/Weekmodel;->weekOfYear()Lnet/time4j/AdjustableElement;

    move-result-object v2

    .line 1482
    invoke-virtual {p2}, Lnet/time4j/engine/Chronology;->getRegisteredElements()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/time4j/engine/ChronoElement;

    .line 1484
    invoke-interface {v4}, Lnet/time4j/engine/ChronoElement;->getSymbol()C

    move-result v5

    if-ne v5, v1, :cond_4

    sget-object v5, Lnet/time4j/Weekmodel;->ISO:Lnet/time4j/Weekmodel;

    .line 1485
    invoke-virtual {v5}, Lnet/time4j/Weekmodel;->weekOfYear()Lnet/time4j/AdjustableElement;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1487
    sget-object v2, Lnet/time4j/Weekmodel;->ISO:Lnet/time4j/Weekmodel;

    invoke-virtual {v2}, Lnet/time4j/Weekmodel;->weekOfYear()Lnet/time4j/AdjustableElement;

    move-result-object v2

    .line 1491
    :cond_5
    invoke-static {v2, p4, p1, p5, v7}, Lnet/time4j/format/expert/PatternType;->addNumber(Lnet/time4j/engine/ChronoElement;CLnet/time4j/format/expert/ChronoFormatter$Builder;IZ)V

    goto/16 :goto_c

    .line 1493
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many pattern letters (w): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1454
    :pswitch_5
    sget-object v1, Lnet/time4j/PlainDate;->YEAR:Lnet/time4j/AdjustableElement;

    invoke-virtual {p1, v1, p5, v9}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addYear(Lnet/time4j/engine/ChronoElement;IZ)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    goto/16 :goto_c

    .line 1618
    :pswitch_6
    sget-object v2, Lnet/time4j/PlainTime;->SECOND_OF_MINUTE:Lnet/time4j/ProportionalElement;

    invoke-static {v2, p4, p1, p5, v7}, Lnet/time4j/format/expert/PatternType;->addNumber(Lnet/time4j/engine/ChronoElement;CLnet/time4j/format/expert/ChronoFormatter$Builder;IZ)V

    goto/16 :goto_c

    .line 1457
    :pswitch_7
    sget-object v1, Lnet/time4j/format/Attributes;->NUMBER_SYSTEM:Lnet/time4j/engine/AttributeKey;

    sget-object v2, Lnet/time4j/format/NumberSystem;->ARABIC:Lnet/time4j/format/NumberSystem;

    invoke-virtual {p1, v1, v2}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->startSection(Lnet/time4j/engine/AttributeKey;Ljava/lang/Enum;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 1458
    sget-object v1, Lnet/time4j/format/Attributes;->ZERO_DIGIT:Lnet/time4j/engine/AttributeKey;

    const/16 v2, 0x30

    invoke-virtual {p1, v1, v2}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->startSection(Lnet/time4j/engine/AttributeKey;C)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 1459
    sget-object v1, Lnet/time4j/PlainDate;->YEAR:Lnet/time4j/AdjustableElement;

    invoke-virtual {p1, v1, p5, v9}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addYear(Lnet/time4j/engine/ChronoElement;IZ)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 1460
    invoke-virtual {p1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->endSection()Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 1461
    invoke-virtual {p1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->endSection()Lnet/time4j/format/expert/ChronoFormatter$Builder;

    goto/16 :goto_c

    .line 1467
    :pswitch_8
    sget-object v1, Lnet/time4j/format/Attributes;->OUTPUT_CONTEXT:Lnet/time4j/engine/AttributeKey;

    sget-object v2, Lnet/time4j/format/OutputContext;->STANDALONE:Lnet/time4j/format/OutputContext;

    invoke-virtual {p1, v1, v2}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->startSection(Lnet/time4j/engine/AttributeKey;Ljava/lang/Enum;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 1468
    invoke-static {p1, p5}, Lnet/time4j/format/expert/PatternType;->addQuarterOfYear(Lnet/time4j/format/expert/ChronoFormatter$Builder;I)V

    .line 1469
    invoke-virtual {p1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->endSection()Lnet/time4j/format/expert/ChronoFormatter$Builder;

    goto/16 :goto_c

    .line 1615
    :pswitch_9
    sget-object v2, Lnet/time4j/PlainTime;->MINUTE_OF_HOUR:Lnet/time4j/ProportionalElement;

    invoke-static {v2, p4, p1, p5, v7}, Lnet/time4j/format/expert/PatternType;->addNumber(Lnet/time4j/engine/ChronoElement;CLnet/time4j/format/expert/ChronoFormatter$Builder;IZ)V

    goto/16 :goto_c

    .line 1612
    :pswitch_a
    sget-object v2, Lnet/time4j/PlainTime;->CLOCK_HOUR_OF_DAY:Lnet/time4j/AdjustableElement;

    invoke-static {v2, p4, p1, p5, v7}, Lnet/time4j/format/expert/PatternType;->addNumber(Lnet/time4j/engine/ChronoElement;CLnet/time4j/format/expert/ChronoFormatter$Builder;IZ)V

    goto/16 :goto_c

    .line 1603
    :pswitch_b
    sget-object v2, Lnet/time4j/PlainTime;->CLOCK_HOUR_OF_AMPM:Lnet/time4j/AdjustableElement;

    invoke-static {v2, p4, p1, p5, v7}, Lnet/time4j/format/expert/PatternType;->addNumber(Lnet/time4j/engine/ChronoElement;CLnet/time4j/format/expert/ChronoFormatter$Builder;IZ)V

    goto/16 :goto_c

    .line 1527
    :pswitch_c
    sget-object v1, Lnet/time4j/engine/EpochDays;->MODIFIED_JULIAN_DATE:Lnet/time4j/engine/EpochDays;

    const/16 v2, 0x12

    sget-object v3, Lnet/time4j/format/expert/SignPolicy;->SHOW_WHEN_NEGATIVE:Lnet/time4j/format/expert/SignPolicy;

    invoke-virtual {p1, v1, p5, v2, v3}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addLongNumber(Lnet/time4j/engine/ChronoElement;IILnet/time4j/format/expert/SignPolicy;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    goto/16 :goto_c

    :pswitch_d
    if-gt v6, v5, :cond_7

    .line 1553
    invoke-static {p3}, Lnet/time4j/Weekmodel;->of(Ljava/util/Locale;)Lnet/time4j/Weekmodel;

    move-result-object v1

    invoke-virtual {v1}, Lnet/time4j/Weekmodel;->localDayOfWeek()Lnet/time4j/NavigableElement;

    move-result-object v1

    .line 1552
    invoke-virtual {p1, v1, p5}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addFixedNumerical(Lnet/time4j/engine/ChronoElement;I)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    goto/16 :goto_c

    :cond_7
    const/16 v5, 0x45

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v6, p5

    move/from16 v7, p6

    .line 1555
    invoke-direct/range {v1 .. v7}, Lnet/time4j/format/expert/PatternType;->cldrISO(Lnet/time4j/format/expert/ChronoFormatter$Builder;Lnet/time4j/engine/Chronology;Ljava/util/Locale;CIZ)Ljava/util/Map;

    goto/16 :goto_c

    .line 1506
    :pswitch_e
    sget-object v2, Lnet/time4j/PlainDate;->DAY_OF_MONTH:Lnet/time4j/ProportionalElement;

    invoke-static {v2, p4, p1, p5, v7}, Lnet/time4j/format/expert/PatternType;->addNumber(Lnet/time4j/engine/ChronoElement;CLnet/time4j/format/expert/ChronoFormatter$Builder;IZ)V

    goto/16 :goto_c

    :pswitch_f
    if-eq v6, v5, :cond_9

    .line 1563
    sget-object v1, Lnet/time4j/format/Attributes;->OUTPUT_CONTEXT:Lnet/time4j/engine/AttributeKey;

    sget-object v2, Lnet/time4j/format/OutputContext;->STANDALONE:Lnet/time4j/format/OutputContext;

    invoke-virtual {p1, v1, v2}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->startSection(Lnet/time4j/engine/AttributeKey;Ljava/lang/Enum;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    if-ne v6, v9, :cond_8

    .line 1567
    invoke-static {p3}, Lnet/time4j/Weekmodel;->of(Ljava/util/Locale;)Lnet/time4j/Weekmodel;

    move-result-object v1

    invoke-virtual {v1}, Lnet/time4j/Weekmodel;->localDayOfWeek()Lnet/time4j/NavigableElement;

    move-result-object v1

    .line 1566
    invoke-virtual {p1, v1, v9}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addFixedNumerical(Lnet/time4j/engine/ChronoElement;I)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    goto :goto_2

    :cond_8
    const/16 v5, 0x45

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v6, p5

    move/from16 v7, p6

    .line 1569
    invoke-direct/range {v1 .. v7}, Lnet/time4j/format/expert/PatternType;->cldrISO(Lnet/time4j/format/expert/ChronoFormatter$Builder;Lnet/time4j/engine/Chronology;Ljava/util/Locale;CIZ)Ljava/util/Map;

    .line 1571
    :goto_2
    invoke-virtual {p1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->endSection()Lnet/time4j/format/expert/ChronoFormatter$Builder;

    goto/16 :goto_c

    .line 1560
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid pattern count of 2 for symbol \'c\'."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1591
    :pswitch_10
    invoke-static {p5}, Lnet/time4j/format/expert/PatternType;->getPeriodWidth(I)Lnet/time4j/format/TextWidth;

    move-result-object v1

    .line 1592
    sget-object v2, Lnet/time4j/format/Attributes;->TEXT_WIDTH:Lnet/time4j/engine/AttributeKey;

    invoke-virtual {p1, v2, v1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->startSection(Lnet/time4j/engine/AttributeKey;Ljava/lang/Enum;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 1593
    invoke-virtual {p1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addDayPeriodFixed()Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 1594
    invoke-virtual {p1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->endSection()Lnet/time4j/format/expert/ChronoFormatter$Builder;

    goto/16 :goto_c

    :pswitch_11
    if-eqz v7, :cond_a

    .line 1574
    sget-object v1, Lnet/time4j/format/TextWidth;->ABBREVIATED:Lnet/time4j/format/TextWidth;

    goto :goto_3

    :cond_a
    invoke-static {p5}, Lnet/time4j/format/expert/PatternType;->getPeriodWidth(I)Lnet/time4j/format/TextWidth;

    move-result-object v1

    .line 1575
    :goto_3
    sget-object v2, Lnet/time4j/format/Attributes;->TEXT_WIDTH:Lnet/time4j/engine/AttributeKey;

    invoke-virtual {p1, v2, v1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->startSection(Lnet/time4j/engine/AttributeKey;Ljava/lang/Enum;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 1576
    sget-object v1, Lnet/time4j/PlainTime;->AM_PM_OF_DAY:Lnet/time4j/ZonalElement;

    invoke-virtual {p1, v1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addText(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 1577
    invoke-virtual {p1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->endSection()Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 1578
    invoke-static {p2}, Lnet/time4j/format/expert/PatternType;->getCalendarType(Lnet/time4j/engine/Chronology;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ethiopic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1580
    invoke-static {p2}, Lnet/time4j/format/expert/PatternType;->findEthiopianHour(Lnet/time4j/engine/Chronology;)Lnet/time4j/engine/ChronoElement;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 1584
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1586
    sget-object v2, Lnet/time4j/PlainTime;->CLOCK_HOUR_OF_AMPM:Lnet/time4j/AdjustableElement;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    .line 1582
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ethiopian time not available."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_12
    if-ge v6, v8, :cond_c

    .line 1643
    sget-object v1, Lnet/time4j/format/DisplayMode;->LONG:Lnet/time4j/format/DisplayMode;

    const-string v2, "+0000"

    .line 1646
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 1643
    invoke-virtual {p1, v1, v3, v2}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addTimezoneOffset(Lnet/time4j/format/DisplayMode;ZLjava/util/List;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    goto/16 :goto_c

    :cond_c
    if-ne v6, v8, :cond_d

    .line 1648
    invoke-virtual {p1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addLongLocalizedOffset()Lnet/time4j/format/expert/ChronoFormatter$Builder;

    goto/16 :goto_c

    :cond_d
    if-ne v6, v2, :cond_e

    .line 1650
    sget-object v1, Lnet/time4j/format/DisplayMode;->LONG:Lnet/time4j/format/DisplayMode;

    const-string v2, "Z"

    .line 1653
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 1650
    invoke-virtual {p1, v1, v9, v2}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addTimezoneOffset(Lnet/time4j/format/DisplayMode;ZLjava/util/List;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    goto/16 :goto_c

    .line 1655
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many pattern letters (Z): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_13
    if-ne v6, v5, :cond_f

    .line 1448
    sget-object v1, Lnet/time4j/PlainDate;->YEAR_OF_WEEKDATE:Lnet/time4j/AdjustableElement;

    invoke-virtual {p1, v1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addTwoDigitYear(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    goto/16 :goto_c

    .line 1450
    :cond_f
    sget-object v1, Lnet/time4j/PlainDate;->YEAR_OF_WEEKDATE:Lnet/time4j/AdjustableElement;

    invoke-virtual {p1, v1, p5, v3}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addYear(Lnet/time4j/engine/ChronoElement;IZ)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    goto/16 :goto_c

    .line 1682
    :pswitch_14
    invoke-static {p1, p4, p5, v9}, Lnet/time4j/format/expert/PatternType;->addOffset(Lnet/time4j/format/expert/ChronoFormatter$Builder;CIZ)V

    goto/16 :goto_c

    :pswitch_15
    if-ne v6, v9, :cond_10

    .line 1499
    invoke-static {p3}, Lnet/time4j/Weekmodel;->of(Ljava/util/Locale;)Lnet/time4j/Weekmodel;

    move-result-object v1

    invoke-virtual {v1}, Lnet/time4j/Weekmodel;->weekOfMonth()Lnet/time4j/AdjustableElement;

    move-result-object v1

    invoke-virtual {p1, v1, v9}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addFixedInteger(Lnet/time4j/engine/ChronoElement;I)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    goto/16 :goto_c

    .line 1501
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many pattern letters (W): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_16
    if-ne v6, v5, :cond_11

    .line 1672
    :try_start_1
    invoke-virtual {p1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addTimezoneID()Lnet/time4j/format/expert/ChronoFormatter$Builder;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_c

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 1674
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1677
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Count of pattern letters is not 2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1621
    :pswitch_17
    sget-object v1, Lnet/time4j/PlainTime;->NANO_OF_SECOND:Lnet/time4j/ProportionalElement;

    invoke-virtual {p1, v1, p5, p5, v3}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addFraction(Lnet/time4j/engine/ChronoElement;IIZ)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    goto/16 :goto_c

    .line 1464
    :pswitch_18
    invoke-static {p1, p5}, Lnet/time4j/format/expert/PatternType;->addQuarterOfYear(Lnet/time4j/format/expert/ChronoFormatter$Builder;I)V

    goto/16 :goto_c

    :pswitch_19
    if-ne v6, v9, :cond_12

    .line 1661
    invoke-virtual {p1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addShortLocalizedOffset()Lnet/time4j/format/expert/ChronoFormatter$Builder;

    goto/16 :goto_c

    :cond_12
    if-ne v6, v8, :cond_13

    .line 1663
    invoke-virtual {p1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addLongLocalizedOffset()Lnet/time4j/format/expert/ChronoFormatter$Builder;

    goto/16 :goto_c

    .line 1665
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Count of pattern letters is not 1 or 4: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1a
    if-eqz v7, :cond_14

    goto :goto_4

    :cond_14
    move v8, v6

    .line 1472
    :goto_4
    invoke-static {p5, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p1, v1}, Lnet/time4j/format/expert/PatternType;->addMonth(Lnet/time4j/format/expert/ChronoFormatter$Builder;I)V

    goto/16 :goto_c

    .line 1475
    :pswitch_1b
    sget-object v1, Lnet/time4j/format/Attributes;->OUTPUT_CONTEXT:Lnet/time4j/engine/AttributeKey;

    sget-object v2, Lnet/time4j/format/OutputContext;->STANDALONE:Lnet/time4j/format/OutputContext;

    invoke-virtual {p1, v1, v2}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->startSection(Lnet/time4j/engine/AttributeKey;Ljava/lang/Enum;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    if-eqz v7, :cond_15

    goto :goto_5

    :cond_15
    move v8, v6

    .line 1476
    :goto_5
    invoke-static {p5, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p1, v1}, Lnet/time4j/format/expert/PatternType;->addMonth(Lnet/time4j/format/expert/ChronoFormatter$Builder;I)V

    .line 1477
    invoke-virtual {p1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->endSection()Lnet/time4j/format/expert/ChronoFormatter$Builder;

    goto/16 :goto_c

    .line 1609
    :pswitch_1c
    sget-object v2, Lnet/time4j/PlainTime;->DIGITAL_HOUR_OF_AMPM:Lnet/time4j/ProportionalElement;

    invoke-static {v2, p4, p1, p5, v7}, Lnet/time4j/format/expert/PatternType;->addNumber(Lnet/time4j/engine/ChronoElement;CLnet/time4j/format/expert/ChronoFormatter$Builder;IZ)V

    goto/16 :goto_c

    .line 1606
    :pswitch_1d
    sget-object v2, Lnet/time4j/PlainTime;->DIGITAL_HOUR_OF_DAY:Lnet/time4j/ProportionalElement;

    invoke-static {v2, p4, p1, p5, v7}, Lnet/time4j/format/expert/PatternType;->addNumber(Lnet/time4j/engine/ChronoElement;CLnet/time4j/format/expert/ChronoFormatter$Builder;IZ)V

    goto/16 :goto_c

    :pswitch_1e
    if-gt v6, v4, :cond_16

    .line 1417
    sget-object v1, Lnet/time4j/format/TextWidth;->ABBREVIATED:Lnet/time4j/format/TextWidth;

    goto :goto_7

    :cond_16
    if-eq v6, v8, :cond_19

    if-eqz v7, :cond_17

    goto :goto_6

    :cond_17
    if-ne v6, v2, :cond_18

    .line 1421
    sget-object v1, Lnet/time4j/format/TextWidth;->NARROW:Lnet/time4j/format/TextWidth;

    goto :goto_7

    .line 1423
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many pattern letters (G): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1419
    :cond_19
    :goto_6
    sget-object v1, Lnet/time4j/format/TextWidth;->WIDE:Lnet/time4j/format/TextWidth;

    .line 1426
    :goto_7
    sget-object v2, Lnet/time4j/format/Attributes;->TEXT_WIDTH:Lnet/time4j/engine/AttributeKey;

    invoke-virtual {p1, v2, v1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->startSection(Lnet/time4j/engine/AttributeKey;Ljava/lang/Enum;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 1427
    invoke-static {p3}, Lnet/time4j/history/ChronoHistory;->of(Ljava/util/Locale;)Lnet/time4j/history/ChronoHistory;

    move-result-object v1

    .line 1428
    const-class v2, Lnet/time4j/format/TextElement;

    invoke-virtual {v1}, Lnet/time4j/history/ChronoHistory;->era()Lnet/time4j/engine/ChronoElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/time4j/format/TextElement;

    .line 1429
    invoke-virtual {p1, v2}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addText(Lnet/time4j/format/TextElement;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 1430
    invoke-virtual {p1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->endSection()Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 1431
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1433
    sget-object v2, Lnet/time4j/PlainDate;->YEAR:Lnet/time4j/AdjustableElement;

    invoke-virtual {v1}, Lnet/time4j/history/ChronoHistory;->yearOfEra()Lnet/time4j/format/TextElement;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1434
    sget-object v2, Lnet/time4j/PlainDate;->MONTH_OF_YEAR:Lnet/time4j/NavigableElement;

    invoke-virtual {v1}, Lnet/time4j/history/ChronoHistory;->month()Lnet/time4j/format/TextElement;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1435
    sget-object v2, Lnet/time4j/PlainDate;->MONTH_AS_NUMBER:Lnet/time4j/ProportionalElement;

    invoke-virtual {v1}, Lnet/time4j/history/ChronoHistory;->month()Lnet/time4j/format/TextElement;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1436
    sget-object v2, Lnet/time4j/PlainDate;->DAY_OF_MONTH:Lnet/time4j/ProportionalElement;

    invoke-virtual {v1}, Lnet/time4j/history/ChronoHistory;->dayOfMonth()Lnet/time4j/engine/ChronoElement;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1437
    sget-object v2, Lnet/time4j/PlainDate;->DAY_OF_YEAR:Lnet/time4j/ProportionalElement;

    invoke-virtual {v1}, Lnet/time4j/history/ChronoHistory;->dayOfYear()Lnet/time4j/engine/ChronoElement;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :pswitch_1f
    if-eq v6, v9, :cond_1b

    if-eqz v7, :cond_1a

    goto :goto_8

    .line 1522
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many pattern letters (F): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1520
    :cond_1b
    :goto_8
    sget-object v1, Lnet/time4j/PlainDate;->WEEKDAY_IN_MONTH:Lnet/time4j/OrdinalWeekdayElement;

    invoke-virtual {p1, v1, p5}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addFixedInteger(Lnet/time4j/engine/ChronoElement;I)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    goto/16 :goto_c

    :pswitch_20
    if-gt v6, v4, :cond_1c

    .line 1535
    sget-object v1, Lnet/time4j/format/TextWidth;->ABBREVIATED:Lnet/time4j/format/TextWidth;

    goto :goto_a

    :cond_1c
    if-eq v6, v8, :cond_20

    if-eqz v7, :cond_1d

    goto :goto_9

    :cond_1d
    if-ne v6, v2, :cond_1e

    .line 1539
    sget-object v1, Lnet/time4j/format/TextWidth;->NARROW:Lnet/time4j/format/TextWidth;

    goto :goto_a

    :cond_1e
    const/4 v1, 0x6

    if-ne v6, v1, :cond_1f

    .line 1541
    sget-object v1, Lnet/time4j/format/TextWidth;->SHORT:Lnet/time4j/format/TextWidth;

    goto :goto_a

    .line 1543
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many pattern letters (E): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1537
    :cond_20
    :goto_9
    sget-object v1, Lnet/time4j/format/TextWidth;->WIDE:Lnet/time4j/format/TextWidth;

    .line 1546
    :goto_a
    sget-object v2, Lnet/time4j/format/Attributes;->TEXT_WIDTH:Lnet/time4j/engine/AttributeKey;

    invoke-virtual {p1, v2, v1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->startSection(Lnet/time4j/engine/AttributeKey;Ljava/lang/Enum;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 1547
    sget-object v1, Lnet/time4j/PlainDate;->DAY_OF_WEEK:Lnet/time4j/NavigableElement;

    invoke-virtual {p1, v1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addText(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 1548
    invoke-virtual {p1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->endSection()Lnet/time4j/format/expert/ChronoFormatter$Builder;

    goto :goto_c

    :pswitch_21
    if-ge v6, v4, :cond_21

    .line 1510
    sget-object v1, Lnet/time4j/PlainDate;->DAY_OF_YEAR:Lnet/time4j/ProportionalElement;

    invoke-virtual {p1, v1, p5, v4}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addInteger(Lnet/time4j/engine/ChronoElement;II)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    goto :goto_c

    :cond_21
    if-eq v6, v4, :cond_23

    if-eqz v7, :cond_22

    goto :goto_b

    .line 1514
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many pattern letters (D): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1512
    :cond_23
    :goto_b
    sget-object v1, Lnet/time4j/PlainDate;->DAY_OF_YEAR:Lnet/time4j/ProportionalElement;

    invoke-virtual {p1, v1, p5}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addFixedInteger(Lnet/time4j/engine/ChronoElement;I)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    goto :goto_c

    .line 1597
    :pswitch_22
    invoke-static {p5}, Lnet/time4j/format/expert/PatternType;->getPeriodWidth(I)Lnet/time4j/format/TextWidth;

    move-result-object v1

    .line 1598
    sget-object v2, Lnet/time4j/format/Attributes;->TEXT_WIDTH:Lnet/time4j/engine/AttributeKey;

    invoke-virtual {p1, v2, v1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->startSection(Lnet/time4j/engine/AttributeKey;Ljava/lang/Enum;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 1599
    invoke-virtual {p1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addDayPeriodApproximate()Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 1600
    invoke-virtual {p1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->endSection()Lnet/time4j/format/expert/ChronoFormatter$Builder;

    goto :goto_c

    .line 1625
    :pswitch_23
    sget-object v1, Lnet/time4j/PlainTime;->MILLI_OF_DAY:Lnet/time4j/ProportionalElement;

    const/16 v2, 0x8

    invoke-virtual {p1, v1, p5, v2}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addInteger(Lnet/time4j/engine/ChronoElement;II)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 1692
    :cond_24
    :goto_c
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_23
        :pswitch_22
        :pswitch_0
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_0
        :pswitch_0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_0
        :pswitch_19
        :pswitch_0
        :pswitch_18
        :pswitch_0
        :pswitch_17
        :pswitch_0
        :pswitch_0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private dynamic(Lnet/time4j/format/expert/ChronoFormatter$Builder;CILjava/util/Locale;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/format/expert/ChronoFormatter$Builder<",
            "*>;CI",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Map<",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;>;"
        }
    .end annotation

    const/4 v0, 0x1

    const/16 v1, 0x41

    if-lt p2, v1, :cond_0

    const/16 v1, 0x5a

    if-gt p2, v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2205
    :goto_0
    invoke-static {p1}, Lnet/time4j/format/expert/PatternType;->getEffectiveChronology(Lnet/time4j/format/expert/ChronoFormatter$Builder;)Lnet/time4j/engine/Chronology;

    move-result-object v2

    .line 2206
    invoke-static {v2, p4, p2}, Lnet/time4j/format/expert/PatternType;->findDynamicElement(Lnet/time4j/engine/Chronology;Ljava/util/Locale;I)Lnet/time4j/engine/ChronoElement;

    move-result-object p4

    if-eqz p4, :cond_a

    if-eqz v1, :cond_7

    .line 2210
    instance-of v1, p4, Lnet/time4j/format/TextElement;

    if-nez v1, :cond_1

    const-class v2, Ljava/lang/Enum;

    invoke-interface {p4}, Lnet/time4j/engine/ChronoElement;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_1
    if-eq p3, v0, :cond_5

    const/4 v0, 0x2

    if-eq p3, v0, :cond_4

    const/4 v0, 0x3

    if-eq p3, v0, :cond_3

    const/4 v0, 0x4

    if-ne p3, v0, :cond_2

    .line 2222
    sget-object p2, Lnet/time4j/format/Attributes;->TEXT_WIDTH:Lnet/time4j/engine/AttributeKey;

    sget-object p3, Lnet/time4j/format/TextWidth;->WIDE:Lnet/time4j/format/TextWidth;

    invoke-virtual {p1, p2, p3}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->startSection(Lnet/time4j/engine/AttributeKey;Ljava/lang/Enum;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    goto :goto_1

    .line 2225
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Illegal count of symbols: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2219
    :cond_3
    sget-object p2, Lnet/time4j/format/Attributes;->TEXT_WIDTH:Lnet/time4j/engine/AttributeKey;

    sget-object p3, Lnet/time4j/format/TextWidth;->ABBREVIATED:Lnet/time4j/format/TextWidth;

    invoke-virtual {p1, p2, p3}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->startSection(Lnet/time4j/engine/AttributeKey;Ljava/lang/Enum;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    goto :goto_1

    .line 2216
    :cond_4
    sget-object p2, Lnet/time4j/format/Attributes;->TEXT_WIDTH:Lnet/time4j/engine/AttributeKey;

    sget-object p3, Lnet/time4j/format/TextWidth;->SHORT:Lnet/time4j/format/TextWidth;

    invoke-virtual {p1, p2, p3}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->startSection(Lnet/time4j/engine/AttributeKey;Ljava/lang/Enum;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    goto :goto_1

    .line 2213
    :cond_5
    sget-object p2, Lnet/time4j/format/Attributes;->TEXT_WIDTH:Lnet/time4j/engine/AttributeKey;

    sget-object p3, Lnet/time4j/format/TextWidth;->NARROW:Lnet/time4j/format/TextWidth;

    invoke-virtual {p1, p2, p3}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->startSection(Lnet/time4j/engine/AttributeKey;Ljava/lang/Enum;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    :goto_1
    if-eqz v1, :cond_6

    .line 2228
    invoke-static {p4}, Lnet/time4j/format/expert/PatternType;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/time4j/format/TextElement;

    .line 2229
    invoke-virtual {p1, p2}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addText(Lnet/time4j/format/TextElement;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    goto :goto_2

    .line 2231
    :cond_6
    invoke-static {p4}, Lnet/time4j/format/expert/PatternType;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/time4j/engine/ChronoElement;

    .line 2232
    invoke-static {p1, p2}, Lnet/time4j/format/expert/PatternType;->addEnumElementAsText(Lnet/time4j/format/expert/ChronoFormatter$Builder;Lnet/time4j/engine/ChronoElement;)V

    .line 2234
    :goto_2
    invoke-virtual {p1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->endSection()Lnet/time4j/format/expert/ChronoFormatter$Builder;

    goto :goto_3

    .line 2235
    :cond_7
    invoke-interface {p4}, Lnet/time4j/engine/ChronoElement;->getType()Ljava/lang/Class;

    move-result-object p2

    const-class v0, Ljava/lang/Integer;

    if-ne p2, v0, :cond_8

    .line 2236
    invoke-static {p4}, Lnet/time4j/format/expert/PatternType;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/time4j/engine/ChronoElement;

    const/16 p4, 0x9

    .line 2237
    invoke-virtual {p1, p2, p3, p4}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addInteger(Lnet/time4j/engine/ChronoElement;II)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    goto :goto_3

    .line 2238
    :cond_8
    const-class p2, Ljava/lang/Enum;

    invoke-interface {p4}, Lnet/time4j/engine/ChronoElement;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 2239
    invoke-static {p4}, Lnet/time4j/format/expert/PatternType;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/time4j/engine/ChronoElement;

    .line 2240
    invoke-static {p1, p2, p3}, Lnet/time4j/format/expert/PatternType;->addEnumElementAsInteger(Lnet/time4j/format/expert/ChronoFormatter$Builder;Lnet/time4j/engine/ChronoElement;I)V

    .line 2246
    :goto_3
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 2242
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Can only handle enum or integer elements in a numerical way: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2209
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Cannot resolve symbol: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static find(Ljava/util/Set;CLjava/lang/String;)Lnet/time4j/engine/ChronoElement;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;>;C",
            "Ljava/lang/String;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    const/16 v0, 0x4d

    const/16 v1, 0x4c

    if-ne p1, v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/16 v1, 0x63

    if-ne p1, v1, :cond_1

    const/16 v1, 0x65

    goto :goto_0

    :cond_1
    move v1, p1

    .line 2285
    :goto_0
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/time4j/engine/ChronoElement;

    .line 2287
    invoke-interface {v2}, Lnet/time4j/engine/ChronoElement;->isDateElement()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2288
    invoke-interface {v2}, Lnet/time4j/engine/ChronoElement;->getSymbol()C

    move-result v3

    if-ne v3, v1, :cond_2

    if-ne v1, v0, :cond_3

    .line 2289
    invoke-interface {v2}, Lnet/time4j/engine/ChronoElement;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MONTH_AS_NUMBER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_3
    return-object v2

    :cond_4
    const/16 p0, 0x79

    if-ne p1, p0, :cond_5

    const-string p0, "net.time4j.PlainDate"

    .line 2295
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 2296
    sget-object p0, Lnet/time4j/PlainDate;->YEAR:Lnet/time4j/AdjustableElement;

    return-object p0

    .line 2299
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot find any chronological date element for symbol "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, " in \""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static findDynamicElement(Lnet/time4j/engine/Chronology;Ljava/util/Locale;I)Lnet/time4j/engine/ChronoElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/Chronology<",
            "*>;",
            "Ljava/util/Locale;",
            "I)",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2150
    invoke-static {p0, p1, p2, v0}, Lnet/time4j/format/expert/PatternType;->findDynamicElement(Lnet/time4j/engine/Chronology;Ljava/util/Locale;IZ)Lnet/time4j/engine/ChronoElement;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2153
    invoke-static {p0, p1, p2, v0}, Lnet/time4j/format/expert/PatternType;->findDynamicElement(Lnet/time4j/engine/Chronology;Ljava/util/Locale;IZ)Lnet/time4j/engine/ChronoElement;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static findDynamicElement(Lnet/time4j/engine/Chronology;Ljava/util/Locale;IZ)Lnet/time4j/engine/ChronoElement;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/Chronology<",
            "*>;",
            "Ljava/util/Locale;",
            "IZ)",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 2168
    invoke-static {p2}, Lnet/time4j/format/expert/PatternType;->capitalized(I)I

    move-result p2

    .line 2171
    :cond_0
    invoke-virtual {p0}, Lnet/time4j/engine/Chronology;->getRegisteredElements()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/engine/ChronoElement;

    .line 2172
    invoke-interface {v1}, Lnet/time4j/engine/ChronoElement;->getSymbol()C

    move-result v2

    if-eqz p3, :cond_2

    .line 2174
    invoke-static {v2}, Lnet/time4j/format/expert/PatternType;->capitalized(I)I

    move-result v2

    :cond_2
    if-ne v2, p2, :cond_1

    return-object v1

    .line 2181
    :cond_3
    invoke-virtual {p0}, Lnet/time4j/engine/Chronology;->getExtensions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/engine/ChronoExtension;

    .line 2182
    invoke-static {}, Lnet/time4j/format/Attributes;->empty()Lnet/time4j/format/Attributes;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lnet/time4j/engine/ChronoExtension;->getElements(Ljava/util/Locale;Lnet/time4j/engine/AttributeQuery;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/engine/ChronoElement;

    .line 2183
    invoke-interface {v1}, Lnet/time4j/engine/ChronoElement;->getSymbol()C

    move-result v2

    if-eqz p3, :cond_6

    .line 2185
    invoke-static {v2}, Lnet/time4j/format/expert/PatternType;->capitalized(I)I

    move-result v2

    :cond_6
    if-ne v2, p2, :cond_5

    return-object v1

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method private static findEthiopianHour(Lnet/time4j/engine/Chronology;)Lnet/time4j/engine/ChronoElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/Chronology<",
            "*>;)",
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1355
    invoke-virtual {p0}, Lnet/time4j/engine/Chronology;->getExtensions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/engine/ChronoExtension;

    .line 1356
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {}, Lnet/time4j/format/Attributes;->empty()Lnet/time4j/format/Attributes;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lnet/time4j/engine/ChronoExtension;->getElements(Ljava/util/Locale;Lnet/time4j/engine/AttributeQuery;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/engine/ChronoElement;

    .line 1357
    invoke-interface {v1}, Lnet/time4j/engine/ChronoElement;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ETHIOPIAN_HOUR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1358
    invoke-static {v1}, Lnet/time4j/format/expert/PatternType;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/time4j/engine/ChronoElement;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private general(Lnet/time4j/format/expert/ChronoFormatter$Builder;Lnet/time4j/engine/Chronology;CILjava/util/Locale;)Ljava/util/Map;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/format/expert/ChronoFormatter$Builder<",
            "*>;",
            "Lnet/time4j/engine/Chronology<",
            "*>;CI",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Map<",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;>;"
        }
    .end annotation

    move-object/from16 v6, p1

    move-object/from16 v2, p2

    move/from16 v4, p3

    move/from16 v5, p4

    const/16 v0, 0x67

    if-ne v4, v0, :cond_0

    .line 1925
    sget-object v0, Lnet/time4j/engine/EpochDays;->MODIFIED_JULIAN_DATE:Lnet/time4j/engine/EpochDays;

    const/16 v1, 0x12

    sget-object v2, Lnet/time4j/format/expert/SignPolicy;->SHOW_WHEN_NEGATIVE:Lnet/time4j/format/expert/SignPolicy;

    invoke-virtual {v6, v0, v5, v1, v2}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addLongNumber(Lnet/time4j/engine/ChronoElement;IILnet/time4j/format/expert/SignPolicy;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 1930
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v0, 0x47

    if-ne v4, v0, :cond_1

    .line 1931
    invoke-static {}, Lnet/time4j/PlainDate;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    if-ne v2, v0, :cond_1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    move/from16 v4, p3

    move/from16 v5, p4

    move v6, v7

    .line 1932
    invoke-direct/range {v0 .. v6}, Lnet/time4j/format/expert/PatternType;->cldrISO(Lnet/time4j/format/expert/ChronoFormatter$Builder;Lnet/time4j/engine/Chronology;Ljava/util/Locale;CIZ)Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_1
    move-object/from16 v7, p5

    .line 1935
    invoke-static {v2, v4, v7}, Lnet/time4j/format/expert/PatternType;->getElements(Lnet/time4j/engine/Chronology;CLjava/util/Locale;)Ljava/util/Set;

    move-result-object v0

    .line 1936
    invoke-virtual/range {p1 .. p1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->getChronology()Lnet/time4j/engine/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lnet/time4j/engine/Chronology;->getChronoType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1937
    invoke-static {v0, v4, v1}, Lnet/time4j/format/expert/PatternType;->find(Ljava/util/Set;CLjava/lang/String;)Lnet/time4j/engine/ChronoElement;

    move-result-object v0

    .line 1941
    const-class v3, Ljava/lang/Integer;

    invoke-interface {v0}, Lnet/time4j/engine/ChronoElement;->getType()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    const-string v8, "\""

    const-string v9, " in \""

    const-string v10, "Implementation error: "

    const/4 v11, 0x0

    if-eqz v3, :cond_3

    .line 1943
    instance-of v3, v0, Lnet/time4j/format/internal/DualFormatElement;

    if-eqz v3, :cond_2

    .line 1944
    invoke-static {v0}, Lnet/time4j/format/expert/PatternType;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lnet/time4j/format/TextElement;

    .line 1946
    :cond_2
    invoke-static {v0}, Lnet/time4j/format/expert/PatternType;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/time4j/engine/ChronoElement;

    goto :goto_0

    .line 1947
    :cond_3
    instance-of v3, v0, Lnet/time4j/format/TextElement;

    if-eqz v3, :cond_22

    .line 1948
    invoke-static {v0}, Lnet/time4j/format/expert/PatternType;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/time4j/format/TextElement;

    move-object/from16 v16, v11

    move-object v11, v3

    move-object/from16 v3, v16

    :goto_0
    const/16 v12, 0x4c

    if-eq v4, v12, :cond_20

    const/16 v12, 0x4d

    if-eq v4, v12, :cond_1f

    const/16 v12, 0x55

    const/4 v13, 0x5

    const/4 v14, 0x4

    const/4 v15, 0x3

    if-eq v4, v12, :cond_1a

    const/16 v1, 0x57

    const/4 v8, 0x1

    if-eq v4, v1, :cond_18

    const/16 v1, 0x72

    if-eq v4, v1, :cond_17

    const/16 v1, 0x77

    const/4 v9, 0x0

    if-eq v4, v1, :cond_16

    const/16 v1, 0x79

    const/4 v10, 0x2

    if-eq v4, v1, :cond_13

    packed-switch v4, :pswitch_data_0

    packed-switch v4, :pswitch_data_1

    .line 2105
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported pattern symbol: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    if-gt v5, v10, :cond_4

    .line 2075
    invoke-static {v0}, Lnet/time4j/format/expert/PatternType;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/engine/ChronoElement;

    .line 2076
    invoke-virtual {v6, v0, v5}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addFixedNumerical(Lnet/time4j/engine/ChronoElement;I)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    goto/16 :goto_7

    :cond_4
    const/16 v3, 0x45

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v5, p5

    .line 2078
    invoke-direct/range {v0 .. v5}, Lnet/time4j/format/expert/PatternType;->general(Lnet/time4j/format/expert/ChronoFormatter$Builder;Lnet/time4j/engine/Chronology;CILjava/util/Locale;)Ljava/util/Map;

    goto/16 :goto_7

    :pswitch_1
    if-nez v3, :cond_6

    if-gt v5, v10, :cond_5

    .line 2035
    sget-object v0, Lnet/time4j/format/internal/DualFormatElement;->COUNT_OF_PATTERN_SYMBOLS:Lnet/time4j/engine/AttributeKey;

    invoke-virtual {v6, v0, v5}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->startSection(Lnet/time4j/engine/AttributeKey;I)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 2036
    invoke-virtual {v6, v11}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addText(Lnet/time4j/format/TextElement;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 2037
    invoke-virtual/range {p1 .. p1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->endSection()Lnet/time4j/format/expert/ChronoFormatter$Builder;

    goto/16 :goto_7

    .line 2039
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many pattern letters for day-of-month: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2042
    :cond_6
    invoke-static {v3, v4, v6, v5, v9}, Lnet/time4j/format/expert/PatternType;->addNumber(Lnet/time4j/engine/ChronoElement;CLnet/time4j/format/expert/ChronoFormatter$Builder;IZ)V

    goto/16 :goto_7

    :pswitch_2
    if-eq v5, v10, :cond_8

    .line 2086
    sget-object v1, Lnet/time4j/format/Attributes;->OUTPUT_CONTEXT:Lnet/time4j/engine/AttributeKey;

    sget-object v3, Lnet/time4j/format/OutputContext;->STANDALONE:Lnet/time4j/format/OutputContext;

    invoke-virtual {v6, v1, v3}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->startSection(Lnet/time4j/engine/AttributeKey;Ljava/lang/Enum;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    if-ne v5, v8, :cond_7

    .line 2089
    invoke-static {v0}, Lnet/time4j/format/expert/PatternType;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/engine/ChronoElement;

    .line 2090
    invoke-virtual {v6, v0, v8}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addFixedNumerical(Lnet/time4j/engine/ChronoElement;I)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    goto :goto_1

    :cond_7
    const/16 v3, 0x45

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v5, p5

    .line 2092
    invoke-direct/range {v0 .. v5}, Lnet/time4j/format/expert/PatternType;->general(Lnet/time4j/format/expert/ChronoFormatter$Builder;Lnet/time4j/engine/Chronology;CILjava/util/Locale;)Ljava/util/Map;

    .line 2094
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->endSection()Lnet/time4j/format/expert/ChronoFormatter$Builder;

    goto/16 :goto_7

    .line 2083
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid pattern count of 2 for symbol \'c\'."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    if-gt v5, v15, :cond_9

    .line 1958
    sget-object v0, Lnet/time4j/format/TextWidth;->ABBREVIATED:Lnet/time4j/format/TextWidth;

    goto :goto_2

    :cond_9
    if-ne v5, v14, :cond_a

    .line 1960
    sget-object v0, Lnet/time4j/format/TextWidth;->WIDE:Lnet/time4j/format/TextWidth;

    goto :goto_2

    :cond_a
    if-ne v5, v13, :cond_b

    .line 1962
    sget-object v0, Lnet/time4j/format/TextWidth;->NARROW:Lnet/time4j/format/TextWidth;

    .line 1967
    :goto_2
    sget-object v1, Lnet/time4j/format/Attributes;->TEXT_WIDTH:Lnet/time4j/engine/AttributeKey;

    invoke-virtual {v6, v1, v0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->startSection(Lnet/time4j/engine/AttributeKey;Ljava/lang/Enum;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 1968
    invoke-virtual {v6, v11}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addText(Lnet/time4j/format/TextElement;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 1969
    invoke-virtual/range {p1 .. p1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->endSection()Lnet/time4j/format/expert/ChronoFormatter$Builder;

    goto/16 :goto_7

    .line 1964
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many pattern letters (G): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_4
    if-ne v5, v8, :cond_c

    .line 2098
    invoke-virtual {v6, v3, v5}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addFixedInteger(Lnet/time4j/engine/ChronoElement;I)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    goto/16 :goto_7

    .line 2100
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many pattern letters (F): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_5
    if-gt v5, v15, :cond_d

    .line 2058
    sget-object v0, Lnet/time4j/format/TextWidth;->ABBREVIATED:Lnet/time4j/format/TextWidth;

    goto :goto_3

    :cond_d
    if-ne v5, v14, :cond_e

    .line 2060
    sget-object v0, Lnet/time4j/format/TextWidth;->WIDE:Lnet/time4j/format/TextWidth;

    goto :goto_3

    :cond_e
    if-ne v5, v13, :cond_f

    .line 2062
    sget-object v0, Lnet/time4j/format/TextWidth;->NARROW:Lnet/time4j/format/TextWidth;

    goto :goto_3

    :cond_f
    const/4 v0, 0x6

    if-ne v5, v0, :cond_10

    .line 2064
    sget-object v0, Lnet/time4j/format/TextWidth;->SHORT:Lnet/time4j/format/TextWidth;

    .line 2069
    :goto_3
    sget-object v1, Lnet/time4j/format/Attributes;->TEXT_WIDTH:Lnet/time4j/engine/AttributeKey;

    invoke-virtual {v6, v1, v0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->startSection(Lnet/time4j/engine/AttributeKey;Ljava/lang/Enum;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 2070
    invoke-virtual {v6, v11}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addText(Lnet/time4j/format/TextElement;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 2071
    invoke-virtual/range {p1 .. p1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->endSection()Lnet/time4j/format/expert/ChronoFormatter$Builder;

    goto/16 :goto_7

    .line 2066
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many pattern letters (E): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_6
    if-ge v5, v15, :cond_11

    .line 2047
    invoke-virtual {v6, v3, v5, v15}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addInteger(Lnet/time4j/engine/ChronoElement;II)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    goto/16 :goto_7

    :cond_11
    if-ne v5, v15, :cond_12

    .line 2049
    invoke-virtual {v6, v3, v5}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addFixedInteger(Lnet/time4j/engine/ChronoElement;I)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    goto/16 :goto_7

    .line 2051
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many pattern letters (D): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1973
    :cond_13
    invoke-virtual/range {p5 .. p5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "am"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static/range {p2 .. p2}, Lnet/time4j/format/expert/PatternType;->getCalendarType(Lnet/time4j/engine/Chronology;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ethiopic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1975
    sget-object v0, Lnet/time4j/format/Attributes;->NUMBER_SYSTEM:Lnet/time4j/engine/AttributeKey;

    sget-object v1, Lnet/time4j/format/NumberSystem;->ETHIOPIC:Lnet/time4j/format/NumberSystem;

    invoke-virtual {v6, v0, v1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->startSection(Lnet/time4j/engine/AttributeKey;Ljava/lang/Enum;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    goto :goto_4

    :cond_14
    move v8, v9

    :goto_4
    if-ne v5, v10, :cond_15

    .line 1978
    invoke-virtual {v6, v3}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addTwoDigitYear(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    goto :goto_5

    .line 1980
    :cond_15
    invoke-virtual {v6, v3, v5, v9}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addYear(Lnet/time4j/engine/ChronoElement;IZ)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    :goto_5
    if-eqz v8, :cond_21

    .line 1983
    invoke-virtual/range {p1 .. p1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->endSection()Lnet/time4j/format/expert/ChronoFormatter$Builder;

    goto/16 :goto_7

    .line 2022
    :cond_16
    invoke-static {v3, v4, v6, v5, v9}, Lnet/time4j/format/expert/PatternType;->addNumber(Lnet/time4j/engine/ChronoElement;CLnet/time4j/format/expert/ChronoFormatter$Builder;IZ)V

    goto/16 :goto_7

    .line 2007
    :cond_17
    sget-object v0, Lnet/time4j/format/Attributes;->NUMBER_SYSTEM:Lnet/time4j/engine/AttributeKey;

    sget-object v1, Lnet/time4j/format/NumberSystem;->ARABIC:Lnet/time4j/format/NumberSystem;

    invoke-virtual {v6, v0, v1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->startSection(Lnet/time4j/engine/AttributeKey;Ljava/lang/Enum;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 2008
    sget-object v0, Lnet/time4j/format/Attributes;->ZERO_DIGIT:Lnet/time4j/engine/AttributeKey;

    const/16 v1, 0x30

    invoke-virtual {v6, v0, v1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->startSection(Lnet/time4j/engine/AttributeKey;C)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 2009
    invoke-virtual {v6, v3, v5, v8}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addYear(Lnet/time4j/engine/ChronoElement;IZ)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 2010
    invoke-virtual/range {p1 .. p1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->endSection()Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 2011
    invoke-virtual/range {p1 .. p1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->endSection()Lnet/time4j/format/expert/ChronoFormatter$Builder;

    goto/16 :goto_7

    :cond_18
    if-ne v5, v8, :cond_19

    .line 2026
    invoke-virtual {v6, v3, v8}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addFixedInteger(Lnet/time4j/engine/ChronoElement;I)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    goto/16 :goto_7

    .line 2028
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many pattern letters (W): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    if-eqz v11, :cond_1e

    if-gt v5, v15, :cond_1b

    .line 1992
    sget-object v0, Lnet/time4j/format/TextWidth;->ABBREVIATED:Lnet/time4j/format/TextWidth;

    goto :goto_6

    :cond_1b
    if-ne v5, v14, :cond_1c

    .line 1994
    sget-object v0, Lnet/time4j/format/TextWidth;->WIDE:Lnet/time4j/format/TextWidth;

    goto :goto_6

    :cond_1c
    if-ne v5, v13, :cond_1d

    .line 1996
    sget-object v0, Lnet/time4j/format/TextWidth;->NARROW:Lnet/time4j/format/TextWidth;

    .line 2001
    :goto_6
    sget-object v1, Lnet/time4j/format/Attributes;->TEXT_WIDTH:Lnet/time4j/engine/AttributeKey;

    invoke-virtual {v6, v1, v0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->startSection(Lnet/time4j/engine/AttributeKey;Ljava/lang/Enum;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 2002
    invoke-virtual {v6, v11}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addText(Lnet/time4j/format/TextElement;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 2003
    invoke-virtual/range {p1 .. p1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->endSection()Lnet/time4j/format/expert/ChronoFormatter$Builder;

    goto :goto_7

    .line 1998
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many pattern letters (U): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1988
    :cond_1e
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2014
    :cond_1f
    invoke-static {v6, v5, v11}, Lnet/time4j/format/expert/PatternType;->addMonth(Lnet/time4j/format/expert/ChronoFormatter$Builder;ILnet/time4j/format/TextElement;)V

    goto :goto_7

    .line 2017
    :cond_20
    sget-object v0, Lnet/time4j/format/Attributes;->OUTPUT_CONTEXT:Lnet/time4j/engine/AttributeKey;

    sget-object v1, Lnet/time4j/format/OutputContext;->STANDALONE:Lnet/time4j/format/OutputContext;

    invoke-virtual {v6, v0, v1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->startSection(Lnet/time4j/engine/AttributeKey;Ljava/lang/Enum;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 2018
    invoke-static {v6, v5, v11}, Lnet/time4j/format/expert/PatternType;->addMonth(Lnet/time4j/format/expert/ChronoFormatter$Builder;ILnet/time4j/format/TextElement;)V

    .line 2019
    invoke-virtual/range {p1 .. p1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->endSection()Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 2109
    :cond_21
    :goto_7
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 1951
    :cond_22
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x44
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x63
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getCalendarType(Lnet/time4j/engine/Chronology;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/Chronology<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1348
    invoke-virtual {p0}, Lnet/time4j/engine/Chronology;->getChronoType()Ljava/lang/Class;

    move-result-object p0

    const-class v0, Lnet/time4j/format/CalendarType;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lnet/time4j/format/CalendarType;

    if-nez p0, :cond_0

    const-string p0, "iso8601"

    goto :goto_0

    .line 1349
    :cond_0
    invoke-interface {p0}, Lnet/time4j/format/CalendarType;->value()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static getEffectiveChronology(Lnet/time4j/format/expert/ChronoFormatter$Builder;)Lnet/time4j/engine/Chronology;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/format/expert/ChronoFormatter$Builder<",
            "*>;)",
            "Lnet/time4j/engine/Chronology<",
            "*>;"
        }
    .end annotation

    .line 1369
    invoke-virtual {p0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->getChronology()Lnet/time4j/engine/Chronology;

    move-result-object p0

    .line 1371
    :goto_0
    instance-of v0, p0, Lnet/time4j/engine/BridgeChronology;

    if-eqz v0, :cond_0

    .line 1372
    invoke-virtual {p0}, Lnet/time4j/engine/Chronology;->preparser()Lnet/time4j/engine/Chronology;

    move-result-object p0

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private static getElements(Lnet/time4j/engine/Chronology;CLjava/util/Locale;)Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/Chronology<",
            "*>;C",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Set<",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;>;"
        }
    .end annotation

    const/16 v0, 0x63

    const/16 v1, 0x65

    const/16 v2, 0x57

    const/16 v3, 0x77

    if-eq p1, v3, :cond_1

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2272
    :cond_0
    invoke-virtual {p0}, Lnet/time4j/engine/Chronology;->getRegisteredElements()Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 2257
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lnet/time4j/engine/Chronology;->getExtensions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/time4j/engine/ChronoExtension;

    .line 2258
    invoke-static {}, Lnet/time4j/format/Attributes;->empty()Lnet/time4j/format/Attributes;

    move-result-object v5

    invoke-interface {v4, p2, v5}, Lnet/time4j/engine/ChronoExtension;->getElements(Ljava/util/Locale;Lnet/time4j/engine/AttributeQuery;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/time4j/engine/ChronoElement;

    if-eq p1, v1, :cond_4

    if-ne p1, v0, :cond_5

    .line 2260
    :cond_4
    invoke-interface {v5}, Lnet/time4j/engine/ChronoElement;->name()Ljava/lang/String;

    move-result-object v6

    const-string v7, "LOCAL_DAY_OF_WEEK"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    :cond_5
    if-ne p1, v3, :cond_6

    .line 2261
    invoke-interface {v5}, Lnet/time4j/engine/ChronoElement;->name()Ljava/lang/String;

    move-result-object v6

    const-string v7, "WEEK_OF_YEAR"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    :cond_6
    if-ne p1, v2, :cond_3

    .line 2262
    invoke-interface {v5}, Lnet/time4j/engine/ChronoElement;->name()Ljava/lang/String;

    move-result-object v6

    const-string v7, "WEEK_OF_MONTH"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2264
    :cond_7
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 2265
    invoke-interface {p0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 2270
    :cond_8
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method private static getPeriodWidth(I)Lnet/time4j/format/TextWidth;
    .locals 3

    const/4 v0, 0x3

    if-gt p0, v0, :cond_0

    .line 1699
    sget-object p0, Lnet/time4j/format/TextWidth;->ABBREVIATED:Lnet/time4j/format/TextWidth;

    return-object p0

    :cond_0
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    .line 1701
    sget-object p0, Lnet/time4j/format/TextWidth;->WIDE:Lnet/time4j/format/TextWidth;

    return-object p0

    :cond_1
    const/4 v0, 0x5

    if-ne p0, v0, :cond_2

    .line 1703
    sget-object p0, Lnet/time4j/format/TextWidth;->NARROW:Lnet/time4j/format/TextWidth;

    return-object p0

    .line 1705
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many pattern letters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isGeneralSymbol(C)Z
    .locals 1

    const/16 v0, 0x4c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x4d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x55

    if-eq p0, v0, :cond_0

    const/16 v0, 0x57

    if-eq p0, v0, :cond_0

    const/16 v0, 0x67

    if-eq p0, v0, :cond_0

    const/16 v0, 0x72

    if-eq p0, v0, :cond_0

    const/16 v0, 0x77

    if-eq p0, v0, :cond_0

    const/16 v0, 0x79

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const/4 p0, 0x0

    return p0

    :cond_0
    :pswitch_0
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x44
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x63
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static isISO(Lnet/time4j/engine/Chronology;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/Chronology<",
            "*>;)Z"
        }
    .end annotation

    .line 1342
    invoke-static {p0}, Lnet/time4j/format/expert/PatternType;->getCalendarType(Lnet/time4j/engine/Chronology;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "iso8601"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private sdf(Lnet/time4j/format/expert/ChronoFormatter$Builder;Lnet/time4j/engine/Chronology;Ljava/util/Locale;CI)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/format/expert/ChronoFormatter$Builder<",
            "*>;",
            "Lnet/time4j/engine/Chronology<",
            "*>;",
            "Ljava/util/Locale;",
            "CI)",
            "Ljava/util/Map<",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;>;"
        }
    .end annotation

    const/16 v0, 0x42

    if-eq p4, v0, :cond_4

    const/16 v0, 0x4f

    if-eq p4, v0, :cond_4

    const/16 v0, 0x51

    if-eq p4, v0, :cond_4

    const/16 v0, 0x53

    if-eq p4, v0, :cond_3

    const/16 v0, 0x5a

    if-eq p4, v0, :cond_2

    const/16 v0, 0x65

    if-eq p4, v0, :cond_4

    const/16 v0, 0x67

    if-eq p4, v0, :cond_4

    const/16 v0, 0x75

    if-eq p4, v0, :cond_1

    const/16 v0, 0x78

    if-eq p4, v0, :cond_4

    const/16 v0, 0x62

    if-eq p4, v0, :cond_4

    const/16 v0, 0x63

    if-eq p4, v0, :cond_4

    const/16 v0, 0x71

    if-eq p4, v0, :cond_4

    const/16 v0, 0x72

    if-eq p4, v0, :cond_4

    packed-switch p4, :pswitch_data_0

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    .line 1757
    invoke-direct/range {v1 .. v7}, Lnet/time4j/format/expert/PatternType;->cldrISO(Lnet/time4j/format/expert/ChronoFormatter$Builder;Lnet/time4j/engine/Chronology;Ljava/util/Locale;CIZ)Ljava/util/Map;

    move-result-object p1

    return-object p1

    :pswitch_0
    const/4 p4, 0x4

    if-ge p5, p4, :cond_0

    const/16 v4, 0x58

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p5

    .line 1755
    invoke-direct/range {v0 .. v6}, Lnet/time4j/format/expert/PatternType;->cldrISO(Lnet/time4j/format/expert/ChronoFormatter$Builder;Lnet/time4j/engine/Chronology;Ljava/util/Locale;CIZ)Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 1752
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Too many pattern letters (X): "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1722
    :pswitch_1
    invoke-static {p3}, Lnet/time4j/Weekmodel;->of(Ljava/util/Locale;)Lnet/time4j/Weekmodel;

    move-result-object p2

    invoke-virtual {p2}, Lnet/time4j/Weekmodel;->boundedWeekOfMonth()Lnet/time4j/AdjustableElement;

    move-result-object p2

    .line 1721
    invoke-virtual {p1, p2, p5}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addFixedInteger(Lnet/time4j/engine/ChronoElement;I)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    goto :goto_0

    .line 1726
    :cond_1
    sget-object p2, Lnet/time4j/PlainDate;->DAY_OF_WEEK:Lnet/time4j/NavigableElement;

    invoke-virtual {p1, p2, p5}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addFixedNumerical(Lnet/time4j/engine/ChronoElement;I)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    goto :goto_0

    :cond_2
    const/4 p2, 0x2

    const/4 p3, 0x0

    .line 1732
    invoke-static {p1, p4, p2, p3}, Lnet/time4j/format/expert/PatternType;->addOffset(Lnet/time4j/format/expert/ChronoFormatter$Builder;CIZ)V

    goto :goto_0

    .line 1729
    :cond_3
    sget-object p2, Lnet/time4j/PlainTime;->MILLI_OF_SECOND:Lnet/time4j/ProportionalElement;

    invoke-virtual {p1, p2, p5}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addFixedInteger(Lnet/time4j/engine/ChronoElement;I)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 1760
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 1746
    :cond_4
    :pswitch_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "CLDR pattern symbol not supported in SimpleDateFormat-style: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/time4j/format/expert/PatternType;
    .locals 1

    .line 67
    const-class v0, Lnet/time4j/format/expert/PatternType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/time4j/format/expert/PatternType;

    return-object p0
.end method

.method public static values()[Lnet/time4j/format/expert/PatternType;
    .locals 1

    .line 67
    sget-object v0, Lnet/time4j/format/expert/PatternType;->$VALUES:[Lnet/time4j/format/expert/PatternType;

    invoke-virtual {v0}, [Lnet/time4j/format/expert/PatternType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/time4j/format/expert/PatternType;

    return-object v0
.end method


# virtual methods
.method registerSymbol(Lnet/time4j/format/expert/ChronoFormatter$Builder;Ljava/util/Locale;CI)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/format/expert/ChronoFormatter$Builder<",
            "*>;",
            "Ljava/util/Locale;",
            "CI)",
            "Ljava/util/Map<",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;>;"
        }
    .end annotation

    .line 1291
    invoke-static {p1}, Lnet/time4j/format/expert/PatternType;->getEffectiveChronology(Lnet/time4j/format/expert/ChronoFormatter$Builder;)Lnet/time4j/engine/Chronology;

    move-result-object v2

    .line 1293
    sget-object v0, Lnet/time4j/format/expert/PatternType$1;->$SwitchMap$net$time4j$format$expert$PatternType:[I

    invoke-virtual {p0}, Lnet/time4j/format/expert/PatternType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 1308
    invoke-direct {p0, p1, p3, p4, p2}, Lnet/time4j/format/expert/PatternType;->dynamic(Lnet/time4j/format/expert/ChronoFormatter$Builder;CILjava/util/Locale;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 1310
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Lnet/time4j/format/expert/PatternType;->name()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1301
    :cond_1
    invoke-virtual {v2}, Lnet/time4j/engine/Chronology;->getChronoType()Ljava/lang/Class;

    move-result-object v0

    .line 1302
    const-class v1, Lnet/time4j/engine/Calendrical;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_3

    const-class v1, Lnet/time4j/engine/CalendarVariant;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 1305
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No calendar chronology."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move-object v5, p2

    .line 1303
    invoke-direct/range {v0 .. v5}, Lnet/time4j/format/expert/PatternType;->general(Lnet/time4j/format/expert/ChronoFormatter$Builder;Lnet/time4j/engine/Chronology;CILjava/util/Locale;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 1299
    :cond_4
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/time4j/format/expert/PatternType;->cldr24(Lnet/time4j/format/expert/ChronoFormatter$Builder;Ljava/util/Locale;CI)Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_5
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 1297
    invoke-direct/range {v0 .. v5}, Lnet/time4j/format/expert/PatternType;->sdf(Lnet/time4j/format/expert/ChronoFormatter$Builder;Lnet/time4j/engine/Chronology;Ljava/util/Locale;CI)Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 1295
    :cond_6
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/time4j/format/expert/PatternType;->cldr(Lnet/time4j/format/expert/ChronoFormatter$Builder;Ljava/util/Locale;CI)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
