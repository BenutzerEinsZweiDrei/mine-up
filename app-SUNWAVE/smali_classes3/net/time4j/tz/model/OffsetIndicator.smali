.class public enum Lnet/time4j/tz/model/OffsetIndicator;
.super Ljava/lang/Enum;
.source "OffsetIndicator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/time4j/tz/model/OffsetIndicator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/time4j/tz/model/OffsetIndicator;

.field public static final enum STANDARD_TIME:Lnet/time4j/tz/model/OffsetIndicator;

.field public static final enum UTC_TIME:Lnet/time4j/tz/model/OffsetIndicator;

.field static final VALUES:[Lnet/time4j/tz/model/OffsetIndicator;

.field public static final enum WALL_TIME:Lnet/time4j/tz/model/OffsetIndicator;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 52
    new-instance v0, Lnet/time4j/tz/model/OffsetIndicator$1;

    const-string v1, "UTC_TIME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/time4j/tz/model/OffsetIndicator$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/time4j/tz/model/OffsetIndicator;->UTC_TIME:Lnet/time4j/tz/model/OffsetIndicator;

    .line 65
    new-instance v1, Lnet/time4j/tz/model/OffsetIndicator$2;

    const-string v3, "STANDARD_TIME"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/time4j/tz/model/OffsetIndicator$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/time4j/tz/model/OffsetIndicator;->STANDARD_TIME:Lnet/time4j/tz/model/OffsetIndicator;

    .line 78
    new-instance v3, Lnet/time4j/tz/model/OffsetIndicator$3;

    const-string v5, "WALL_TIME"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lnet/time4j/tz/model/OffsetIndicator$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/time4j/tz/model/OffsetIndicator;->WALL_TIME:Lnet/time4j/tz/model/OffsetIndicator;

    const/4 v5, 0x3

    new-array v5, v5, [Lnet/time4j/tz/model/OffsetIndicator;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 42
    sput-object v5, Lnet/time4j/tz/model/OffsetIndicator;->$VALUES:[Lnet/time4j/tz/model/OffsetIndicator;

    .line 86
    invoke-static {}, Lnet/time4j/tz/model/OffsetIndicator;->values()[Lnet/time4j/tz/model/OffsetIndicator;

    move-result-object v0

    sput-object v0, Lnet/time4j/tz/model/OffsetIndicator;->VALUES:[Lnet/time4j/tz/model/OffsetIndicator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILnet/time4j/tz/model/OffsetIndicator$1;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lnet/time4j/tz/model/OffsetIndicator;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static parseSymbol(C)Lnet/time4j/tz/model/OffsetIndicator;
    .locals 3

    const/16 v0, 0x67

    if-eq p0, v0, :cond_3

    const/16 v0, 0x73

    if-eq p0, v0, :cond_2

    const/16 v0, 0x75

    if-eq p0, v0, :cond_3

    const/16 v0, 0x77

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7a

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown offset indicator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_1
    sget-object p0, Lnet/time4j/tz/model/OffsetIndicator;->WALL_TIME:Lnet/time4j/tz/model/OffsetIndicator;

    return-object p0

    .line 130
    :cond_2
    sget-object p0, Lnet/time4j/tz/model/OffsetIndicator;->STANDARD_TIME:Lnet/time4j/tz/model/OffsetIndicator;

    return-object p0

    .line 128
    :cond_3
    :goto_0
    sget-object p0, Lnet/time4j/tz/model/OffsetIndicator;->UTC_TIME:Lnet/time4j/tz/model/OffsetIndicator;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/time4j/tz/model/OffsetIndicator;
    .locals 1

    .line 42
    const-class v0, Lnet/time4j/tz/model/OffsetIndicator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/time4j/tz/model/OffsetIndicator;

    return-object p0
.end method

.method public static values()[Lnet/time4j/tz/model/OffsetIndicator;
    .locals 1

    .line 42
    sget-object v0, Lnet/time4j/tz/model/OffsetIndicator;->$VALUES:[Lnet/time4j/tz/model/OffsetIndicator;

    invoke-virtual {v0}, [Lnet/time4j/tz/model/OffsetIndicator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/time4j/tz/model/OffsetIndicator;

    return-object v0
.end method


# virtual methods
.method public getSymbol()C
    .locals 1

    .line 153
    new-instance v0, Ljava/lang/AbstractMethodError;

    invoke-direct {v0}, Ljava/lang/AbstractMethodError;-><init>()V

    throw v0
.end method
