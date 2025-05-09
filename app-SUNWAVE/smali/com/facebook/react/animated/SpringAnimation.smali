.class Lcom/facebook/react/animated/SpringAnimation;
.super Lcom/facebook/react/animated/AnimationDriver;
.source "SpringAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/animated/SpringAnimation$PhysicsState;
    }
.end annotation


# static fields
.field private static final MAX_DELTA_TIME_SEC:D = 0.064

.field private static final SOLVER_TIMESTEP_SEC:D = 0.001


# instance fields
.field private mCurrentLoop:I

.field private final mCurrentState:Lcom/facebook/react/animated/SpringAnimation$PhysicsState;

.field private mDisplacementFromRestThreshold:D

.field private mEndValue:D

.field private mInitialVelocity:D

.field private mIterations:I

.field private mLastTime:J

.field private mOriginalValue:D

.field private mOvershootClampingEnabled:Z

.field private mRestSpeedThreshold:D

.field private mSpringDamping:D

.field private mSpringMass:D

.field private mSpringStarted:Z

.field private mSpringStiffness:D

.field private mStartValue:D

.field private mTimeAccumulator:D


# direct methods
.method constructor <init>(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 3

    .line 53
    invoke-direct {p0}, Lcom/facebook/react/animated/AnimationDriver;-><init>()V

    .line 41
    new-instance v0, Lcom/facebook/react/animated/SpringAnimation$PhysicsState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/react/animated/SpringAnimation$PhysicsState;-><init>(Lcom/facebook/react/animated/SpringAnimation$1;)V

    iput-object v0, p0, Lcom/facebook/react/animated/SpringAnimation;->mCurrentState:Lcom/facebook/react/animated/SpringAnimation$PhysicsState;

    const-string v1, "initialVelocity"

    .line 54
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/facebook/react/animated/SpringAnimation$PhysicsState;->velocity:D

    .line 55
    invoke-virtual {p0, p1}, Lcom/facebook/react/animated/SpringAnimation;->resetConfig(Lcom/facebook/react/bridge/ReadableMap;)V

    return-void
.end method

.method private advance(D)V
    .locals 19

    move-object/from16 v0, p0

    .line 135
    invoke-direct/range {p0 .. p0}, Lcom/facebook/react/animated/SpringAnimation;->isAtRest()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-wide v1, 0x3fb0624dd2f1a9fcL    # 0.064

    cmpl-double v3, p1, v1

    if-lez v3, :cond_1

    goto :goto_0

    :cond_1
    move-wide/from16 v1, p1

    .line 146
    :goto_0
    iget-wide v3, v0, Lcom/facebook/react/animated/SpringAnimation;->mTimeAccumulator:D

    add-double/2addr v3, v1

    iput-wide v3, v0, Lcom/facebook/react/animated/SpringAnimation;->mTimeAccumulator:D

    .line 148
    iget-wide v1, v0, Lcom/facebook/react/animated/SpringAnimation;->mSpringDamping:D

    .line 149
    iget-wide v3, v0, Lcom/facebook/react/animated/SpringAnimation;->mSpringMass:D

    .line 150
    iget-wide v5, v0, Lcom/facebook/react/animated/SpringAnimation;->mSpringStiffness:D

    .line 151
    iget-wide v7, v0, Lcom/facebook/react/animated/SpringAnimation;->mInitialVelocity:D

    neg-double v7, v7

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    mul-double v11, v5, v3

    .line 153
    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    mul-double/2addr v11, v9

    div-double/2addr v1, v11

    div-double/2addr v5, v3

    .line 154
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    mul-double v5, v1, v1

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    sub-double v5, v9, v5

    .line 155
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    mul-double/2addr v5, v3

    .line 156
    iget-wide v11, v0, Lcom/facebook/react/animated/SpringAnimation;->mEndValue:D

    iget-wide v13, v0, Lcom/facebook/react/animated/SpringAnimation;->mStartValue:D

    sub-double/2addr v11, v13

    .line 160
    iget-wide v13, v0, Lcom/facebook/react/animated/SpringAnimation;->mTimeAccumulator:D

    cmpg-double v15, v1, v9

    if-gez v15, :cond_2

    neg-double v9, v1

    mul-double/2addr v9, v3

    mul-double/2addr v9, v13

    .line 163
    invoke-static {v9, v10}, Ljava/lang/Math;->exp(D)D

    move-result-wide v9

    move-wide/from16 p1, v9

    .line 164
    iget-wide v9, v0, Lcom/facebook/react/animated/SpringAnimation;->mEndValue:D

    mul-double/2addr v1, v3

    mul-double v3, v1, v11

    add-double/2addr v7, v3

    div-double v3, v7, v5

    mul-double/2addr v13, v5

    .line 167
    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    mul-double/2addr v3, v15

    .line 168
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double/2addr v15, v11

    add-double/2addr v3, v15

    move-wide/from16 v15, p1

    mul-double/2addr v3, v15

    sub-double/2addr v9, v3

    mul-double/2addr v1, v15

    .line 175
    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double/2addr v3, v7

    div-double/2addr v3, v5

    .line 176
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    mul-double v17, v17, v11

    add-double v3, v3, v17

    mul-double/2addr v1, v3

    .line 178
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double/2addr v3, v7

    mul-double/2addr v5, v11

    .line 179
    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    sub-double/2addr v3, v5

    mul-double/2addr v3, v15

    sub-double/2addr v1, v3

    goto :goto_1

    :cond_2
    neg-double v1, v3

    mul-double/2addr v1, v13

    .line 182
    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    .line 183
    iget-wide v5, v0, Lcom/facebook/react/animated/SpringAnimation;->mEndValue:D

    mul-double v15, v3, v11

    add-double/2addr v15, v7

    mul-double/2addr v15, v13

    add-double/2addr v15, v11

    mul-double/2addr v15, v1

    sub-double/2addr v5, v15

    mul-double v15, v13, v3

    sub-double/2addr v15, v9

    mul-double/2addr v7, v15

    mul-double/2addr v13, v11

    mul-double/2addr v3, v3

    mul-double/2addr v13, v3

    add-double/2addr v7, v13

    mul-double/2addr v1, v7

    move-wide v9, v5

    .line 187
    :goto_1
    iget-object v3, v0, Lcom/facebook/react/animated/SpringAnimation;->mCurrentState:Lcom/facebook/react/animated/SpringAnimation$PhysicsState;

    iput-wide v9, v3, Lcom/facebook/react/animated/SpringAnimation$PhysicsState;->position:D

    .line 188
    iget-object v3, v0, Lcom/facebook/react/animated/SpringAnimation;->mCurrentState:Lcom/facebook/react/animated/SpringAnimation$PhysicsState;

    iput-wide v1, v3, Lcom/facebook/react/animated/SpringAnimation$PhysicsState;->velocity:D

    .line 193
    invoke-direct/range {p0 .. p0}, Lcom/facebook/react/animated/SpringAnimation;->isAtRest()Z

    move-result v1

    if-nez v1, :cond_3

    iget-boolean v1, v0, Lcom/facebook/react/animated/SpringAnimation;->mOvershootClampingEnabled:Z

    if-eqz v1, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/facebook/react/animated/SpringAnimation;->isOvershooting()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 195
    :cond_3
    iget-wide v1, v0, Lcom/facebook/react/animated/SpringAnimation;->mSpringStiffness:D

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_4

    .line 196
    iget-wide v1, v0, Lcom/facebook/react/animated/SpringAnimation;->mEndValue:D

    iput-wide v1, v0, Lcom/facebook/react/animated/SpringAnimation;->mStartValue:D

    .line 197
    iget-object v5, v0, Lcom/facebook/react/animated/SpringAnimation;->mCurrentState:Lcom/facebook/react/animated/SpringAnimation$PhysicsState;

    iput-wide v1, v5, Lcom/facebook/react/animated/SpringAnimation$PhysicsState;->position:D

    goto :goto_2

    .line 199
    :cond_4
    iget-object v1, v0, Lcom/facebook/react/animated/SpringAnimation;->mCurrentState:Lcom/facebook/react/animated/SpringAnimation$PhysicsState;

    iget-wide v1, v1, Lcom/facebook/react/animated/SpringAnimation$PhysicsState;->position:D

    iput-wide v1, v0, Lcom/facebook/react/animated/SpringAnimation;->mEndValue:D

    .line 200
    iput-wide v1, v0, Lcom/facebook/react/animated/SpringAnimation;->mStartValue:D

    .line 202
    :goto_2
    iget-object v1, v0, Lcom/facebook/react/animated/SpringAnimation;->mCurrentState:Lcom/facebook/react/animated/SpringAnimation$PhysicsState;

    iput-wide v3, v1, Lcom/facebook/react/animated/SpringAnimation$PhysicsState;->velocity:D

    :cond_5
    return-void
.end method

.method private getDisplacementDistanceForState(Lcom/facebook/react/animated/SpringAnimation$PhysicsState;)D
    .locals 4

    .line 109
    iget-wide v0, p0, Lcom/facebook/react/animated/SpringAnimation;->mEndValue:D

    iget-wide v2, p1, Lcom/facebook/react/animated/SpringAnimation$PhysicsState;->position:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private isAtRest()Z
    .locals 4

    .line 118
    iget-object v0, p0, Lcom/facebook/react/animated/SpringAnimation;->mCurrentState:Lcom/facebook/react/animated/SpringAnimation$PhysicsState;

    iget-wide v0, v0, Lcom/facebook/react/animated/SpringAnimation$PhysicsState;->velocity:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/react/animated/SpringAnimation;->mRestSpeedThreshold:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/react/animated/SpringAnimation;->mCurrentState:Lcom/facebook/react/animated/SpringAnimation$PhysicsState;

    .line 119
    invoke-direct {p0, v0}, Lcom/facebook/react/animated/SpringAnimation;->getDisplacementDistanceForState(Lcom/facebook/react/animated/SpringAnimation$PhysicsState;)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/react/animated/SpringAnimation;->mDisplacementFromRestThreshold:D

    cmpg-double v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/facebook/react/animated/SpringAnimation;->mSpringStiffness:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isOvershooting()Z
    .locals 4

    .line 129
    iget-wide v0, p0, Lcom/facebook/react/animated/SpringAnimation;->mSpringStiffness:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    iget-wide v0, p0, Lcom/facebook/react/animated/SpringAnimation;->mStartValue:D

    iget-wide v2, p0, Lcom/facebook/react/animated/SpringAnimation;->mEndValue:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/animated/SpringAnimation;->mCurrentState:Lcom/facebook/react/animated/SpringAnimation$PhysicsState;

    iget-wide v0, v0, Lcom/facebook/react/animated/SpringAnimation$PhysicsState;->position:D

    iget-wide v2, p0, Lcom/facebook/react/animated/SpringAnimation;->mEndValue:D

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_1

    :cond_0
    iget-wide v0, p0, Lcom/facebook/react/animated/SpringAnimation;->mStartValue:D

    iget-wide v2, p0, Lcom/facebook/react/animated/SpringAnimation;->mEndValue:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/react/animated/SpringAnimation;->mCurrentState:Lcom/facebook/react/animated/SpringAnimation$PhysicsState;

    iget-wide v0, v0, Lcom/facebook/react/animated/SpringAnimation$PhysicsState;->position:D

    iget-wide v2, p0, Lcom/facebook/react/animated/SpringAnimation;->mEndValue:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public resetConfig(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 3

    const-string v0, "stiffness"

    .line 60
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/react/animated/SpringAnimation;->mSpringStiffness:D

    const-string v0, "damping"

    .line 61
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/react/animated/SpringAnimation;->mSpringDamping:D

    const-string v0, "mass"

    .line 62
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/react/animated/SpringAnimation;->mSpringMass:D

    .line 63
    iget-object v0, p0, Lcom/facebook/react/animated/SpringAnimation;->mCurrentState:Lcom/facebook/react/animated/SpringAnimation$PhysicsState;

    iget-wide v0, v0, Lcom/facebook/react/animated/SpringAnimation$PhysicsState;->velocity:D

    iput-wide v0, p0, Lcom/facebook/react/animated/SpringAnimation;->mInitialVelocity:D

    const-string/jumbo v0, "toValue"

    .line 64
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/react/animated/SpringAnimation;->mEndValue:D

    const-string v0, "restSpeedThreshold"

    .line 65
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/react/animated/SpringAnimation;->mRestSpeedThreshold:D

    const-string v0, "restDisplacementThreshold"

    .line 66
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/react/animated/SpringAnimation;->mDisplacementFromRestThreshold:D

    const-string v0, "overshootClamping"

    .line 67
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/react/animated/SpringAnimation;->mOvershootClampingEnabled:Z

    const-string v0, "iterations"

    .line 68
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    iput p1, p0, Lcom/facebook/react/animated/SpringAnimation;->mIterations:I

    const/4 v0, 0x0

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v0

    .line 69
    :goto_1
    iput-boolean v2, p0, Lcom/facebook/react/animated/SpringAnimation;->mHasFinished:Z

    .line 70
    iput v0, p0, Lcom/facebook/react/animated/SpringAnimation;->mCurrentLoop:I

    const-wide/16 v1, 0x0

    .line 71
    iput-wide v1, p0, Lcom/facebook/react/animated/SpringAnimation;->mTimeAccumulator:D

    .line 72
    iput-boolean v0, p0, Lcom/facebook/react/animated/SpringAnimation;->mSpringStarted:Z

    return-void
.end method

.method public runAnimationStep(J)V
    .locals 6

    const-wide/32 v0, 0xf4240

    .line 77
    div-long/2addr p1, v0

    .line 78
    iget-boolean v0, p0, Lcom/facebook/react/animated/SpringAnimation;->mSpringStarted:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 79
    iget v0, p0, Lcom/facebook/react/animated/SpringAnimation;->mCurrentLoop:I

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/facebook/react/animated/SpringAnimation;->mAnimatedValue:Lcom/facebook/react/animated/ValueAnimatedNode;

    iget-wide v2, v0, Lcom/facebook/react/animated/ValueAnimatedNode;->mValue:D

    iput-wide v2, p0, Lcom/facebook/react/animated/SpringAnimation;->mOriginalValue:D

    .line 81
    iput v1, p0, Lcom/facebook/react/animated/SpringAnimation;->mCurrentLoop:I

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/animated/SpringAnimation;->mCurrentState:Lcom/facebook/react/animated/SpringAnimation$PhysicsState;

    iget-object v2, p0, Lcom/facebook/react/animated/SpringAnimation;->mAnimatedValue:Lcom/facebook/react/animated/ValueAnimatedNode;

    iget-wide v2, v2, Lcom/facebook/react/animated/ValueAnimatedNode;->mValue:D

    iput-wide v2, v0, Lcom/facebook/react/animated/SpringAnimation$PhysicsState;->position:D

    iput-wide v2, p0, Lcom/facebook/react/animated/SpringAnimation;->mStartValue:D

    .line 84
    iput-wide p1, p0, Lcom/facebook/react/animated/SpringAnimation;->mLastTime:J

    const-wide/16 v2, 0x0

    .line 85
    iput-wide v2, p0, Lcom/facebook/react/animated/SpringAnimation;->mTimeAccumulator:D

    .line 86
    iput-boolean v1, p0, Lcom/facebook/react/animated/SpringAnimation;->mSpringStarted:Z

    .line 88
    :cond_1
    iget-wide v2, p0, Lcom/facebook/react/animated/SpringAnimation;->mLastTime:J

    sub-long v2, p1, v2

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    invoke-direct {p0, v2, v3}, Lcom/facebook/react/animated/SpringAnimation;->advance(D)V

    .line 89
    iput-wide p1, p0, Lcom/facebook/react/animated/SpringAnimation;->mLastTime:J

    .line 90
    iget-object p1, p0, Lcom/facebook/react/animated/SpringAnimation;->mAnimatedValue:Lcom/facebook/react/animated/ValueAnimatedNode;

    iget-object p2, p0, Lcom/facebook/react/animated/SpringAnimation;->mCurrentState:Lcom/facebook/react/animated/SpringAnimation$PhysicsState;

    iget-wide v2, p2, Lcom/facebook/react/animated/SpringAnimation$PhysicsState;->position:D

    iput-wide v2, p1, Lcom/facebook/react/animated/ValueAnimatedNode;->mValue:D

    .line 91
    invoke-direct {p0}, Lcom/facebook/react/animated/SpringAnimation;->isAtRest()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 92
    iget p1, p0, Lcom/facebook/react/animated/SpringAnimation;->mIterations:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_3

    iget p2, p0, Lcom/facebook/react/animated/SpringAnimation;->mCurrentLoop:I

    if-ge p2, p1, :cond_2

    goto :goto_0

    .line 97
    :cond_2
    iput-boolean v1, p0, Lcom/facebook/react/animated/SpringAnimation;->mHasFinished:Z

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 93
    iput-boolean p1, p0, Lcom/facebook/react/animated/SpringAnimation;->mSpringStarted:Z

    .line 94
    iget-object p1, p0, Lcom/facebook/react/animated/SpringAnimation;->mAnimatedValue:Lcom/facebook/react/animated/ValueAnimatedNode;

    iget-wide v2, p0, Lcom/facebook/react/animated/SpringAnimation;->mOriginalValue:D

    iput-wide v2, p1, Lcom/facebook/react/animated/ValueAnimatedNode;->mValue:D

    .line 95
    iget p1, p0, Lcom/facebook/react/animated/SpringAnimation;->mCurrentLoop:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/facebook/react/animated/SpringAnimation;->mCurrentLoop:I

    :cond_4
    :goto_1
    return-void
.end method
