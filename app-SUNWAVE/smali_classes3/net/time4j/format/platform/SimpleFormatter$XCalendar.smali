.class Lnet/time4j/format/platform/SimpleFormatter$XCalendar;
.super Ljava/util/GregorianCalendar;
.source "SimpleFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/format/platform/SimpleFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "XCalendar"
.end annotation


# direct methods
.method constructor <init>(Ljava/util/TimeZone;Ljava/util/Locale;)V
    .locals 0

    .line 1045
    invoke-direct {p0, p1, p2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 1047
    invoke-static {}, Lnet/time4j/format/platform/SimpleFormatter;->access$000()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/time4j/format/platform/SimpleFormatter$XCalendar;->setGregorianChange(Ljava/util/Date;)V

    return-void
.end method


# virtual methods
.method getRawValue(I)I
    .locals 0

    .line 1055
    invoke-super {p0, p1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result p1

    return p1
.end method
