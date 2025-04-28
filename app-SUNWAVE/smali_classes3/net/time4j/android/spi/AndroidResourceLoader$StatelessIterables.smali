.class final Lnet/time4j/android/spi/AndroidResourceLoader$StatelessIterables;
.super Ljava/lang/Object;
.source "AndroidResourceLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/android/spi/AndroidResourceLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StatelessIterables"
.end annotation


# static fields
.field private static final EXTENSIONS:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Lnet/time4j/engine/ChronoExtension;",
            ">;"
        }
    .end annotation
.end field

.field private static final PLURALS:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Lnet/time4j/format/PluralProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 528
    new-instance v0, Lnet/time4j/i18n/DefaultPluralProviderSPI;

    invoke-direct {v0}, Lnet/time4j/i18n/DefaultPluralProviderSPI;-><init>()V

    .line 529
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lnet/time4j/android/spi/AndroidResourceLoader$StatelessIterables;->PLURALS:Ljava/lang/Iterable;

    const/4 v0, 0x2

    new-array v0, v0, [Lnet/time4j/engine/ChronoExtension;

    .line 531
    new-instance v1, Lnet/time4j/i18n/HistoricExtension;

    invoke-direct {v1}, Lnet/time4j/i18n/HistoricExtension;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lnet/time4j/calendar/service/KoreanExtension;

    invoke-direct {v1}, Lnet/time4j/calendar/service/KoreanExtension;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lnet/time4j/android/spi/AndroidResourceLoader$StatelessIterables;->EXTENSIONS:Ljava/lang/Iterable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1700()Ljava/lang/Iterable;
    .locals 1

    .line 520
    sget-object v0, Lnet/time4j/android/spi/AndroidResourceLoader$StatelessIterables;->PLURALS:Ljava/lang/Iterable;

    return-object v0
.end method

.method static synthetic access$1800()Ljava/lang/Iterable;
    .locals 1

    .line 520
    sget-object v0, Lnet/time4j/android/spi/AndroidResourceLoader$StatelessIterables;->EXTENSIONS:Ljava/lang/Iterable;

    return-object v0
.end method
