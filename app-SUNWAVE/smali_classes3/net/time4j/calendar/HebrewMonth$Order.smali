.class public final enum Lnet/time4j/calendar/HebrewMonth$Order;
.super Ljava/lang/Enum;
.source "HebrewMonth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/HebrewMonth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Order"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/time4j/calendar/HebrewMonth$Order;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/time4j/calendar/HebrewMonth$Order;

.field public static final enum BIBLICAL:Lnet/time4j/calendar/HebrewMonth$Order;

.field public static final enum CIVIL:Lnet/time4j/calendar/HebrewMonth$Order;

.field public static final enum ENUM:Lnet/time4j/calendar/HebrewMonth$Order;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 487
    new-instance v0, Lnet/time4j/calendar/HebrewMonth$Order;

    const-string v1, "CIVIL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/time4j/calendar/HebrewMonth$Order;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/time4j/calendar/HebrewMonth$Order;->CIVIL:Lnet/time4j/calendar/HebrewMonth$Order;

    .line 503
    new-instance v1, Lnet/time4j/calendar/HebrewMonth$Order;

    const-string v3, "BIBLICAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/time4j/calendar/HebrewMonth$Order;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/time4j/calendar/HebrewMonth$Order;->BIBLICAL:Lnet/time4j/calendar/HebrewMonth$Order;

    .line 511
    new-instance v3, Lnet/time4j/calendar/HebrewMonth$Order;

    const-string v5, "ENUM"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lnet/time4j/calendar/HebrewMonth$Order;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/time4j/calendar/HebrewMonth$Order;->ENUM:Lnet/time4j/calendar/HebrewMonth$Order;

    const/4 v5, 0x3

    new-array v5, v5, [Lnet/time4j/calendar/HebrewMonth$Order;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 473
    sput-object v5, Lnet/time4j/calendar/HebrewMonth$Order;->$VALUES:[Lnet/time4j/calendar/HebrewMonth$Order;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 473
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/time4j/calendar/HebrewMonth$Order;
    .locals 1

    .line 473
    const-class v0, Lnet/time4j/calendar/HebrewMonth$Order;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/time4j/calendar/HebrewMonth$Order;

    return-object p0
.end method

.method public static values()[Lnet/time4j/calendar/HebrewMonth$Order;
    .locals 1

    .line 473
    sget-object v0, Lnet/time4j/calendar/HebrewMonth$Order;->$VALUES:[Lnet/time4j/calendar/HebrewMonth$Order;

    invoke-virtual {v0}, [Lnet/time4j/calendar/HebrewMonth$Order;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/time4j/calendar/HebrewMonth$Order;

    return-object v0
.end method
