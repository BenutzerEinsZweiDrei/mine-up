.class final Lnet/time4j/android/spi/AndroidResourceLoader$I18nDataHolder;
.super Ljava/lang/Object;
.source "AndroidResourceLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/android/spi/AndroidResourceLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "I18nDataHolder"
.end annotation


# static fields
.field private static final ISODATA:Lnet/time4j/i18n/IsoTextProviderSPI;

.field private static final SYMBOLS:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Lnet/time4j/format/NumberSymbolProvider;",
            ">;"
        }
    .end annotation
.end field

.field private static final TEXTDATA:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Lnet/time4j/format/TextProvider;",
            ">;"
        }
    .end annotation
.end field

.field private static final WEEKDATA:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Lnet/time4j/format/WeekdataProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 474
    new-instance v0, Lnet/time4j/i18n/IsoTextProviderSPI;

    invoke-direct {v0}, Lnet/time4j/i18n/IsoTextProviderSPI;-><init>()V

    sput-object v0, Lnet/time4j/android/spi/AndroidResourceLoader$I18nDataHolder;->ISODATA:Lnet/time4j/i18n/IsoTextProviderSPI;

    .line 476
    sget-object v1, Lnet/time4j/i18n/SymbolProviderSPI;->INSTANCE:Lnet/time4j/i18n/SymbolProviderSPI;

    .line 477
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lnet/time4j/android/spi/AndroidResourceLoader$I18nDataHolder;->SYMBOLS:Ljava/lang/Iterable;

    .line 479
    new-instance v1, Lnet/time4j/i18n/WeekdataProviderSPI;

    invoke-direct {v1}, Lnet/time4j/i18n/WeekdataProviderSPI;-><init>()V

    .line 480
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lnet/time4j/android/spi/AndroidResourceLoader$I18nDataHolder;->WEEKDATA:Ljava/lang/Iterable;

    const/4 v1, 0x2

    new-array v1, v1, [Lnet/time4j/format/TextProvider;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 482
    new-instance v0, Lnet/time4j/calendar/service/GenericTextProviderSPI;

    invoke-direct {v0}, Lnet/time4j/calendar/service/GenericTextProviderSPI;-><init>()V

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 483
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lnet/time4j/android/spi/AndroidResourceLoader$I18nDataHolder;->TEXTDATA:Ljava/lang/Iterable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000()Lnet/time4j/i18n/IsoTextProviderSPI;
    .locals 1

    .line 464
    sget-object v0, Lnet/time4j/android/spi/AndroidResourceLoader$I18nDataHolder;->ISODATA:Lnet/time4j/i18n/IsoTextProviderSPI;

    return-object v0
.end method

.method static synthetic access$1100()Ljava/lang/Iterable;
    .locals 1

    .line 464
    sget-object v0, Lnet/time4j/android/spi/AndroidResourceLoader$I18nDataHolder;->SYMBOLS:Ljava/lang/Iterable;

    return-object v0
.end method

.method static synthetic access$1200()Ljava/lang/Iterable;
    .locals 1

    .line 464
    sget-object v0, Lnet/time4j/android/spi/AndroidResourceLoader$I18nDataHolder;->WEEKDATA:Ljava/lang/Iterable;

    return-object v0
.end method

.method static synthetic access$1300()Ljava/lang/Iterable;
    .locals 1

    .line 464
    sget-object v0, Lnet/time4j/android/spi/AndroidResourceLoader$I18nDataHolder;->TEXTDATA:Ljava/lang/Iterable;

    return-object v0
.end method
