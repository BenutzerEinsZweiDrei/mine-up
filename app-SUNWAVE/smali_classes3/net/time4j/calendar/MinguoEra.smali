.class public final enum Lnet/time4j/calendar/MinguoEra;
.super Ljava/lang/Enum;
.source "MinguoEra.java"

# interfaces
.implements Lnet/time4j/engine/CalendarEra;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/time4j/calendar/MinguoEra;",
        ">;",
        "Lnet/time4j/engine/CalendarEra;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/time4j/calendar/MinguoEra;

.field public static final enum BEFORE_ROC:Lnet/time4j/calendar/MinguoEra;

.field public static final enum ROC:Lnet/time4j/calendar/MinguoEra;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 52
    new-instance v0, Lnet/time4j/calendar/MinguoEra;

    const-string v1, "BEFORE_ROC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/time4j/calendar/MinguoEra;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/time4j/calendar/MinguoEra;->BEFORE_ROC:Lnet/time4j/calendar/MinguoEra;

    .line 60
    new-instance v1, Lnet/time4j/calendar/MinguoEra;

    const-string v3, "ROC"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/time4j/calendar/MinguoEra;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/time4j/calendar/MinguoEra;->ROC:Lnet/time4j/calendar/MinguoEra;

    const/4 v3, 0x2

    new-array v3, v3, [Lnet/time4j/calendar/MinguoEra;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 41
    sput-object v3, Lnet/time4j/calendar/MinguoEra;->$VALUES:[Lnet/time4j/calendar/MinguoEra;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/time4j/calendar/MinguoEra;
    .locals 1

    .line 41
    const-class v0, Lnet/time4j/calendar/MinguoEra;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/time4j/calendar/MinguoEra;

    return-object p0
.end method

.method public static values()[Lnet/time4j/calendar/MinguoEra;
    .locals 1

    .line 41
    sget-object v0, Lnet/time4j/calendar/MinguoEra;->$VALUES:[Lnet/time4j/calendar/MinguoEra;

    invoke-virtual {v0}, [Lnet/time4j/calendar/MinguoEra;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/time4j/calendar/MinguoEra;

    return-object v0
.end method


# virtual methods
.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 82
    sget-object v0, Lnet/time4j/format/TextWidth;->WIDE:Lnet/time4j/format/TextWidth;

    invoke-virtual {p0, p1, v0}, Lnet/time4j/calendar/MinguoEra;->getDisplayName(Ljava/util/Locale;Lnet/time4j/format/TextWidth;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDisplayName(Ljava/util/Locale;Lnet/time4j/format/TextWidth;)Ljava/lang/String;
    .locals 1

    const-string v0, "roc"

    .line 116
    invoke-static {v0, p1}, Lnet/time4j/format/CalendarText;->getInstance(Ljava/lang/String;Ljava/util/Locale;)Lnet/time4j/format/CalendarText;

    move-result-object p1

    .line 117
    invoke-virtual {p1, p2}, Lnet/time4j/format/CalendarText;->getEras(Lnet/time4j/format/TextWidth;)Lnet/time4j/format/TextAccessor;

    move-result-object p1

    invoke-virtual {p1, p0}, Lnet/time4j/format/TextAccessor;->print(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
