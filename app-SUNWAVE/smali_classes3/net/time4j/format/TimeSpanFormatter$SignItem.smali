.class Lnet/time4j/format/TimeSpanFormatter$SignItem;
.super Lnet/time4j/format/TimeSpanFormatter$FormatItem;
.source "TimeSpanFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/format/TimeSpanFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SignItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        ">",
        "Lnet/time4j/format/TimeSpanFormatter$FormatItem<",
        "TU;>;"
    }
.end annotation


# instance fields
.field private final always:Z


# direct methods
.method private constructor <init>(IZ)V
    .locals 0

    .line 1245
    invoke-direct {p0, p1}, Lnet/time4j/format/TimeSpanFormatter$FormatItem;-><init>(I)V

    .line 1247
    iput-boolean p2, p0, Lnet/time4j/format/TimeSpanFormatter$SignItem;->always:Z

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1235
    invoke-direct {p0, v0}, Lnet/time4j/format/TimeSpanFormatter$FormatItem;-><init>(I)V

    .line 1237
    iput-boolean p1, p0, Lnet/time4j/format/TimeSpanFormatter$SignItem;->always:Z

    return-void
.end method

.method synthetic constructor <init>(ZLnet/time4j/format/TimeSpanFormatter$1;)V
    .locals 0

    .line 1225
    invoke-direct {p0, p1}, Lnet/time4j/format/TimeSpanFormatter$SignItem;-><init>(Z)V

    return-void
.end method


# virtual methods
.method getMinWidth()I
    .locals 1

    .line 1321
    iget-boolean v0, p0, Lnet/time4j/format/TimeSpanFormatter$SignItem;->always:Z

    return v0
.end method

.method parse(Ljava/util/Map;Ljava/lang/CharSequence;I)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/CharSequence;",
            "I)I"
        }
    .end annotation

    .line 1274
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p0}, Lnet/time4j/format/TimeSpanFormatter$SignItem;->getReserved()I

    move-result v1

    sub-int/2addr v0, v1

    const-wide/16 v1, 0x1

    .line 1287
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    if-lt p3, v0, :cond_2

    .line 1275
    iget-boolean p2, p0, Lnet/time4j/format/TimeSpanFormatter$SignItem;->always:Z

    if-eqz p2, :cond_0

    not-int p1, p3

    return p1

    .line 1278
    :cond_0
    invoke-static {}, Lnet/time4j/format/TimeSpanFormatter;->access$800()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_1

    .line 1279
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    cmp-long p1, p1, v1

    if-eqz p1, :cond_1

    not-int p1, p3

    return p1

    :cond_1
    return p3

    .line 1286
    :cond_2
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    .line 1290
    iget-boolean v0, p0, Lnet/time4j/format/TimeSpanFormatter$SignItem;->always:Z

    const-wide/16 v1, -0x1

    const/16 v4, 0x2d

    const/16 v5, 0x2b

    if-eqz v0, :cond_5

    if-ne p2, v5, :cond_3

    :goto_0
    add-int/lit8 p2, p3, 0x1

    goto :goto_1

    :cond_3
    if-ne p2, v4, :cond_4

    .line 1294
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_0

    :cond_4
    not-int p1, p3

    return p1

    :cond_5
    if-ne p2, v5, :cond_6

    not-int p1, p3

    return p1

    :cond_6
    if-ne p2, v4, :cond_7

    .line 1303
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_0

    :cond_7
    move p2, p3

    .line 1308
    :goto_1
    invoke-static {}, Lnet/time4j/format/TimeSpanFormatter;->access$800()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_8

    .line 1310
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-eqz p1, :cond_8

    not-int p1, p3

    return p1

    :cond_8
    return p2
.end method

.method print(Lnet/time4j/engine/TimeSpan;Ljava/lang/Appendable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/TimeSpan<",
            "-TU;>;",
            "Ljava/lang/Appendable;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1259
    iget-boolean v0, p0, Lnet/time4j/format/TimeSpanFormatter$SignItem;->always:Z

    const/16 v1, 0x2d

    if-eqz v0, :cond_1

    .line 1260
    invoke-interface {p1}, Lnet/time4j/engine/TimeSpan;->isNegative()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x2b

    :goto_0
    invoke-interface {p2, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_1

    .line 1261
    :cond_1
    invoke-interface {p1}, Lnet/time4j/engine/TimeSpan;->isNegative()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1262
    invoke-interface {p2, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_2
    :goto_1
    return-void
.end method

.method update(I)Lnet/time4j/format/TimeSpanFormatter$FormatItem;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lnet/time4j/format/TimeSpanFormatter$FormatItem<",
            "TU;>;"
        }
    .end annotation

    .line 1328
    new-instance v0, Lnet/time4j/format/TimeSpanFormatter$SignItem;

    iget-boolean v1, p0, Lnet/time4j/format/TimeSpanFormatter$SignItem;->always:Z

    invoke-direct {v0, p1, v1}, Lnet/time4j/format/TimeSpanFormatter$SignItem;-><init>(IZ)V

    return-object v0
.end method
