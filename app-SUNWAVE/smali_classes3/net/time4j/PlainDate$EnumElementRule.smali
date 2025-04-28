.class Lnet/time4j/PlainDate$EnumElementRule;
.super Ljava/lang/Object;
.source "PlainDate.java"

# interfaces
.implements Lnet/time4j/engine/ElementRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/PlainDate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EnumElementRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Enum<",
        "TV;>;>",
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ElementRule<",
        "Lnet/time4j/PlainDate;",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final index:I

.field private final max:Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final min:Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;Ljava/lang/Enum;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TV;>;TV;TV;I)V"
        }
    .end annotation

    .line 2966
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2968
    iput-object p1, p0, Lnet/time4j/PlainDate$EnumElementRule;->name:Ljava/lang/String;

    .line 2969
    iput-object p2, p0, Lnet/time4j/PlainDate$EnumElementRule;->type:Ljava/lang/Class;

    .line 2970
    iput-object p3, p0, Lnet/time4j/PlainDate$EnumElementRule;->min:Ljava/lang/Enum;

    .line 2971
    iput-object p4, p0, Lnet/time4j/PlainDate$EnumElementRule;->max:Ljava/lang/Enum;

    .line 2972
    iput p5, p0, Lnet/time4j/PlainDate$EnumElementRule;->index:I

    return-void
.end method

.method private getChild()Lnet/time4j/engine/ChronoElement;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 3098
    iget v0, p0, Lnet/time4j/PlainDate$EnumElementRule;->index:I

    packed-switch v0, :pswitch_data_0

    .line 3106
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    iget-object v1, p0, Lnet/time4j/PlainDate$EnumElementRule;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3104
    :pswitch_0
    sget-object v0, Lnet/time4j/PlainDate;->DAY_OF_QUARTER:Lnet/time4j/ProportionalElement;

    return-object v0

    :pswitch_1
    const/4 v0, 0x0

    return-object v0

    .line 3100
    :pswitch_2
    sget-object v0, Lnet/time4j/PlainDate;->DAY_OF_MONTH:Lnet/time4j/ProportionalElement;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static of(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/PlainDate$EnumElementRule;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Enum<",
            "TV;>;>(",
            "Lnet/time4j/engine/ChronoElement<",
            "TV;>;)",
            "Lnet/time4j/PlainDate$EnumElementRule<",
            "TV;>;"
        }
    .end annotation

    .line 2980
    new-instance v6, Lnet/time4j/PlainDate$EnumElementRule;

    .line 2981
    invoke-interface {p0}, Lnet/time4j/engine/ChronoElement;->name()Ljava/lang/String;

    move-result-object v1

    .line 2982
    invoke-interface {p0}, Lnet/time4j/engine/ChronoElement;->getType()Ljava/lang/Class;

    move-result-object v2

    .line 2983
    invoke-interface {p0}, Lnet/time4j/engine/ChronoElement;->getDefaultMinimum()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/Enum;

    .line 2984
    invoke-interface {p0}, Lnet/time4j/engine/ChronoElement;->getDefaultMaximum()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/Enum;

    check-cast p0, Lnet/time4j/EnumElement;

    .line 2985
    invoke-virtual {p0}, Lnet/time4j/EnumElement;->getIndex()I

    move-result v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lnet/time4j/PlainDate$EnumElementRule;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;Ljava/lang/Enum;I)V

    return-object v6
.end method


# virtual methods
.method public bridge synthetic getChildAtCeiling(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 2946
    check-cast p1, Lnet/time4j/PlainDate;

    invoke-virtual {p0, p1}, Lnet/time4j/PlainDate$EnumElementRule;->getChildAtCeiling(Lnet/time4j/PlainDate;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtCeiling(Lnet/time4j/PlainDate;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/PlainDate;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 3092
    invoke-direct {p0}, Lnet/time4j/PlainDate$EnumElementRule;->getChild()Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getChildAtFloor(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 2946
    check-cast p1, Lnet/time4j/PlainDate;

    invoke-virtual {p0, p1}, Lnet/time4j/PlainDate$EnumElementRule;->getChildAtFloor(Lnet/time4j/PlainDate;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtFloor(Lnet/time4j/PlainDate;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/PlainDate;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 3085
    invoke-direct {p0}, Lnet/time4j/PlainDate$EnumElementRule;->getChild()Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getMaximum(Lnet/time4j/PlainDate;)Ljava/lang/Enum;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/PlainDate;",
            ")TV;"
        }
    .end annotation

    .line 3023
    iget v0, p0, Lnet/time4j/PlainDate$EnumElementRule;->index:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_0

    .line 3025
    invoke-static {p1}, Lnet/time4j/PlainDate;->access$800(Lnet/time4j/PlainDate;)I

    move-result v0

    const v1, 0x3b9ac9ff

    if-ne v0, v1, :cond_0

    .line 3026
    invoke-static {p1}, Lnet/time4j/PlainDate;->access$900(Lnet/time4j/PlainDate;)B

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 3027
    invoke-static {p1}, Lnet/time4j/PlainDate;->access$1000(Lnet/time4j/PlainDate;)B

    move-result p1

    const/16 v0, 0x1b

    if-lt p1, v0, :cond_0

    .line 3029
    iget-object p1, p0, Lnet/time4j/PlainDate$EnumElementRule;->type:Ljava/lang/Class;

    sget-object v0, Lnet/time4j/Weekday;->FRIDAY:Lnet/time4j/Weekday;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Enum;

    return-object p1

    .line 3032
    :cond_0
    iget-object p1, p0, Lnet/time4j/PlainDate$EnumElementRule;->max:Ljava/lang/Enum;

    return-object p1
.end method

.method public bridge synthetic getMaximum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2946
    check-cast p1, Lnet/time4j/PlainDate;

    invoke-virtual {p0, p1}, Lnet/time4j/PlainDate$EnumElementRule;->getMaximum(Lnet/time4j/PlainDate;)Ljava/lang/Enum;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/PlainDate;)Ljava/lang/Enum;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/PlainDate;",
            ")TV;"
        }
    .end annotation

    .line 3016
    iget-object p1, p0, Lnet/time4j/PlainDate$EnumElementRule;->min:Ljava/lang/Enum;

    return-object p1
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2946
    check-cast p1, Lnet/time4j/PlainDate;

    invoke-virtual {p0, p1}, Lnet/time4j/PlainDate$EnumElementRule;->getMinimum(Lnet/time4j/PlainDate;)Ljava/lang/Enum;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lnet/time4j/PlainDate;)Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/PlainDate;",
            ")TV;"
        }
    .end annotation

    .line 2995
    iget v0, p0, Lnet/time4j/PlainDate$EnumElementRule;->index:I

    packed-switch v0, :pswitch_data_0

    .line 3006
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    iget-object v0, p0, Lnet/time4j/PlainDate$EnumElementRule;->name:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3003
    :pswitch_0
    invoke-static {p1}, Lnet/time4j/PlainDate;->access$900(Lnet/time4j/PlainDate;)B

    move-result p1

    add-int/lit8 p1, p1, -0x1

    div-int/lit8 p1, p1, 0x3

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lnet/time4j/Quarter;->valueOf(I)Lnet/time4j/Quarter;

    move-result-object p1

    goto :goto_0

    .line 3000
    :pswitch_1
    invoke-virtual {p1}, Lnet/time4j/PlainDate;->getDayOfWeek()Lnet/time4j/Weekday;

    move-result-object p1

    goto :goto_0

    .line 2997
    :pswitch_2
    invoke-static {p1}, Lnet/time4j/PlainDate;->access$900(Lnet/time4j/PlainDate;)B

    move-result p1

    invoke-static {p1}, Lnet/time4j/Month;->valueOf(I)Lnet/time4j/Month;

    move-result-object p1

    .line 3009
    :goto_0
    iget-object v0, p0, Lnet/time4j/PlainDate$EnumElementRule;->type:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Enum;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2946
    check-cast p1, Lnet/time4j/PlainDate;

    invoke-virtual {p0, p1}, Lnet/time4j/PlainDate$EnumElementRule;->getValue(Lnet/time4j/PlainDate;)Ljava/lang/Enum;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 2946
    check-cast p1, Lnet/time4j/PlainDate;

    check-cast p2, Ljava/lang/Enum;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/PlainDate$EnumElementRule;->isValid(Lnet/time4j/PlainDate;Ljava/lang/Enum;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/PlainDate;Ljava/lang/Enum;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/PlainDate;",
            "TV;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 3044
    :cond_0
    iget v1, p0, Lnet/time4j/PlainDate$EnumElementRule;->index:I

    const/16 v2, 0x66

    if-ne v1, v2, :cond_1

    invoke-static {p1}, Lnet/time4j/PlainDate;->access$800(Lnet/time4j/PlainDate;)I

    move-result v1

    const v2, 0x3b9ac9ff

    if-ne v1, v2, :cond_1

    .line 3046
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lnet/time4j/PlainDate$EnumElementRule;->withValue(Lnet/time4j/PlainDate;Ljava/lang/Enum;Z)Lnet/time4j/PlainDate;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return v0

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0

    .line 2946
    check-cast p1, Lnet/time4j/PlainDate;

    check-cast p2, Ljava/lang/Enum;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/PlainDate$EnumElementRule;->withValue(Lnet/time4j/PlainDate;Ljava/lang/Enum;Z)Lnet/time4j/PlainDate;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/PlainDate;Ljava/lang/Enum;Z)Lnet/time4j/PlainDate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/PlainDate;",
            "TV;Z)",
            "Lnet/time4j/PlainDate;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 3067
    iget p3, p0, Lnet/time4j/PlainDate$EnumElementRule;->index:I

    packed-switch p3, :pswitch_data_0

    .line 3077
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    iget-object p2, p0, Lnet/time4j/PlainDate$EnumElementRule;->name:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3073
    :pswitch_0
    invoke-static {p1}, Lnet/time4j/PlainDate;->access$900(Lnet/time4j/PlainDate;)B

    move-result p3

    add-int/lit8 p3, p3, -0x1

    div-int/lit8 p3, p3, 0x3

    add-int/lit8 p3, p3, 0x1

    .line 3074
    const-class v0, Lnet/time4j/Quarter;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/time4j/Quarter;

    invoke-virtual {p2}, Lnet/time4j/Quarter;->getValue()I

    move-result p2

    sub-int/2addr p2, p3

    int-to-long p2, p2

    .line 3075
    sget-object v0, Lnet/time4j/CalendarUnit;->QUARTERS:Lnet/time4j/CalendarUnit;

    invoke-virtual {p1, p2, p3, v0}, Lnet/time4j/PlainDate;->plus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainDate;

    return-object p1

    .line 3071
    :pswitch_1
    const-class p3, Lnet/time4j/Weekday;

    invoke-virtual {p3, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/time4j/Weekday;

    invoke-static {p1, p2}, Lnet/time4j/PlainDate;->access$2100(Lnet/time4j/PlainDate;Lnet/time4j/Weekday;)Lnet/time4j/PlainDate;

    move-result-object p1

    return-object p1

    .line 3069
    :pswitch_2
    const-class p3, Lnet/time4j/Month;

    invoke-virtual {p3, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/time4j/Month;

    invoke-virtual {p2}, Lnet/time4j/Month;->getValue()I

    move-result p2

    invoke-static {p1, p2}, Lnet/time4j/PlainDate;->access$1400(Lnet/time4j/PlainDate;I)Lnet/time4j/PlainDate;

    move-result-object p1

    return-object p1

    .line 3064
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing element value."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
