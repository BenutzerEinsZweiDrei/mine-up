.class public final Lnet/time4j/calendar/HijriAdjustment;
.super Ljava/lang/Object;
.source "HijriAdjustment.java"

# interfaces
.implements Lnet/time4j/engine/VariantSource;


# instance fields
.field private final adjustment:I

.field private final baseVariant:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x3

    if-lt p2, v0, :cond_1

    const/4 v0, 0x3

    if-gt p2, v0, :cond_1

    .line 63
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    iput p2, p0, Lnet/time4j/calendar/HijriAdjustment;->adjustment:I

    .line 68
    iput-object p1, p0, Lnet/time4j/calendar/HijriAdjustment;->baseVariant:Ljava/lang/String;

    return-void

    .line 64
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Empty variant."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :cond_1
    new-instance p1, Lnet/time4j/engine/ChronoException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Day adjustment out of range -3 <= x <= 3: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/time4j/engine/ChronoException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static from(Ljava/lang/String;)Lnet/time4j/calendar/HijriAdjustment;
    .locals 4

    const/16 v0, 0x3a

    .line 194
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 197
    new-instance v0, Lnet/time4j/calendar/HijriAdjustment;

    invoke-direct {v0, p0, v1}, Lnet/time4j/calendar/HijriAdjustment;-><init>(Ljava/lang/String;I)V

    return-object v0

    :cond_0
    add-int/lit8 v2, v0, 0x1

    .line 200
    :try_start_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 201
    new-instance v3, Lnet/time4j/calendar/HijriAdjustment;

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Lnet/time4j/calendar/HijriAdjustment;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 203
    :catch_0
    new-instance v0, Lnet/time4j/engine/ChronoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid day adjustment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/time4j/engine/ChronoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static of(Ljava/lang/String;I)Lnet/time4j/calendar/HijriAdjustment;
    .locals 3

    const/16 v0, 0x3a

    .line 115
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 118
    new-instance v0, Lnet/time4j/calendar/HijriAdjustment;

    invoke-direct {v0, p0, p1}, Lnet/time4j/calendar/HijriAdjustment;-><init>(Ljava/lang/String;I)V

    return-object v0

    .line 120
    :cond_0
    new-instance v1, Lnet/time4j/calendar/HijriAdjustment;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, p1}, Lnet/time4j/calendar/HijriAdjustment;-><init>(Ljava/lang/String;I)V

    return-object v1
.end method

.method public static of(Lnet/time4j/engine/VariantSource;I)Lnet/time4j/calendar/HijriAdjustment;
    .locals 0

    .line 146
    invoke-interface {p0}, Lnet/time4j/engine/VariantSource;->getVariant()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lnet/time4j/calendar/HijriAdjustment;->of(Ljava/lang/String;I)Lnet/time4j/calendar/HijriAdjustment;

    move-result-object p0

    return-object p0
.end method

.method public static ofUmalqura(I)Lnet/time4j/calendar/HijriAdjustment;
    .locals 2

    .line 90
    new-instance v0, Lnet/time4j/calendar/HijriAdjustment;

    const-string v1, "islamic-umalqura"

    invoke-direct {v0, v1, p0}, Lnet/time4j/calendar/HijriAdjustment;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method getBaseVariant()Ljava/lang/String;
    .locals 1

    .line 187
    iget-object v0, p0, Lnet/time4j/calendar/HijriAdjustment;->baseVariant:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 180
    iget v0, p0, Lnet/time4j/calendar/HijriAdjustment;->adjustment:I

    return v0
.end method

.method public getVariant()Ljava/lang/String;
    .locals 2

    .line 153
    iget v0, p0, Lnet/time4j/calendar/HijriAdjustment;->adjustment:I

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Lnet/time4j/calendar/HijriAdjustment;->baseVariant:Ljava/lang/String;

    return-object v0

    .line 157
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    iget-object v1, p0, Lnet/time4j/calendar/HijriAdjustment;->baseVariant:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 160
    iget v1, p0, Lnet/time4j/calendar/HijriAdjustment;->adjustment:I

    if-lez v1, :cond_1

    const/16 v1, 0x2b

    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 163
    :cond_1
    iget v1, p0, Lnet/time4j/calendar/HijriAdjustment;->adjustment:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
