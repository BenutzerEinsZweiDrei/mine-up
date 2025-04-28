.class public final enum Lnet/time4j/calendar/HebrewMonth;
.super Ljava/lang/Enum;
.source "HebrewMonth.java"

# interfaces
.implements Lnet/time4j/engine/ChronoCondition;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/time4j/calendar/HebrewMonth$Order;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/time4j/calendar/HebrewMonth;",
        ">;",
        "Lnet/time4j/engine/ChronoCondition<",
        "Lnet/time4j/calendar/HebrewCalendar;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/time4j/calendar/HebrewMonth;

.field public static final enum ADAR_I:Lnet/time4j/calendar/HebrewMonth;

.field public static final enum ADAR_II:Lnet/time4j/calendar/HebrewMonth;

.field private static final ATTRIBUTE:Lnet/time4j/engine/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/AttributeKey<",
            "Lnet/time4j/calendar/HebrewMonth$Order;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum AV:Lnet/time4j/calendar/HebrewMonth;

.field public static final enum ELUL:Lnet/time4j/calendar/HebrewMonth;

.field private static final ENUMS:[Lnet/time4j/calendar/HebrewMonth;

.field public static final enum HESHVAN:Lnet/time4j/calendar/HebrewMonth;

.field public static final enum IYAR:Lnet/time4j/calendar/HebrewMonth;

.field public static final enum KISLEV:Lnet/time4j/calendar/HebrewMonth;

.field public static final enum NISAN:Lnet/time4j/calendar/HebrewMonth;

.field public static final enum SHEVAT:Lnet/time4j/calendar/HebrewMonth;

.field public static final enum SIVAN:Lnet/time4j/calendar/HebrewMonth;

.field public static final enum TAMUZ:Lnet/time4j/calendar/HebrewMonth;

.field public static final enum TEVET:Lnet/time4j/calendar/HebrewMonth;

.field public static final enum TISHRI:Lnet/time4j/calendar/HebrewMonth;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 55
    new-instance v0, Lnet/time4j/calendar/HebrewMonth;

    const-string v1, "TISHRI"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/time4j/calendar/HebrewMonth;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/time4j/calendar/HebrewMonth;->TISHRI:Lnet/time4j/calendar/HebrewMonth;

    .line 63
    new-instance v1, Lnet/time4j/calendar/HebrewMonth;

    const-string v3, "HESHVAN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/time4j/calendar/HebrewMonth;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/time4j/calendar/HebrewMonth;->HESHVAN:Lnet/time4j/calendar/HebrewMonth;

    .line 71
    new-instance v3, Lnet/time4j/calendar/HebrewMonth;

    const-string v5, "KISLEV"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lnet/time4j/calendar/HebrewMonth;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/time4j/calendar/HebrewMonth;->KISLEV:Lnet/time4j/calendar/HebrewMonth;

    .line 79
    new-instance v5, Lnet/time4j/calendar/HebrewMonth;

    const-string v7, "TEVET"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lnet/time4j/calendar/HebrewMonth;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lnet/time4j/calendar/HebrewMonth;->TEVET:Lnet/time4j/calendar/HebrewMonth;

    .line 87
    new-instance v7, Lnet/time4j/calendar/HebrewMonth;

    const-string v9, "SHEVAT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lnet/time4j/calendar/HebrewMonth;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lnet/time4j/calendar/HebrewMonth;->SHEVAT:Lnet/time4j/calendar/HebrewMonth;

    .line 99
    new-instance v9, Lnet/time4j/calendar/HebrewMonth;

    const-string v11, "ADAR_I"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lnet/time4j/calendar/HebrewMonth;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lnet/time4j/calendar/HebrewMonth;->ADAR_I:Lnet/time4j/calendar/HebrewMonth;

    .line 113
    new-instance v11, Lnet/time4j/calendar/HebrewMonth;

    const-string v13, "ADAR_II"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lnet/time4j/calendar/HebrewMonth;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lnet/time4j/calendar/HebrewMonth;->ADAR_II:Lnet/time4j/calendar/HebrewMonth;

    .line 121
    new-instance v13, Lnet/time4j/calendar/HebrewMonth;

    const-string v15, "NISAN"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lnet/time4j/calendar/HebrewMonth;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lnet/time4j/calendar/HebrewMonth;->NISAN:Lnet/time4j/calendar/HebrewMonth;

    .line 129
    new-instance v15, Lnet/time4j/calendar/HebrewMonth;

    const-string v14, "IYAR"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lnet/time4j/calendar/HebrewMonth;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lnet/time4j/calendar/HebrewMonth;->IYAR:Lnet/time4j/calendar/HebrewMonth;

    .line 137
    new-instance v14, Lnet/time4j/calendar/HebrewMonth;

    const-string v12, "SIVAN"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lnet/time4j/calendar/HebrewMonth;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lnet/time4j/calendar/HebrewMonth;->SIVAN:Lnet/time4j/calendar/HebrewMonth;

    .line 145
    new-instance v12, Lnet/time4j/calendar/HebrewMonth;

    const-string v10, "TAMUZ"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lnet/time4j/calendar/HebrewMonth;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lnet/time4j/calendar/HebrewMonth;->TAMUZ:Lnet/time4j/calendar/HebrewMonth;

    .line 153
    new-instance v10, Lnet/time4j/calendar/HebrewMonth;

    const-string v8, "AV"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lnet/time4j/calendar/HebrewMonth;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lnet/time4j/calendar/HebrewMonth;->AV:Lnet/time4j/calendar/HebrewMonth;

    .line 161
    new-instance v8, Lnet/time4j/calendar/HebrewMonth;

    const-string v6, "ELUL"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lnet/time4j/calendar/HebrewMonth;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lnet/time4j/calendar/HebrewMonth;->ELUL:Lnet/time4j/calendar/HebrewMonth;

    const/16 v6, 0xd

    new-array v6, v6, [Lnet/time4j/calendar/HebrewMonth;

    aput-object v0, v6, v2

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    aput-object v8, v6, v4

    .line 44
    sput-object v6, Lnet/time4j/calendar/HebrewMonth;->$VALUES:[Lnet/time4j/calendar/HebrewMonth;

    .line 163
    invoke-static {}, Lnet/time4j/calendar/HebrewMonth;->values()[Lnet/time4j/calendar/HebrewMonth;

    move-result-object v0

    sput-object v0, Lnet/time4j/calendar/HebrewMonth;->ENUMS:[Lnet/time4j/calendar/HebrewMonth;

    .line 164
    const-class v0, Lnet/time4j/calendar/HebrewMonth$Order;

    const-string v1, "HEBREW_MONTH_ORDER"

    invoke-static {v1, v0}, Lnet/time4j/format/Attributes;->createKey(Ljava/lang/String;Ljava/lang/Class;)Lnet/time4j/engine/AttributeKey;

    move-result-object v0

    sput-object v0, Lnet/time4j/calendar/HebrewMonth;->ATTRIBUTE:Lnet/time4j/engine/AttributeKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static order()Lnet/time4j/engine/AttributeKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/AttributeKey<",
            "Lnet/time4j/calendar/HebrewMonth$Order;",
            ">;"
        }
    .end annotation

    .line 410
    sget-object v0, Lnet/time4j/calendar/HebrewMonth;->ATTRIBUTE:Lnet/time4j/engine/AttributeKey;

    return-object v0
.end method

.method static valueOf(I)Lnet/time4j/calendar/HebrewMonth;
    .locals 3

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/16 v1, 0xd

    if-gt p0, v1, :cond_0

    .line 436
    sget-object v1, Lnet/time4j/calendar/HebrewMonth;->ENUMS:[Lnet/time4j/calendar/HebrewMonth;

    sub-int/2addr p0, v0

    aget-object p0, v1, p0

    return-object p0

    .line 433
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hebrew month out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/time4j/calendar/HebrewMonth;
    .locals 1

    .line 44
    const-class v0, Lnet/time4j/calendar/HebrewMonth;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/time4j/calendar/HebrewMonth;

    return-object p0
.end method

.method public static valueOfBiblical(IZ)Lnet/time4j/calendar/HebrewMonth;
    .locals 3

    const/4 v0, 0x1

    if-lt p0, v0, :cond_3

    const/16 v1, 0xd

    if-gt p0, v1, :cond_3

    if-nez p1, :cond_0

    if-eq p0, v1, :cond_3

    :cond_0
    add-int/lit8 v2, p0, 0x7

    if-le v2, v1, :cond_1

    add-int/lit8 v2, v2, -0xd

    :cond_1
    if-nez p1, :cond_2

    const/16 p1, 0xc

    if-ne p0, p1, :cond_2

    .line 237
    sget-object p0, Lnet/time4j/calendar/HebrewMonth;->ADAR_II:Lnet/time4j/calendar/HebrewMonth;

    return-object p0

    .line 240
    :cond_2
    sget-object p0, Lnet/time4j/calendar/HebrewMonth;->ENUMS:[Lnet/time4j/calendar/HebrewMonth;

    sub-int/2addr v2, v0

    aget-object p0, p0, v2

    return-object p0

    .line 227
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hebrew month out of range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static valueOfCivil(IZ)Lnet/time4j/calendar/HebrewMonth;
    .locals 2

    const/4 v0, 0x1

    if-lt p0, v0, :cond_2

    const/16 v1, 0xd

    if-gt p0, v1, :cond_2

    if-nez p1, :cond_0

    if-eq p0, v1, :cond_2

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x6

    if-lt p0, p1, :cond_1

    .line 196
    sget-object p1, Lnet/time4j/calendar/HebrewMonth;->ENUMS:[Lnet/time4j/calendar/HebrewMonth;

    aget-object p0, p1, p0

    return-object p0

    .line 198
    :cond_1
    sget-object p1, Lnet/time4j/calendar/HebrewMonth;->ENUMS:[Lnet/time4j/calendar/HebrewMonth;

    sub-int/2addr p0, v0

    aget-object p0, p1, p0

    return-object p0

    .line 192
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hebrew month out of range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static values()[Lnet/time4j/calendar/HebrewMonth;
    .locals 1

    .line 44
    sget-object v0, Lnet/time4j/calendar/HebrewMonth;->$VALUES:[Lnet/time4j/calendar/HebrewMonth;

    invoke-virtual {v0}, [Lnet/time4j/calendar/HebrewMonth;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/time4j/calendar/HebrewMonth;

    return-object v0
.end method


# virtual methods
.method public getBiblicalValue(Z)I
    .locals 2

    .line 300
    invoke-virtual {p0}, Lnet/time4j/calendar/HebrewMonth;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    const/16 v1, 0xd

    if-le v0, v1, :cond_0

    add-int/lit8 v0, v0, -0xd

    :cond_0
    if-nez p1, :cond_1

    if-ne v0, v1, :cond_1

    const/16 v0, 0xc

    :cond_1
    return v0
.end method

.method public getCivilValue(Z)I
    .locals 1

    .line 267
    invoke-virtual {p0}, Lnet/time4j/calendar/HebrewMonth;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-nez p1, :cond_0

    const/4 p1, 0x7

    if-lt v0, p1, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    return v0
.end method

.method public getDisplayName(Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;Z)Ljava/lang/String;
    .locals 1

    const-string v0, "hebrew"

    .line 380
    invoke-static {v0, p1}, Lnet/time4j/format/CalendarText;->getInstance(Ljava/lang/String;Ljava/util/Locale;)Lnet/time4j/format/CalendarText;

    move-result-object p1

    if-eqz p4, :cond_0

    .line 382
    sget-object p4, Lnet/time4j/calendar/HebrewMonth;->ADAR_II:Lnet/time4j/calendar/HebrewMonth;

    if-ne p0, p4, :cond_0

    .line 383
    invoke-virtual {p1, p2, p3}, Lnet/time4j/format/CalendarText;->getLeapMonths(Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)Lnet/time4j/format/TextAccessor;

    move-result-object p1

    invoke-virtual {p1, p0}, Lnet/time4j/format/TextAccessor;->print(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 385
    :cond_0
    invoke-virtual {p1, p2, p3}, Lnet/time4j/format/CalendarText;->getStdMonths(Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)Lnet/time4j/format/TextAccessor;

    move-result-object p1

    invoke-virtual {p1, p0}, Lnet/time4j/format/TextAccessor;->print(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDisplayName(Ljava/util/Locale;Z)Ljava/lang/String;
    .locals 2

    .line 337
    sget-object v0, Lnet/time4j/format/TextWidth;->WIDE:Lnet/time4j/format/TextWidth;

    sget-object v1, Lnet/time4j/format/OutputContext;->FORMAT:Lnet/time4j/format/OutputContext;

    invoke-virtual {p0, p1, v0, v1, p2}, Lnet/time4j/calendar/HebrewMonth;->getDisplayName(Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getValue()I
    .locals 1

    .line 457
    invoke-virtual {p0}, Lnet/time4j/calendar/HebrewMonth;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 44
    check-cast p1, Lnet/time4j/calendar/HebrewCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HebrewMonth;->test(Lnet/time4j/calendar/HebrewCalendar;)Z

    move-result p1

    return p1
.end method

.method public test(Lnet/time4j/calendar/HebrewCalendar;)Z
    .locals 0

    .line 393
    invoke-virtual {p1}, Lnet/time4j/calendar/HebrewCalendar;->getMonth()Lnet/time4j/calendar/HebrewMonth;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
