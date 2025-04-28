.class final enum Lnet/time4j/format/expert/IgnorableWhitespaceProcessor;
.super Ljava/lang/Enum;
.source "IgnorableWhitespaceProcessor.java"

# interfaces
.implements Lnet/time4j/format/expert/FormatProcessor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/time4j/format/expert/IgnorableWhitespaceProcessor;",
        ">;",
        "Lnet/time4j/format/expert/FormatProcessor<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/time4j/format/expert/IgnorableWhitespaceProcessor;

.field public static final enum SINGLETON:Lnet/time4j/format/expert/IgnorableWhitespaceProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 41
    new-instance v0, Lnet/time4j/format/expert/IgnorableWhitespaceProcessor;

    const-string v1, "SINGLETON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/time4j/format/expert/IgnorableWhitespaceProcessor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/time4j/format/expert/IgnorableWhitespaceProcessor;->SINGLETON:Lnet/time4j/format/expert/IgnorableWhitespaceProcessor;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/time4j/format/expert/IgnorableWhitespaceProcessor;

    aput-object v0, v1, v2

    .line 36
    sput-object v1, Lnet/time4j/format/expert/IgnorableWhitespaceProcessor;->$VALUES:[Lnet/time4j/format/expert/IgnorableWhitespaceProcessor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/time4j/format/expert/IgnorableWhitespaceProcessor;
    .locals 1

    .line 36
    const-class v0, Lnet/time4j/format/expert/IgnorableWhitespaceProcessor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/time4j/format/expert/IgnorableWhitespaceProcessor;

    return-object p0
.end method

.method public static values()[Lnet/time4j/format/expert/IgnorableWhitespaceProcessor;
    .locals 1

    .line 36
    sget-object v0, Lnet/time4j/format/expert/IgnorableWhitespaceProcessor;->$VALUES:[Lnet/time4j/format/expert/IgnorableWhitespaceProcessor;

    invoke-virtual {v0}, [Lnet/time4j/format/expert/IgnorableWhitespaceProcessor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/time4j/format/expert/IgnorableWhitespaceProcessor;

    return-object v0
.end method


# virtual methods
.method public getElement()Lnet/time4j/engine/ChronoElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public isNumerical()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public parse(Ljava/lang/CharSequence;Lnet/time4j/format/expert/ParseLog;Lnet/time4j/engine/AttributeQuery;Lnet/time4j/format/expert/ParsedEntity;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lnet/time4j/format/expert/ParseLog;",
            "Lnet/time4j/engine/AttributeQuery;",
            "Lnet/time4j/format/expert/ParsedEntity<",
            "*>;Z)V"
        }
    .end annotation

    .line 68
    invoke-virtual {p2}, Lnet/time4j/format/expert/ParseLog;->getPosition()I

    move-result p3

    .line 70
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p4

    if-ge p3, p4, :cond_0

    .line 71
    invoke-interface {p1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p4

    .line 73
    invoke-static {p4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result p4

    if-eqz p4, :cond_0

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {p2, p3}, Lnet/time4j/format/expert/ParseLog;->setPosition(I)V

    return-void
.end method

.method public print(Lnet/time4j/engine/ChronoDisplay;Ljava/lang/Appendable;Lnet/time4j/engine/AttributeQuery;Ljava/util/Set;Z)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoDisplay;",
            "Ljava/lang/Appendable;",
            "Lnet/time4j/engine/AttributeQuery;",
            "Ljava/util/Set<",
            "Lnet/time4j/format/expert/ElementPosition;",
            ">;Z)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p1, 0x20

    .line 54
    invoke-interface {p2, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    const/4 p1, 0x1

    return p1
.end method

.method public quickPath(Lnet/time4j/format/expert/ChronoFormatter;Lnet/time4j/engine/AttributeQuery;I)Lnet/time4j/format/expert/FormatProcessor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "*>;",
            "Lnet/time4j/engine/AttributeQuery;",
            "I)",
            "Lnet/time4j/format/expert/FormatProcessor<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "{IGNORABLE_WHITE_SPACE}"

    return-object v0
.end method

.method public withElement(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/format/expert/FormatProcessor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Void;",
            ">;)",
            "Lnet/time4j/format/expert/FormatProcessor<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    return-object p0
.end method
