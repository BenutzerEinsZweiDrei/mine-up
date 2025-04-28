.class Lnet/time4j/DayPeriod$PeriodName;
.super Ljava/lang/Object;
.source "DayPeriod.java"

# interfaces
.implements Lnet/time4j/engine/ChronoFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/DayPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PeriodName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ChronoFunction<",
        "Lnet/time4j/engine/ChronoDisplay;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final fixed:Z

.field private final outputContext:Lnet/time4j/format/OutputContext;

.field final synthetic this$0:Lnet/time4j/DayPeriod;

.field private final width:Lnet/time4j/format/TextWidth;


# direct methods
.method constructor <init>(Lnet/time4j/DayPeriod;ZLnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)V
    .locals 0

    .line 1134
    iput-object p1, p0, Lnet/time4j/DayPeriod$PeriodName;->this$0:Lnet/time4j/DayPeriod;

    .line 1135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "Missing text width."

    .line 1138
    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "Missing output context."

    .line 1140
    invoke-static {p4, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1143
    iput-boolean p2, p0, Lnet/time4j/DayPeriod$PeriodName;->fixed:Z

    .line 1144
    iput-object p3, p0, Lnet/time4j/DayPeriod$PeriodName;->width:Lnet/time4j/format/TextWidth;

    .line 1145
    iput-object p4, p0, Lnet/time4j/DayPeriod$PeriodName;->outputContext:Lnet/time4j/format/OutputContext;

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1119
    check-cast p1, Lnet/time4j/engine/ChronoDisplay;

    invoke-virtual {p0, p1}, Lnet/time4j/DayPeriod$PeriodName;->apply(Lnet/time4j/engine/ChronoDisplay;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lnet/time4j/engine/ChronoDisplay;)Ljava/lang/String;
    .locals 7

    .line 1154
    sget-object v0, Lnet/time4j/PlainTime;->COMPONENT:Lnet/time4j/WallTimeElement;

    invoke-interface {p1, v0}, Lnet/time4j/engine/ChronoDisplay;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainTime;

    .line 1155
    iget-object v0, p0, Lnet/time4j/DayPeriod$PeriodName;->this$0:Lnet/time4j/DayPeriod;

    .line 1156
    invoke-static {v0}, Lnet/time4j/DayPeriod;->access$600(Lnet/time4j/DayPeriod;)Ljava/util/Locale;

    move-result-object v1

    .line 1158
    iget-boolean v2, p0, Lnet/time4j/DayPeriod$PeriodName;->fixed:Z

    const-string v3, "noon"

    const-string v4, "midnight"

    if-eqz v2, :cond_3

    .line 1159
    invoke-static {p1}, Lnet/time4j/DayPeriod;->access$300(Lnet/time4j/PlainTime;)Ljava/lang/String;

    move-result-object v2

    .line 1161
    invoke-static {v0}, Lnet/time4j/DayPeriod;->access$100(Lnet/time4j/DayPeriod;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1162
    invoke-static {v0}, Lnet/time4j/DayPeriod;->access$700(Lnet/time4j/DayPeriod;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lnet/time4j/DayPeriod;->access$400(Ljava/util/Locale;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 1163
    iget-object v5, p0, Lnet/time4j/DayPeriod$PeriodName;->width:Lnet/time4j/format/TextWidth;

    iget-object v6, p0, Lnet/time4j/DayPeriod$PeriodName;->outputContext:Lnet/time4j/format/OutputContext;

    invoke-static {v0, v5, v6, v2}, Lnet/time4j/DayPeriod;->access$500(Ljava/util/Map;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1164
    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1165
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1166
    iget-object v2, p0, Lnet/time4j/DayPeriod$PeriodName;->width:Lnet/time4j/format/TextWidth;

    iget-object v3, p0, Lnet/time4j/DayPeriod$PeriodName;->outputContext:Lnet/time4j/format/OutputContext;

    const-string v4, "am"

    invoke-static {v0, v2, v3, v4}, Lnet/time4j/DayPeriod;->access$500(Ljava/util/Map;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 1167
    :cond_0
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1168
    iget-object v2, p0, Lnet/time4j/DayPeriod$PeriodName;->width:Lnet/time4j/format/TextWidth;

    iget-object v3, p0, Lnet/time4j/DayPeriod$PeriodName;->outputContext:Lnet/time4j/format/OutputContext;

    const-string v4, "pm"

    invoke-static {v0, v2, v3, v4}, Lnet/time4j/DayPeriod;->access$500(Ljava/util/Map;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1171
    :cond_1
    :goto_0
    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1172
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_2
    return-object v2

    .line 1178
    :cond_3
    invoke-static {v0}, Lnet/time4j/DayPeriod;->access$100(Lnet/time4j/DayPeriod;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1179
    invoke-static {v0}, Lnet/time4j/DayPeriod;->access$700(Lnet/time4j/DayPeriod;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/time4j/DayPeriod;->access$400(Ljava/util/Locale;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 1180
    invoke-virtual {p1}, Lnet/time4j/PlainTime;->isMidnight()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1181
    iget-object v3, p0, Lnet/time4j/DayPeriod$PeriodName;->width:Lnet/time4j/format/TextWidth;

    iget-object v5, p0, Lnet/time4j/DayPeriod$PeriodName;->outputContext:Lnet/time4j/format/OutputContext;

    invoke-static {v2, v3, v5, v4}, Lnet/time4j/DayPeriod;->access$500(Ljava/util/Map;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1182
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1183
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_4
    const/16 v4, 0xc

    .line 1185
    invoke-static {v4}, Lnet/time4j/PlainTime;->of(I)Lnet/time4j/PlainTime;

    move-result-object v4

    invoke-virtual {p1, v4}, Lnet/time4j/PlainTime;->isSimultaneous(Lnet/time4j/PlainTime;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1186
    iget-object v4, p0, Lnet/time4j/DayPeriod$PeriodName;->width:Lnet/time4j/format/TextWidth;

    iget-object v5, p0, Lnet/time4j/DayPeriod$PeriodName;->outputContext:Lnet/time4j/format/OutputContext;

    invoke-static {v2, v4, v5, v3}, Lnet/time4j/DayPeriod;->access$500(Ljava/util/Map;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1187
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1188
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 1191
    :cond_5
    invoke-static {v0}, Lnet/time4j/DayPeriod;->access$200(Lnet/time4j/DayPeriod;)Ljava/util/SortedMap;

    move-result-object v3

    invoke-virtual {v0, p1}, Lnet/time4j/DayPeriod;->getStart(Lnet/time4j/PlainTime;)Lnet/time4j/PlainTime;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1192
    iget-object v3, p0, Lnet/time4j/DayPeriod$PeriodName;->width:Lnet/time4j/format/TextWidth;

    iget-object v4, p0, Lnet/time4j/DayPeriod$PeriodName;->outputContext:Lnet/time4j/format/OutputContext;

    invoke-static {v2, v3, v4, v0}, Lnet/time4j/DayPeriod;->access$500(Ljava/util/Map;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1193
    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1194
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 1201
    :cond_6
    sget-object v0, Lnet/time4j/PlainTime;->AM_PM_OF_DAY:Lnet/time4j/ZonalElement;

    invoke-virtual {p1, v0}, Lnet/time4j/PlainTime;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/Meridiem;

    if-nez v1, :cond_7

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    :cond_7
    invoke-virtual {p1, v1}, Lnet/time4j/Meridiem;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1197
    :cond_8
    invoke-static {v0}, Lnet/time4j/DayPeriod;->access$200(Lnet/time4j/DayPeriod;)Ljava/util/SortedMap;

    move-result-object v1

    invoke-virtual {v0, p1}, Lnet/time4j/DayPeriod;->getStart(Lnet/time4j/PlainTime;)Lnet/time4j/PlainTime;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method
