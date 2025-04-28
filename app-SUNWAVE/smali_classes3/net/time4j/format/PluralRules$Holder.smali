.class Lnet/time4j/format/PluralRules$Holder;
.super Ljava/lang/Object;
.source "PluralRules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/format/PluralRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final PROVIDER:Lnet/time4j/format/PluralProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 327
    invoke-static {}, Lnet/time4j/base/ResourceLoader;->getInstance()Lnet/time4j/base/ResourceLoader;

    move-result-object v0

    const-class v1, Lnet/time4j/format/PluralProvider;

    invoke-virtual {v0, v1}, Lnet/time4j/base/ResourceLoader;->services(Ljava/lang/Class;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/format/PluralProvider;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    .line 333
    new-instance v0, Lnet/time4j/format/PluralRules$FallbackProvider;

    invoke-direct {v0, v2}, Lnet/time4j/format/PluralRules$FallbackProvider;-><init>(Lnet/time4j/format/PluralRules$1;)V

    .line 336
    :cond_1
    sput-object v0, Lnet/time4j/format/PluralRules$Holder;->PROVIDER:Lnet/time4j/format/PluralProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lnet/time4j/format/PluralProvider;
    .locals 1

    .line 318
    sget-object v0, Lnet/time4j/format/PluralRules$Holder;->PROVIDER:Lnet/time4j/format/PluralProvider;

    return-object v0
.end method
