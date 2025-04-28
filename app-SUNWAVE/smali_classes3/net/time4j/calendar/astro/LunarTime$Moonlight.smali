.class public Lnet/time4j/calendar/astro/LunarTime$Moonlight;
.super Ljava/lang/Object;
.source "LunarTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/astro/LunarTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Moonlight"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final above:Z

.field private final endOfDay:Lnet/time4j/Moment;

.field private final moonrise:Lnet/time4j/Moment;

.field private final moonset:Lnet/time4j/Moment;

.field private final observerZoneID:Lnet/time4j/tz/TZID;

.field private final startOfDay:Lnet/time4j/Moment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 863
    const-class v0, Lnet/time4j/calendar/astro/LunarTime;

    return-void
.end method

.method private constructor <init>(Lnet/time4j/PlainDate;Lnet/time4j/tz/TZID;Lnet/time4j/Moment;Lnet/time4j/Moment;Z)V
    .locals 4

    .line 883
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 885
    iput-object p2, p0, Lnet/time4j/calendar/astro/LunarTime$Moonlight;->observerZoneID:Lnet/time4j/tz/TZID;

    .line 886
    invoke-static {p2}, Lnet/time4j/tz/Timezone;->of(Lnet/time4j/tz/TZID;)Lnet/time4j/tz/Timezone;

    move-result-object v0

    .line 887
    sget-object v1, Lnet/time4j/CalendarUnit;->DAYS:Lnet/time4j/CalendarUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {p1, v2, v3, v1}, Lnet/time4j/PlainDate;->plus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object v1

    check-cast v1, Lnet/time4j/PlainDate;

    .line 889
    invoke-virtual {v0}, Lnet/time4j/tz/Timezone;->getHistory()Lnet/time4j/tz/TransitionHistory;

    move-result-object v2

    if-nez v2, :cond_0

    .line 890
    invoke-virtual {p1}, Lnet/time4j/PlainDate;->atStartOfDay()Lnet/time4j/PlainTimestamp;

    move-result-object p1

    invoke-virtual {p1, v0}, Lnet/time4j/PlainTimestamp;->in(Lnet/time4j/tz/Timezone;)Lnet/time4j/Moment;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/calendar/astro/LunarTime$Moonlight;->startOfDay:Lnet/time4j/Moment;

    .line 891
    invoke-virtual {v1}, Lnet/time4j/PlainDate;->atStartOfDay()Lnet/time4j/PlainTimestamp;

    move-result-object p1

    invoke-virtual {p1, v0}, Lnet/time4j/PlainTimestamp;->in(Lnet/time4j/tz/Timezone;)Lnet/time4j/Moment;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/calendar/astro/LunarTime$Moonlight;->endOfDay:Lnet/time4j/Moment;

    goto :goto_0

    .line 893
    :cond_0
    invoke-virtual {p1, p2}, Lnet/time4j/PlainDate;->atFirstMoment(Lnet/time4j/tz/TZID;)Lnet/time4j/Moment;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/calendar/astro/LunarTime$Moonlight;->startOfDay:Lnet/time4j/Moment;

    .line 894
    invoke-virtual {v1, p2}, Lnet/time4j/PlainDate;->atFirstMoment(Lnet/time4j/tz/TZID;)Lnet/time4j/Moment;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/calendar/astro/LunarTime$Moonlight;->endOfDay:Lnet/time4j/Moment;

    .line 897
    :goto_0
    iput-object p3, p0, Lnet/time4j/calendar/astro/LunarTime$Moonlight;->moonrise:Lnet/time4j/Moment;

    .line 898
    iput-object p4, p0, Lnet/time4j/calendar/astro/LunarTime$Moonlight;->moonset:Lnet/time4j/Moment;

    .line 899
    iput-boolean p5, p0, Lnet/time4j/calendar/astro/LunarTime$Moonlight;->above:Z

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/PlainDate;Lnet/time4j/tz/TZID;Lnet/time4j/Moment;Lnet/time4j/Moment;ZLnet/time4j/calendar/astro/LunarTime$1;)V
    .locals 0

    .line 863
    invoke-direct/range {p0 .. p5}, Lnet/time4j/calendar/astro/LunarTime$Moonlight;-><init>(Lnet/time4j/PlainDate;Lnet/time4j/tz/TZID;Lnet/time4j/Moment;Lnet/time4j/Moment;Z)V

    return-void
.end method


# virtual methods
.method public isAbsent()Z
    .locals 1

    .line 1101
    invoke-virtual {p0}, Lnet/time4j/calendar/astro/LunarTime$Moonlight;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPresent(Lnet/time4j/Moment;)Z
    .locals 4

    .line 1043
    iget-object v0, p0, Lnet/time4j/calendar/astro/LunarTime$Moonlight;->startOfDay:Lnet/time4j/Moment;

    invoke-virtual {p1, v0}, Lnet/time4j/Moment;->isBefore(Lnet/time4j/scale/UniversalTime;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_7

    iget-object v0, p0, Lnet/time4j/calendar/astro/LunarTime$Moonlight;->endOfDay:Lnet/time4j/Moment;

    invoke-virtual {p1, v0}, Lnet/time4j/Moment;->isBefore(Lnet/time4j/scale/UniversalTime;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1045
    :cond_0
    iget-object v0, p0, Lnet/time4j/calendar/astro/LunarTime$Moonlight;->moonrise:Lnet/time4j/Moment;

    if-nez v0, :cond_2

    .line 1046
    iget-object v0, p0, Lnet/time4j/calendar/astro/LunarTime$Moonlight;->moonset:Lnet/time4j/Moment;

    if-nez v0, :cond_1

    .line 1047
    iget-boolean p1, p0, Lnet/time4j/calendar/astro/LunarTime$Moonlight;->above:Z

    return p1

    .line 1050
    :cond_1
    invoke-virtual {p1, v0}, Lnet/time4j/Moment;->isBefore(Lnet/time4j/scale/UniversalTime;)Z

    move-result p1

    return p1

    .line 1052
    :cond_2
    iget-object v2, p0, Lnet/time4j/calendar/astro/LunarTime$Moonlight;->moonset:Lnet/time4j/Moment;

    const/4 v3, 0x1

    if-nez v2, :cond_3

    .line 1054
    invoke-virtual {p1, v0}, Lnet/time4j/Moment;->isBefore(Lnet/time4j/scale/UniversalTime;)Z

    move-result p1

    xor-int/2addr p1, v3

    return p1

    .line 1055
    :cond_3
    invoke-virtual {v0, v2}, Lnet/time4j/Moment;->isBefore(Lnet/time4j/scale/UniversalTime;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1057
    iget-object v0, p0, Lnet/time4j/calendar/astro/LunarTime$Moonlight;->moonrise:Lnet/time4j/Moment;

    invoke-virtual {p1, v0}, Lnet/time4j/Moment;->isBefore(Lnet/time4j/scale/UniversalTime;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lnet/time4j/calendar/astro/LunarTime$Moonlight;->moonset:Lnet/time4j/Moment;

    invoke-virtual {p1, v0}, Lnet/time4j/Moment;->isBefore(Lnet/time4j/scale/UniversalTime;)Z

    move-result p1

    if-eqz p1, :cond_4

    move v1, v3

    :cond_4
    return v1

    .line 1060
    :cond_5
    iget-object v0, p0, Lnet/time4j/calendar/astro/LunarTime$Moonlight;->moonset:Lnet/time4j/Moment;

    invoke-virtual {p1, v0}, Lnet/time4j/Moment;->isBefore(Lnet/time4j/scale/UniversalTime;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lnet/time4j/calendar/astro/LunarTime$Moonlight;->moonrise:Lnet/time4j/Moment;

    invoke-virtual {p1, v0}, Lnet/time4j/Moment;->isBefore(Lnet/time4j/scale/UniversalTime;)Z

    move-result p1

    if-nez p1, :cond_7

    :cond_6
    move v1, v3

    :cond_7
    :goto_0
    return v1
.end method

.method public isPresentAllDay()Z
    .locals 1

    .line 1081
    iget-boolean v0, p0, Lnet/time4j/calendar/astro/LunarTime$Moonlight;->above:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/time4j/calendar/astro/LunarTime$Moonlight;->moonrise:Lnet/time4j/Moment;

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/time4j/calendar/astro/LunarTime$Moonlight;->moonset:Lnet/time4j/Moment;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public length()I
    .locals 5

    .line 1123
    iget-object v0, p0, Lnet/time4j/calendar/astro/LunarTime$Moonlight;->moonrise:Lnet/time4j/Moment;

    if-nez v0, :cond_2

    .line 1124
    iget-object v0, p0, Lnet/time4j/calendar/astro/LunarTime$Moonlight;->moonset:Lnet/time4j/Moment;

    if-nez v0, :cond_1

    .line 1125
    iget-boolean v0, p0, Lnet/time4j/calendar/astro/LunarTime$Moonlight;->above:Z

    if-eqz v0, :cond_0

    .line 1126
    iget-object v0, p0, Lnet/time4j/calendar/astro/LunarTime$Moonlight;->startOfDay:Lnet/time4j/Moment;

    iget-object v1, p0, Lnet/time4j/calendar/astro/LunarTime$Moonlight;->endOfDay:Lnet/time4j/Moment;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Lnet/time4j/Moment;->until(Lnet/time4j/engine/TimePoint;Ljava/lang/Object;)J

    move-result-wide v0

    :goto_0
    long-to-int v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1132
    :cond_1
    iget-object v1, p0, Lnet/time4j/calendar/astro/LunarTime$Moonlight;->startOfDay:Lnet/time4j/Moment;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v0, v2}, Lnet/time4j/Moment;->until(Lnet/time4j/engine/TimePoint;Ljava/lang/Object;)J

    move-result-wide v0

    goto :goto_0

    .line 1134
    :cond_2
    iget-object v1, p0, Lnet/time4j/calendar/astro/LunarTime$Moonlight;->moonset:Lnet/time4j/Moment;

    if-nez v1, :cond_3

    .line 1136
    iget-object v1, p0, Lnet/time4j/calendar/astro/LunarTime$Moonlight;->endOfDay:Lnet/time4j/Moment;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Lnet/time4j/Moment;->until(Lnet/time4j/engine/TimePoint;Ljava/lang/Object;)J

    move-result-wide v0

    goto :goto_0

    .line 1137
    :cond_3
    invoke-virtual {v0, v1}, Lnet/time4j/Moment;->isBefore(Lnet/time4j/scale/UniversalTime;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1139
    iget-object v0, p0, Lnet/time4j/calendar/astro/LunarTime$Moonlight;->moonrise:Lnet/time4j/Moment;

    iget-object v1, p0, Lnet/time4j/calendar/astro/LunarTime$Moonlight;->moonset:Lnet/time4j/Moment;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Lnet/time4j/Moment;->until(Lnet/time4j/engine/TimePoint;Ljava/lang/Object;)J

    move-result-wide v0

    goto :goto_0

    .line 1142
    :cond_4
    iget-object v0, p0, Lnet/time4j/calendar/astro/LunarTime$Moonlight;->startOfDay:Lnet/time4j/Moment;

    iget-object v1, p0, Lnet/time4j/calendar/astro/LunarTime$Moonlight;->moonset:Lnet/time4j/Moment;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Lnet/time4j/Moment;->until(Lnet/time4j/engine/TimePoint;Ljava/lang/Object;)J

    move-result-wide v0

    .line 1143
    iget-object v2, p0, Lnet/time4j/calendar/astro/LunarTime$Moonlight;->moonrise:Lnet/time4j/Moment;

    iget-object v3, p0, Lnet/time4j/calendar/astro/LunarTime$Moonlight;->endOfDay:Lnet/time4j/Moment;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4}, Lnet/time4j/Moment;->until(Lnet/time4j/engine/TimePoint;Ljava/lang/Object;)J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public moonrise()Lnet/time4j/Moment;
    .locals 1

    .line 917
    iget-object v0, p0, Lnet/time4j/calendar/astro/LunarTime$Moonlight;->moonrise:Lnet/time4j/Moment;

    return-object v0
.end method

.method public moonrise(Lnet/time4j/tz/TZID;)Lnet/time4j/PlainTimestamp;
    .locals 1

    .line 957
    iget-object v0, p0, Lnet/time4j/calendar/astro/LunarTime$Moonlight;->moonrise:Lnet/time4j/Moment;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 961
    :cond_0
    invoke-virtual {v0, p1}, Lnet/time4j/Moment;->toZonalTimestamp(Lnet/time4j/tz/TZID;)Lnet/time4j/PlainTimestamp;

    move-result-object p1

    return-object p1
.end method

.method public moonriseLocal()Lnet/time4j/PlainTimestamp;
    .locals 2

    .line 935
    iget-object v0, p0, Lnet/time4j/calendar/astro/LunarTime$Moonlight;->moonrise:Lnet/time4j/Moment;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 939
    :cond_0
    iget-object v1, p0, Lnet/time4j/calendar/astro/LunarTime$Moonlight;->observerZoneID:Lnet/time4j/tz/TZID;

    invoke-virtual {v0, v1}, Lnet/time4j/Moment;->toZonalTimestamp(Lnet/time4j/tz/TZID;)Lnet/time4j/PlainTimestamp;

    move-result-object v0

    return-object v0
.end method

.method public moonset()Lnet/time4j/Moment;
    .locals 1

    .line 977
    iget-object v0, p0, Lnet/time4j/calendar/astro/LunarTime$Moonlight;->moonset:Lnet/time4j/Moment;

    return-object v0
.end method

.method public moonset(Lnet/time4j/tz/TZID;)Lnet/time4j/PlainTimestamp;
    .locals 1

    .line 1017
    iget-object v0, p0, Lnet/time4j/calendar/astro/LunarTime$Moonlight;->moonset:Lnet/time4j/Moment;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1021
    :cond_0
    invoke-virtual {v0, p1}, Lnet/time4j/Moment;->toZonalTimestamp(Lnet/time4j/tz/TZID;)Lnet/time4j/PlainTimestamp;

    move-result-object p1

    return-object p1
.end method

.method public moonsetLocal()Lnet/time4j/PlainTimestamp;
    .locals 2

    .line 995
    iget-object v0, p0, Lnet/time4j/calendar/astro/LunarTime$Moonlight;->moonset:Lnet/time4j/Moment;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 999
    :cond_0
    iget-object v1, p0, Lnet/time4j/calendar/astro/LunarTime$Moonlight;->observerZoneID:Lnet/time4j/tz/TZID;

    invoke-virtual {v0, v1}, Lnet/time4j/Moment;->toZonalTimestamp(Lnet/time4j/tz/TZID;)Lnet/time4j/PlainTimestamp;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1162
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Moonlight["

    .line 1163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "tz="

    .line 1164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1165
    iget-object v1, p0, Lnet/time4j/calendar/astro/LunarTime$Moonlight;->observerZoneID:Lnet/time4j/tz/TZID;

    invoke-interface {v1}, Lnet/time4j/tz/TZID;->canonical()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " | "

    .line 1166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1168
    iget-object v1, p0, Lnet/time4j/calendar/astro/LunarTime$Moonlight;->moonrise:Lnet/time4j/Moment;

    const-string v2, "moonset="

    if-nez v1, :cond_2

    .line 1169
    iget-object v1, p0, Lnet/time4j/calendar/astro/LunarTime$Moonlight;->moonset:Lnet/time4j/Moment;

    if-nez v1, :cond_1

    const-string v1, "always "

    .line 1170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1171
    iget-boolean v1, p0, Lnet/time4j/calendar/astro/LunarTime$Moonlight;->above:Z

    if-eqz v1, :cond_0

    const-string v1, "up"

    goto :goto_0

    :cond_0
    const-string v1, "down"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1173
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1174
    iget-object v1, p0, Lnet/time4j/calendar/astro/LunarTime$Moonlight;->moonset:Lnet/time4j/Moment;

    iget-object v2, p0, Lnet/time4j/calendar/astro/LunarTime$Moonlight;->observerZoneID:Lnet/time4j/tz/TZID;

    invoke-virtual {v1, v2}, Lnet/time4j/Moment;->toZonalTimestamp(Lnet/time4j/tz/TZID;)Lnet/time4j/PlainTimestamp;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1176
    :cond_2
    iget-object v3, p0, Lnet/time4j/calendar/astro/LunarTime$Moonlight;->moonset:Lnet/time4j/Moment;

    const-string v4, "moonrise="

    if-nez v3, :cond_3

    .line 1177
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1178
    iget-object v1, p0, Lnet/time4j/calendar/astro/LunarTime$Moonlight;->moonrise:Lnet/time4j/Moment;

    iget-object v2, p0, Lnet/time4j/calendar/astro/LunarTime$Moonlight;->observerZoneID:Lnet/time4j/tz/TZID;

    invoke-virtual {v1, v2}, Lnet/time4j/Moment;->toZonalTimestamp(Lnet/time4j/tz/TZID;)Lnet/time4j/PlainTimestamp;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1179
    :cond_3
    invoke-virtual {v1, v3}, Lnet/time4j/Moment;->isBefore(Lnet/time4j/scale/UniversalTime;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1180
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1181
    iget-object v1, p0, Lnet/time4j/calendar/astro/LunarTime$Moonlight;->moonrise:Lnet/time4j/Moment;

    iget-object v2, p0, Lnet/time4j/calendar/astro/LunarTime$Moonlight;->observerZoneID:Lnet/time4j/tz/TZID;

    invoke-virtual {v1, v2}, Lnet/time4j/Moment;->toZonalTimestamp(Lnet/time4j/tz/TZID;)Lnet/time4j/PlainTimestamp;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " | moonset="

    .line 1182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1183
    iget-object v1, p0, Lnet/time4j/calendar/astro/LunarTime$Moonlight;->moonset:Lnet/time4j/Moment;

    iget-object v2, p0, Lnet/time4j/calendar/astro/LunarTime$Moonlight;->observerZoneID:Lnet/time4j/tz/TZID;

    invoke-virtual {v1, v2}, Lnet/time4j/Moment;->toZonalTimestamp(Lnet/time4j/tz/TZID;)Lnet/time4j/PlainTimestamp;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1185
    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1186
    iget-object v1, p0, Lnet/time4j/calendar/astro/LunarTime$Moonlight;->moonset:Lnet/time4j/Moment;

    iget-object v2, p0, Lnet/time4j/calendar/astro/LunarTime$Moonlight;->observerZoneID:Lnet/time4j/tz/TZID;

    invoke-virtual {v1, v2}, Lnet/time4j/Moment;->toZonalTimestamp(Lnet/time4j/tz/TZID;)Lnet/time4j/PlainTimestamp;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " | moonrise="

    .line 1187
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1188
    iget-object v1, p0, Lnet/time4j/calendar/astro/LunarTime$Moonlight;->moonrise:Lnet/time4j/Moment;

    iget-object v2, p0, Lnet/time4j/calendar/astro/LunarTime$Moonlight;->observerZoneID:Lnet/time4j/tz/TZID;

    invoke-virtual {v1, v2}, Lnet/time4j/Moment;->toZonalTimestamp(Lnet/time4j/tz/TZID;)Lnet/time4j/PlainTimestamp;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v1, " | length="

    .line 1190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1191
    invoke-virtual {p0}, Lnet/time4j/calendar/astro/LunarTime$Moonlight;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 1192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1193
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
