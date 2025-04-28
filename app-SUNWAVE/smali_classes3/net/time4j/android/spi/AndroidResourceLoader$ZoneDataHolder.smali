.class final Lnet/time4j/android/spi/AndroidResourceLoader$ZoneDataHolder;
.super Ljava/lang/Object;
.source "AndroidResourceLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/android/spi/AndroidResourceLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ZoneDataHolder"
.end annotation


# static fields
.field private static final LEAPSECONDS:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Lnet/time4j/scale/LeapSecondProvider;",
            ">;"
        }
    .end annotation
.end field

.field private static final NAMES:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Lnet/time4j/tz/ZoneNameProvider;",
            ">;"
        }
    .end annotation
.end field

.field private static final RULES:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Lnet/time4j/tz/ZoneModelProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 498
    new-instance v0, Lnet/time4j/tz/spi/TimezoneRepositoryProviderSPI;

    invoke-direct {v0}, Lnet/time4j/tz/spi/TimezoneRepositoryProviderSPI;-><init>()V

    .line 499
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lnet/time4j/android/spi/AndroidResourceLoader$ZoneDataHolder;->RULES:Ljava/lang/Iterable;

    .line 501
    new-instance v1, Lnet/time4j/tz/spi/ZoneNameProviderSPI;

    invoke-direct {v1}, Lnet/time4j/tz/spi/ZoneNameProviderSPI;-><init>()V

    .line 502
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lnet/time4j/android/spi/AndroidResourceLoader$ZoneDataHolder;->NAMES:Ljava/lang/Iterable;

    .line 505
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/tz/ZoneModelProvider;

    .line 506
    instance-of v2, v1, Lnet/time4j/scale/LeapSecondProvider;

    if-eqz v2, :cond_0

    .line 507
    const-class v0, Lnet/time4j/scale/LeapSecondProvider;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/scale/LeapSecondProvider;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 512
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lnet/time4j/android/spi/AndroidResourceLoader$ZoneDataHolder;->LEAPSECONDS:Ljava/lang/Iterable;

    goto :goto_1

    .line 514
    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lnet/time4j/android/spi/AndroidResourceLoader$ZoneDataHolder;->LEAPSECONDS:Ljava/lang/Iterable;

    :goto_1
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1400()Ljava/lang/Iterable;
    .locals 1

    .line 489
    sget-object v0, Lnet/time4j/android/spi/AndroidResourceLoader$ZoneDataHolder;->RULES:Ljava/lang/Iterable;

    return-object v0
.end method

.method static synthetic access$1500()Ljava/lang/Iterable;
    .locals 1

    .line 489
    sget-object v0, Lnet/time4j/android/spi/AndroidResourceLoader$ZoneDataHolder;->NAMES:Ljava/lang/Iterable;

    return-object v0
.end method

.method static synthetic access$1600()Ljava/lang/Iterable;
    .locals 1

    .line 489
    sget-object v0, Lnet/time4j/android/spi/AndroidResourceLoader$ZoneDataHolder;->LEAPSECONDS:Ljava/lang/Iterable;

    return-object v0
.end method
