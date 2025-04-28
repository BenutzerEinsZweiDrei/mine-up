.class Lnet/time4j/format/PluralRules$FallbackRules;
.super Lnet/time4j/format/PluralRules;
.source "PluralRules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/format/PluralRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FallbackRules"
.end annotation


# instance fields
.field private final english:Z

.field private final numType:Lnet/time4j/format/NumberType;


# direct methods
.method private constructor <init>(Lnet/time4j/format/NumberType;Z)V
    .locals 0

    .line 242
    invoke-direct {p0}, Lnet/time4j/format/PluralRules;-><init>()V

    .line 244
    iput-object p1, p0, Lnet/time4j/format/PluralRules$FallbackRules;->numType:Lnet/time4j/format/NumberType;

    .line 245
    iput-boolean p2, p0, Lnet/time4j/format/PluralRules$FallbackRules;->english:Z

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/format/NumberType;ZLnet/time4j/format/PluralRules$1;)V
    .locals 0

    .line 228
    invoke-direct {p0, p1, p2}, Lnet/time4j/format/PluralRules$FallbackRules;-><init>(Lnet/time4j/format/NumberType;Z)V

    return-void
.end method


# virtual methods
.method public getCategory(J)Lnet/time4j/format/PluralCategory;
    .locals 6

    .line 254
    sget-object v0, Lnet/time4j/format/PluralRules$1;->$SwitchMap$net$time4j$format$NumberType:[I

    iget-object v1, p0, Lnet/time4j/format/PluralRules$FallbackRules;->numType:Lnet/time4j/format/NumberType;

    invoke-virtual {v1}, Lnet/time4j/format/NumberType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-wide/16 v2, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 258
    iget-boolean v0, p0, Lnet/time4j/format/PluralRules$FallbackRules;->english:Z

    if-eqz v0, :cond_2

    const-wide/16 v0, 0xa

    .line 259
    rem-long v0, p1, v0

    const-wide/16 v4, 0x64

    .line 260
    rem-long/2addr p1, v4

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide/16 v2, 0xb

    cmp-long v2, p1, v2

    if-eqz v2, :cond_0

    .line 262
    sget-object p1, Lnet/time4j/format/PluralCategory;->ONE:Lnet/time4j/format/PluralCategory;

    return-object p1

    :cond_0
    const-wide/16 v2, 0x2

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const-wide/16 v2, 0xc

    cmp-long v2, p1, v2

    if-eqz v2, :cond_1

    .line 264
    sget-object p1, Lnet/time4j/format/PluralCategory;->TWO:Lnet/time4j/format/PluralCategory;

    return-object p1

    :cond_1
    const-wide/16 v2, 0x3

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const-wide/16 v0, 0xd

    cmp-long p1, p1, v0

    if-eqz p1, :cond_2

    .line 266
    sget-object p1, Lnet/time4j/format/PluralCategory;->FEW:Lnet/time4j/format/PluralCategory;

    return-object p1

    .line 269
    :cond_2
    sget-object p1, Lnet/time4j/format/PluralCategory;->OTHER:Lnet/time4j/format/PluralCategory;

    return-object p1

    .line 271
    :cond_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    iget-object p2, p0, Lnet/time4j/format/PluralRules$FallbackRules;->numType:Lnet/time4j/format/NumberType;

    .line 272
    invoke-virtual {p2}, Lnet/time4j/format/NumberType;->name()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    cmp-long p1, p1, v2

    if-nez p1, :cond_5

    .line 256
    sget-object p1, Lnet/time4j/format/PluralCategory;->ONE:Lnet/time4j/format/PluralCategory;

    goto :goto_0

    :cond_5
    sget-object p1, Lnet/time4j/format/PluralCategory;->OTHER:Lnet/time4j/format/PluralCategory;

    :goto_0
    return-object p1
.end method

.method public getNumberType()Lnet/time4j/format/NumberType;
    .locals 1

    .line 280
    iget-object v0, p0, Lnet/time4j/format/PluralRules$FallbackRules;->numType:Lnet/time4j/format/NumberType;

    return-object v0
.end method
