.class public final enum Lnet/time4j/calendar/Evangelist;
.super Ljava/lang/Enum;
.source "Evangelist.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/time4j/calendar/Evangelist;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/time4j/calendar/Evangelist;

.field public static final enum JOHN:Lnet/time4j/calendar/Evangelist;

.field public static final enum LUKE:Lnet/time4j/calendar/Evangelist;

.field public static final enum MARK:Lnet/time4j/calendar/Evangelist;

.field public static final enum MATTHEW:Lnet/time4j/calendar/Evangelist;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 43
    new-instance v0, Lnet/time4j/calendar/Evangelist;

    const-string v1, "MATTHEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/time4j/calendar/Evangelist;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/time4j/calendar/Evangelist;->MATTHEW:Lnet/time4j/calendar/Evangelist;

    .line 45
    new-instance v1, Lnet/time4j/calendar/Evangelist;

    const-string v3, "MARK"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/time4j/calendar/Evangelist;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/time4j/calendar/Evangelist;->MARK:Lnet/time4j/calendar/Evangelist;

    .line 47
    new-instance v3, Lnet/time4j/calendar/Evangelist;

    const-string v5, "LUKE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lnet/time4j/calendar/Evangelist;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/time4j/calendar/Evangelist;->LUKE:Lnet/time4j/calendar/Evangelist;

    .line 49
    new-instance v5, Lnet/time4j/calendar/Evangelist;

    const-string v7, "JOHN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lnet/time4j/calendar/Evangelist;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lnet/time4j/calendar/Evangelist;->JOHN:Lnet/time4j/calendar/Evangelist;

    const/4 v7, 0x4

    new-array v7, v7, [Lnet/time4j/calendar/Evangelist;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 39
    sput-object v7, Lnet/time4j/calendar/Evangelist;->$VALUES:[Lnet/time4j/calendar/Evangelist;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/time4j/calendar/Evangelist;
    .locals 1

    .line 39
    const-class v0, Lnet/time4j/calendar/Evangelist;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/time4j/calendar/Evangelist;

    return-object p0
.end method

.method public static values()[Lnet/time4j/calendar/Evangelist;
    .locals 1

    .line 39
    sget-object v0, Lnet/time4j/calendar/Evangelist;->$VALUES:[Lnet/time4j/calendar/Evangelist;

    invoke-virtual {v0}, [Lnet/time4j/calendar/Evangelist;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/time4j/calendar/Evangelist;

    return-object v0
.end method


# virtual methods
.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3

    const-string v0, "generic"

    .line 69
    invoke-static {v0, p1}, Lnet/time4j/format/CalendarText;->getInstance(Ljava/lang/String;Ljava/util/Locale;)Lnet/time4j/format/CalendarText;

    move-result-object p1

    .line 70
    const-class v0, Lnet/time4j/calendar/Evangelist;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "EV"

    invoke-virtual {p1, v2, v0, v1}, Lnet/time4j/format/CalendarText;->getTextForms(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/String;)Lnet/time4j/format/TextAccessor;

    move-result-object p1

    invoke-virtual {p1, p0}, Lnet/time4j/format/TextAccessor;->print(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
