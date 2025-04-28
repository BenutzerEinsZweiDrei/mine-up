.class public final enum Lnet/time4j/calendar/PersianEra;
.super Ljava/lang/Enum;
.source "PersianEra.java"

# interfaces
.implements Lnet/time4j/engine/CalendarEra;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/time4j/calendar/PersianEra;",
        ">;",
        "Lnet/time4j/engine/CalendarEra;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/time4j/calendar/PersianEra;

.field public static final enum ANNO_PERSICO:Lnet/time4j/calendar/PersianEra;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 54
    new-instance v0, Lnet/time4j/calendar/PersianEra;

    const-string v1, "ANNO_PERSICO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/time4j/calendar/PersianEra;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/time4j/calendar/PersianEra;->ANNO_PERSICO:Lnet/time4j/calendar/PersianEra;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/time4j/calendar/PersianEra;

    aput-object v0, v1, v2

    .line 43
    sput-object v1, Lnet/time4j/calendar/PersianEra;->$VALUES:[Lnet/time4j/calendar/PersianEra;

    return-void
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

.method public static valueOf(Ljava/lang/String;)Lnet/time4j/calendar/PersianEra;
    .locals 1

    .line 43
    const-class v0, Lnet/time4j/calendar/PersianEra;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/time4j/calendar/PersianEra;

    return-object p0
.end method

.method public static values()[Lnet/time4j/calendar/PersianEra;
    .locals 1

    .line 43
    sget-object v0, Lnet/time4j/calendar/PersianEra;->$VALUES:[Lnet/time4j/calendar/PersianEra;

    invoke-virtual {v0}, [Lnet/time4j/calendar/PersianEra;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/time4j/calendar/PersianEra;

    return-object v0
.end method


# virtual methods
.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 76
    sget-object v0, Lnet/time4j/format/TextWidth;->WIDE:Lnet/time4j/format/TextWidth;

    invoke-virtual {p0, p1, v0}, Lnet/time4j/calendar/PersianEra;->getDisplayName(Ljava/util/Locale;Lnet/time4j/format/TextWidth;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDisplayName(Ljava/util/Locale;Lnet/time4j/format/TextWidth;)Ljava/lang/String;
    .locals 1

    const-string v0, "persian"

    .line 110
    invoke-static {v0, p1}, Lnet/time4j/format/CalendarText;->getInstance(Ljava/lang/String;Ljava/util/Locale;)Lnet/time4j/format/CalendarText;

    move-result-object p1

    .line 111
    invoke-virtual {p1, p2}, Lnet/time4j/format/CalendarText;->getEras(Lnet/time4j/format/TextWidth;)Lnet/time4j/format/TextAccessor;

    move-result-object p1

    invoke-virtual {p1, p0}, Lnet/time4j/format/TextAccessor;->print(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
