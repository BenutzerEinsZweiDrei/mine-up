.class public final Lnet/time4j/i18n/PropertyBundle;
.super Ljava/lang/Object;
.source "PropertyBundle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/time4j/i18n/PropertyBundle$BundleReference;,
        Lnet/time4j/i18n/PropertyBundle$CacheKey;
    }
.end annotation


# static fields
.field private static final CACHE:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lnet/time4j/i18n/PropertyBundle$CacheKey;",
            "Lnet/time4j/i18n/PropertyBundle$BundleReference;",
            ">;"
        }
    .end annotation
.end field

.field private static final REFERENCE_QUEUE:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final baseName:Ljava/lang/String;

.field private final bundleLocale:Ljava/util/Locale;

.field private final key2values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final parent:Lnet/time4j/i18n/PropertyBundle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 68
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lnet/time4j/i18n/PropertyBundle;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    .line 70
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Lnet/time4j/i18n/PropertyBundle;->REFERENCE_QUEUE:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method private constructor <init>(Lnet/time4j/i18n/PropertyBundle;Lnet/time4j/i18n/PropertyBundle;)V
    .locals 0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p2, p0, Lnet/time4j/i18n/PropertyBundle;->parent:Lnet/time4j/i18n/PropertyBundle;

    .line 121
    iget-object p2, p1, Lnet/time4j/i18n/PropertyBundle;->baseName:Ljava/lang/String;

    iput-object p2, p0, Lnet/time4j/i18n/PropertyBundle;->baseName:Ljava/lang/String;

    .line 122
    iget-object p2, p1, Lnet/time4j/i18n/PropertyBundle;->bundleLocale:Ljava/util/Locale;

    iput-object p2, p0, Lnet/time4j/i18n/PropertyBundle;->bundleLocale:Ljava/util/Locale;

    .line 123
    iget-object p1, p1, Lnet/time4j/i18n/PropertyBundle;->key2values:Ljava/util/Map;

    iput-object p1, p0, Lnet/time4j/i18n/PropertyBundle;->key2values:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lnet/time4j/i18n/UTF8ResourceReader;Ljava/lang/String;Ljava/util/Locale;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lnet/time4j/i18n/PropertyBundle;->parent:Lnet/time4j/i18n/PropertyBundle;

    .line 90
    iput-object p2, p0, Lnet/time4j/i18n/PropertyBundle;->baseName:Ljava/lang/String;

    .line 91
    iput-object p3, p0, Lnet/time4j/i18n/PropertyBundle;->bundleLocale:Ljava/util/Locale;

    .line 93
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 96
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lnet/time4j/i18n/UTF8ResourceReader;->readLine()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 97
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    .line 98
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 101
    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_0

    .line 102
    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3d

    if-ne v3, v4, :cond_2

    add-int/lit8 v3, v2, 0x1

    if-ge v3, v1, :cond_2

    .line 104
    invoke-virtual {p3, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 110
    :cond_3
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/i18n/PropertyBundle;->key2values:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$100()Ljava/lang/ref/ReferenceQueue;
    .locals 1

    .line 64
    sget-object v0, Lnet/time4j/i18n/PropertyBundle;->REFERENCE_QUEUE:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method public static clearCache()V
    .locals 1

    .line 320
    :goto_0
    sget-object v0, Lnet/time4j/i18n/PropertyBundle;->REFERENCE_QUEUE:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 321
    :cond_0
    sget-object v0, Lnet/time4j/i18n/PropertyBundle;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    return-void
.end method

.method public static getCandidateLocales(Ljava/util/Locale;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .line 355
    invoke-static {p0}, Lnet/time4j/i18n/LanguageMatch;->getAlias(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 356
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 357
    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object p0

    .line 358
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 360
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 361
    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3, v0, v1, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    const-string v3, ""

    if-nez p0, :cond_1

    .line 365
    new-instance p0, Ljava/util/Locale;

    invoke-direct {p0, v0, v1, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    .line 369
    new-instance p0, Ljava/util/Locale;

    invoke-direct {p0, v0, v3, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "nn"

    .line 370
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 371
    new-instance p0, Ljava/util/Locale;

    const-string v0, "nb"

    invoke-direct {p0, v0, v3, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    :cond_2
    sget-object p0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v2
.end method

.method public static load(Ljava/lang/String;Ljava/util/Locale;)Lnet/time4j/i18n/PropertyBundle;
    .locals 5

    .line 152
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "Missing locale."

    .line 155
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 158
    new-instance v0, Lnet/time4j/i18n/PropertyBundle$CacheKey;

    invoke-direct {v0, p0, p1}, Lnet/time4j/i18n/PropertyBundle$CacheKey;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 159
    sget-object v1, Lnet/time4j/i18n/PropertyBundle;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/i18n/PropertyBundle$BundleReference;

    if-eqz v1, :cond_0

    .line 163
    invoke-virtual {v1}, Lnet/time4j/i18n/PropertyBundle$BundleReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/i18n/PropertyBundle;

    if-eqz v1, :cond_0

    return-object v1

    .line 172
    :cond_0
    :goto_0
    sget-object v1, Lnet/time4j/i18n/PropertyBundle;->REFERENCE_QUEUE:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 173
    sget-object v2, Lnet/time4j/i18n/PropertyBundle;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    check-cast v1, Lnet/time4j/i18n/PropertyBundle$BundleReference;

    invoke-static {v1}, Lnet/time4j/i18n/PropertyBundle$BundleReference;->access$000(Lnet/time4j/i18n/PropertyBundle$BundleReference;)Lnet/time4j/i18n/PropertyBundle$CacheKey;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 176
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 178
    invoke-static {p1}, Lnet/time4j/i18n/PropertyBundle;->getCandidateLocales(Ljava/util/Locale;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Locale;

    .line 180
    :try_start_0
    invoke-static {p0, v3}, Lnet/time4j/i18n/PropertyBundle;->newBundle(Ljava/lang/String;Ljava/util/Locale;)Lnet/time4j/i18n/PropertyBundle;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 182
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 185
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 189
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 196
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    const/4 p1, 0x1

    sub-int/2addr p0, p1

    :goto_2
    if-lt p0, p1, :cond_4

    add-int/lit8 v2, p0, -0x1

    .line 197
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/time4j/i18n/PropertyBundle;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/time4j/i18n/PropertyBundle;

    invoke-direct {v3, v4}, Lnet/time4j/i18n/PropertyBundle;->withParent(Lnet/time4j/i18n/PropertyBundle;)Lnet/time4j/i18n/PropertyBundle;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p0, p0, -0x1

    goto :goto_2

    :cond_4
    const/4 p0, 0x0

    .line 200
    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/time4j/i18n/PropertyBundle;

    .line 201
    sget-object p1, Lnet/time4j/i18n/PropertyBundle;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    new-instance v1, Lnet/time4j/i18n/PropertyBundle$BundleReference;

    invoke-direct {v1, p0, v0}, Lnet/time4j/i18n/PropertyBundle$BundleReference;-><init>(Lnet/time4j/i18n/PropertyBundle;Lnet/time4j/i18n/PropertyBundle$CacheKey;)V

    invoke-interface {p1, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 190
    :cond_5
    new-instance v0, Ljava/util/MissingResourceException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find resource bundle for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-static {p0, p1}, Lnet/time4j/i18n/PropertyBundle;->toResourceName(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-class p1, Lnet/time4j/i18n/PropertyBundle;

    .line 192
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-direct {v0, p0, p1, v1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Base name must not be empty."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static newBundle(Ljava/lang/String;Ljava/util/Locale;)Lnet/time4j/i18n/PropertyBundle;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 395
    const-class v0, Lnet/time4j/i18n/PropertyBundle;

    const/16 v1, 0x2f

    .line 396
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x0

    .line 397
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    add-int/2addr v1, v3

    .line 398
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lnet/time4j/i18n/PropertyBundle;->toResourceName(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 400
    invoke-static {}, Lnet/time4j/base/ResourceLoader;->getInstance()Lnet/time4j/base/ResourceLoader;

    move-result-object v4

    invoke-virtual {v4, v2, v0, v1}, Lnet/time4j/base/ResourceLoader;->locate(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    .line 401
    invoke-static {}, Lnet/time4j/base/ResourceLoader;->getInstance()Lnet/time4j/base/ResourceLoader;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lnet/time4j/base/ResourceLoader;->load(Ljava/net/URI;Z)Ljava/io/InputStream;

    move-result-object v2

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 405
    :try_start_0
    invoke-static {}, Lnet/time4j/base/ResourceLoader;->getInstance()Lnet/time4j/base/ResourceLoader;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v3}, Lnet/time4j/base/ResourceLoader;->load(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return-object v4

    :cond_0
    :goto_0
    if-eqz v2, :cond_2

    .line 416
    :try_start_1
    new-instance v0, Lnet/time4j/i18n/UTF8ResourceReader;

    invoke-direct {v0, v2}, Lnet/time4j/i18n/UTF8ResourceReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 417
    :try_start_2
    new-instance v4, Lnet/time4j/i18n/PropertyBundle;

    invoke-direct {v4, v0, p0, p1}, Lnet/time4j/i18n/PropertyBundle;-><init>(Lnet/time4j/i18n/UTF8ResourceReader;Ljava/lang/String;Ljava/util/Locale;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 420
    invoke-virtual {v0}, Lnet/time4j/i18n/UTF8ResourceReader;->close()V

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v4, v0

    goto :goto_1

    :catchall_1
    move-exception p0

    :goto_1
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lnet/time4j/i18n/UTF8ResourceReader;->close()V

    :cond_1
    throw p0

    :cond_2
    :goto_2
    return-object v4
.end method

.method private static toResourceName(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 5

    .line 434
    invoke-static {p1}, Lnet/time4j/i18n/LanguageMatch;->getAlias(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 435
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 436
    invoke-virtual {p1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object p1

    .line 438
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x14

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v3, 0x2e

    const/16 v4, 0x2f

    .line 439
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    const/16 p0, 0x5f

    .line 442
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 444
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 445
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 446
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    const-string p0, ".properties"

    .line 450
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private withParent(Lnet/time4j/i18n/PropertyBundle;)Lnet/time4j/i18n/PropertyBundle;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    .line 386
    :cond_0
    new-instance v0, Lnet/time4j/i18n/PropertyBundle;

    invoke-direct {v0, p0, p1}, Lnet/time4j/i18n/PropertyBundle;-><init>(Lnet/time4j/i18n/PropertyBundle;Lnet/time4j/i18n/PropertyBundle;)V

    return-object v0
.end method


# virtual methods
.method public containsKey(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "Missing resource key."

    .line 257
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p0

    .line 263
    :cond_0
    iget-object v1, v0, Lnet/time4j/i18n/PropertyBundle;->key2values:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 267
    :cond_1
    iget-object v0, v0, Lnet/time4j/i18n/PropertyBundle;->parent:Lnet/time4j/i18n/PropertyBundle;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1
.end method

.method public getInternalKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 337
    iget-object v0, p0, Lnet/time4j/i18n/PropertyBundle;->key2values:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .line 308
    iget-object v0, p0, Lnet/time4j/i18n/PropertyBundle;->bundleLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "Missing resource key."

    .line 223
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p0

    .line 229
    :goto_0
    iget-object v1, v0, Lnet/time4j/i18n/PropertyBundle;->key2values:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    return-object v1

    .line 233
    :cond_0
    iget-object v0, v0, Lnet/time4j/i18n/PropertyBundle;->parent:Lnet/time4j/i18n/PropertyBundle;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 235
    :cond_1
    new-instance v0, Ljava/util/MissingResourceException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find property resource for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/time4j/i18n/PropertyBundle;->baseName:Ljava/lang/String;

    iget-object v3, p0, Lnet/time4j/i18n/PropertyBundle;->bundleLocale:Ljava/util/Locale;

    .line 236
    invoke-static {v2, v3}, Lnet/time4j/i18n/PropertyBundle;->toResourceName(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lnet/time4j/i18n/PropertyBundle;

    .line 237
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 286
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lnet/time4j/i18n/PropertyBundle;->key2values:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v1, p0

    .line 288
    :goto_0
    iget-object v1, v1, Lnet/time4j/i18n/PropertyBundle;->parent:Lnet/time4j/i18n/PropertyBundle;

    if-eqz v1, :cond_0

    .line 289
    iget-object v2, v1, Lnet/time4j/i18n/PropertyBundle;->key2values:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 292
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
