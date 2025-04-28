.class public final enum Lnet/time4j/engine/EpochDays;
.super Ljava/lang/Enum;
.source "EpochDays.java"

# interfaces
.implements Lnet/time4j/engine/ChronoElement;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/time4j/engine/EpochDays$Rule;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/time4j/engine/EpochDays;",
        ">;",
        "Lnet/time4j/engine/ChronoElement<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/time4j/engine/EpochDays;

.field public static final enum ANSI:Lnet/time4j/engine/EpochDays;

.field public static final enum EXCEL:Lnet/time4j/engine/EpochDays;

.field public static final enum JULIAN_DAY_NUMBER:Lnet/time4j/engine/EpochDays;

.field public static final enum LILIAN_DAY_NUMBER:Lnet/time4j/engine/EpochDays;

.field public static final enum MODIFIED_JULIAN_DATE:Lnet/time4j/engine/EpochDays;
    .annotation runtime Lnet/time4j/engine/FormattableElement;
        format = "g"
    .end annotation
.end field

.field public static final enum RATA_DIE:Lnet/time4j/engine/EpochDays;

.field public static final enum UNIX:Lnet/time4j/engine/EpochDays;

.field public static final enum UTC:Lnet/time4j/engine/EpochDays;


# instance fields
.field private final offset:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 73
    new-instance v0, Lnet/time4j/engine/EpochDays;

    const-string v1, "UTC"

    const/4 v2, 0x0

    const v3, 0x254065

    invoke-direct {v0, v1, v2, v3}, Lnet/time4j/engine/EpochDays;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/time4j/engine/EpochDays;->UTC:Lnet/time4j/engine/EpochDays;

    .line 108
    new-instance v1, Lnet/time4j/engine/EpochDays;

    const-string v3, "UNIX"

    const/4 v4, 0x1

    const v5, 0x253d8b    # 3.419991E-39f

    invoke-direct {v1, v3, v4, v5}, Lnet/time4j/engine/EpochDays;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lnet/time4j/engine/EpochDays;->UNIX:Lnet/time4j/engine/EpochDays;

    .line 120
    new-instance v3, Lnet/time4j/engine/EpochDays;

    const-string v5, "MODIFIED_JULIAN_DATE"

    const/4 v6, 0x2

    const v7, 0x249f00

    invoke-direct {v3, v5, v6, v7}, Lnet/time4j/engine/EpochDays;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lnet/time4j/engine/EpochDays;->MODIFIED_JULIAN_DATE:Lnet/time4j/engine/EpochDays;

    .line 133
    new-instance v5, Lnet/time4j/engine/EpochDays;

    const-string v7, "EXCEL"

    const/4 v8, 0x3

    const v9, 0x24d9ab

    invoke-direct {v5, v7, v8, v9}, Lnet/time4j/engine/EpochDays;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lnet/time4j/engine/EpochDays;->EXCEL:Lnet/time4j/engine/EpochDays;

    .line 145
    new-instance v7, Lnet/time4j/engine/EpochDays;

    const-string v9, "ANSI"

    const/4 v10, 0x4

    const v11, 0x232f14

    invoke-direct {v7, v9, v10, v11}, Lnet/time4j/engine/EpochDays;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lnet/time4j/engine/EpochDays;->ANSI:Lnet/time4j/engine/EpochDays;

    .line 159
    new-instance v9, Lnet/time4j/engine/EpochDays;

    const-string v11, "RATA_DIE"

    const/4 v12, 0x5

    const v13, 0x1a4450

    invoke-direct {v9, v11, v12, v13}, Lnet/time4j/engine/EpochDays;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lnet/time4j/engine/EpochDays;->RATA_DIE:Lnet/time4j/engine/EpochDays;

    .line 179
    new-instance v11, Lnet/time4j/engine/EpochDays;

    const-string v13, "JULIAN_DAY_NUMBER"

    const/4 v14, 0x6

    const/4 v15, -0x1

    invoke-direct {v11, v13, v14, v15}, Lnet/time4j/engine/EpochDays;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lnet/time4j/engine/EpochDays;->JULIAN_DAY_NUMBER:Lnet/time4j/engine/EpochDays;

    .line 189
    new-instance v13, Lnet/time4j/engine/EpochDays;

    const-string v15, "LILIAN_DAY_NUMBER"

    const/4 v14, 0x7

    const v12, 0x231517

    invoke-direct {v13, v15, v14, v12}, Lnet/time4j/engine/EpochDays;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lnet/time4j/engine/EpochDays;->LILIAN_DAY_NUMBER:Lnet/time4j/engine/EpochDays;

    const/16 v12, 0x8

    new-array v12, v12, [Lnet/time4j/engine/EpochDays;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    aput-object v7, v12, v10

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    aput-object v13, v12, v14

    .line 60
    sput-object v12, Lnet/time4j/engine/EpochDays;->$VALUES:[Lnet/time4j/engine/EpochDays;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 197
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const p1, 0x253d8b    # 3.419991E-39f

    sub-int/2addr p3, p1

    add-int/lit16 p3, p3, -0x2da

    .line 198
    iput p3, p0, Lnet/time4j/engine/EpochDays;->offset:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/time4j/engine/EpochDays;
    .locals 1

    .line 60
    const-class v0, Lnet/time4j/engine/EpochDays;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/time4j/engine/EpochDays;

    return-object p0
.end method

.method public static values()[Lnet/time4j/engine/EpochDays;
    .locals 1

    .line 60
    sget-object v0, Lnet/time4j/engine/EpochDays;->$VALUES:[Lnet/time4j/engine/EpochDays;

    invoke-virtual {v0}, [Lnet/time4j/engine/EpochDays;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/time4j/engine/EpochDays;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 60
    check-cast p1, Lnet/time4j/engine/ChronoDisplay;

    check-cast p2, Lnet/time4j/engine/ChronoDisplay;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/engine/EpochDays;->compare(Lnet/time4j/engine/ChronoDisplay;Lnet/time4j/engine/ChronoDisplay;)I

    move-result p1

    return p1
.end method

.method public compare(Lnet/time4j/engine/ChronoDisplay;Lnet/time4j/engine/ChronoDisplay;)I
    .locals 0

    .line 267
    invoke-interface {p1, p0}, Lnet/time4j/engine/ChronoDisplay;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-interface {p2, p0}, Lnet/time4j/engine/ChronoDisplay;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p1, p2}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p1

    return p1
.end method

.method derive(Lnet/time4j/engine/CalendarSystem;)Lnet/time4j/engine/ElementRule;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Lnet/time4j/engine/ChronoEntity<",
            "TD;>;>(",
            "Lnet/time4j/engine/CalendarSystem<",
            "TD;>;)",
            "Lnet/time4j/engine/ElementRule<",
            "TD;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 344
    new-instance v0, Lnet/time4j/engine/EpochDays$Rule;

    invoke-direct {v0, p0, p1}, Lnet/time4j/engine/EpochDays$Rule;-><init>(Lnet/time4j/engine/EpochDays;Lnet/time4j/engine/CalendarSystem;)V

    return-object v0
.end method

.method public getDefaultMaximum()Ljava/lang/Long;
    .locals 4

    .line 283
    iget v0, p0, Lnet/time4j/engine/EpochDays;->offset:I

    int-to-long v0, v0

    const-wide v2, 0x550a1b461dL

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultMaximum()Ljava/lang/Object;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lnet/time4j/engine/EpochDays;->getDefaultMaximum()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMinimum()Ljava/lang/Long;
    .locals 4

    .line 275
    iget v0, p0, Lnet/time4j/engine/EpochDays;->offset:I

    int-to-long v0, v0

    const-wide v2, -0x550a313fb4L

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultMinimum()Ljava/lang/Object;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lnet/time4j/engine/EpochDays;->getDefaultMinimum()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 331
    invoke-virtual {p0}, Lnet/time4j/engine/EpochDays;->name()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSymbol()C
    .locals 1

    .line 257
    sget-object v0, Lnet/time4j/engine/EpochDays;->MODIFIED_JULIAN_DATE:Lnet/time4j/engine/EpochDays;

    if-ne p0, v0, :cond_0

    const/16 v0, 0x67

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 240
    const-class v0, Ljava/lang/Long;

    return-object v0
.end method

.method public isDateElement()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isLenient()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTimeElement()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public transform(JLnet/time4j/engine/EpochDays;)J
    .locals 2

    .line 227
    :try_start_0
    iget p3, p3, Lnet/time4j/engine/EpochDays;->offset:I

    iget v0, p0, Lnet/time4j/engine/EpochDays;->offset:I

    sub-int/2addr p3, v0

    int-to-long v0, p3

    invoke-static {p1, p2, v0, v1}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    .line 232
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
