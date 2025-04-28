.class public final enum Lnet/time4j/Meridiem;
.super Ljava/lang/Enum;
.source "Meridiem.java"

# interfaces
.implements Lnet/time4j/engine/ChronoCondition;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/time4j/Meridiem;",
        ">;",
        "Lnet/time4j/engine/ChronoCondition<",
        "Lnet/time4j/base/WallTime;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/time4j/Meridiem;

.field public static final enum AM:Lnet/time4j/Meridiem;

.field public static final enum PM:Lnet/time4j/Meridiem;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 60
    new-instance v0, Lnet/time4j/Meridiem;

    const-string v1, "AM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/time4j/Meridiem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/time4j/Meridiem;->AM:Lnet/time4j/Meridiem;

    .line 73
    new-instance v1, Lnet/time4j/Meridiem;

    const-string v3, "PM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/time4j/Meridiem;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/time4j/Meridiem;->PM:Lnet/time4j/Meridiem;

    const/4 v3, 0x2

    new-array v3, v3, [Lnet/time4j/Meridiem;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 43
    sput-object v3, Lnet/time4j/Meridiem;->$VALUES:[Lnet/time4j/Meridiem;

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

.method public static ofHour(I)Lnet/time4j/Meridiem;
    .locals 3

    if-ltz p0, :cond_2

    const/16 v0, 0x18

    if-gt p0, v0, :cond_2

    const/16 v1, 0xc

    if-lt p0, v1, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    sget-object p0, Lnet/time4j/Meridiem;->PM:Lnet/time4j/Meridiem;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p0, Lnet/time4j/Meridiem;->AM:Lnet/time4j/Meridiem;

    :goto_1
    return-object p0

    .line 99
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hour of day out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parse(Ljava/lang/CharSequence;Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)Lnet/time4j/Meridiem;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 203
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    const/4 v0, 0x1

    .line 204
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v2, 0x4d

    if-eq v0, v2, :cond_0

    const/16 v2, 0x6d

    if-ne v0, v2, :cond_4

    .line 206
    :cond_0
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v2, 0x41

    if-eq v0, v2, :cond_3

    const/16 v2, 0x61

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v2, 0x50

    if-eq v0, v2, :cond_2

    const/16 v2, 0x70

    if-ne v0, v2, :cond_4

    .line 210
    :cond_2
    sget-object p0, Lnet/time4j/Meridiem;->PM:Lnet/time4j/Meridiem;

    return-object p0

    .line 208
    :cond_3
    :goto_0
    sget-object p0, Lnet/time4j/Meridiem;->AM:Lnet/time4j/Meridiem;

    return-object p0

    .line 215
    :cond_4
    new-instance v0, Ljava/text/ParsePosition;

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    .line 216
    invoke-static {p1}, Lnet/time4j/format/CalendarText;->getIsoInstance(Ljava/util/Locale;)Lnet/time4j/format/CalendarText;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lnet/time4j/format/CalendarText;->getMeridiems(Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)Lnet/time4j/format/TextAccessor;

    move-result-object p1

    const-class p2, Lnet/time4j/Meridiem;

    invoke-virtual {p1, p0, v0, p2}, Lnet/time4j/format/TextAccessor;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object p1

    check-cast p1, Lnet/time4j/Meridiem;

    if-eqz p1, :cond_5

    return-object p1

    .line 219
    :cond_5
    new-instance p1, Ljava/text/ParseException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot parse: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result p2

    invoke-direct {p1, p0, p2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/time4j/Meridiem;
    .locals 1

    .line 43
    const-class v0, Lnet/time4j/Meridiem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/time4j/Meridiem;

    return-object p0
.end method

.method public static values()[Lnet/time4j/Meridiem;
    .locals 1

    .line 43
    sget-object v0, Lnet/time4j/Meridiem;->$VALUES:[Lnet/time4j/Meridiem;

    invoke-virtual {v0}, [Lnet/time4j/Meridiem;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/time4j/Meridiem;

    return-object v0
.end method


# virtual methods
.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    .line 121
    sget-object v0, Lnet/time4j/format/TextWidth;->WIDE:Lnet/time4j/format/TextWidth;

    sget-object v1, Lnet/time4j/format/OutputContext;->FORMAT:Lnet/time4j/format/OutputContext;

    invoke-virtual {p0, p1, v0, v1}, Lnet/time4j/Meridiem;->getDisplayName(Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDisplayName(Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)Ljava/lang/String;
    .locals 0

    .line 163
    invoke-static {p1}, Lnet/time4j/format/CalendarText;->getIsoInstance(Ljava/util/Locale;)Lnet/time4j/format/CalendarText;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lnet/time4j/format/CalendarText;->getMeridiems(Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)Lnet/time4j/format/TextAccessor;

    move-result-object p1

    invoke-virtual {p1, p0}, Lnet/time4j/format/TextAccessor;->print(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 43
    check-cast p1, Lnet/time4j/base/WallTime;

    invoke-virtual {p0, p1}, Lnet/time4j/Meridiem;->test(Lnet/time4j/base/WallTime;)Z

    move-result p1

    return p1
.end method

.method public test(Lnet/time4j/base/WallTime;)Z
    .locals 5

    .line 229
    invoke-interface {p1}, Lnet/time4j/base/WallTime;->getHour()I

    move-result p1

    .line 231
    sget-object v0, Lnet/time4j/Meridiem;->AM:Lnet/time4j/Meridiem;

    const/4 v1, 0x1

    const/16 v2, 0x18

    const/4 v3, 0x0

    const/16 v4, 0xc

    if-ne p0, v0, :cond_0

    if-lt p1, v4, :cond_2

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_0
    if-lt p1, v4, :cond_1

    if-ge p1, v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :cond_2
    :goto_0
    return v1
.end method
