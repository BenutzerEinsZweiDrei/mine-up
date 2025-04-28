.class public final Lnet/time4j/calendar/Tabot;
.super Ljava/lang/Object;
.source "Tabot.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/time4j/calendar/Tabot$Element;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lnet/time4j/calendar/Tabot;",
        ">;"
    }
.end annotation


# static fields
.field private static final AMHARIC:[Ljava/lang/String;

.field private static final INSTANCES:[Lnet/time4j/calendar/Tabot;

.field private static final TRANSSCRIPTION:[Ljava/lang/String;


# instance fields
.field private final index:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 59
    new-instance v0, Lnet/time4j/calendar/service/GenericTextProviderSPI;

    invoke-direct {v0}, Lnet/time4j/calendar/service/GenericTextProviderSPI;-><init>()V

    .line 60
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v0}, Lnet/time4j/calendar/Tabot;->getBundle(Ljava/util/Locale;)Lnet/time4j/i18n/PropertyBundle;

    move-result-object v0

    .line 61
    new-instance v1, Ljava/util/Locale;

    const-string v2, "am"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lnet/time4j/calendar/Tabot;->getBundle(Ljava/util/Locale;)Lnet/time4j/i18n/PropertyBundle;

    move-result-object v1

    const/16 v2, 0x1e

    new-array v3, v2, [Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/String;

    new-array v5, v2, [Lnet/time4j/calendar/Tabot;

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v2, :cond_0

    .line 68
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "T_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v6, 0x1

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 69
    invoke-virtual {v0, v7}, Lnet/time4j/i18n/PropertyBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v3, v6

    .line 70
    invoke-virtual {v1, v7}, Lnet/time4j/i18n/PropertyBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    .line 71
    new-instance v7, Lnet/time4j/calendar/Tabot;

    invoke-direct {v7, v8}, Lnet/time4j/calendar/Tabot;-><init>(I)V

    aput-object v7, v5, v6

    move v6, v8

    goto :goto_0

    .line 74
    :cond_0
    sput-object v3, Lnet/time4j/calendar/Tabot;->TRANSSCRIPTION:[Ljava/lang/String;

    .line 75
    sput-object v4, Lnet/time4j/calendar/Tabot;->AMHARIC:[Ljava/lang/String;

    .line 76
    sput-object v5, Lnet/time4j/calendar/Tabot;->INSTANCES:[Lnet/time4j/calendar/Tabot;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput p1, p0, Lnet/time4j/calendar/Tabot;->index:I

    return-void
.end method

.method public static asList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/time4j/calendar/Tabot;",
            ">;"
        }
    .end annotation

    .line 108
    sget-object v0, Lnet/time4j/calendar/Tabot;->INSTANCES:[Lnet/time4j/calendar/Tabot;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static getBundle(Ljava/util/Locale;)Lnet/time4j/i18n/PropertyBundle;
    .locals 1

    const-string v0, "calendar/names/ethiopic/ethiopic"

    .line 216
    invoke-static {v0, p0}, Lnet/time4j/i18n/PropertyBundle;->load(Ljava/lang/String;Ljava/util/Locale;)Lnet/time4j/i18n/PropertyBundle;

    move-result-object p0

    return-object p0
.end method

.method public static of(I)Lnet/time4j/calendar/Tabot;
    .locals 3

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/16 v1, 0x1e

    if-gt p0, v1, :cond_0

    .line 134
    sget-object v1, Lnet/time4j/calendar/Tabot;->INSTANCES:[Lnet/time4j/calendar/Tabot;

    sub-int/2addr p0, v0

    aget-object p0, v1, p0

    return-object p0

    .line 131
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Out of range 1-30: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 49
    check-cast p1, Lnet/time4j/calendar/Tabot;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/Tabot;->compareTo(Lnet/time4j/calendar/Tabot;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lnet/time4j/calendar/Tabot;)I
    .locals 1

    .line 183
    iget v0, p0, Lnet/time4j/calendar/Tabot;->index:I

    iget p1, p1, Lnet/time4j/calendar/Tabot;->index:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 192
    :cond_0
    instance-of v1, p1, Lnet/time4j/calendar/Tabot;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 193
    iget v1, p0, Lnet/time4j/calendar/Tabot;->index:I

    check-cast p1, Lnet/time4j/calendar/Tabot;

    iget p1, p1, Lnet/time4j/calendar/Tabot;->index:I

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getDayOfMonth()I
    .locals 1

    .line 152
    iget v0, p0, Lnet/time4j/calendar/Tabot;->index:I

    return v0
.end method

.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 172
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "am"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 173
    sget-object p1, Lnet/time4j/calendar/Tabot;->AMHARIC:[Ljava/lang/String;

    iget v0, p0, Lnet/time4j/calendar/Tabot;->index:I

    add-int/lit8 v0, v0, -0x1

    aget-object p1, p1, v0

    return-object p1

    .line 176
    :cond_0
    sget-object p1, Lnet/time4j/calendar/Tabot;->TRANSSCRIPTION:[Ljava/lang/String;

    iget v0, p0, Lnet/time4j/calendar/Tabot;->index:I

    add-int/lit8 v0, v0, -0x1

    aget-object p1, p1, v0

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 203
    iget v0, p0, Lnet/time4j/calendar/Tabot;->index:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tabot of day-of-month "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/time4j/calendar/Tabot;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
