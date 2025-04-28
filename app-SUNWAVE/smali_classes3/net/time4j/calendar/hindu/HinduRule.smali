.class public abstract enum Lnet/time4j/calendar/hindu/HinduRule;
.super Ljava/lang/Enum;
.source "HinduRule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/time4j/calendar/hindu/HinduRule;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/time4j/calendar/hindu/HinduRule;

.field public static final enum AMANTA:Lnet/time4j/calendar/hindu/HinduRule;

.field public static final enum AMANTA_ASHADHA:Lnet/time4j/calendar/hindu/HinduRule;

.field public static final enum AMANTA_KARTIKA:Lnet/time4j/calendar/hindu/HinduRule;

.field public static final enum MADRAS:Lnet/time4j/calendar/hindu/HinduRule;

.field public static final enum MALAYALI:Lnet/time4j/calendar/hindu/HinduRule;

.field public static final enum ORISSA:Lnet/time4j/calendar/hindu/HinduRule;

.field public static final enum PURNIMANTA:Lnet/time4j/calendar/hindu/HinduRule;

.field public static final enum TAMIL:Lnet/time4j/calendar/hindu/HinduRule;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 59
    new-instance v0, Lnet/time4j/calendar/hindu/HinduRule$1;

    const-string v1, "ORISSA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/time4j/calendar/hindu/HinduRule$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/time4j/calendar/hindu/HinduRule;->ORISSA:Lnet/time4j/calendar/hindu/HinduRule;

    .line 76
    new-instance v1, Lnet/time4j/calendar/hindu/HinduRule$2;

    const-string v3, "TAMIL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/time4j/calendar/hindu/HinduRule$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/time4j/calendar/hindu/HinduRule;->TAMIL:Lnet/time4j/calendar/hindu/HinduRule;

    .line 100
    new-instance v3, Lnet/time4j/calendar/hindu/HinduRule$3;

    const-string v5, "MALAYALI"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lnet/time4j/calendar/hindu/HinduRule$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/time4j/calendar/hindu/HinduRule;->MALAYALI:Lnet/time4j/calendar/hindu/HinduRule;

    .line 119
    new-instance v5, Lnet/time4j/calendar/hindu/HinduRule$4;

    const-string v7, "MADRAS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lnet/time4j/calendar/hindu/HinduRule$4;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lnet/time4j/calendar/hindu/HinduRule;->MADRAS:Lnet/time4j/calendar/hindu/HinduRule;

    .line 148
    new-instance v7, Lnet/time4j/calendar/hindu/HinduRule$5;

    const-string v9, "AMANTA"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lnet/time4j/calendar/hindu/HinduRule$5;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lnet/time4j/calendar/hindu/HinduRule;->AMANTA:Lnet/time4j/calendar/hindu/HinduRule;

    .line 171
    new-instance v9, Lnet/time4j/calendar/hindu/HinduRule$6;

    const-string v11, "AMANTA_ASHADHA"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lnet/time4j/calendar/hindu/HinduRule$6;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lnet/time4j/calendar/hindu/HinduRule;->AMANTA_ASHADHA:Lnet/time4j/calendar/hindu/HinduRule;

    .line 194
    new-instance v11, Lnet/time4j/calendar/hindu/HinduRule$7;

    const-string v13, "AMANTA_KARTIKA"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lnet/time4j/calendar/hindu/HinduRule$7;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lnet/time4j/calendar/hindu/HinduRule;->AMANTA_KARTIKA:Lnet/time4j/calendar/hindu/HinduRule;

    .line 218
    new-instance v13, Lnet/time4j/calendar/hindu/HinduRule$8;

    const-string v15, "PURNIMANTA"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lnet/time4j/calendar/hindu/HinduRule$8;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lnet/time4j/calendar/hindu/HinduRule;->PURNIMANTA:Lnet/time4j/calendar/hindu/HinduRule;

    const/16 v15, 0x8

    new-array v15, v15, [Lnet/time4j/calendar/hindu/HinduRule;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    .line 45
    sput-object v15, Lnet/time4j/calendar/hindu/HinduRule;->$VALUES:[Lnet/time4j/calendar/hindu/HinduRule;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILnet/time4j/calendar/hindu/HinduRule$1;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lnet/time4j/calendar/hindu/HinduRule;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/time4j/calendar/hindu/HinduRule;
    .locals 1

    .line 45
    const-class v0, Lnet/time4j/calendar/hindu/HinduRule;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/time4j/calendar/hindu/HinduRule;

    return-object p0
.end method

.method public static values()[Lnet/time4j/calendar/hindu/HinduRule;
    .locals 1

    .line 45
    sget-object v0, Lnet/time4j/calendar/hindu/HinduRule;->$VALUES:[Lnet/time4j/calendar/hindu/HinduRule;

    invoke-virtual {v0}, [Lnet/time4j/calendar/hindu/HinduRule;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/time4j/calendar/hindu/HinduRule;

    return-object v0
.end method


# virtual methods
.method abstract getDefaultEra()Lnet/time4j/calendar/hindu/HinduEra;
.end method

.method public variant()Lnet/time4j/calendar/hindu/HinduVariant;
    .locals 2

    .line 262
    new-instance v0, Lnet/time4j/calendar/hindu/HinduVariant;

    invoke-virtual {p0}, Lnet/time4j/calendar/hindu/HinduRule;->getDefaultEra()Lnet/time4j/calendar/hindu/HinduEra;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lnet/time4j/calendar/hindu/HinduVariant;-><init>(Lnet/time4j/calendar/hindu/HinduRule;Lnet/time4j/calendar/hindu/HinduEra;)V

    return-object v0
.end method
