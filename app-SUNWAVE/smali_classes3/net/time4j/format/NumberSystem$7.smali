.class final enum Lnet/time4j/format/NumberSystem$7;
.super Lnet/time4j/format/NumberSystem;
.source "NumberSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/format/NumberSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 273
    invoke-direct {p0, p1, p2, p3, v0}, Lnet/time4j/format/NumberSystem;-><init>(Ljava/lang/String;ILjava/lang/String;Lnet/time4j/format/NumberSystem$1;)V

    return-void
.end method


# virtual methods
.method public contains(C)Z
    .locals 1

    const/16 v0, 0x1369

    if-lt p1, v0, :cond_0

    const/16 v0, 0x137c

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getDigits()Ljava/lang/String;
    .locals 1

    const-string v0, "\u1369\u136a\u136b\u136c\u136d\u136e\u136f\u1370\u1371\u1372\u1373\u1374\u1375\u1376\u1377\u1378\u1379\u137a\u137b\u137c"

    return-object v0
.end method

.method public isDecimal()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toInteger(Ljava/lang/String;Lnet/time4j/format/Leniency;)I
    .locals 10

    .line 341
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    const/4 v1, 0x0

    move v6, v0

    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    if-ltz p2, :cond_6

    .line 344
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x1369

    const/16 v9, 0x1372

    if-lt v7, v8, :cond_0

    if-ge v7, v9, :cond_0

    add-int/lit8 v7, v7, 0x1

    sub-int/2addr v7, v8

    :goto_1
    add-int/2addr v5, v7

    goto :goto_3

    :cond_0
    const/16 v8, 0x137b

    if-lt v7, v9, :cond_1

    if-ge v7, v8, :cond_1

    add-int/lit8 v7, v7, 0x1

    sub-int/2addr v7, v9

    mul-int/lit8 v7, v7, 0xa

    goto :goto_1

    :cond_1
    const/16 v9, 0x137c

    if-ne v7, v9, :cond_4

    if-eqz v2, :cond_2

    if-nez v5, :cond_2

    move v5, v0

    .line 353
    :cond_2
    invoke-static {v4, v5, v6}, Lnet/time4j/format/NumberSystem;->access$200(III)I

    move-result v4

    if-eqz v2, :cond_3

    mul-int/lit8 v6, v6, 0x64

    goto :goto_2

    :cond_3
    mul-int/lit16 v6, v6, 0x2710

    :goto_2
    move v3, v0

    move v2, v1

    move v5, v2

    goto :goto_3

    :cond_4
    if-ne v7, v8, :cond_5

    .line 363
    invoke-static {v4, v5, v6}, Lnet/time4j/format/NumberSystem;->access$200(III)I

    move-result v4

    mul-int/lit8 v6, v6, 0x64

    move v2, v0

    move v3, v1

    move v5, v3

    :cond_5
    :goto_3
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_6
    if-nez v2, :cond_7

    if-eqz v3, :cond_8

    :cond_7
    if-nez v5, :cond_8

    goto :goto_4

    :cond_8
    move v0, v5

    .line 373
    :goto_4
    invoke-static {v4, v0, v6}, Lnet/time4j/format/NumberSystem;->access$200(III)I

    move-result p1

    return p1
.end method

.method public toNumeral(I)Ljava/lang/String;
    .locals 10

    const/4 v0, 0x1

    if-lt p1, v0, :cond_c

    .line 280
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 281
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    .line 283
    rem-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_0

    .line 284
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v1, v1, 0x1

    .line 288
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v3, v1

    :goto_0
    if-ltz v3, :cond_b

    sub-int v4, v1, v3

    .line 293
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v3, v3, -0x1

    sub-int v5, v1, v3

    .line 295
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    const/4 v7, 0x0

    if-eq v5, v6, :cond_1

    add-int/lit16 v5, v5, 0x1338

    int-to-char v5, v5

    goto :goto_1

    :cond_1
    move v5, v7

    :goto_1
    if-eq v4, v6, :cond_2

    add-int/lit16 v4, v4, 0x1341

    int-to-char v4, v4

    goto :goto_2

    :cond_2
    move v4, v7

    .line 305
    :goto_2
    rem-int/lit8 v6, v3, 0x4

    div-int/lit8 v6, v6, 0x2

    const/16 v8, 0x137b

    if-eqz v3, :cond_5

    if-eqz v6, :cond_4

    if-nez v5, :cond_3

    if-eqz v4, :cond_5

    :cond_3
    move v6, v8

    goto :goto_3

    :cond_4
    const/16 v6, 0x137c

    goto :goto_3

    :cond_5
    move v6, v7

    :goto_3
    const/16 v9, 0x1369

    if-ne v5, v9, :cond_6

    if-nez v4, :cond_6

    if-le v1, v0, :cond_6

    if-eq v6, v8, :cond_7

    add-int/lit8 v8, v3, 0x1

    if-ne v8, v1, :cond_6

    goto :goto_4

    :cond_6
    move v7, v5

    :cond_7
    :goto_4
    if-eqz v4, :cond_8

    .line 322
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_8
    if-eqz v7, :cond_9

    .line 325
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_9
    if-eqz v6, :cond_a

    .line 328
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_a
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 332
    :cond_b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 277
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can only convert positive numbers: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
