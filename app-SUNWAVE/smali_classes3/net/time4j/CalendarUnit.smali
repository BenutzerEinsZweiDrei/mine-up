.class public abstract enum Lnet/time4j/CalendarUnit;
.super Ljava/lang/Enum;
.source "CalendarUnit.java"

# interfaces
.implements Lnet/time4j/IsoDateUnit;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/time4j/CalendarUnit$Rule;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/time4j/CalendarUnit;",
        ">;",
        "Lnet/time4j/IsoDateUnit;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/time4j/CalendarUnit;

.field public static final enum CENTURIES:Lnet/time4j/CalendarUnit;

.field public static final enum DAYS:Lnet/time4j/CalendarUnit;

.field public static final enum DECADES:Lnet/time4j/CalendarUnit;

.field public static final enum MILLENNIA:Lnet/time4j/CalendarUnit;

.field public static final enum MONTHS:Lnet/time4j/CalendarUnit;

.field public static final enum QUARTERS:Lnet/time4j/CalendarUnit;

.field public static final enum WEEKS:Lnet/time4j/CalendarUnit;

.field public static final enum YEARS:Lnet/time4j/CalendarUnit;


# instance fields
.field private final co:Lnet/time4j/IsoDateUnit;

.field private final eof:Lnet/time4j/IsoDateUnit;

.field private final joda:Lnet/time4j/IsoDateUnit;

.field private final kld:Lnet/time4j/IsoDateUnit;

.field private final nvd:Lnet/time4j/IsoDateUnit;

.field private final ui:Lnet/time4j/IsoDateUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 76
    new-instance v0, Lnet/time4j/CalendarUnit$1;

    const-string v1, "MILLENNIA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/time4j/CalendarUnit$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/time4j/CalendarUnit;->MILLENNIA:Lnet/time4j/CalendarUnit;

    .line 89
    new-instance v1, Lnet/time4j/CalendarUnit$2;

    const-string v3, "CENTURIES"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/time4j/CalendarUnit$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/time4j/CalendarUnit;->CENTURIES:Lnet/time4j/CalendarUnit;

    .line 102
    new-instance v3, Lnet/time4j/CalendarUnit$3;

    const-string v5, "DECADES"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lnet/time4j/CalendarUnit$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/time4j/CalendarUnit;->DECADES:Lnet/time4j/CalendarUnit;

    .line 115
    new-instance v5, Lnet/time4j/CalendarUnit$4;

    const-string v7, "YEARS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lnet/time4j/CalendarUnit$4;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lnet/time4j/CalendarUnit;->YEARS:Lnet/time4j/CalendarUnit;

    .line 128
    new-instance v7, Lnet/time4j/CalendarUnit$5;

    const-string v9, "QUARTERS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lnet/time4j/CalendarUnit$5;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lnet/time4j/CalendarUnit;->QUARTERS:Lnet/time4j/CalendarUnit;

    .line 141
    new-instance v9, Lnet/time4j/CalendarUnit$6;

    const-string v11, "MONTHS"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lnet/time4j/CalendarUnit$6;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lnet/time4j/CalendarUnit;->MONTHS:Lnet/time4j/CalendarUnit;

    .line 154
    new-instance v11, Lnet/time4j/CalendarUnit$7;

    const-string v13, "WEEKS"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lnet/time4j/CalendarUnit$7;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lnet/time4j/CalendarUnit;->WEEKS:Lnet/time4j/CalendarUnit;

    .line 167
    new-instance v13, Lnet/time4j/CalendarUnit$8;

    const-string v15, "DAYS"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lnet/time4j/CalendarUnit$8;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lnet/time4j/CalendarUnit;->DAYS:Lnet/time4j/CalendarUnit;

    const/16 v15, 0x8

    new-array v15, v15, [Lnet/time4j/CalendarUnit;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    .line 69
    sput-object v15, Lnet/time4j/CalendarUnit;->$VALUES:[Lnet/time4j/CalendarUnit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 180
    new-instance p1, Lnet/time4j/OverflowUnit;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Lnet/time4j/OverflowUnit;-><init>(Lnet/time4j/CalendarUnit;I)V

    iput-object p1, p0, Lnet/time4j/CalendarUnit;->eof:Lnet/time4j/IsoDateUnit;

    .line 182
    new-instance p1, Lnet/time4j/OverflowUnit;

    const/4 p2, 0x5

    invoke-direct {p1, p0, p2}, Lnet/time4j/OverflowUnit;-><init>(Lnet/time4j/CalendarUnit;I)V

    iput-object p1, p0, Lnet/time4j/CalendarUnit;->kld:Lnet/time4j/IsoDateUnit;

    .line 184
    new-instance p1, Lnet/time4j/OverflowUnit;

    const/4 p2, 0x4

    invoke-direct {p1, p0, p2}, Lnet/time4j/OverflowUnit;-><init>(Lnet/time4j/CalendarUnit;I)V

    iput-object p1, p0, Lnet/time4j/CalendarUnit;->ui:Lnet/time4j/IsoDateUnit;

    .line 186
    new-instance p1, Lnet/time4j/OverflowUnit;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lnet/time4j/OverflowUnit;-><init>(Lnet/time4j/CalendarUnit;I)V

    iput-object p1, p0, Lnet/time4j/CalendarUnit;->nvd:Lnet/time4j/IsoDateUnit;

    .line 188
    new-instance p1, Lnet/time4j/OverflowUnit;

    const/4 p2, 0x3

    invoke-direct {p1, p0, p2}, Lnet/time4j/OverflowUnit;-><init>(Lnet/time4j/CalendarUnit;I)V

    iput-object p1, p0, Lnet/time4j/CalendarUnit;->co:Lnet/time4j/IsoDateUnit;

    .line 190
    new-instance p1, Lnet/time4j/OverflowUnit;

    const/4 p2, 0x6

    invoke-direct {p1, p0, p2}, Lnet/time4j/OverflowUnit;-><init>(Lnet/time4j/CalendarUnit;I)V

    iput-object p1, p0, Lnet/time4j/CalendarUnit;->joda:Lnet/time4j/IsoDateUnit;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILnet/time4j/CalendarUnit$1;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lnet/time4j/CalendarUnit;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/time4j/CalendarUnit;
    .locals 1

    .line 69
    const-class v0, Lnet/time4j/CalendarUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/time4j/CalendarUnit;

    return-object p0
.end method

.method public static values()[Lnet/time4j/CalendarUnit;
    .locals 1

    .line 69
    sget-object v0, Lnet/time4j/CalendarUnit;->$VALUES:[Lnet/time4j/CalendarUnit;

    invoke-virtual {v0}, [Lnet/time4j/CalendarUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/time4j/CalendarUnit;

    return-object v0
.end method

.method public static weekBasedYears()Lnet/time4j/IsoDateUnit;
    .locals 1

    .line 613
    sget-object v0, Lnet/time4j/Weekcycle;->YEARS:Lnet/time4j/Weekcycle;

    return-object v0
.end method


# virtual methods
.method public atEndOfMonth()Lnet/time4j/IsoDateUnit;
    .locals 3

    .line 439
    sget-object v0, Lnet/time4j/CalendarUnit$9;->$SwitchMap$net$time4j$CalendarUnit:[I

    invoke-virtual {p0}, Lnet/time4j/CalendarUnit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 444
    iget-object v0, p0, Lnet/time4j/CalendarUnit;->eof:Lnet/time4j/IsoDateUnit;

    return-object v0

    .line 442
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Original unit is not month-based: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/time4j/CalendarUnit;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public between(Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/TimePoint;)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/time4j/engine/TimePoint<",
            "-",
            "Lnet/time4j/CalendarUnit;",
            "TT;>;>(TT;TT;)J"
        }
    .end annotation

    .line 218
    invoke-virtual {p1, p2, p0}, Lnet/time4j/engine/TimePoint;->until(Lnet/time4j/engine/TimePoint;Ljava/lang/Object;)J

    move-result-wide p1

    return-wide p1
.end method

.method public isCalendrical()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public keepingEndOfMonth()Lnet/time4j/IsoDateUnit;
    .locals 3

    .line 506
    sget-object v0, Lnet/time4j/CalendarUnit$9;->$SwitchMap$net$time4j$CalendarUnit:[I

    invoke-virtual {p0}, Lnet/time4j/CalendarUnit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 511
    iget-object v0, p0, Lnet/time4j/CalendarUnit;->kld:Lnet/time4j/IsoDateUnit;

    return-object v0

    .line 509
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Original unit is not month-based: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/time4j/CalendarUnit;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextValidDate()Lnet/time4j/IsoDateUnit;
    .locals 2

    .line 277
    sget-object v0, Lnet/time4j/CalendarUnit$9;->$SwitchMap$net$time4j$CalendarUnit:[I

    invoke-virtual {p0}, Lnet/time4j/CalendarUnit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 282
    iget-object v0, p0, Lnet/time4j/CalendarUnit;->nvd:Lnet/time4j/IsoDateUnit;

    return-object v0

    :cond_0
    return-object p0
.end method

.method public unlessInvalid()Lnet/time4j/IsoDateUnit;
    .locals 2

    .line 373
    sget-object v0, Lnet/time4j/CalendarUnit$9;->$SwitchMap$net$time4j$CalendarUnit:[I

    invoke-virtual {p0}, Lnet/time4j/CalendarUnit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 378
    iget-object v0, p0, Lnet/time4j/CalendarUnit;->ui:Lnet/time4j/IsoDateUnit;

    return-object v0

    :cond_0
    return-object p0
.end method

.method public withCarryOver()Lnet/time4j/IsoDateUnit;
    .locals 2

    .line 325
    sget-object v0, Lnet/time4j/CalendarUnit$9;->$SwitchMap$net$time4j$CalendarUnit:[I

    invoke-virtual {p0}, Lnet/time4j/CalendarUnit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 330
    iget-object v0, p0, Lnet/time4j/CalendarUnit;->co:Lnet/time4j/IsoDateUnit;

    return-object v0

    :cond_0
    return-object p0
.end method

.method public withJodaMetric()Lnet/time4j/IsoDateUnit;
    .locals 2

    .line 566
    sget-object v0, Lnet/time4j/CalendarUnit$9;->$SwitchMap$net$time4j$CalendarUnit:[I

    invoke-virtual {p0}, Lnet/time4j/CalendarUnit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 571
    iget-object v0, p0, Lnet/time4j/CalendarUnit;->joda:Lnet/time4j/IsoDateUnit;

    return-object v0

    :cond_0
    return-object p0
.end method
