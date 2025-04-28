.class public final Lnet/time4j/history/ChronoHistory;
.super Ljava/lang/Object;
.source "ChronoHistory.java"

# interfaces
.implements Lnet/time4j/engine/VariantSource;
.implements Ljava/io/Serializable;


# static fields
.field static final BYZANTINE_YMAX:I = 0x3b9a8f4d

.field private static final EARLIEST_CUTOVER:J

.field private static final INTRODUCTION_BY_POPE_GREGOR:Lnet/time4j/history/ChronoHistory;

.field static final JULIAN_YMAX:I = 0x3b9a79c9

.field private static final LOOKUP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/time4j/history/ChronoHistory;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROLEPTIC_BYZANTINE:Lnet/time4j/history/ChronoHistory;

.field public static final PROLEPTIC_GREGORIAN:Lnet/time4j/history/ChronoHistory;

.field public static final PROLEPTIC_JULIAN:Lnet/time4j/history/ChronoHistory;

.field private static final SWEDEN:Lnet/time4j/history/ChronoHistory;

.field public static final YEAR_DEFINITION:Lnet/time4j/engine/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/AttributeKey<",
            "Lnet/time4j/history/YearDefinition;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x38e8946252654f6bL


# instance fields
.field private final transient ajly:Lnet/time4j/history/AncientJulianLeapYears;

.field private final transient centuryElement:Lnet/time4j/engine/ChronoElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final transient dateElement:Lnet/time4j/engine/ChronoElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoElement<",
            "Lnet/time4j/history/HistoricDate;",
            ">;"
        }
    .end annotation
.end field

.field private final transient dayOfMonthElement:Lnet/time4j/format/TextElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/format/TextElement<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final transient dayOfYearElement:Lnet/time4j/format/TextElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/format/TextElement<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final transient elements:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final transient eraElement:Lnet/time4j/engine/ChronoElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoElement<",
            "Lnet/time4j/history/HistoricEra;",
            ">;"
        }
    .end annotation
.end field

.field private final transient eraPreference:Lnet/time4j/history/EraPreference;

.field private final transient events:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/time4j/history/CutOverEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final transient monthElement:Lnet/time4j/format/TextElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/format/TextElement<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final transient nys:Lnet/time4j/history/NewYearStrategy;

.field private final transient variant:Lnet/time4j/history/internal/HistoricVariant;

.field private final transient yearAfterElement:Lnet/time4j/engine/ChronoElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final transient yearBeforeElement:Lnet/time4j/engine/ChronoElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final transient yearOfEraElement:Lnet/time4j/format/TextElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/format/TextElement<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 83
    const-class v0, Lnet/time4j/history/YearDefinition;

    const-string v1, "YEAR_DEFINITION"

    .line 84
    invoke-static {v1, v0}, Lnet/time4j/format/Attributes;->createKey(Ljava/lang/String;Ljava/lang/Class;)Lnet/time4j/engine/AttributeKey;

    move-result-object v0

    sput-object v0, Lnet/time4j/history/ChronoHistory;->YEAR_DEFINITION:Lnet/time4j/engine/AttributeKey;

    .line 152
    new-instance v0, Lnet/time4j/history/ChronoHistory;

    sget-object v1, Lnet/time4j/history/internal/HistoricVariant;->PROLEPTIC_GREGORIAN:Lnet/time4j/history/internal/HistoricVariant;

    new-instance v2, Lnet/time4j/history/CutOverEvent;

    sget-object v3, Lnet/time4j/history/CalendarAlgorithm;->GREGORIAN:Lnet/time4j/history/CalendarAlgorithm;

    sget-object v4, Lnet/time4j/history/CalendarAlgorithm;->GREGORIAN:Lnet/time4j/history/CalendarAlgorithm;

    const-wide/high16 v5, -0x8000000000000000L

    invoke-direct {v2, v5, v6, v3, v4}, Lnet/time4j/history/CutOverEvent;-><init>(JLnet/time4j/history/CalendarAlgorithm;Lnet/time4j/history/CalendarAlgorithm;)V

    .line 155
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnet/time4j/history/ChronoHistory;-><init>(Lnet/time4j/history/internal/HistoricVariant;Ljava/util/List;)V

    sput-object v0, Lnet/time4j/history/ChronoHistory;->PROLEPTIC_GREGORIAN:Lnet/time4j/history/ChronoHistory;

    .line 158
    new-instance v0, Lnet/time4j/history/ChronoHistory;

    sget-object v1, Lnet/time4j/history/internal/HistoricVariant;->PROLEPTIC_JULIAN:Lnet/time4j/history/internal/HistoricVariant;

    new-instance v2, Lnet/time4j/history/CutOverEvent;

    sget-object v3, Lnet/time4j/history/CalendarAlgorithm;->JULIAN:Lnet/time4j/history/CalendarAlgorithm;

    sget-object v4, Lnet/time4j/history/CalendarAlgorithm;->JULIAN:Lnet/time4j/history/CalendarAlgorithm;

    invoke-direct {v2, v5, v6, v3, v4}, Lnet/time4j/history/CutOverEvent;-><init>(JLnet/time4j/history/CalendarAlgorithm;Lnet/time4j/history/CalendarAlgorithm;)V

    .line 161
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnet/time4j/history/ChronoHistory;-><init>(Lnet/time4j/history/internal/HistoricVariant;Ljava/util/List;)V

    sput-object v0, Lnet/time4j/history/ChronoHistory;->PROLEPTIC_JULIAN:Lnet/time4j/history/ChronoHistory;

    .line 164
    new-instance v1, Lnet/time4j/history/ChronoHistory;

    sget-object v8, Lnet/time4j/history/internal/HistoricVariant;->PROLEPTIC_BYZANTINE:Lnet/time4j/history/internal/HistoricVariant;

    new-instance v2, Lnet/time4j/history/CutOverEvent;

    sget-object v3, Lnet/time4j/history/CalendarAlgorithm;->JULIAN:Lnet/time4j/history/CalendarAlgorithm;

    sget-object v4, Lnet/time4j/history/CalendarAlgorithm;->JULIAN:Lnet/time4j/history/CalendarAlgorithm;

    invoke-direct {v2, v5, v6, v3, v4}, Lnet/time4j/history/CutOverEvent;-><init>(JLnet/time4j/history/CalendarAlgorithm;Lnet/time4j/history/CalendarAlgorithm;)V

    .line 167
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    new-instance v11, Lnet/time4j/history/NewYearStrategy;

    sget-object v2, Lnet/time4j/history/NewYearRule;->BEGIN_OF_SEPTEMBER:Lnet/time4j/history/NewYearRule;

    const v3, 0x7fffffff

    invoke-direct {v11, v2, v3}, Lnet/time4j/history/NewYearStrategy;-><init>(Lnet/time4j/history/NewYearRule;I)V

    .line 171
    invoke-static {}, Lnet/time4j/PlainDate;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v2

    invoke-virtual {v2}, Lnet/time4j/engine/TimeAxis;->getMaximum()Lnet/time4j/engine/TimePoint;

    move-result-object v2

    check-cast v2, Lnet/time4j/PlainDate;

    invoke-static {v2}, Lnet/time4j/history/EraPreference;->byzantineUntil(Lnet/time4j/PlainDate;)Lnet/time4j/history/EraPreference;

    move-result-object v12

    const/4 v10, 0x0

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lnet/time4j/history/ChronoHistory;-><init>(Lnet/time4j/history/internal/HistoricVariant;Ljava/util/List;Lnet/time4j/history/AncientJulianLeapYears;Lnet/time4j/history/NewYearStrategy;Lnet/time4j/history/EraPreference;)V

    sput-object v1, Lnet/time4j/history/ChronoHistory;->PROLEPTIC_BYZANTINE:Lnet/time4j/history/ChronoHistory;

    const/16 v1, 0x62e

    const/16 v2, 0xa

    const/16 v3, 0xf

    .line 173
    invoke-static {v1, v2, v3}, Lnet/time4j/PlainDate;->of(III)Lnet/time4j/PlainDate;

    move-result-object v3

    sget-object v4, Lnet/time4j/engine/EpochDays;->MODIFIED_JULIAN_DATE:Lnet/time4j/engine/EpochDays;

    invoke-virtual {v3, v4}, Lnet/time4j/PlainDate;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sput-wide v3, Lnet/time4j/history/ChronoHistory;->EARLIEST_CUTOVER:J

    .line 174
    invoke-static {v3, v4}, Lnet/time4j/history/ChronoHistory;->ofGregorianReform(J)Lnet/time4j/history/ChronoHistory;

    move-result-object v3

    sput-object v3, Lnet/time4j/history/ChronoHistory;->INTRODUCTION_BY_POPE_GREGOR:Lnet/time4j/history/ChronoHistory;

    .line 176
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 177
    new-instance v4, Lnet/time4j/history/CutOverEvent;

    sget-object v5, Lnet/time4j/history/CalendarAlgorithm;->JULIAN:Lnet/time4j/history/CalendarAlgorithm;

    sget-object v6, Lnet/time4j/history/CalendarAlgorithm;->SWEDISH:Lnet/time4j/history/CalendarAlgorithm;

    const-wide/32 v7, -0xe267

    invoke-direct {v4, v7, v8, v5, v6}, Lnet/time4j/history/CutOverEvent;-><init>(JLnet/time4j/history/CalendarAlgorithm;Lnet/time4j/history/CalendarAlgorithm;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    new-instance v4, Lnet/time4j/history/CutOverEvent;

    sget-object v5, Lnet/time4j/history/CalendarAlgorithm;->SWEDISH:Lnet/time4j/history/CalendarAlgorithm;

    sget-object v6, Lnet/time4j/history/CalendarAlgorithm;->JULIAN:Lnet/time4j/history/CalendarAlgorithm;

    const-wide/32 v7, -0xd147

    invoke-direct {v4, v7, v8, v5, v6}, Lnet/time4j/history/CutOverEvent;-><init>(JLnet/time4j/history/CalendarAlgorithm;Lnet/time4j/history/CalendarAlgorithm;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    new-instance v4, Lnet/time4j/history/CutOverEvent;

    sget-object v5, Lnet/time4j/history/CalendarAlgorithm;->JULIAN:Lnet/time4j/history/CalendarAlgorithm;

    sget-object v6, Lnet/time4j/history/CalendarAlgorithm;->GREGORIAN:Lnet/time4j/history/CalendarAlgorithm;

    const-wide/32 v7, -0x96d3

    invoke-direct {v4, v7, v8, v5, v6}, Lnet/time4j/history/CutOverEvent;-><init>(JLnet/time4j/history/CalendarAlgorithm;Lnet/time4j/history/CalendarAlgorithm;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    new-instance v4, Lnet/time4j/history/ChronoHistory;

    sget-object v5, Lnet/time4j/history/internal/HistoricVariant;->SWEDEN:Lnet/time4j/history/internal/HistoricVariant;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lnet/time4j/history/ChronoHistory;-><init>(Lnet/time4j/history/internal/HistoricVariant;Ljava/util/List;)V

    sput-object v4, Lnet/time4j/history/ChronoHistory;->SWEDEN:Lnet/time4j/history/ChronoHistory;

    .line 182
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 183
    sget-object v5, Lnet/time4j/history/HistoricEra;->AD:Lnet/time4j/history/HistoricEra;

    const/16 v6, 0x3dc

    const/4 v7, 0x3

    const/4 v8, 0x1

    invoke-static {v5, v6, v7, v8}, Lnet/time4j/history/HistoricDate;->of(Lnet/time4j/history/HistoricEra;III)Lnet/time4j/history/HistoricDate;

    move-result-object v5

    invoke-virtual {v0, v5}, Lnet/time4j/history/ChronoHistory;->convert(Lnet/time4j/history/HistoricDate;)Lnet/time4j/PlainDate;

    move-result-object v5

    .line 184
    sget-object v9, Lnet/time4j/history/HistoricEra;->AD:Lnet/time4j/history/HistoricEra;

    const/16 v10, 0x566

    const/16 v11, 0xc

    const/16 v12, 0x18

    invoke-static {v9, v10, v11, v12}, Lnet/time4j/history/HistoricDate;->of(Lnet/time4j/history/HistoricEra;III)Lnet/time4j/history/HistoricDate;

    move-result-object v9

    invoke-virtual {v0, v9}, Lnet/time4j/history/ChronoHistory;->convert(Lnet/time4j/history/HistoricDate;)Lnet/time4j/PlainDate;

    move-result-object v9

    .line 185
    sget-object v10, Lnet/time4j/history/HistoricEra;->AD:Lnet/time4j/history/HistoricEra;

    const/16 v13, 0x58d

    invoke-static {v10, v13, v11, v12}, Lnet/time4j/history/HistoricDate;->of(Lnet/time4j/history/HistoricEra;III)Lnet/time4j/history/HistoricDate;

    move-result-object v10

    invoke-virtual {v0, v10}, Lnet/time4j/history/ChronoHistory;->convert(Lnet/time4j/history/HistoricDate;)Lnet/time4j/PlainDate;

    move-result-object v10

    .line 186
    sget-object v12, Lnet/time4j/history/HistoricEra;->AD:Lnet/time4j/history/HistoricEra;

    const/16 v13, 0x6a3

    const/16 v14, 0x1f

    invoke-static {v12, v13, v11, v14}, Lnet/time4j/history/HistoricDate;->of(Lnet/time4j/history/HistoricEra;III)Lnet/time4j/history/HistoricDate;

    move-result-object v12

    invoke-virtual {v0, v12}, Lnet/time4j/history/ChronoHistory;->convert(Lnet/time4j/history/HistoricDate;)Lnet/time4j/PlainDate;

    move-result-object v0

    .line 189
    invoke-static {}, Lnet/time4j/history/ChronoHistory;->ofFirstGregorianReform()Lnet/time4j/history/ChronoHistory;

    move-result-object v12

    sget-object v13, Lnet/time4j/history/NewYearRule;->BEGIN_OF_JANUARY:Lnet/time4j/history/NewYearRule;

    const/16 v14, 0x567

    .line 191
    invoke-virtual {v13, v14}, Lnet/time4j/history/NewYearRule;->until(I)Lnet/time4j/history/NewYearStrategy;

    move-result-object v13

    sget-object v14, Lnet/time4j/history/NewYearRule;->CHRISTMAS_STYLE:Lnet/time4j/history/NewYearRule;

    const/16 v15, 0x614

    .line 192
    invoke-virtual {v14, v15}, Lnet/time4j/history/NewYearRule;->until(I)Lnet/time4j/history/NewYearStrategy;

    move-result-object v14

    invoke-virtual {v13, v14}, Lnet/time4j/history/NewYearStrategy;->and(Lnet/time4j/history/NewYearStrategy;)Lnet/time4j/history/NewYearStrategy;

    move-result-object v13

    .line 190
    invoke-virtual {v12, v13}, Lnet/time4j/history/ChronoHistory;->with(Lnet/time4j/history/NewYearStrategy;)Lnet/time4j/history/ChronoHistory;

    move-result-object v12

    .line 193
    invoke-static {v9}, Lnet/time4j/history/EraPreference;->hispanicUntil(Lnet/time4j/PlainDate;)Lnet/time4j/history/EraPreference;

    move-result-object v9

    invoke-virtual {v12, v9}, Lnet/time4j/history/ChronoHistory;->with(Lnet/time4j/history/EraPreference;)Lnet/time4j/history/ChronoHistory;

    move-result-object v9

    const-string v12, "ES"

    .line 187
    invoke-interface {v3, v12, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    invoke-static {}, Lnet/time4j/history/ChronoHistory;->ofFirstGregorianReform()Lnet/time4j/history/ChronoHistory;

    move-result-object v9

    sget-object v12, Lnet/time4j/history/NewYearRule;->BEGIN_OF_JANUARY:Lnet/time4j/history/NewYearRule;

    const/16 v13, 0x58e

    .line 198
    invoke-virtual {v12, v13}, Lnet/time4j/history/NewYearRule;->until(I)Lnet/time4j/history/NewYearStrategy;

    move-result-object v12

    sget-object v13, Lnet/time4j/history/NewYearRule;->CHRISTMAS_STYLE:Lnet/time4j/history/NewYearRule;

    .line 199
    invoke-virtual {v13, v15}, Lnet/time4j/history/NewYearRule;->until(I)Lnet/time4j/history/NewYearStrategy;

    move-result-object v13

    invoke-virtual {v12, v13}, Lnet/time4j/history/NewYearStrategy;->and(Lnet/time4j/history/NewYearStrategy;)Lnet/time4j/history/NewYearStrategy;

    move-result-object v12

    .line 197
    invoke-virtual {v9, v12}, Lnet/time4j/history/ChronoHistory;->with(Lnet/time4j/history/NewYearStrategy;)Lnet/time4j/history/ChronoHistory;

    move-result-object v9

    .line 200
    invoke-static {v10}, Lnet/time4j/history/EraPreference;->hispanicUntil(Lnet/time4j/PlainDate;)Lnet/time4j/history/EraPreference;

    move-result-object v10

    invoke-virtual {v9, v10}, Lnet/time4j/history/ChronoHistory;->with(Lnet/time4j/history/EraPreference;)Lnet/time4j/history/ChronoHistory;

    move-result-object v9

    const-string v10, "PT"

    .line 194
    invoke-interface {v3, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v9, 0x14

    .line 203
    invoke-static {v1, v11, v9}, Lnet/time4j/PlainDate;->of(III)Lnet/time4j/PlainDate;

    move-result-object v1

    invoke-static {v1}, Lnet/time4j/history/ChronoHistory;->ofGregorianReform(Lnet/time4j/PlainDate;)Lnet/time4j/history/ChronoHistory;

    move-result-object v1

    sget-object v9, Lnet/time4j/history/NewYearRule;->EASTER_STYLE:Lnet/time4j/history/NewYearRule;

    const/16 v10, 0x61f

    .line 204
    invoke-virtual {v9, v10}, Lnet/time4j/history/NewYearRule;->until(I)Lnet/time4j/history/NewYearStrategy;

    move-result-object v9

    invoke-virtual {v1, v9}, Lnet/time4j/history/ChronoHistory;->with(Lnet/time4j/history/NewYearStrategy;)Lnet/time4j/history/ChronoHistory;

    move-result-object v1

    const-string v9, "FR"

    .line 201
    invoke-interface {v3, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    invoke-static {}, Lnet/time4j/history/ChronoHistory;->ofFirstGregorianReform()Lnet/time4j/history/ChronoHistory;

    move-result-object v1

    sget-object v9, Lnet/time4j/history/NewYearRule;->CHRISTMAS_STYLE:Lnet/time4j/history/NewYearRule;

    const/16 v10, 0x608

    .line 208
    invoke-virtual {v9, v10}, Lnet/time4j/history/NewYearRule;->until(I)Lnet/time4j/history/NewYearStrategy;

    move-result-object v9

    invoke-virtual {v1, v9}, Lnet/time4j/history/ChronoHistory;->with(Lnet/time4j/history/NewYearStrategy;)Lnet/time4j/history/ChronoHistory;

    move-result-object v1

    const-string v9, "DE"

    .line 205
    invoke-interface {v3, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x62f

    const/16 v9, 0x10

    .line 211
    invoke-static {v1, v2, v9}, Lnet/time4j/PlainDate;->of(III)Lnet/time4j/PlainDate;

    move-result-object v2

    invoke-static {v2}, Lnet/time4j/history/ChronoHistory;->ofGregorianReform(Lnet/time4j/PlainDate;)Lnet/time4j/history/ChronoHistory;

    move-result-object v2

    sget-object v9, Lnet/time4j/history/NewYearRule;->CHRISTMAS_STYLE:Lnet/time4j/history/NewYearRule;

    .line 212
    invoke-virtual {v9, v10}, Lnet/time4j/history/NewYearRule;->until(I)Lnet/time4j/history/NewYearStrategy;

    move-result-object v9

    invoke-virtual {v2, v9}, Lnet/time4j/history/ChronoHistory;->with(Lnet/time4j/history/NewYearStrategy;)Lnet/time4j/history/ChronoHistory;

    move-result-object v2

    const-string v9, "DE-BAYERN"

    .line 209
    invoke-interface {v3, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x64a

    const/16 v9, 0x9

    const/4 v10, 0x2

    .line 215
    invoke-static {v2, v9, v10}, Lnet/time4j/PlainDate;->of(III)Lnet/time4j/PlainDate;

    move-result-object v2

    invoke-static {v2}, Lnet/time4j/history/ChronoHistory;->ofGregorianReform(Lnet/time4j/PlainDate;)Lnet/time4j/history/ChronoHistory;

    move-result-object v2

    sget-object v11, Lnet/time4j/history/NewYearRule;->CHRISTMAS_STYLE:Lnet/time4j/history/NewYearRule;

    const/16 v12, 0x617

    .line 216
    invoke-virtual {v11, v12}, Lnet/time4j/history/NewYearRule;->until(I)Lnet/time4j/history/NewYearStrategy;

    move-result-object v11

    invoke-virtual {v2, v11}, Lnet/time4j/history/ChronoHistory;->with(Lnet/time4j/history/NewYearStrategy;)Lnet/time4j/history/ChronoHistory;

    move-result-object v2

    const-string v11, "DE-PREUSSEN"

    .line 213
    invoke-interface {v3, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x6a4

    .line 219
    invoke-static {v2, v7, v8}, Lnet/time4j/PlainDate;->of(III)Lnet/time4j/PlainDate;

    move-result-object v11

    invoke-static {v11}, Lnet/time4j/history/ChronoHistory;->ofGregorianReform(Lnet/time4j/PlainDate;)Lnet/time4j/history/ChronoHistory;

    move-result-object v11

    sget-object v13, Lnet/time4j/history/NewYearRule;->CHRISTMAS_STYLE:Lnet/time4j/history/NewYearRule;

    .line 220
    invoke-virtual {v13, v12}, Lnet/time4j/history/NewYearRule;->until(I)Lnet/time4j/history/NewYearStrategy;

    move-result-object v12

    invoke-virtual {v11, v12}, Lnet/time4j/history/ChronoHistory;->with(Lnet/time4j/history/NewYearStrategy;)Lnet/time4j/history/ChronoHistory;

    move-result-object v11

    const-string v12, "DE-PROTESTANT"

    .line 217
    invoke-interface {v3, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    invoke-static {v1, v8, v8}, Lnet/time4j/PlainDate;->of(III)Lnet/time4j/PlainDate;

    move-result-object v11

    invoke-static {v11}, Lnet/time4j/history/ChronoHistory;->ofGregorianReform(Lnet/time4j/PlainDate;)Lnet/time4j/history/ChronoHistory;

    move-result-object v11

    const-string v12, "NL"

    .line 221
    invoke-interface {v3, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v11, 0x630

    const/16 v12, 0x11

    .line 226
    invoke-static {v11, v8, v12}, Lnet/time4j/PlainDate;->of(III)Lnet/time4j/PlainDate;

    move-result-object v12

    invoke-static {v12}, Lnet/time4j/history/ChronoHistory;->ofGregorianReform(Lnet/time4j/PlainDate;)Lnet/time4j/history/ChronoHistory;

    move-result-object v12

    const-string v13, "AT"

    .line 224
    invoke-interface {v3, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v12, 0x16

    .line 229
    invoke-static {v11, v8, v12}, Lnet/time4j/PlainDate;->of(III)Lnet/time4j/PlainDate;

    move-result-object v11

    invoke-static {v11}, Lnet/time4j/history/ChronoHistory;->ofGregorianReform(Lnet/time4j/PlainDate;)Lnet/time4j/history/ChronoHistory;

    move-result-object v11

    const-string v12, "CH"

    .line 227
    invoke-interface {v3, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v11, 0x633

    const/16 v12, 0xb

    .line 232
    invoke-static {v11, v12, v8}, Lnet/time4j/PlainDate;->of(III)Lnet/time4j/PlainDate;

    move-result-object v11

    invoke-static {v11}, Lnet/time4j/history/ChronoHistory;->ofGregorianReform(Lnet/time4j/PlainDate;)Lnet/time4j/history/ChronoHistory;

    move-result-object v11

    const-string v12, "HU"

    .line 230
    invoke-interface {v3, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    invoke-static {v2, v7, v8}, Lnet/time4j/PlainDate;->of(III)Lnet/time4j/PlainDate;

    move-result-object v11

    invoke-static {v11}, Lnet/time4j/history/ChronoHistory;->ofGregorianReform(Lnet/time4j/PlainDate;)Lnet/time4j/history/ChronoHistory;

    move-result-object v11

    sget-object v12, Lnet/time4j/history/NewYearRule;->MARIA_ANUNCIATA:Lnet/time4j/history/NewYearRule;

    const/16 v13, 0x657

    .line 236
    invoke-virtual {v12, v13}, Lnet/time4j/history/NewYearRule;->until(I)Lnet/time4j/history/NewYearStrategy;

    move-result-object v12

    invoke-virtual {v11, v12}, Lnet/time4j/history/ChronoHistory;->with(Lnet/time4j/history/NewYearStrategy;)Lnet/time4j/history/ChronoHistory;

    move-result-object v11

    const-string v12, "DK"

    .line 233
    invoke-interface {v3, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    invoke-static {v2, v7, v8}, Lnet/time4j/PlainDate;->of(III)Lnet/time4j/PlainDate;

    move-result-object v7

    invoke-static {v7}, Lnet/time4j/history/ChronoHistory;->ofGregorianReform(Lnet/time4j/PlainDate;)Lnet/time4j/history/ChronoHistory;

    move-result-object v7

    sget-object v8, Lnet/time4j/history/NewYearRule;->MARIA_ANUNCIATA:Lnet/time4j/history/NewYearRule;

    .line 240
    invoke-virtual {v8, v13}, Lnet/time4j/history/NewYearRule;->until(I)Lnet/time4j/history/NewYearStrategy;

    move-result-object v8

    invoke-virtual {v7, v8}, Lnet/time4j/history/ChronoHistory;->with(Lnet/time4j/history/NewYearStrategy;)Lnet/time4j/history/ChronoHistory;

    move-result-object v7

    const-string v8, "NO"

    .line 237
    invoke-interface {v3, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    invoke-static {}, Lnet/time4j/history/ChronoHistory;->ofFirstGregorianReform()Lnet/time4j/history/ChronoHistory;

    move-result-object v7

    sget-object v8, Lnet/time4j/history/NewYearRule;->CHRISTMAS_STYLE:Lnet/time4j/history/NewYearRule;

    .line 244
    invoke-virtual {v8, v1}, Lnet/time4j/history/NewYearRule;->until(I)Lnet/time4j/history/NewYearStrategy;

    move-result-object v1

    invoke-virtual {v7, v1}, Lnet/time4j/history/ChronoHistory;->with(Lnet/time4j/history/NewYearStrategy;)Lnet/time4j/history/ChronoHistory;

    move-result-object v1

    const-string v7, "IT"

    .line 241
    invoke-interface {v3, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    invoke-static {}, Lnet/time4j/history/ChronoHistory;->ofFirstGregorianReform()Lnet/time4j/history/ChronoHistory;

    move-result-object v1

    sget-object v7, Lnet/time4j/history/NewYearRule;->MARIA_ANUNCIATA:Lnet/time4j/history/NewYearRule;

    const/16 v8, 0x6d5

    .line 248
    invoke-virtual {v7, v8}, Lnet/time4j/history/NewYearRule;->until(I)Lnet/time4j/history/NewYearStrategy;

    move-result-object v7

    invoke-virtual {v1, v7}, Lnet/time4j/history/ChronoHistory;->with(Lnet/time4j/history/NewYearStrategy;)Lnet/time4j/history/ChronoHistory;

    move-result-object v1

    const-string v7, "IT-FLORENCE"

    .line 245
    invoke-interface {v3, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    invoke-static {}, Lnet/time4j/history/ChronoHistory;->ofFirstGregorianReform()Lnet/time4j/history/ChronoHistory;

    move-result-object v1

    sget-object v7, Lnet/time4j/history/NewYearRule;->CALCULUS_PISANUS:Lnet/time4j/history/NewYearRule;

    .line 252
    invoke-virtual {v7, v8}, Lnet/time4j/history/NewYearRule;->until(I)Lnet/time4j/history/NewYearStrategy;

    move-result-object v7

    invoke-virtual {v1, v7}, Lnet/time4j/history/ChronoHistory;->with(Lnet/time4j/history/NewYearStrategy;)Lnet/time4j/history/ChronoHistory;

    move-result-object v1

    const-string v7, "IT-PISA"

    .line 249
    invoke-interface {v3, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    invoke-static {}, Lnet/time4j/history/ChronoHistory;->ofFirstGregorianReform()Lnet/time4j/history/ChronoHistory;

    move-result-object v1

    sget-object v7, Lnet/time4j/history/NewYearRule;->BEGIN_OF_MARCH:Lnet/time4j/history/NewYearRule;

    const/16 v8, 0x706

    .line 256
    invoke-virtual {v7, v8}, Lnet/time4j/history/NewYearRule;->until(I)Lnet/time4j/history/NewYearStrategy;

    move-result-object v7

    invoke-virtual {v1, v7}, Lnet/time4j/history/ChronoHistory;->with(Lnet/time4j/history/NewYearStrategy;)Lnet/time4j/history/ChronoHistory;

    move-result-object v1

    const-string v7, "IT-VENICE"

    .line 253
    invoke-interface {v3, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x6d8

    const/16 v7, 0xe

    .line 259
    invoke-static {v1, v9, v7}, Lnet/time4j/PlainDate;->of(III)Lnet/time4j/PlainDate;

    move-result-object v8

    invoke-static {v8}, Lnet/time4j/history/ChronoHistory;->ofGregorianReform(Lnet/time4j/PlainDate;)Lnet/time4j/history/ChronoHistory;

    move-result-object v8

    sget-object v11, Lnet/time4j/history/NewYearRule;->CHRISTMAS_STYLE:Lnet/time4j/history/NewYearRule;

    const/16 v12, 0x43f

    .line 261
    invoke-virtual {v11, v12}, Lnet/time4j/history/NewYearRule;->until(I)Lnet/time4j/history/NewYearStrategy;

    move-result-object v11

    sget-object v13, Lnet/time4j/history/NewYearRule;->BEGIN_OF_JANUARY:Lnet/time4j/history/NewYearRule;

    const/16 v14, 0x483

    .line 262
    invoke-virtual {v13, v14}, Lnet/time4j/history/NewYearRule;->until(I)Lnet/time4j/history/NewYearStrategy;

    move-result-object v13

    invoke-virtual {v11, v13}, Lnet/time4j/history/NewYearStrategy;->and(Lnet/time4j/history/NewYearStrategy;)Lnet/time4j/history/NewYearStrategy;

    move-result-object v11

    sget-object v13, Lnet/time4j/history/NewYearRule;->MARIA_ANUNCIATA:Lnet/time4j/history/NewYearRule;

    .line 263
    invoke-virtual {v13, v1}, Lnet/time4j/history/NewYearRule;->until(I)Lnet/time4j/history/NewYearStrategy;

    move-result-object v13

    invoke-virtual {v11, v13}, Lnet/time4j/history/NewYearStrategy;->and(Lnet/time4j/history/NewYearStrategy;)Lnet/time4j/history/NewYearStrategy;

    move-result-object v11

    .line 260
    invoke-virtual {v8, v11}, Lnet/time4j/history/ChronoHistory;->with(Lnet/time4j/history/NewYearStrategy;)Lnet/time4j/history/ChronoHistory;

    move-result-object v8

    const-string v11, "GB"

    .line 257
    invoke-interface {v3, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    invoke-static {v1, v9, v7}, Lnet/time4j/PlainDate;->of(III)Lnet/time4j/PlainDate;

    move-result-object v1

    invoke-static {v1}, Lnet/time4j/history/ChronoHistory;->ofGregorianReform(Lnet/time4j/PlainDate;)Lnet/time4j/history/ChronoHistory;

    move-result-object v1

    sget-object v8, Lnet/time4j/history/NewYearRule;->CHRISTMAS_STYLE:Lnet/time4j/history/NewYearRule;

    .line 268
    invoke-virtual {v8, v12}, Lnet/time4j/history/NewYearRule;->until(I)Lnet/time4j/history/NewYearStrategy;

    move-result-object v8

    sget-object v9, Lnet/time4j/history/NewYearRule;->BEGIN_OF_JANUARY:Lnet/time4j/history/NewYearRule;

    .line 269
    invoke-virtual {v9, v14}, Lnet/time4j/history/NewYearRule;->until(I)Lnet/time4j/history/NewYearStrategy;

    move-result-object v9

    invoke-virtual {v8, v9}, Lnet/time4j/history/NewYearStrategy;->and(Lnet/time4j/history/NewYearStrategy;)Lnet/time4j/history/NewYearStrategy;

    move-result-object v8

    sget-object v9, Lnet/time4j/history/NewYearRule;->MARIA_ANUNCIATA:Lnet/time4j/history/NewYearRule;

    const/16 v11, 0x640

    .line 270
    invoke-virtual {v9, v11}, Lnet/time4j/history/NewYearRule;->until(I)Lnet/time4j/history/NewYearStrategy;

    move-result-object v9

    invoke-virtual {v8, v9}, Lnet/time4j/history/NewYearStrategy;->and(Lnet/time4j/history/NewYearStrategy;)Lnet/time4j/history/NewYearStrategy;

    move-result-object v8

    .line 267
    invoke-virtual {v1, v8}, Lnet/time4j/history/ChronoHistory;->with(Lnet/time4j/history/NewYearStrategy;)Lnet/time4j/history/ChronoHistory;

    move-result-object v1

    const-string v8, "GB-SCT"

    .line 264
    invoke-interface {v3, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x77e

    .line 273
    invoke-static {v1, v10, v7}, Lnet/time4j/PlainDate;->of(III)Lnet/time4j/PlainDate;

    move-result-object v1

    invoke-static {v1}, Lnet/time4j/history/ChronoHistory;->ofGregorianReform(Lnet/time4j/PlainDate;)Lnet/time4j/history/ChronoHistory;

    move-result-object v1

    sget-object v7, Lnet/time4j/history/NewYearRule;->BEGIN_OF_JANUARY:Lnet/time4j/history/NewYearRule;

    .line 275
    invoke-virtual {v7, v6}, Lnet/time4j/history/NewYearRule;->until(I)Lnet/time4j/history/NewYearStrategy;

    move-result-object v6

    sget-object v7, Lnet/time4j/history/NewYearRule;->BEGIN_OF_MARCH:Lnet/time4j/history/NewYearRule;

    const/16 v8, 0x5d5

    .line 276
    invoke-virtual {v7, v8}, Lnet/time4j/history/NewYearRule;->until(I)Lnet/time4j/history/NewYearStrategy;

    move-result-object v7

    invoke-virtual {v6, v7}, Lnet/time4j/history/NewYearStrategy;->and(Lnet/time4j/history/NewYearStrategy;)Lnet/time4j/history/NewYearStrategy;

    move-result-object v6

    sget-object v7, Lnet/time4j/history/NewYearRule;->BEGIN_OF_SEPTEMBER:Lnet/time4j/history/NewYearRule;

    .line 277
    invoke-virtual {v7, v2}, Lnet/time4j/history/NewYearRule;->until(I)Lnet/time4j/history/NewYearStrategy;

    move-result-object v2

    invoke-virtual {v6, v2}, Lnet/time4j/history/NewYearStrategy;->and(Lnet/time4j/history/NewYearStrategy;)Lnet/time4j/history/NewYearStrategy;

    move-result-object v2

    .line 274
    invoke-virtual {v1, v2}, Lnet/time4j/history/ChronoHistory;->with(Lnet/time4j/history/NewYearStrategy;)Lnet/time4j/history/ChronoHistory;

    move-result-object v1

    .line 278
    invoke-static {v5, v0}, Lnet/time4j/history/EraPreference;->byzantineBetween(Lnet/time4j/PlainDate;Lnet/time4j/PlainDate;)Lnet/time4j/history/EraPreference;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/time4j/history/ChronoHistory;->with(Lnet/time4j/history/EraPreference;)Lnet/time4j/history/ChronoHistory;

    move-result-object v0

    const-string v1, "RU"

    .line 271
    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SE"

    .line 279
    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lnet/time4j/history/ChronoHistory;->LOOKUP:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lnet/time4j/history/internal/HistoricVariant;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/history/internal/HistoricVariant;",
            "Ljava/util/List<",
            "Lnet/time4j/history/CutOverEvent;",
            ">;)V"
        }
    .end annotation

    .line 311
    sget-object v5, Lnet/time4j/history/EraPreference;->DEFAULT:Lnet/time4j/history/EraPreference;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lnet/time4j/history/ChronoHistory;-><init>(Lnet/time4j/history/internal/HistoricVariant;Ljava/util/List;Lnet/time4j/history/AncientJulianLeapYears;Lnet/time4j/history/NewYearStrategy;Lnet/time4j/history/EraPreference;)V

    return-void
.end method

.method private constructor <init>(Lnet/time4j/history/internal/HistoricVariant;Ljava/util/List;Lnet/time4j/history/AncientJulianLeapYears;Lnet/time4j/history/NewYearStrategy;Lnet/time4j/history/EraPreference;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/history/internal/HistoricVariant;",
            "Ljava/util/List<",
            "Lnet/time4j/history/CutOverEvent;",
            ">;",
            "Lnet/time4j/history/AncientJulianLeapYears;",
            "Lnet/time4j/history/NewYearStrategy;",
            "Lnet/time4j/history/EraPreference;",
            ")V"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    .line 322
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 324
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Missing historic variant."

    .line 328
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "Missing era preference."

    .line 330
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 333
    iput-object v0, v6, Lnet/time4j/history/ChronoHistory;->variant:Lnet/time4j/history/internal/HistoricVariant;

    move-object/from16 v0, p2

    .line 334
    iput-object v0, v6, Lnet/time4j/history/ChronoHistory;->events:Ljava/util/List;

    move-object/from16 v0, p3

    .line 335
    iput-object v0, v6, Lnet/time4j/history/ChronoHistory;->ajly:Lnet/time4j/history/AncientJulianLeapYears;

    move-object/from16 v0, p4

    .line 336
    iput-object v0, v6, Lnet/time4j/history/ChronoHistory;->nys:Lnet/time4j/history/NewYearStrategy;

    .line 337
    iput-object v1, v6, Lnet/time4j/history/ChronoHistory;->eraPreference:Lnet/time4j/history/EraPreference;

    .line 339
    new-instance v7, Lnet/time4j/history/HistoricDateElement;

    invoke-direct {v7, v6}, Lnet/time4j/history/HistoricDateElement;-><init>(Lnet/time4j/history/ChronoHistory;)V

    iput-object v7, v6, Lnet/time4j/history/ChronoHistory;->dateElement:Lnet/time4j/engine/ChronoElement;

    .line 340
    new-instance v8, Lnet/time4j/history/HistoricEraElement;

    invoke-direct {v8, v6}, Lnet/time4j/history/HistoricEraElement;-><init>(Lnet/time4j/history/ChronoHistory;)V

    iput-object v8, v6, Lnet/time4j/history/ChronoHistory;->eraElement:Lnet/time4j/engine/ChronoElement;

    .line 342
    new-instance v9, Lnet/time4j/history/HistoricIntegerElement;

    const/16 v1, 0x79

    const/4 v2, 0x1

    const v3, 0x3b9ac9ff

    const/4 v5, 0x2

    move-object v0, v9

    move-object/from16 v4, p0

    invoke-direct/range {v0 .. v5}, Lnet/time4j/history/HistoricIntegerElement;-><init>(CIILnet/time4j/history/ChronoHistory;I)V

    iput-object v9, v6, Lnet/time4j/history/ChronoHistory;->yearOfEraElement:Lnet/time4j/format/TextElement;

    .line 349
    new-instance v10, Lnet/time4j/history/HistoricIntegerElement;

    const/4 v1, 0x0

    const/4 v5, 0x6

    move-object v0, v10

    invoke-direct/range {v0 .. v5}, Lnet/time4j/history/HistoricIntegerElement;-><init>(CIILnet/time4j/history/ChronoHistory;I)V

    iput-object v10, v6, Lnet/time4j/history/ChronoHistory;->yearAfterElement:Lnet/time4j/engine/ChronoElement;

    .line 356
    new-instance v11, Lnet/time4j/history/HistoricIntegerElement;

    const/4 v5, 0x7

    move-object v0, v11

    invoke-direct/range {v0 .. v5}, Lnet/time4j/history/HistoricIntegerElement;-><init>(CIILnet/time4j/history/ChronoHistory;I)V

    iput-object v11, v6, Lnet/time4j/history/ChronoHistory;->yearBeforeElement:Lnet/time4j/engine/ChronoElement;

    .line 363
    new-instance v12, Lnet/time4j/history/HistoricIntegerElement;

    const/16 v1, 0x4d

    const/16 v3, 0xc

    const/4 v5, 0x3

    move-object v0, v12

    invoke-direct/range {v0 .. v5}, Lnet/time4j/history/HistoricIntegerElement;-><init>(CIILnet/time4j/history/ChronoHistory;I)V

    iput-object v12, v6, Lnet/time4j/history/ChronoHistory;->monthElement:Lnet/time4j/format/TextElement;

    .line 370
    new-instance v13, Lnet/time4j/history/HistoricIntegerElement;

    const/16 v1, 0x64

    const/16 v3, 0x1f

    const/4 v5, 0x4

    move-object v0, v13

    invoke-direct/range {v0 .. v5}, Lnet/time4j/history/HistoricIntegerElement;-><init>(CIILnet/time4j/history/ChronoHistory;I)V

    iput-object v13, v6, Lnet/time4j/history/ChronoHistory;->dayOfMonthElement:Lnet/time4j/format/TextElement;

    .line 377
    new-instance v14, Lnet/time4j/history/HistoricIntegerElement;

    const/16 v1, 0x44

    const/16 v3, 0x16d

    const/4 v5, 0x5

    move-object v0, v14

    invoke-direct/range {v0 .. v5}, Lnet/time4j/history/HistoricIntegerElement;-><init>(CIILnet/time4j/history/ChronoHistory;I)V

    iput-object v14, v6, Lnet/time4j/history/ChronoHistory;->dayOfYearElement:Lnet/time4j/format/TextElement;

    .line 384
    new-instance v15, Lnet/time4j/history/HistoricIntegerElement;

    const/4 v1, 0x0

    const v3, 0x989680

    const/16 v5, 0x8

    move-object v0, v15

    invoke-direct/range {v0 .. v5}, Lnet/time4j/history/HistoricIntegerElement;-><init>(CIILnet/time4j/history/ChronoHistory;I)V

    iput-object v15, v6, Lnet/time4j/history/ChronoHistory;->centuryElement:Lnet/time4j/engine/ChronoElement;

    .line 392
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 393
    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 394
    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 395
    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 396
    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 397
    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 398
    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 399
    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 400
    invoke-interface {v0, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 401
    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 402
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, v6, Lnet/time4j/history/ChronoHistory;->elements:Ljava/util/Set;

    return-void

    .line 325
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "At least one cutover event must be present in chronological history."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static check(J)V
    .locals 2

    .line 1883
    sget-wide v0, Lnet/time4j/history/ChronoHistory;->EARLIEST_CUTOVER:J

    cmp-long p0, p0, v0

    if-ltz p0, :cond_0

    return-void

    .line 1884
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Gregorian calendar did not exist before 1582-10-15"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static from(Ljava/lang/String;)Lnet/time4j/history/ChronoHistory;
    .locals 14

    const-string v0, "historic-"

    .line 865
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0x9

    .line 869
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 871
    array-length v1, v0

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    .line 875
    aget-object v2, v0, v1

    invoke-static {v2}, Lnet/time4j/history/internal/HistoricVariant;->valueOf(Ljava/lang/String;)Lnet/time4j/history/internal/HistoricVariant;

    move-result-object v2

    .line 879
    sget-object v3, Lnet/time4j/history/ChronoHistory$1;->$SwitchMap$net$time4j$history$internal$HistoricVariant:[I

    invoke-virtual {v2}, Lnet/time4j/history/internal/HistoricVariant;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x1

    packed-switch v3, :pswitch_data_0

    .line 901
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {v2}, Lnet/time4j/history/internal/HistoricVariant;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 897
    :pswitch_0
    invoke-static {v0, p0}, Lnet/time4j/history/ChronoHistory;->getGregorianCutOverDate([Ljava/lang/String;Ljava/lang/String;)Lnet/time4j/PlainDate;

    move-result-object v2

    .line 898
    invoke-static {v2}, Lnet/time4j/history/ChronoHistory;->ofGregorianReform(Lnet/time4j/PlainDate;)Lnet/time4j/history/ChronoHistory;

    move-result-object v2

    :goto_0
    move v3, v4

    goto :goto_1

    .line 891
    :pswitch_1
    invoke-static {v0, p0}, Lnet/time4j/history/ChronoHistory;->getGregorianCutOverDate([Ljava/lang/String;Ljava/lang/String;)Lnet/time4j/PlainDate;

    move-result-object v2

    const/16 v3, 0x62e

    const/16 v6, 0xa

    const/16 v7, 0xf

    invoke-static {v3, v6, v7}, Lnet/time4j/PlainDate;->of(III)Lnet/time4j/PlainDate;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/time4j/PlainDate;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 894
    invoke-static {}, Lnet/time4j/history/ChronoHistory;->ofFirstGregorianReform()Lnet/time4j/history/ChronoHistory;

    move-result-object v2

    goto :goto_0

    .line 892
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inconsistent cutover date: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 887
    :pswitch_2
    invoke-static {}, Lnet/time4j/history/ChronoHistory;->ofSweden()Lnet/time4j/history/ChronoHistory;

    move-result-object v2

    move v3, v5

    .line 904
    :goto_1
    aget-object v6, v0, v3

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 906
    aget-object v8, v6, v1

    const-string v9, "ancient-julian-leap-years"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, ","

    if-eqz v8, :cond_2

    .line 907
    aget-object v8, v6, v5

    aget-object v6, v6, v5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-virtual {v8, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 908
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 909
    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 910
    array-length v8, v6

    new-array v8, v8, [I

    move v10, v1

    .line 911
    :goto_2
    array-length v11, v6

    if-ge v10, v11, :cond_1

    .line 912
    aget-object v11, v6, v10

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    rsub-int/lit8 v11, v11, 0x1

    aput v11, v8, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 914
    :cond_1
    invoke-static {v8}, Lnet/time4j/history/AncientJulianLeapYears;->of([I)Lnet/time4j/history/AncientJulianLeapYears;

    move-result-object v6

    invoke-virtual {v2, v6}, Lnet/time4j/history/ChronoHistory;->with(Lnet/time4j/history/AncientJulianLeapYears;)Lnet/time4j/history/ChronoHistory;

    move-result-object v2

    :cond_2
    add-int/lit8 v6, v3, 0x1

    .line 918
    aget-object v6, v0, v6

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 920
    aget-object v8, v6, v1

    const-string v10, "new-year-strategy"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 921
    aget-object v8, v6, v5

    aget-object v6, v6, v5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-virtual {v8, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 922
    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    move v10, v1

    .line 924
    :goto_3
    array-length v11, v6

    if-ge v10, v11, :cond_6

    .line 925
    aget-object v11, v6, v10

    const-string v12, "->"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 926
    aget-object v12, v11, v1

    invoke-static {v12}, Lnet/time4j/history/NewYearRule;->valueOf(Ljava/lang/String;)Lnet/time4j/history/NewYearRule;

    move-result-object v12

    .line 927
    array-length v13, v11

    if-ne v13, v4, :cond_3

    aget-object v11, v11, v5

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    goto :goto_4

    :cond_3
    const v11, 0x7fffffff

    :goto_4
    if-nez v8, :cond_5

    .line 929
    sget-object v13, Lnet/time4j/history/NewYearRule;->BEGIN_OF_JANUARY:Lnet/time4j/history/NewYearRule;

    if-ne v12, v13, :cond_4

    const/16 v13, 0x237

    if-ne v11, v13, :cond_4

    goto :goto_5

    .line 932
    :cond_4
    invoke-virtual {v12, v11}, Lnet/time4j/history/NewYearRule;->until(I)Lnet/time4j/history/NewYearStrategy;

    move-result-object v8

    goto :goto_5

    .line 934
    :cond_5
    invoke-virtual {v12, v11}, Lnet/time4j/history/NewYearRule;->until(I)Lnet/time4j/history/NewYearStrategy;

    move-result-object v11

    invoke-virtual {v8, v11}, Lnet/time4j/history/NewYearStrategy;->and(Lnet/time4j/history/NewYearStrategy;)Lnet/time4j/history/NewYearStrategy;

    move-result-object v8

    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 937
    :cond_6
    invoke-virtual {v2, v8}, Lnet/time4j/history/ChronoHistory;->with(Lnet/time4j/history/NewYearStrategy;)Lnet/time4j/history/ChronoHistory;

    move-result-object v2

    :cond_7
    add-int/2addr v3, v4

    .line 940
    aget-object v0, v0, v3

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 942
    aget-object v3, v0, v1

    const-string v6, "era-preference"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 943
    aget-object v3, v0, v5

    aget-object v0, v0, v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-virtual {v3, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v3, "default"

    .line 944
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 945
    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 947
    :try_start_0
    aget-object v1, v0, v1

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/time4j/history/HistoricEra;->valueOf(Ljava/lang/String;)Lnet/time4j/history/HistoricEra;

    move-result-object v1

    .line 948
    aget-object v6, v0, v5

    const/4 v7, 0x7

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lnet/time4j/format/expert/Iso8601Format;->parseDate(Ljava/lang/CharSequence;)Lnet/time4j/PlainDate;

    move-result-object v6

    .line 949
    aget-object v0, v0, v4

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/time4j/format/expert/Iso8601Format;->parseDate(Ljava/lang/CharSequence;)Lnet/time4j/PlainDate;

    move-result-object v0

    .line 950
    sget-object v3, Lnet/time4j/history/ChronoHistory$1;->$SwitchMap$net$time4j$history$HistoricEra:[I

    invoke-virtual {v1}, Lnet/time4j/history/HistoricEra;->ordinal()I

    move-result v1

    aget v1, v3, v1

    if-eq v1, v5, :cond_a

    if-eq v1, v4, :cond_9

    const/4 v3, 0x3

    if-ne v1, v3, :cond_8

    .line 958
    invoke-static {v6, v0}, Lnet/time4j/history/EraPreference;->abUrbeConditaBetween(Lnet/time4j/PlainDate;Lnet/time4j/PlainDate;)Lnet/time4j/history/EraPreference;

    move-result-object v0

    invoke-virtual {v2, v0}, Lnet/time4j/history/ChronoHistory;->with(Lnet/time4j/history/EraPreference;)Lnet/time4j/history/ChronoHistory;

    move-result-object p0

    goto :goto_6

    .line 961
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BC/AD not allowed as era preference: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 955
    :cond_9
    invoke-static {v6, v0}, Lnet/time4j/history/EraPreference;->byzantineBetween(Lnet/time4j/PlainDate;Lnet/time4j/PlainDate;)Lnet/time4j/history/EraPreference;

    move-result-object v0

    invoke-virtual {v2, v0}, Lnet/time4j/history/ChronoHistory;->with(Lnet/time4j/history/EraPreference;)Lnet/time4j/history/ChronoHistory;

    move-result-object p0

    goto :goto_6

    .line 952
    :cond_a
    invoke-static {v6, v0}, Lnet/time4j/history/EraPreference;->hispanicBetween(Lnet/time4j/PlainDate;Lnet/time4j/PlainDate;)Lnet/time4j/history/EraPreference;

    move-result-object v0

    invoke-virtual {v2, v0}, Lnet/time4j/history/ChronoHistory;->with(Lnet/time4j/history/EraPreference;)Lnet/time4j/history/ChronoHistory;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_6
    move-object v2, p0

    goto :goto_7

    .line 964
    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid date syntax: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    :goto_7
    return-object v2

    .line 885
    :pswitch_3
    sget-object p0, Lnet/time4j/history/ChronoHistory;->PROLEPTIC_BYZANTINE:Lnet/time4j/history/ChronoHistory;

    return-object p0

    .line 883
    :pswitch_4
    sget-object p0, Lnet/time4j/history/ChronoHistory;->PROLEPTIC_JULIAN:Lnet/time4j/history/ChronoHistory;

    return-object p0

    .line 881
    :pswitch_5
    sget-object p0, Lnet/time4j/history/ChronoHistory;->PROLEPTIC_GREGORIAN:Lnet/time4j/history/ChronoHistory;

    return-object p0

    .line 872
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid variant description."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 866
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Variant does not start with \"historic-\": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getGregorianCutOverDate([Ljava/lang/String;Ljava/lang/String;)Lnet/time4j/PlainDate;
    .locals 3

    const/4 v0, 0x1

    .line 975
    aget-object p0, p0, v0

    const-string v1, "="

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 977
    array-length v1, p0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    .line 979
    aget-object v1, p0, v1

    const-string v2, "cutover"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 981
    :try_start_0
    sget-object v1, Lnet/time4j/format/expert/Iso8601Format;->EXTENDED_DATE:Lnet/time4j/format/expert/ChronoFormatter;

    aget-object p0, p0, v0

    invoke-virtual {v1, p0}, Lnet/time4j/format/expert/ChronoFormatter;->parse(Ljava/lang/CharSequence;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/time4j/PlainDate;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 987
    :catch_0
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid cutover definition: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 978
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid syntax in variant description: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getJulianAlgorithm()Lnet/time4j/history/Calculus;
    .locals 1

    .line 1864
    iget-object v0, p0, Lnet/time4j/history/ChronoHistory;->ajly:Lnet/time4j/history/AncientJulianLeapYears;

    if-eqz v0, :cond_0

    .line 1865
    invoke-virtual {v0}, Lnet/time4j/history/AncientJulianLeapYears;->getCalculus()Lnet/time4j/history/Calculus;

    move-result-object v0

    return-object v0

    .line 1868
    :cond_0
    sget-object v0, Lnet/time4j/history/CalendarAlgorithm;->JULIAN:Lnet/time4j/history/CalendarAlgorithm;

    return-object v0
.end method

.method private static isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    .line 1877
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method private isOutOfRange(Lnet/time4j/history/HistoricDate;)Z
    .locals 5

    .line 1848
    invoke-virtual {p1}, Lnet/time4j/history/HistoricDate;->getEra()Lnet/time4j/history/HistoricEra;

    move-result-object v0

    invoke-virtual {p1}, Lnet/time4j/history/HistoricDate;->getYearOfEra()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/time4j/history/HistoricEra;->annoDomini(I)I

    move-result v0

    .line 1850
    sget-object v1, Lnet/time4j/history/ChronoHistory;->PROLEPTIC_BYZANTINE:Lnet/time4j/history/ChronoHistory;

    const v2, 0x3b9a79c9

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p0, v1, :cond_3

    const/16 v1, -0x1584

    if-lt v0, v1, :cond_1

    if-ne v0, v1, :cond_0

    .line 1851
    invoke-virtual {p1}, Lnet/time4j/history/HistoricDate;->getMonth()I

    move-result p1

    const/16 v1, 0x9

    if-lt p1, v1, :cond_1

    :cond_0
    if-le v0, v2, :cond_2

    :cond_1
    move v3, v4

    :cond_2
    return v3

    .line 1852
    :cond_3
    sget-object p1, Lnet/time4j/history/ChronoHistory;->PROLEPTIC_JULIAN:Lnet/time4j/history/ChronoHistory;

    if-ne p0, p1, :cond_5

    .line 1853
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-le p1, v2, :cond_4

    move v3, v4

    :cond_4
    return v3

    .line 1854
    :cond_5
    sget-object p1, Lnet/time4j/history/ChronoHistory;->PROLEPTIC_GREGORIAN:Lnet/time4j/history/ChronoHistory;

    if-ne p0, p1, :cond_7

    .line 1855
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const v0, 0x3b9ac9ff

    if-le p1, v0, :cond_6

    move v3, v4

    :cond_6
    return v3

    :cond_7
    const/16 p1, -0x2c

    if-lt v0, p1, :cond_8

    const/16 p1, 0x270f

    if-le v0, p1, :cond_9

    :cond_8
    move v3, v4

    :cond_9
    return v3
.end method

.method public static of(Ljava/util/Locale;)Lnet/time4j/history/ChronoHistory;
    .locals 2

    .line 695
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 698
    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 699
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 700
    sget-object p0, Lnet/time4j/history/ChronoHistory;->LOOKUP:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/time4j/history/ChronoHistory;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    .line 704
    sget-object p0, Lnet/time4j/history/ChronoHistory;->LOOKUP:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/time4j/history/ChronoHistory;

    :cond_1
    if-nez p0, :cond_2

    .line 708
    invoke-static {}, Lnet/time4j/history/ChronoHistory;->ofFirstGregorianReform()Lnet/time4j/history/ChronoHistory;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static ofFirstGregorianReform()Lnet/time4j/history/ChronoHistory;
    .locals 1

    .line 426
    sget-object v0, Lnet/time4j/history/ChronoHistory;->INTRODUCTION_BY_POPE_GREGOR:Lnet/time4j/history/ChronoHistory;

    return-object v0
.end method

.method private static ofGregorianReform(J)Lnet/time4j/history/ChronoHistory;
    .locals 5

    .line 1891
    new-instance v0, Lnet/time4j/history/ChronoHistory;

    sget-wide v1, Lnet/time4j/history/ChronoHistory;->EARLIEST_CUTOVER:J

    cmp-long v1, p0, v1

    if-nez v1, :cond_0

    sget-object v1, Lnet/time4j/history/internal/HistoricVariant;->INTRODUCTION_ON_1582_10_15:Lnet/time4j/history/internal/HistoricVariant;

    goto :goto_0

    :cond_0
    sget-object v1, Lnet/time4j/history/internal/HistoricVariant;->SINGLE_CUTOVER_DATE:Lnet/time4j/history/internal/HistoricVariant;

    :goto_0
    new-instance v2, Lnet/time4j/history/CutOverEvent;

    sget-object v3, Lnet/time4j/history/CalendarAlgorithm;->JULIAN:Lnet/time4j/history/CalendarAlgorithm;

    sget-object v4, Lnet/time4j/history/CalendarAlgorithm;->GREGORIAN:Lnet/time4j/history/CalendarAlgorithm;

    invoke-direct {v2, p0, p1, v3, v4}, Lnet/time4j/history/CutOverEvent;-><init>(JLnet/time4j/history/CalendarAlgorithm;Lnet/time4j/history/CalendarAlgorithm;)V

    .line 1895
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lnet/time4j/history/ChronoHistory;-><init>(Lnet/time4j/history/internal/HistoricVariant;Ljava/util/List;)V

    return-object v0
.end method

.method public static ofGregorianReform(Lnet/time4j/PlainDate;)Lnet/time4j/history/ChronoHistory;
    .locals 4

    .line 457
    invoke-static {}, Lnet/time4j/PlainDate;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/engine/TimeAxis;->getMaximum()Lnet/time4j/engine/TimePoint;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/time4j/PlainDate;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    sget-object p0, Lnet/time4j/history/ChronoHistory;->PROLEPTIC_JULIAN:Lnet/time4j/history/ChronoHistory;

    return-object p0

    .line 459
    :cond_0
    invoke-static {}, Lnet/time4j/PlainDate;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/engine/TimeAxis;->getMinimum()Lnet/time4j/engine/TimePoint;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/time4j/PlainDate;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 460
    sget-object p0, Lnet/time4j/history/ChronoHistory;->PROLEPTIC_GREGORIAN:Lnet/time4j/history/ChronoHistory;

    return-object p0

    .line 463
    :cond_1
    sget-object v0, Lnet/time4j/engine/EpochDays;->MODIFIED_JULIAN_DATE:Lnet/time4j/engine/EpochDays;

    invoke-virtual {p0, v0}, Lnet/time4j/PlainDate;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 464
    invoke-static {v0, v1}, Lnet/time4j/history/ChronoHistory;->check(J)V

    .line 466
    sget-wide v2, Lnet/time4j/history/ChronoHistory;->EARLIEST_CUTOVER:J

    cmp-long p0, v0, v2

    if-nez p0, :cond_2

    .line 467
    sget-object p0, Lnet/time4j/history/ChronoHistory;->INTRODUCTION_BY_POPE_GREGOR:Lnet/time4j/history/ChronoHistory;

    return-object p0

    .line 470
    :cond_2
    invoke-static {v0, v1}, Lnet/time4j/history/ChronoHistory;->ofGregorianReform(J)Lnet/time4j/history/ChronoHistory;

    move-result-object p0

    return-object p0
.end method

.method public static ofSweden()Lnet/time4j/history/ChronoHistory;
    .locals 1

    .line 731
    sget-object v0, Lnet/time4j/history/ChronoHistory;->SWEDEN:Lnet/time4j/history/ChronoHistory;

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1931
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Serialization proxy required."

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1919
    new-instance v0, Lnet/time4j/history/SPX;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lnet/time4j/history/SPX;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method


# virtual methods
.method adjustDayOfMonth(Lnet/time4j/history/HistoricDate;)Lnet/time4j/history/HistoricDate;
    .locals 3

    .line 1796
    invoke-virtual {p0, p1}, Lnet/time4j/history/ChronoHistory;->getAlgorithm(Lnet/time4j/history/HistoricDate;)Lnet/time4j/history/Calculus;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p1

    .line 1802
    :cond_0
    invoke-interface {v0, p1}, Lnet/time4j/history/Calculus;->getMaximumDayOfMonth(Lnet/time4j/history/HistoricDate;)I

    move-result v0

    .line 1804
    invoke-virtual {p1}, Lnet/time4j/history/HistoricDate;->getDayOfMonth()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1805
    invoke-virtual {p1}, Lnet/time4j/history/HistoricDate;->getEra()Lnet/time4j/history/HistoricEra;

    move-result-object v1

    invoke-virtual {p1}, Lnet/time4j/history/HistoricDate;->getYearOfEra()I

    move-result v2

    invoke-virtual {p1}, Lnet/time4j/history/HistoricDate;->getMonth()I

    move-result p1

    invoke-static {v1, v2, p1, v0}, Lnet/time4j/history/HistoricDate;->of(Lnet/time4j/history/HistoricEra;III)Lnet/time4j/history/HistoricDate;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public centuryOfEra()Lnet/time4j/engine/ChronoElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1607
    iget-object v0, p0, Lnet/time4j/history/ChronoHistory;->centuryElement:Lnet/time4j/engine/ChronoElement;

    return-object v0
.end method

.method public convert(Lnet/time4j/history/HistoricDate;)Lnet/time4j/PlainDate;
    .locals 3

    .line 784
    invoke-direct {p0, p1}, Lnet/time4j/history/ChronoHistory;->isOutOfRange(Lnet/time4j/history/HistoricDate;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 788
    invoke-virtual {p0, p1}, Lnet/time4j/history/ChronoHistory;->getAlgorithm(Lnet/time4j/history/HistoricDate;)Lnet/time4j/history/Calculus;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 794
    invoke-interface {v0, p1}, Lnet/time4j/history/Calculus;->toMJD(Lnet/time4j/history/HistoricDate;)J

    move-result-wide v0

    sget-object p1, Lnet/time4j/engine/EpochDays;->MODIFIED_JULIAN_DATE:Lnet/time4j/engine/EpochDays;

    invoke-static {v0, v1, p1}, Lnet/time4j/PlainDate;->of(JLnet/time4j/engine/EpochDays;)Lnet/time4j/PlainDate;

    move-result-object p1

    return-object p1

    .line 791
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid historic date: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 785
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Out of supported range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public convert(Lnet/time4j/PlainDate;)Lnet/time4j/history/HistoricDate;
    .locals 6

    .line 816
    sget-object v0, Lnet/time4j/engine/EpochDays;->MODIFIED_JULIAN_DATE:Lnet/time4j/engine/EpochDays;

    invoke-virtual {p1, v0}, Lnet/time4j/PlainDate;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 819
    iget-object v2, p0, Lnet/time4j/history/ChronoHistory;->events:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    .line 820
    iget-object v3, p0, Lnet/time4j/history/ChronoHistory;->events:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/time4j/history/CutOverEvent;

    .line 822
    iget-wide v4, v3, Lnet/time4j/history/CutOverEvent;->start:J

    cmp-long v4, v0, v4

    if-ltz v4, :cond_0

    .line 823
    iget-object v2, v3, Lnet/time4j/history/CutOverEvent;->algorithm:Lnet/time4j/history/CalendarAlgorithm;

    invoke-virtual {v2, v0, v1}, Lnet/time4j/history/CalendarAlgorithm;->fromMJD(J)Lnet/time4j/history/HistoricDate;

    move-result-object v2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_2

    .line 829
    invoke-direct {p0}, Lnet/time4j/history/ChronoHistory;->getJulianAlgorithm()Lnet/time4j/history/Calculus;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lnet/time4j/history/Calculus;->fromMJD(J)Lnet/time4j/history/HistoricDate;

    move-result-object v2

    .line 832
    :cond_2
    iget-object v0, p0, Lnet/time4j/history/ChronoHistory;->eraPreference:Lnet/time4j/history/EraPreference;

    invoke-virtual {v0, v2, p1}, Lnet/time4j/history/EraPreference;->getPreferredEra(Lnet/time4j/history/HistoricDate;Lnet/time4j/PlainDate;)Lnet/time4j/history/HistoricEra;

    move-result-object p1

    .line 834
    invoke-virtual {v2}, Lnet/time4j/history/HistoricDate;->getEra()Lnet/time4j/history/HistoricEra;

    move-result-object v0

    if-eq p1, v0, :cond_3

    .line 835
    invoke-virtual {v2}, Lnet/time4j/history/HistoricDate;->getEra()Lnet/time4j/history/HistoricEra;

    move-result-object v0

    invoke-virtual {v2}, Lnet/time4j/history/HistoricDate;->getYearOfEra()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lnet/time4j/history/HistoricEra;->yearOfEra(Lnet/time4j/history/HistoricEra;I)I

    move-result v0

    .line 836
    invoke-virtual {v2}, Lnet/time4j/history/HistoricDate;->getMonth()I

    move-result v1

    invoke-virtual {v2}, Lnet/time4j/history/HistoricDate;->getDayOfMonth()I

    move-result v2

    invoke-static {p1, v0, v1, v2}, Lnet/time4j/history/HistoricDate;->of(Lnet/time4j/history/HistoricEra;III)Lnet/time4j/history/HistoricDate;

    move-result-object v2

    .line 839
    :cond_3
    invoke-direct {p0, v2}, Lnet/time4j/history/ChronoHistory;->isOutOfRange(Lnet/time4j/history/HistoricDate;)Z

    move-result p1

    if-nez p1, :cond_4

    return-object v2

    .line 840
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Out of supported range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public date()Lnet/time4j/engine/ChronoElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/ChronoElement<",
            "Lnet/time4j/history/HistoricDate;",
            ">;"
        }
    .end annotation

    .line 1436
    iget-object v0, p0, Lnet/time4j/history/ChronoHistory;->dateElement:Lnet/time4j/engine/ChronoElement;

    return-object v0
.end method

.method public dayOfMonth()Lnet/time4j/engine/ChronoElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        format = "d"
    .end annotation

    .line 1665
    iget-object v0, p0, Lnet/time4j/history/ChronoHistory;->dayOfMonthElement:Lnet/time4j/format/TextElement;

    return-object v0
.end method

.method public dayOfYear()Lnet/time4j/engine/ChronoElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        format = "D"
    .end annotation

    .line 1697
    iget-object v0, p0, Lnet/time4j/history/ChronoHistory;->dayOfYearElement:Lnet/time4j/format/TextElement;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1724
    :cond_0
    instance-of v1, p1, Lnet/time4j/history/ChronoHistory;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 1725
    check-cast p1, Lnet/time4j/history/ChronoHistory;

    .line 1727
    iget-object v1, p0, Lnet/time4j/history/ChronoHistory;->variant:Lnet/time4j/history/internal/HistoricVariant;

    iget-object v3, p1, Lnet/time4j/history/ChronoHistory;->variant:Lnet/time4j/history/internal/HistoricVariant;

    if-ne v1, v3, :cond_3

    .line 1728
    iget-object v1, p0, Lnet/time4j/history/ChronoHistory;->ajly:Lnet/time4j/history/AncientJulianLeapYears;

    iget-object v3, p1, Lnet/time4j/history/ChronoHistory;->ajly:Lnet/time4j/history/AncientJulianLeapYears;

    .line 1729
    invoke-static {v1, v3}, Lnet/time4j/history/ChronoHistory;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lnet/time4j/history/ChronoHistory;->nys:Lnet/time4j/history/NewYearStrategy;

    iget-object v3, p1, Lnet/time4j/history/ChronoHistory;->nys:Lnet/time4j/history/NewYearStrategy;

    .line 1730
    invoke-static {v1, v3}, Lnet/time4j/history/ChronoHistory;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lnet/time4j/history/ChronoHistory;->eraPreference:Lnet/time4j/history/EraPreference;

    iget-object v3, p1, Lnet/time4j/history/ChronoHistory;->eraPreference:Lnet/time4j/history/EraPreference;

    .line 1731
    invoke-virtual {v1, v3}, Lnet/time4j/history/EraPreference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1733
    iget-object v1, p0, Lnet/time4j/history/ChronoHistory;->variant:Lnet/time4j/history/internal/HistoricVariant;

    sget-object v3, Lnet/time4j/history/internal/HistoricVariant;->SINGLE_CUTOVER_DATE:Lnet/time4j/history/internal/HistoricVariant;

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lnet/time4j/history/ChronoHistory;->events:Ljava/util/List;

    .line 1735
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/history/CutOverEvent;

    iget-wide v3, v1, Lnet/time4j/history/CutOverEvent;->start:J

    iget-object p1, p1, Lnet/time4j/history/ChronoHistory;->events:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/history/CutOverEvent;

    iget-wide v5, p1, Lnet/time4j/history/CutOverEvent;->start:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :cond_2
    :goto_0
    return v0

    :cond_3
    return v2
.end method

.method public era()Lnet/time4j/engine/ChronoElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/ChronoElement<",
            "Lnet/time4j/history/HistoricEra;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        format = "G"
    .end annotation

    .line 1468
    iget-object v0, p0, Lnet/time4j/history/ChronoHistory;->eraElement:Lnet/time4j/engine/ChronoElement;

    return-object v0
.end method

.method getAlgorithm(Lnet/time4j/history/HistoricDate;)Lnet/time4j/history/Calculus;
    .locals 3

    .line 1772
    iget-object v0, p0, Lnet/time4j/history/ChronoHistory;->events:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 1773
    iget-object v1, p0, Lnet/time4j/history/ChronoHistory;->events:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/history/CutOverEvent;

    .line 1775
    iget-object v2, v1, Lnet/time4j/history/CutOverEvent;->dateAtCutOver:Lnet/time4j/history/HistoricDate;

    invoke-virtual {p1, v2}, Lnet/time4j/history/HistoricDate;->compareTo(Lnet/time4j/history/HistoricDate;)I

    move-result v2

    if-ltz v2, :cond_0

    .line 1776
    iget-object p1, v1, Lnet/time4j/history/CutOverEvent;->algorithm:Lnet/time4j/history/CalendarAlgorithm;

    return-object p1

    .line 1777
    :cond_0
    iget-object v1, v1, Lnet/time4j/history/CutOverEvent;->dateBeforeCutOver:Lnet/time4j/history/HistoricDate;

    invoke-virtual {p1, v1}, Lnet/time4j/history/HistoricDate;->compareTo(Lnet/time4j/history/HistoricDate;)I

    move-result v1

    if-lez v1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1782
    :cond_2
    invoke-direct {p0}, Lnet/time4j/history/ChronoHistory;->getJulianAlgorithm()Lnet/time4j/history/Calculus;

    move-result-object p1

    return-object p1
.end method

.method public getAncientJulianLeapYears()Lnet/time4j/history/AncientJulianLeapYears;
    .locals 2

    .line 1243
    iget-object v0, p0, Lnet/time4j/history/ChronoHistory;->ajly:Lnet/time4j/history/AncientJulianLeapYears;

    if-eqz v0, :cond_0

    return-object v0

    .line 1244
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No historic julian leap years were defined."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBeginOfYear(Lnet/time4j/history/HistoricEra;I)Lnet/time4j/history/HistoricDate;
    .locals 3

    .line 1135
    invoke-virtual {p0}, Lnet/time4j/history/ChronoHistory;->getNewYearStrategy()Lnet/time4j/history/NewYearStrategy;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/time4j/history/NewYearStrategy;->newYear(Lnet/time4j/history/HistoricEra;I)Lnet/time4j/history/HistoricDate;

    move-result-object v0

    .line 1137
    invoke-virtual {p0, v0}, Lnet/time4j/history/ChronoHistory;->isValid(Lnet/time4j/history/HistoricDate;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1138
    invoke-virtual {p0, v0}, Lnet/time4j/history/ChronoHistory;->convert(Lnet/time4j/history/HistoricDate;)Lnet/time4j/PlainDate;

    move-result-object p2

    .line 1139
    iget-object v1, p0, Lnet/time4j/history/ChronoHistory;->eraPreference:Lnet/time4j/history/EraPreference;

    invoke-virtual {v1, v0, p2}, Lnet/time4j/history/EraPreference;->getPreferredEra(Lnet/time4j/history/HistoricDate;Lnet/time4j/PlainDate;)Lnet/time4j/history/HistoricEra;

    move-result-object p2

    if-eq p2, p1, :cond_0

    .line 1141
    invoke-virtual {v0}, Lnet/time4j/history/HistoricDate;->getEra()Lnet/time4j/history/HistoricEra;

    move-result-object p1

    invoke-virtual {v0}, Lnet/time4j/history/HistoricDate;->getYearOfEra()I

    move-result v1

    invoke-virtual {p2, p1, v1}, Lnet/time4j/history/HistoricEra;->yearOfEra(Lnet/time4j/history/HistoricEra;I)I

    move-result p1

    .line 1142
    invoke-virtual {v0}, Lnet/time4j/history/HistoricDate;->getMonth()I

    move-result v1

    invoke-virtual {v0}, Lnet/time4j/history/HistoricDate;->getDayOfMonth()I

    move-result v0

    invoke-static {p2, p1, v1, v0}, Lnet/time4j/history/HistoricDate;->of(Lnet/time4j/history/HistoricEra;III)Lnet/time4j/history/HistoricDate;

    move-result-object v0

    :cond_0
    return-object v0

    .line 1146
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot determine valid New Year: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getElements()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;>;"
        }
    .end annotation

    .line 1715
    iget-object v0, p0, Lnet/time4j/history/ChronoHistory;->elements:Ljava/util/Set;

    return-object v0
.end method

.method getEraPreference()Lnet/time4j/history/EraPreference;
    .locals 1

    .line 1842
    iget-object v0, p0, Lnet/time4j/history/ChronoHistory;->eraPreference:Lnet/time4j/history/EraPreference;

    return-object v0
.end method

.method getEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/time4j/history/CutOverEvent;",
            ">;"
        }
    .end annotation

    .line 1820
    iget-object v0, p0, Lnet/time4j/history/ChronoHistory;->events:Ljava/util/List;

    return-object v0
.end method

.method public getGregorianCutOverDate()Lnet/time4j/PlainDate;
    .locals 4

    .line 1065
    iget-object v0, p0, Lnet/time4j/history/ChronoHistory;->events:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/history/CutOverEvent;

    iget-wide v0, v0, Lnet/time4j/history/CutOverEvent;->start:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 1071
    sget-object v2, Lnet/time4j/engine/EpochDays;->MODIFIED_JULIAN_DATE:Lnet/time4j/engine/EpochDays;

    invoke-static {v0, v1, v2}, Lnet/time4j/PlainDate;->of(JLnet/time4j/engine/EpochDays;)Lnet/time4j/PlainDate;

    move-result-object v0

    return-object v0

    .line 1068
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Proleptic history without any gregorian reform date."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getHistoricVariant()Lnet/time4j/history/internal/HistoricVariant;
    .locals 1

    .line 1831
    iget-object v0, p0, Lnet/time4j/history/ChronoHistory;->variant:Lnet/time4j/history/internal/HistoricVariant;

    return-object v0
.end method

.method public getLengthOfYear(Lnet/time4j/history/HistoricEra;I)I
    .locals 4

    .line 1192
    :try_start_0
    iget-object v0, p0, Lnet/time4j/history/ChronoHistory;->nys:Lnet/time4j/history/NewYearStrategy;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1193
    invoke-static {p1, p2, v1, v1}, Lnet/time4j/history/HistoricDate;->of(Lnet/time4j/history/HistoricEra;III)Lnet/time4j/history/HistoricDate;

    move-result-object v0

    const/16 v2, 0xc

    const/16 v3, 0x1f

    .line 1194
    invoke-static {p1, p2, v2, v3}, Lnet/time4j/history/HistoricDate;->of(Lnet/time4j/history/HistoricEra;III)Lnet/time4j/history/HistoricDate;

    move-result-object p1

    goto :goto_1

    .line 1197
    :cond_0
    invoke-virtual {v0, p1, p2}, Lnet/time4j/history/NewYearStrategy;->newYear(Lnet/time4j/history/HistoricEra;I)Lnet/time4j/history/HistoricDate;

    move-result-object v0

    .line 1198
    sget-object v2, Lnet/time4j/history/HistoricEra;->BC:Lnet/time4j/history/HistoricEra;

    if-ne p1, v2, :cond_2

    if-ne p2, v1, :cond_1

    .line 1200
    iget-object p1, p0, Lnet/time4j/history/ChronoHistory;->nys:Lnet/time4j/history/NewYearStrategy;

    sget-object p2, Lnet/time4j/history/HistoricEra;->AD:Lnet/time4j/history/HistoricEra;

    invoke-virtual {p1, p2, v1}, Lnet/time4j/history/NewYearStrategy;->newYear(Lnet/time4j/history/HistoricEra;I)Lnet/time4j/history/HistoricDate;

    move-result-object p1

    goto :goto_0

    .line 1202
    :cond_1
    iget-object v2, p0, Lnet/time4j/history/ChronoHistory;->nys:Lnet/time4j/history/NewYearStrategy;

    sub-int/2addr p2, v1

    invoke-virtual {v2, p1, p2}, Lnet/time4j/history/NewYearStrategy;->newYear(Lnet/time4j/history/HistoricEra;I)Lnet/time4j/history/HistoricDate;

    move-result-object p1

    goto :goto_0

    .line 1205
    :cond_2
    iget-object v1, p0, Lnet/time4j/history/ChronoHistory;->nys:Lnet/time4j/history/NewYearStrategy;

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, p1, v2}, Lnet/time4j/history/NewYearStrategy;->newYear(Lnet/time4j/history/HistoricEra;I)Lnet/time4j/history/HistoricDate;

    move-result-object v1

    .line 1206
    sget-object v2, Lnet/time4j/history/HistoricEra;->BYZANTINE:Lnet/time4j/history/HistoricEra;

    if-ne p1, v2, :cond_3

    .line 1207
    iget-object v2, p0, Lnet/time4j/history/ChronoHistory;->nys:Lnet/time4j/history/NewYearStrategy;

    sget-object v3, Lnet/time4j/history/HistoricEra;->AD:Lnet/time4j/history/HistoricEra;

    invoke-virtual {p1, p2}, Lnet/time4j/history/HistoricEra;->annoDomini(I)I

    move-result p1

    invoke-virtual {v2, v3, p1}, Lnet/time4j/history/NewYearStrategy;->newYear(Lnet/time4j/history/HistoricEra;I)Lnet/time4j/history/HistoricDate;

    move-result-object p1

    .line 1208
    invoke-virtual {p1, v0}, Lnet/time4j/history/HistoricDate;->compareTo(Lnet/time4j/history/HistoricDate;)I

    move-result p2

    if-lez p2, :cond_3

    goto :goto_0

    :cond_3
    move-object p1, v1

    :goto_0
    const/4 v1, 0x0

    .line 1216
    :goto_1
    sget-object p2, Lnet/time4j/CalendarUnit;->DAYS:Lnet/time4j/CalendarUnit;

    invoke-virtual {p0, v0}, Lnet/time4j/history/ChronoHistory;->convert(Lnet/time4j/history/HistoricDate;)Lnet/time4j/PlainDate;

    move-result-object v0

    invoke-virtual {p0, p1}, Lnet/time4j/history/ChronoHistory;->convert(Lnet/time4j/history/HistoricDate;)Lnet/time4j/PlainDate;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lnet/time4j/CalendarUnit;->between(Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/TimePoint;)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, v1

    add-long/2addr p1, v0

    long-to-int p1, p1

    return p1

    :catch_0
    const/4 p1, -0x1

    return p1
.end method

.method public getNewYearStrategy()Lnet/time4j/history/NewYearStrategy;
    .locals 1

    .line 1327
    iget-object v0, p0, Lnet/time4j/history/ChronoHistory;->nys:Lnet/time4j/history/NewYearStrategy;

    if-nez v0, :cond_0

    sget-object v0, Lnet/time4j/history/NewYearStrategy;->DEFAULT:Lnet/time4j/history/NewYearStrategy;

    :cond_0
    return-object v0
.end method

.method public getVariant()Ljava/lang/String;
    .locals 4

    .line 1008
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "historic-"

    .line 1009
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1010
    iget-object v1, p0, Lnet/time4j/history/ChronoHistory;->variant:Lnet/time4j/history/internal/HistoricVariant;

    invoke-virtual {v1}, Lnet/time4j/history/internal/HistoricVariant;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1012
    sget-object v1, Lnet/time4j/history/ChronoHistory$1;->$SwitchMap$net$time4j$history$internal$HistoricVariant:[I

    iget-object v2, p0, Lnet/time4j/history/ChronoHistory;->variant:Lnet/time4j/history/internal/HistoricVariant;

    invoke-virtual {v2}, Lnet/time4j/history/internal/HistoricVariant;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    const/4 v3, 0x3

    if-eq v1, v3, :cond_3

    const/4 v3, 0x5

    if-eq v1, v3, :cond_0

    const/4 v3, 0x6

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ":cutover="

    .line 1020
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1021
    invoke-virtual {p0}, Lnet/time4j/history/ChronoHistory;->getGregorianCutOverDate()Lnet/time4j/PlainDate;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, ":ancient-julian-leap-years="

    .line 1024
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1025
    iget-object v1, p0, Lnet/time4j/history/ChronoHistory;->ajly:Lnet/time4j/history/AncientJulianLeapYears;

    if-eqz v1, :cond_2

    .line 1026
    invoke-virtual {v1}, Lnet/time4j/history/AncientJulianLeapYears;->getPattern()[I

    move-result-object v1

    const/16 v3, 0x5b

    .line 1027
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    .line 1028
    aget v3, v1, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1029
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_1

    const/16 v3, 0x2c

    .line 1030
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1031
    aget v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/16 v1, 0x5d

    .line 1033
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    const-string v1, "[]"

    .line 1035
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const-string v1, ":new-year-strategy="

    .line 1037
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1038
    invoke-virtual {p0}, Lnet/time4j/history/ChronoHistory;->getNewYearStrategy()Lnet/time4j/history/NewYearStrategy;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":era-preference="

    .line 1039
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1040
    invoke-virtual {p0}, Lnet/time4j/history/ChronoHistory;->getEraPreference()Lnet/time4j/history/EraPreference;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    const-string v1, ":no-cutover"

    .line 1016
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1043
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasAncientJulianLeapYears()Z
    .locals 1

    .line 1270
    iget-object v0, p0, Lnet/time4j/history/ChronoHistory;->ajly:Lnet/time4j/history/AncientJulianLeapYears;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasGregorianCutOverDate()Z
    .locals 5

    .line 1091
    iget-object v0, p0, Lnet/time4j/history/ChronoHistory;->events:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/history/CutOverEvent;

    iget-wide v0, v0, Lnet/time4j/history/CutOverEvent;->start:J

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v0, v0, v3

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public hashCode()I
    .locals 4

    .line 1748
    iget-object v0, p0, Lnet/time4j/history/ChronoHistory;->variant:Lnet/time4j/history/internal/HistoricVariant;

    sget-object v1, Lnet/time4j/history/internal/HistoricVariant;->SINGLE_CUTOVER_DATE:Lnet/time4j/history/internal/HistoricVariant;

    if-ne v0, v1, :cond_0

    .line 1749
    iget-object v0, p0, Lnet/time4j/history/ChronoHistory;->events:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/history/CutOverEvent;

    iget-wide v0, v0, Lnet/time4j/history/CutOverEvent;->start:J

    const/16 v2, 0x20

    shl-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0

    .line 1753
    :cond_0
    iget-object v0, p0, Lnet/time4j/history/ChronoHistory;->variant:Lnet/time4j/history/internal/HistoricVariant;

    invoke-virtual {v0}, Lnet/time4j/history/internal/HistoricVariant;->hashCode()I

    move-result v0

    return v0
.end method

.method public isValid(Lnet/time4j/history/HistoricDate;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 755
    invoke-direct {p0, p1}, Lnet/time4j/history/ChronoHistory;->isOutOfRange(Lnet/time4j/history/HistoricDate;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 759
    :cond_0
    invoke-virtual {p0, p1}, Lnet/time4j/history/ChronoHistory;->getAlgorithm(Lnet/time4j/history/HistoricDate;)Lnet/time4j/history/Calculus;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 760
    invoke-interface {v1, p1}, Lnet/time4j/history/Calculus;->isValid(Lnet/time4j/history/HistoricDate;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public month()Lnet/time4j/format/TextElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/format/TextElement<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        alt = "L"
        format = "M"
    .end annotation

    .line 1636
    iget-object v0, p0, Lnet/time4j/history/ChronoHistory;->monthElement:Lnet/time4j/format/TextElement;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1759
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChronoHistory["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/time4j/history/ChronoHistory;->getVariant()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public with(Lnet/time4j/history/AncientJulianLeapYears;)Lnet/time4j/history/ChronoHistory;
    .locals 7

    const-string v0, "Missing ancient julian leap years."

    .line 1297
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1298
    invoke-virtual {p0}, Lnet/time4j/history/ChronoHistory;->hasGregorianCutOverDate()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 1302
    :cond_0
    new-instance v0, Lnet/time4j/history/ChronoHistory;

    iget-object v2, p0, Lnet/time4j/history/ChronoHistory;->variant:Lnet/time4j/history/internal/HistoricVariant;

    iget-object v3, p0, Lnet/time4j/history/ChronoHistory;->events:Ljava/util/List;

    iget-object v5, p0, Lnet/time4j/history/ChronoHistory;->nys:Lnet/time4j/history/NewYearStrategy;

    iget-object v6, p0, Lnet/time4j/history/ChronoHistory;->eraPreference:Lnet/time4j/history/EraPreference;

    move-object v1, v0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lnet/time4j/history/ChronoHistory;-><init>(Lnet/time4j/history/internal/HistoricVariant;Ljava/util/List;Lnet/time4j/history/AncientJulianLeapYears;Lnet/time4j/history/NewYearStrategy;Lnet/time4j/history/EraPreference;)V

    return-object v0
.end method

.method public with(Lnet/time4j/history/EraPreference;)Lnet/time4j/history/ChronoHistory;
    .locals 7

    .line 1404
    iget-object v0, p0, Lnet/time4j/history/ChronoHistory;->eraPreference:Lnet/time4j/history/EraPreference;

    invoke-virtual {p1, v0}, Lnet/time4j/history/EraPreference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lnet/time4j/history/ChronoHistory;->hasGregorianCutOverDate()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1408
    :cond_0
    new-instance v0, Lnet/time4j/history/ChronoHistory;

    iget-object v2, p0, Lnet/time4j/history/ChronoHistory;->variant:Lnet/time4j/history/internal/HistoricVariant;

    iget-object v3, p0, Lnet/time4j/history/ChronoHistory;->events:Ljava/util/List;

    iget-object v4, p0, Lnet/time4j/history/ChronoHistory;->ajly:Lnet/time4j/history/AncientJulianLeapYears;

    iget-object v5, p0, Lnet/time4j/history/ChronoHistory;->nys:Lnet/time4j/history/NewYearStrategy;

    move-object v1, v0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lnet/time4j/history/ChronoHistory;-><init>(Lnet/time4j/history/internal/HistoricVariant;Ljava/util/List;Lnet/time4j/history/AncientJulianLeapYears;Lnet/time4j/history/NewYearStrategy;Lnet/time4j/history/EraPreference;)V

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public with(Lnet/time4j/history/NewYearStrategy;)Lnet/time4j/history/ChronoHistory;
    .locals 7

    .line 1359
    sget-object v0, Lnet/time4j/history/NewYearStrategy;->DEFAULT:Lnet/time4j/history/NewYearStrategy;

    invoke-virtual {p1, v0}, Lnet/time4j/history/NewYearStrategy;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1360
    iget-object p1, p0, Lnet/time4j/history/ChronoHistory;->nys:Lnet/time4j/history/NewYearStrategy;

    if-nez p1, :cond_0

    return-object p0

    .line 1363
    :cond_0
    new-instance p1, Lnet/time4j/history/ChronoHistory;

    iget-object v1, p0, Lnet/time4j/history/ChronoHistory;->variant:Lnet/time4j/history/internal/HistoricVariant;

    iget-object v2, p0, Lnet/time4j/history/ChronoHistory;->events:Ljava/util/List;

    iget-object v3, p0, Lnet/time4j/history/ChronoHistory;->ajly:Lnet/time4j/history/AncientJulianLeapYears;

    const/4 v4, 0x0

    iget-object v5, p0, Lnet/time4j/history/ChronoHistory;->eraPreference:Lnet/time4j/history/EraPreference;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lnet/time4j/history/ChronoHistory;-><init>(Lnet/time4j/history/internal/HistoricVariant;Ljava/util/List;Lnet/time4j/history/AncientJulianLeapYears;Lnet/time4j/history/NewYearStrategy;Lnet/time4j/history/EraPreference;)V

    return-object p1

    .line 1365
    :cond_1
    invoke-virtual {p0}, Lnet/time4j/history/ChronoHistory;->hasGregorianCutOverDate()Z

    move-result v0

    if-nez v0, :cond_2

    return-object p0

    .line 1369
    :cond_2
    new-instance v0, Lnet/time4j/history/ChronoHistory;

    iget-object v2, p0, Lnet/time4j/history/ChronoHistory;->variant:Lnet/time4j/history/internal/HistoricVariant;

    iget-object v3, p0, Lnet/time4j/history/ChronoHistory;->events:Ljava/util/List;

    iget-object v4, p0, Lnet/time4j/history/ChronoHistory;->ajly:Lnet/time4j/history/AncientJulianLeapYears;

    iget-object v6, p0, Lnet/time4j/history/ChronoHistory;->eraPreference:Lnet/time4j/history/EraPreference;

    move-object v1, v0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lnet/time4j/history/ChronoHistory;-><init>(Lnet/time4j/history/internal/HistoricVariant;Ljava/util/List;Lnet/time4j/history/AncientJulianLeapYears;Lnet/time4j/history/NewYearStrategy;Lnet/time4j/history/EraPreference;)V

    return-object v0
.end method

.method public yearOfEra(Lnet/time4j/history/YearDefinition;)Lnet/time4j/engine/ChronoElement;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/history/YearDefinition;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1566
    sget-object v0, Lnet/time4j/history/ChronoHistory$1;->$SwitchMap$net$time4j$history$YearDefinition:[I

    invoke-virtual {p1}, Lnet/time4j/history/YearDefinition;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1572
    iget-object p1, p0, Lnet/time4j/history/ChronoHistory;->yearBeforeElement:Lnet/time4j/engine/ChronoElement;

    return-object p1

    .line 1574
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p1}, Lnet/time4j/history/YearDefinition;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1570
    :cond_1
    iget-object p1, p0, Lnet/time4j/history/ChronoHistory;->yearAfterElement:Lnet/time4j/engine/ChronoElement;

    return-object p1

    .line 1568
    :cond_2
    iget-object p1, p0, Lnet/time4j/history/ChronoHistory;->yearOfEraElement:Lnet/time4j/format/TextElement;

    return-object p1
.end method

.method public yearOfEra()Lnet/time4j/format/TextElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/format/TextElement<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        format = "y"
    .end annotation

    .line 1503
    iget-object v0, p0, Lnet/time4j/history/ChronoHistory;->yearOfEraElement:Lnet/time4j/format/TextElement;

    return-object v0
.end method
