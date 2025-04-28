.class final enum Lnet/time4j/calendar/bahai/FormattedContent$2;
.super Lnet/time4j/calendar/bahai/FormattedContent;
.source "FormattedContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/bahai/FormattedContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, p2, v0}, Lnet/time4j/calendar/bahai/FormattedContent;-><init>(Ljava/lang/String;ILnet/time4j/calendar/bahai/FormattedContent$1;)V

    return-void
.end method


# virtual methods
.method variant()Ljava/lang/String;
    .locals 1

    const-string v0, "m"

    return-object v0
.end method
