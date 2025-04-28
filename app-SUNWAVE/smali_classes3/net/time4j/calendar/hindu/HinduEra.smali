.class public final enum Lnet/time4j/calendar/hindu/HinduEra;
.super Ljava/lang/Enum;
.source "HinduEra.java"

# interfaces
.implements Lnet/time4j/engine/CalendarEra;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/time4j/calendar/hindu/HinduEra;",
        ">;",
        "Lnet/time4j/engine/CalendarEra;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/time4j/calendar/hindu/HinduEra;

.field public static final enum BENGAL:Lnet/time4j/calendar/hindu/HinduEra;

.field public static final enum KALI_YUGA:Lnet/time4j/calendar/hindu/HinduEra;

.field public static final enum KOLLAM:Lnet/time4j/calendar/hindu/HinduEra;

.field public static final enum NEPALESE:Lnet/time4j/calendar/hindu/HinduEra;

.field public static final enum SAKA:Lnet/time4j/calendar/hindu/HinduEra;

.field private static final SAKA_OFFSETS:[I

.field public static final enum VIKRAMA:Lnet/time4j/calendar/hindu/HinduEra;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 54
    new-instance v0, Lnet/time4j/calendar/hindu/HinduEra;

    const-string v1, "KALI_YUGA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/time4j/calendar/hindu/HinduEra;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/time4j/calendar/hindu/HinduEra;->KALI_YUGA:Lnet/time4j/calendar/hindu/HinduEra;

    .line 62
    new-instance v1, Lnet/time4j/calendar/hindu/HinduEra;

    const-string v3, "NEPALESE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/time4j/calendar/hindu/HinduEra;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/time4j/calendar/hindu/HinduEra;->NEPALESE:Lnet/time4j/calendar/hindu/HinduEra;

    .line 71
    new-instance v3, Lnet/time4j/calendar/hindu/HinduEra;

    const-string v5, "KOLLAM"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lnet/time4j/calendar/hindu/HinduEra;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/time4j/calendar/hindu/HinduEra;->KOLLAM:Lnet/time4j/calendar/hindu/HinduEra;

    .line 79
    new-instance v5, Lnet/time4j/calendar/hindu/HinduEra;

    const-string v7, "VIKRAMA"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lnet/time4j/calendar/hindu/HinduEra;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lnet/time4j/calendar/hindu/HinduEra;->VIKRAMA:Lnet/time4j/calendar/hindu/HinduEra;

    .line 87
    new-instance v7, Lnet/time4j/calendar/hindu/HinduEra;

    const-string v9, "SAKA"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lnet/time4j/calendar/hindu/HinduEra;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lnet/time4j/calendar/hindu/HinduEra;->SAKA:Lnet/time4j/calendar/hindu/HinduEra;

    .line 95
    new-instance v9, Lnet/time4j/calendar/hindu/HinduEra;

    const-string v11, "BENGAL"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lnet/time4j/calendar/hindu/HinduEra;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lnet/time4j/calendar/hindu/HinduEra;->BENGAL:Lnet/time4j/calendar/hindu/HinduEra;

    const/4 v11, 0x6

    new-array v13, v11, [Lnet/time4j/calendar/hindu/HinduEra;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    .line 43
    sput-object v13, Lnet/time4j/calendar/hindu/HinduEra;->$VALUES:[Lnet/time4j/calendar/hindu/HinduEra;

    new-array v0, v11, [I

    .line 97
    fill-array-data v0, :array_0

    sput-object v0, Lnet/time4j/calendar/hindu/HinduEra;->SAKA_OFFSETS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0xc6b
        0x3bb
        0x384
        0x87
        0x0
        -0x203
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/time4j/calendar/hindu/HinduEra;
    .locals 1

    .line 43
    const-class v0, Lnet/time4j/calendar/hindu/HinduEra;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/time4j/calendar/hindu/HinduEra;

    return-object p0
.end method

.method public static values()[Lnet/time4j/calendar/hindu/HinduEra;
    .locals 1

    .line 43
    sget-object v0, Lnet/time4j/calendar/hindu/HinduEra;->$VALUES:[Lnet/time4j/calendar/hindu/HinduEra;

    invoke-virtual {v0}, [Lnet/time4j/calendar/hindu/HinduEra;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/time4j/calendar/hindu/HinduEra;

    return-object v0
.end method


# virtual methods
.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 116
    sget-object v0, Lnet/time4j/format/TextWidth;->WIDE:Lnet/time4j/format/TextWidth;

    invoke-virtual {p0, p1, v0}, Lnet/time4j/calendar/hindu/HinduEra;->getDisplayName(Ljava/util/Locale;Lnet/time4j/format/TextWidth;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDisplayName(Ljava/util/Locale;Lnet/time4j/format/TextWidth;)Ljava/lang/String;
    .locals 1

    const-string v0, "hindu"

    .line 145
    invoke-static {v0, p1}, Lnet/time4j/format/CalendarText;->getInstance(Ljava/lang/String;Ljava/util/Locale;)Lnet/time4j/format/CalendarText;

    move-result-object p1

    .line 146
    invoke-virtual {p1, p2}, Lnet/time4j/format/CalendarText;->getEras(Lnet/time4j/format/TextWidth;)Lnet/time4j/format/TextAccessor;

    move-result-object p1

    invoke-virtual {p1, p0}, Lnet/time4j/format/TextAccessor;->print(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public yearOfEra(Lnet/time4j/calendar/hindu/HinduEra;I)I
    .locals 2

    .line 170
    :try_start_0
    sget-object v0, Lnet/time4j/calendar/hindu/HinduEra;->SAKA_OFFSETS:[I

    .line 171
    invoke-virtual {p0}, Lnet/time4j/calendar/hindu/HinduEra;->ordinal()I

    move-result v1

    aget v1, v0, v1

    invoke-static {p2, v1}, Lnet/time4j/base/MathUtils;->safeAdd(II)I

    move-result v1

    .line 172
    invoke-virtual {p1}, Lnet/time4j/calendar/hindu/HinduEra;->ordinal()I

    move-result p1

    aget p1, v0, p1

    .line 170
    invoke-static {v1, p1}, Lnet/time4j/base/MathUtils;->safeSubtract(II)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 174
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Out of range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
