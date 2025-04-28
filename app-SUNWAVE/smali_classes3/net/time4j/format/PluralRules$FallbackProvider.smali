.class Lnet/time4j/format/PluralRules$FallbackProvider;
.super Ljava/lang/Object;
.source "PluralRules.java"

# interfaces
.implements Lnet/time4j/format/PluralProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/format/PluralRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FallbackProvider"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/format/PluralRules$1;)V
    .locals 0

    .line 286
    invoke-direct {p0}, Lnet/time4j/format/PluralRules$FallbackProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Ljava/util/Locale;Lnet/time4j/format/NumberType;)Lnet/time4j/format/PluralRules;
    .locals 2

    .line 297
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "en"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 299
    sget-object v0, Lnet/time4j/format/PluralRules$1;->$SwitchMap$net$time4j$format$NumberType:[I

    invoke-virtual {p2}, Lnet/time4j/format/NumberType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_0

    .line 308
    invoke-static {}, Lnet/time4j/format/PluralRules;->access$400()Lnet/time4j/format/PluralRules;

    move-result-object p1

    goto :goto_0

    .line 309
    :cond_0
    invoke-static {}, Lnet/time4j/format/PluralRules;->access$500()Lnet/time4j/format/PluralRules;

    move-result-object p1

    :goto_0
    return-object p1

    .line 311
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p2}, Lnet/time4j/format/NumberType;->name()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    if-eqz p1, :cond_3

    .line 303
    invoke-static {}, Lnet/time4j/format/PluralRules;->access$200()Lnet/time4j/format/PluralRules;

    move-result-object p1

    goto :goto_1

    .line 304
    :cond_3
    invoke-static {}, Lnet/time4j/format/PluralRules;->access$300()Lnet/time4j/format/PluralRules;

    move-result-object p1

    :goto_1
    return-object p1
.end method
