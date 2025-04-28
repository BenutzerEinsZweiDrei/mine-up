.class Lnet/time4j/i18n/PropertyBundle$BundleReference;
.super Ljava/lang/ref/SoftReference;
.source "PropertyBundle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/i18n/PropertyBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BundleReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/SoftReference<",
        "Lnet/time4j/i18n/PropertyBundle;",
        ">;"
    }
.end annotation


# instance fields
.field private cacheKey:Lnet/time4j/i18n/PropertyBundle$CacheKey;


# direct methods
.method constructor <init>(Lnet/time4j/i18n/PropertyBundle;Lnet/time4j/i18n/PropertyBundle$CacheKey;)V
    .locals 1

    .line 521
    invoke-static {}, Lnet/time4j/i18n/PropertyBundle;->access$100()Ljava/lang/ref/ReferenceQueue;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 523
    iput-object p2, p0, Lnet/time4j/i18n/PropertyBundle$BundleReference;->cacheKey:Lnet/time4j/i18n/PropertyBundle$CacheKey;

    return-void
.end method

.method static synthetic access$000(Lnet/time4j/i18n/PropertyBundle$BundleReference;)Lnet/time4j/i18n/PropertyBundle$CacheKey;
    .locals 0

    .line 509
    iget-object p0, p0, Lnet/time4j/i18n/PropertyBundle$BundleReference;->cacheKey:Lnet/time4j/i18n/PropertyBundle$CacheKey;

    return-object p0
.end method
