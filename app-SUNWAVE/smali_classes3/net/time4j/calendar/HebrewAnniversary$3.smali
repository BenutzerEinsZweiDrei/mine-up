.class Lnet/time4j/calendar/HebrewAnniversary$3;
.super Ljava/lang/Object;
.source "HebrewAnniversary.java"

# interfaces
.implements Lnet/time4j/engine/ChronoFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/time4j/calendar/HebrewAnniversary;->inGregorianYear(I)Lnet/time4j/engine/ChronoFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ChronoFunction<",
        "Lnet/time4j/engine/CalendarDate;",
        "Ljava/util/List<",
        "Lnet/time4j/PlainDate;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/time4j/calendar/HebrewAnniversary;

.field final synthetic val$gyear:I


# direct methods
.method constructor <init>(Lnet/time4j/calendar/HebrewAnniversary;I)V
    .locals 0

    .line 194
    iput-object p1, p0, Lnet/time4j/calendar/HebrewAnniversary$3;->this$0:Lnet/time4j/calendar/HebrewAnniversary;

    iput p2, p0, Lnet/time4j/calendar/HebrewAnniversary$3;->val$gyear:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 194
    check-cast p1, Lnet/time4j/engine/CalendarDate;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HebrewAnniversary$3;->apply(Lnet/time4j/engine/CalendarDate;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lnet/time4j/engine/CalendarDate;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/CalendarDate;",
            ")",
            "Ljava/util/List<",
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation

    .line 197
    invoke-static {p1}, Lnet/time4j/calendar/HebrewAnniversary;->access$100(Lnet/time4j/engine/CalendarDate;)Lnet/time4j/calendar/HebrewCalendar;

    move-result-object p1

    .line 198
    iget v0, p0, Lnet/time4j/calendar/HebrewAnniversary$3;->val$gyear:I

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lnet/time4j/PlainDate;->of(III)Lnet/time4j/PlainDate;

    move-result-object v0

    const-class v2, Lnet/time4j/calendar/HebrewCalendar;

    invoke-virtual {v0, v2}, Lnet/time4j/PlainDate;->transform(Ljava/lang/Class;)Lnet/time4j/engine/Calendrical;

    move-result-object v0

    check-cast v0, Lnet/time4j/calendar/HebrewCalendar;

    invoke-virtual {v0}, Lnet/time4j/calendar/HebrewCalendar;->getYear()I

    move-result v0

    .line 199
    iget-object v2, p0, Lnet/time4j/calendar/HebrewAnniversary$3;->this$0:Lnet/time4j/calendar/HebrewAnniversary;

    invoke-virtual {v2, v0}, Lnet/time4j/calendar/HebrewAnniversary;->inHebrewYear(I)Lnet/time4j/engine/ChronoFunction;

    move-result-object v2

    invoke-interface {v2, p1}, Lnet/time4j/engine/ChronoFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/time4j/calendar/HebrewCalendar;

    const-class v3, Lnet/time4j/PlainDate;

    invoke-virtual {v2, v3}, Lnet/time4j/calendar/HebrewCalendar;->transform(Ljava/lang/Class;)Lnet/time4j/engine/Calendrical;

    move-result-object v2

    check-cast v2, Lnet/time4j/PlainDate;

    .line 200
    iget-object v3, p0, Lnet/time4j/calendar/HebrewAnniversary$3;->this$0:Lnet/time4j/calendar/HebrewAnniversary;

    add-int/2addr v0, v1

    invoke-virtual {v3, v0}, Lnet/time4j/calendar/HebrewAnniversary;->inHebrewYear(I)Lnet/time4j/engine/ChronoFunction;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/time4j/engine/ChronoFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/HebrewCalendar;

    const-class v0, Lnet/time4j/PlainDate;

    invoke-virtual {p1, v0}, Lnet/time4j/calendar/HebrewCalendar;->transform(Ljava/lang/Class;)Lnet/time4j/engine/Calendrical;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainDate;

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 202
    invoke-virtual {v2}, Lnet/time4j/PlainDate;->getYear()I

    move-result v1

    iget v3, p0, Lnet/time4j/calendar/HebrewAnniversary$3;->val$gyear:I

    if-ne v1, v3, :cond_0

    .line 203
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    :cond_0
    invoke-virtual {p1}, Lnet/time4j/PlainDate;->getYear()I

    move-result v1

    iget v2, p0, Lnet/time4j/calendar/HebrewAnniversary$3;->val$gyear:I

    if-ne v1, v2, :cond_1

    .line 206
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
