.class public abstract enum Lnet/time4j/calendar/hindu/AryaSiddhanta;
.super Ljava/lang/Enum;
.source "AryaSiddhanta.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/time4j/calendar/hindu/AryaSiddhanta$OldCS;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/time4j/calendar/hindu/AryaSiddhanta;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/time4j/calendar/hindu/AryaSiddhanta;

.field public static final enum LUNAR:Lnet/time4j/calendar/hindu/AryaSiddhanta;

.field static final PREFIX:Ljava/lang/String; = "AryaSiddhanta@"

.field public static final enum SOLAR:Lnet/time4j/calendar/hindu/AryaSiddhanta;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 57
    new-instance v0, Lnet/time4j/calendar/hindu/AryaSiddhanta$1;

    const-string v1, "SOLAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/time4j/calendar/hindu/AryaSiddhanta$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/time4j/calendar/hindu/AryaSiddhanta;->SOLAR:Lnet/time4j/calendar/hindu/AryaSiddhanta;

    .line 75
    new-instance v1, Lnet/time4j/calendar/hindu/AryaSiddhanta$2;

    const-string v3, "LUNAR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/time4j/calendar/hindu/AryaSiddhanta$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/time4j/calendar/hindu/AryaSiddhanta;->LUNAR:Lnet/time4j/calendar/hindu/AryaSiddhanta;

    const/4 v3, 0x2

    new-array v3, v3, [Lnet/time4j/calendar/hindu/AryaSiddhanta;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 47
    sput-object v3, Lnet/time4j/calendar/hindu/AryaSiddhanta;->$VALUES:[Lnet/time4j/calendar/hindu/AryaSiddhanta;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILnet/time4j/calendar/hindu/AryaSiddhanta$1;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lnet/time4j/calendar/hindu/AryaSiddhanta;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/time4j/calendar/hindu/AryaSiddhanta;
    .locals 1

    .line 47
    const-class v0, Lnet/time4j/calendar/hindu/AryaSiddhanta;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/time4j/calendar/hindu/AryaSiddhanta;

    return-object p0
.end method

.method public static values()[Lnet/time4j/calendar/hindu/AryaSiddhanta;
    .locals 1

    .line 47
    sget-object v0, Lnet/time4j/calendar/hindu/AryaSiddhanta;->$VALUES:[Lnet/time4j/calendar/hindu/AryaSiddhanta;

    invoke-virtual {v0}, [Lnet/time4j/calendar/hindu/AryaSiddhanta;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/time4j/calendar/hindu/AryaSiddhanta;

    return-object v0
.end method


# virtual methods
.method abstract getCalendarSystem()Lnet/time4j/calendar/hindu/HinduCS;
.end method

.method public variant()Lnet/time4j/calendar/hindu/HinduVariant;
    .locals 1

    .line 97
    sget-object v0, Lnet/time4j/calendar/hindu/AryaSiddhanta;->SOLAR:Lnet/time4j/calendar/hindu/AryaSiddhanta;

    if-ne p0, v0, :cond_0

    sget-object v0, Lnet/time4j/calendar/hindu/HinduVariant;->VAR_OLD_SOLAR:Lnet/time4j/calendar/hindu/HinduVariant;

    goto :goto_0

    :cond_0
    sget-object v0, Lnet/time4j/calendar/hindu/HinduVariant;->VAR_OLD_LUNAR:Lnet/time4j/calendar/hindu/HinduVariant;

    :goto_0
    return-object v0
.end method
