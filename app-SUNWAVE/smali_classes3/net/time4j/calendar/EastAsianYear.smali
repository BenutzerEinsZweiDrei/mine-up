.class public abstract Lnet/time4j/calendar/EastAsianYear;
.super Ljava/lang/Object;
.source "EastAsianYear.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forDangi(I)Lnet/time4j/calendar/EastAsianYear;
    .locals 3

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/16 v0, -0x91d

    .line 116
    invoke-static {p0, v0}, Lnet/time4j/base/MathUtils;->safeAdd(II)I

    move-result p0

    invoke-static {p0}, Lnet/time4j/calendar/EastAsianYear;->forGregorian(I)Lnet/time4j/calendar/EastAsianYear;

    move-result-object p0

    return-object p0

    .line 114
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dangi year must not be smaller than 1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static forGregorian(I)Lnet/time4j/calendar/EastAsianYear;
    .locals 1

    .line 59
    new-instance v0, Lnet/time4j/calendar/EastAsianYear$1;

    invoke-direct {v0, p0}, Lnet/time4j/calendar/EastAsianYear$1;-><init>(I)V

    return-object v0
.end method

.method public static forJuche(I)Lnet/time4j/calendar/EastAsianYear;
    .locals 3

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/16 v0, 0x777

    .line 145
    invoke-static {p0, v0}, Lnet/time4j/base/MathUtils;->safeAdd(II)I

    move-result p0

    invoke-static {p0}, Lnet/time4j/calendar/EastAsianYear;->forGregorian(I)Lnet/time4j/calendar/EastAsianYear;

    move-result-object p0

    return-object p0

    .line 143
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Juche year must not be smaller than 1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static forMinguo(I)Lnet/time4j/calendar/EastAsianYear;
    .locals 3

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/16 v0, 0x777

    .line 91
    invoke-static {p0, v0}, Lnet/time4j/base/MathUtils;->safeAdd(II)I

    move-result p0

    invoke-static {p0}, Lnet/time4j/calendar/EastAsianYear;->forGregorian(I)Lnet/time4j/calendar/EastAsianYear;

    move-result-object p0

    return-object p0

    .line 89
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Minguo year must not be smaller than 1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final getCycle()I
    .locals 2

    .line 159
    invoke-virtual {p0}, Lnet/time4j/calendar/EastAsianYear;->getElapsedCyclicYears()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, -0x1

    const/16 v1, 0x3c

    .line 160
    invoke-static {v0, v1}, Lnet/time4j/base/MathUtils;->floorDivide(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public abstract getElapsedCyclicYears()I
.end method

.method public final getYearOfCycle()Lnet/time4j/calendar/CyclicYear;
    .locals 2

    .line 174
    invoke-virtual {p0}, Lnet/time4j/calendar/EastAsianYear;->getElapsedCyclicYears()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x3c

    .line 175
    invoke-static {v0, v1}, Lnet/time4j/base/MathUtils;->floorModulo(II)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    .line 179
    :goto_0
    invoke-static {v1}, Lnet/time4j/calendar/CyclicYear;->of(I)Lnet/time4j/calendar/CyclicYear;

    move-result-object v0

    return-object v0
.end method
