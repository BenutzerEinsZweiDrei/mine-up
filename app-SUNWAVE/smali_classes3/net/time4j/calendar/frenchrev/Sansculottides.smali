.class public final enum Lnet/time4j/calendar/frenchrev/Sansculottides;
.super Ljava/lang/Enum;
.source "Sansculottides.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/time4j/calendar/frenchrev/Sansculottides;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/time4j/calendar/frenchrev/Sansculottides;

.field public static final enum COMPLEMENTARY_DAY_1:Lnet/time4j/calendar/frenchrev/Sansculottides;

.field public static final enum COMPLEMENTARY_DAY_2:Lnet/time4j/calendar/frenchrev/Sansculottides;

.field public static final enum COMPLEMENTARY_DAY_3:Lnet/time4j/calendar/frenchrev/Sansculottides;

.field public static final enum COMPLEMENTARY_DAY_4:Lnet/time4j/calendar/frenchrev/Sansculottides;

.field public static final enum COMPLEMENTARY_DAY_5:Lnet/time4j/calendar/frenchrev/Sansculottides;

.field public static final enum LEAP_DAY:Lnet/time4j/calendar/frenchrev/Sansculottides;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 50
    new-instance v0, Lnet/time4j/calendar/frenchrev/Sansculottides;

    const-string v1, "COMPLEMENTARY_DAY_1"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/time4j/calendar/frenchrev/Sansculottides;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/time4j/calendar/frenchrev/Sansculottides;->COMPLEMENTARY_DAY_1:Lnet/time4j/calendar/frenchrev/Sansculottides;

    .line 58
    new-instance v1, Lnet/time4j/calendar/frenchrev/Sansculottides;

    const-string v3, "COMPLEMENTARY_DAY_2"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/time4j/calendar/frenchrev/Sansculottides;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/time4j/calendar/frenchrev/Sansculottides;->COMPLEMENTARY_DAY_2:Lnet/time4j/calendar/frenchrev/Sansculottides;

    .line 66
    new-instance v3, Lnet/time4j/calendar/frenchrev/Sansculottides;

    const-string v5, "COMPLEMENTARY_DAY_3"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lnet/time4j/calendar/frenchrev/Sansculottides;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/time4j/calendar/frenchrev/Sansculottides;->COMPLEMENTARY_DAY_3:Lnet/time4j/calendar/frenchrev/Sansculottides;

    .line 74
    new-instance v5, Lnet/time4j/calendar/frenchrev/Sansculottides;

    const-string v7, "COMPLEMENTARY_DAY_4"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lnet/time4j/calendar/frenchrev/Sansculottides;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lnet/time4j/calendar/frenchrev/Sansculottides;->COMPLEMENTARY_DAY_4:Lnet/time4j/calendar/frenchrev/Sansculottides;

    .line 82
    new-instance v7, Lnet/time4j/calendar/frenchrev/Sansculottides;

    const-string v9, "COMPLEMENTARY_DAY_5"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lnet/time4j/calendar/frenchrev/Sansculottides;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lnet/time4j/calendar/frenchrev/Sansculottides;->COMPLEMENTARY_DAY_5:Lnet/time4j/calendar/frenchrev/Sansculottides;

    .line 91
    new-instance v9, Lnet/time4j/calendar/frenchrev/Sansculottides;

    const-string v11, "LEAP_DAY"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lnet/time4j/calendar/frenchrev/Sansculottides;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lnet/time4j/calendar/frenchrev/Sansculottides;->LEAP_DAY:Lnet/time4j/calendar/frenchrev/Sansculottides;

    const/4 v11, 0x6

    new-array v11, v11, [Lnet/time4j/calendar/frenchrev/Sansculottides;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 40
    sput-object v11, Lnet/time4j/calendar/frenchrev/Sansculottides;->$VALUES:[Lnet/time4j/calendar/frenchrev/Sansculottides;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(I)Lnet/time4j/calendar/frenchrev/Sansculottides;
    .locals 3

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/4 v1, 0x6

    if-gt p0, v1, :cond_0

    .line 115
    invoke-static {}, Lnet/time4j/calendar/frenchrev/Sansculottides;->values()[Lnet/time4j/calendar/frenchrev/Sansculottides;

    move-result-object v1

    sub-int/2addr p0, v0

    aget-object p0, v1, p0

    return-object p0

    .line 112
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/time4j/calendar/frenchrev/Sansculottides;
    .locals 1

    .line 40
    const-class v0, Lnet/time4j/calendar/frenchrev/Sansculottides;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/time4j/calendar/frenchrev/Sansculottides;

    return-object p0
.end method

.method public static values()[Lnet/time4j/calendar/frenchrev/Sansculottides;
    .locals 1

    .line 40
    sget-object v0, Lnet/time4j/calendar/frenchrev/Sansculottides;->$VALUES:[Lnet/time4j/calendar/frenchrev/Sansculottides;

    invoke-virtual {v0}, [Lnet/time4j/calendar/frenchrev/Sansculottides;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/time4j/calendar/frenchrev/Sansculottides;

    return-object v0
.end method


# virtual methods
.method public getDisplayName(Ljava/util/Locale;Lnet/time4j/format/OutputContext;)Ljava/lang/String;
    .locals 2

    const-string v0, "frenchrev"

    .line 162
    invoke-static {v0, p1}, Lnet/time4j/format/CalendarText;->getInstance(Ljava/lang/String;Ljava/util/Locale;)Lnet/time4j/format/CalendarText;

    move-result-object p1

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "S("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lnet/time4j/format/OutputContext;->STANDALONE:Lnet/time4j/format/OutputContext;

    if-ne p2, v1, :cond_0

    const-string v1, "W"

    goto :goto_0

    :cond_0
    const-string v1, "w"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/time4j/calendar/frenchrev/Sansculottides;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-virtual {p1}, Lnet/time4j/format/CalendarText;->getTextForms()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    .line 166
    sget-object v1, Lnet/time4j/format/OutputContext;->STANDALONE:Lnet/time4j/format/OutputContext;

    if-ne p2, v1, :cond_1

    .line 167
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "S(w)_"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/time4j/calendar/frenchrev/Sansculottides;->getValue()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 168
    invoke-virtual {p1}, Lnet/time4j/format/CalendarText;->getTextForms()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    :cond_1
    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 131
    invoke-virtual {p0}, Lnet/time4j/calendar/frenchrev/Sansculottides;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
