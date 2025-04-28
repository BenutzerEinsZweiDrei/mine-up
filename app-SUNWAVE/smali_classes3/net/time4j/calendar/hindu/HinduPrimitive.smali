.class public abstract Lnet/time4j/calendar/hindu/HinduPrimitive;
.super Ljava/lang/Object;
.source "HinduPrimitive.java"


# static fields
.field public static final ADHIKA_INDICATOR:Lnet/time4j/engine/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/AttributeKey<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field public static final ADHIKA_IS_TRAILING:Lnet/time4j/engine/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/AttributeKey<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    sget-object v0, Lnet/time4j/calendar/EastAsianMonth;->LEAP_MONTH_INDICATOR:Lnet/time4j/engine/AttributeKey;

    sput-object v0, Lnet/time4j/calendar/hindu/HinduPrimitive;->ADHIKA_INDICATOR:Lnet/time4j/engine/AttributeKey;

    .line 79
    sget-object v0, Lnet/time4j/calendar/EastAsianMonth;->LEAP_MONTH_IS_TRAILING:Lnet/time4j/engine/AttributeKey;

    sput-object v0, Lnet/time4j/calendar/hindu/HinduPrimitive;->ADHIKA_IS_TRAILING:Lnet/time4j/engine/AttributeKey;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract isLeap()Z
.end method
