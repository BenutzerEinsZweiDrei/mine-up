.class Lnet/time4j/calendar/EthiopianTime$EthiopianHour;
.super Lnet/time4j/format/DisplayElement;
.source "EthiopianTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/EthiopianTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EthiopianHour"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/format/DisplayElement<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field static final ELEMENT:Lnet/time4j/calendar/EthiopianTime$EthiopianHour;

.field private static final serialVersionUID:J = -0x1d1657b751944324L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1214
    new-instance v0, Lnet/time4j/calendar/EthiopianTime$EthiopianHour;

    invoke-direct {v0}, Lnet/time4j/calendar/EthiopianTime$EthiopianHour;-><init>()V

    sput-object v0, Lnet/time4j/calendar/EthiopianTime$EthiopianHour;->ELEMENT:Lnet/time4j/calendar/EthiopianTime$EthiopianHour;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "ETHIOPIAN_HOUR"

    .line 1219
    invoke-direct {p0, v0}, Lnet/time4j/format/DisplayElement;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 1274
    sget-object v0, Lnet/time4j/calendar/EthiopianTime$EthiopianHour;->ELEMENT:Lnet/time4j/calendar/EthiopianTime$EthiopianHour;

    return-object v0
.end method


# virtual methods
.method protected derive(Lnet/time4j/engine/Chronology;)Lnet/time4j/engine/ElementRule;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/time4j/engine/ChronoEntity<",
            "TT;>;>(",
            "Lnet/time4j/engine/Chronology<",
            "TT;>;)",
            "Lnet/time4j/engine/ElementRule<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1262
    invoke-static {}, Lnet/time4j/PlainTime;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1263
    new-instance p1, Lnet/time4j/calendar/EthiopianTime$GeneralHourRule;

    invoke-direct {p1, v0}, Lnet/time4j/calendar/EthiopianTime$GeneralHourRule;-><init>(Lnet/time4j/calendar/EthiopianTime$1;)V

    return-object p1

    :cond_0
    return-object v0
.end method

.method public getDefaultMaximum()Ljava/lang/Integer;
    .locals 1

    const/16 v0, 0xc

    .line 1242
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultMaximum()Ljava/lang/Object;
    .locals 1

    .line 1208
    invoke-virtual {p0}, Lnet/time4j/calendar/EthiopianTime$EthiopianHour;->getDefaultMaximum()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMinimum()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x1

    .line 1237
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultMinimum()Ljava/lang/Object;
    .locals 1

    .line 1208
    invoke-virtual {p0}, Lnet/time4j/calendar/EthiopianTime$EthiopianHour;->getDefaultMinimum()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected getParent()Lnet/time4j/engine/ChronoElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 1257
    sget-object v0, Lnet/time4j/PlainTime;->CLOCK_HOUR_OF_AMPM:Lnet/time4j/AdjustableElement;

    return-object v0
.end method

.method public getSymbol()C
    .locals 1

    const/16 v0, 0x68

    return v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1227
    const-class v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public isDateElement()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isSingleton()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isTimeElement()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
