.class final enum Lnet/time4j/tz/model/RuleComparator;
.super Ljava/lang/Enum;
.source "RuleComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/time4j/tz/model/RuleComparator;",
        ">;",
        "Ljava/util/Comparator<",
        "Lnet/time4j/tz/model/DaylightSavingRule;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/time4j/tz/model/RuleComparator;

.field public static final enum INSTANCE:Lnet/time4j/tz/model/RuleComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 35
    new-instance v0, Lnet/time4j/tz/model/RuleComparator;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/time4j/tz/model/RuleComparator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/time4j/tz/model/RuleComparator;->INSTANCE:Lnet/time4j/tz/model/RuleComparator;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/time4j/tz/model/RuleComparator;

    aput-object v0, v1, v2

    .line 30
    sput-object v1, Lnet/time4j/tz/model/RuleComparator;->$VALUES:[Lnet/time4j/tz/model/RuleComparator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/time4j/tz/model/RuleComparator;
    .locals 1

    .line 30
    const-class v0, Lnet/time4j/tz/model/RuleComparator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/time4j/tz/model/RuleComparator;

    return-object p0
.end method

.method public static values()[Lnet/time4j/tz/model/RuleComparator;
    .locals 1

    .line 30
    sget-object v0, Lnet/time4j/tz/model/RuleComparator;->$VALUES:[Lnet/time4j/tz/model/RuleComparator;

    invoke-virtual {v0}, [Lnet/time4j/tz/model/RuleComparator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/time4j/tz/model/RuleComparator;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 30
    check-cast p1, Lnet/time4j/tz/model/DaylightSavingRule;

    check-cast p2, Lnet/time4j/tz/model/DaylightSavingRule;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/tz/model/RuleComparator;->compare(Lnet/time4j/tz/model/DaylightSavingRule;Lnet/time4j/tz/model/DaylightSavingRule;)I

    move-result p1

    return p1
.end method

.method public compare(Lnet/time4j/tz/model/DaylightSavingRule;Lnet/time4j/tz/model/DaylightSavingRule;)I
    .locals 2

    const/16 v0, 0x7d0

    .line 42
    invoke-virtual {p1, v0}, Lnet/time4j/tz/model/DaylightSavingRule;->getDate(I)Lnet/time4j/PlainDate;

    move-result-object v1

    invoke-virtual {p2, v0}, Lnet/time4j/tz/model/DaylightSavingRule;->getDate(I)Lnet/time4j/PlainDate;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/time4j/PlainDate;->compareTo(Lnet/time4j/engine/Calendrical;)I

    move-result v0

    if-nez v0, :cond_0

    .line 45
    invoke-virtual {p1}, Lnet/time4j/tz/model/DaylightSavingRule;->getTimeOfDay()Lnet/time4j/PlainTime;

    move-result-object p1

    invoke-virtual {p2}, Lnet/time4j/tz/model/DaylightSavingRule;->getTimeOfDay()Lnet/time4j/PlainTime;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/time4j/PlainTime;->compareTo(Lnet/time4j/PlainTime;)I

    move-result v0

    :cond_0
    return v0
.end method
