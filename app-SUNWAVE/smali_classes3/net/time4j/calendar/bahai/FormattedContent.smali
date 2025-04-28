.class public abstract enum Lnet/time4j/calendar/bahai/FormattedContent;
.super Ljava/lang/Enum;
.source "FormattedContent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/time4j/calendar/bahai/FormattedContent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/time4j/calendar/bahai/FormattedContent;

.field public static final enum HTML:Lnet/time4j/calendar/bahai/FormattedContent;

.field public static final enum MEANING:Lnet/time4j/calendar/bahai/FormattedContent;

.field public static final enum TRANSCRIPTION:Lnet/time4j/calendar/bahai/FormattedContent;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 51
    new-instance v0, Lnet/time4j/calendar/bahai/FormattedContent$1;

    const-string v1, "TRANSCRIPTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/time4j/calendar/bahai/FormattedContent$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/time4j/calendar/bahai/FormattedContent;->TRANSCRIPTION:Lnet/time4j/calendar/bahai/FormattedContent;

    .line 64
    new-instance v1, Lnet/time4j/calendar/bahai/FormattedContent$2;

    const-string v3, "MEANING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/time4j/calendar/bahai/FormattedContent$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/time4j/calendar/bahai/FormattedContent;->MEANING:Lnet/time4j/calendar/bahai/FormattedContent;

    .line 81
    new-instance v3, Lnet/time4j/calendar/bahai/FormattedContent$3;

    const-string v5, "HTML"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lnet/time4j/calendar/bahai/FormattedContent$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/time4j/calendar/bahai/FormattedContent;->HTML:Lnet/time4j/calendar/bahai/FormattedContent;

    const/4 v5, 0x3

    new-array v5, v5, [Lnet/time4j/calendar/bahai/FormattedContent;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 41
    sput-object v5, Lnet/time4j/calendar/bahai/FormattedContent;->$VALUES:[Lnet/time4j/calendar/bahai/FormattedContent;

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

.method synthetic constructor <init>(Ljava/lang/String;ILnet/time4j/calendar/bahai/FormattedContent$1;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lnet/time4j/calendar/bahai/FormattedContent;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/time4j/calendar/bahai/FormattedContent;
    .locals 1

    .line 41
    const-class v0, Lnet/time4j/calendar/bahai/FormattedContent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/time4j/calendar/bahai/FormattedContent;

    return-object p0
.end method

.method public static values()[Lnet/time4j/calendar/bahai/FormattedContent;
    .locals 1

    .line 41
    sget-object v0, Lnet/time4j/calendar/bahai/FormattedContent;->$VALUES:[Lnet/time4j/calendar/bahai/FormattedContent;

    invoke-virtual {v0}, [Lnet/time4j/calendar/bahai/FormattedContent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/time4j/calendar/bahai/FormattedContent;

    return-object v0
.end method


# virtual methods
.method abstract variant()Ljava/lang/String;
.end method
