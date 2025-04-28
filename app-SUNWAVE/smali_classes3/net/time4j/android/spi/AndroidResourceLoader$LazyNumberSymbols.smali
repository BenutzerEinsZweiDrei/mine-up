.class final Lnet/time4j/android/spi/AndroidResourceLoader$LazyNumberSymbols;
.super Ljava/lang/Object;
.source "AndroidResourceLoader.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/android/spi/AndroidResourceLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LazyNumberSymbols"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lnet/time4j/format/NumberSymbolProvider;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/android/spi/AndroidResourceLoader$1;)V
    .locals 0

    .line 351
    invoke-direct {p0}, Lnet/time4j/android/spi/AndroidResourceLoader$LazyNumberSymbols;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lnet/time4j/format/NumberSymbolProvider;",
            ">;"
        }
    .end annotation

    .line 359
    invoke-static {}, Lnet/time4j/android/spi/AndroidResourceLoader$I18nDataHolder;->access$1100()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
