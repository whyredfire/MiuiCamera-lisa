.class public final enum Lcom/xiaomi/magicvideoskyplayer/enums/PlayerPlaybackState;
.super Ljava/lang/Enum;
.source "PlayerPlaybackState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/magicvideoskyplayer/enums/PlayerPlaybackState;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/xiaomi/magicvideoskyplayer/enums/PlayerPlaybackState;

.field public static final enum PlayerPlaybackStateBuffering:Lcom/xiaomi/magicvideoskyplayer/enums/PlayerPlaybackState;

.field public static final enum PlayerPlaybackStateEnded:Lcom/xiaomi/magicvideoskyplayer/enums/PlayerPlaybackState;

.field public static final enum PlayerPlaybackStateIdle:Lcom/xiaomi/magicvideoskyplayer/enums/PlayerPlaybackState;

.field public static final enum PlayerPlaybackStatePaused:Lcom/xiaomi/magicvideoskyplayer/enums/PlayerPlaybackState;

.field public static final enum PlayerPlaybackStatePlaying:Lcom/xiaomi/magicvideoskyplayer/enums/PlayerPlaybackState;

.field public static final enum PlayerPlaybackStateResumed:Lcom/xiaomi/magicvideoskyplayer/enums/PlayerPlaybackState;

.field public static final enum PlayerPlaybackStateStarted:Lcom/xiaomi/magicvideoskyplayer/enums/PlayerPlaybackState;

.field public static final enum PlayerPlaybackStateStoped:Lcom/xiaomi/magicvideoskyplayer/enums/PlayerPlaybackState;


# instance fields
.field public nCode:I


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/xiaomi/magicvideoskyplayer/enums/PlayerPlaybackState;

    const/4 v1, 0x0

    const-string v2, "PlayerPlaybackStateIdle"

    invoke-direct {v0, v2, v1, v1}, Lcom/xiaomi/magicvideoskyplayer/enums/PlayerPlaybackState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/magicvideoskyplayer/enums/PlayerPlaybackState;->PlayerPlaybackStateIdle:Lcom/xiaomi/magicvideoskyplayer/enums/PlayerPlaybackState;

    .line 2
    new-instance v0, Lcom/xiaomi/magicvideoskyplayer/enums/PlayerPlaybackState;

    const/4 v2, 0x1

    const-string v3, "PlayerPlaybackStatePlaying"

    invoke-direct {v0, v3, v2, v2}, Lcom/xiaomi/magicvideoskyplayer/enums/PlayerPlaybackState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/magicvideoskyplayer/enums/PlayerPlaybackState;->PlayerPlaybackStatePlaying:Lcom/xiaomi/magicvideoskyplayer/enums/PlayerPlaybackState;

    .line 3
    new-instance v0, Lcom/xiaomi/magicvideoskyplayer/enums/PlayerPlaybackState;

    const/4 v3, 0x2

    const-string v4, "PlayerPlaybackStatePaused"

    invoke-direct {v0, v4, v3, v3}, Lcom/xiaomi/magicvideoskyplayer/enums/PlayerPlaybackState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/magicvideoskyplayer/enums/PlayerPlaybackState;->PlayerPlaybackStatePaused:Lcom/xiaomi/magicvideoskyplayer/enums/PlayerPlaybackState;

    .line 4
    new-instance v0, Lcom/xiaomi/magicvideoskyplayer/enums/PlayerPlaybackState;

    const/4 v4, 0x3

    const-string v5, "PlayerPlaybackStateResumed"

    invoke-direct {v0, v5, v4, v4}, Lcom/xiaomi/magicvideoskyplayer/enums/PlayerPlaybackState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/magicvideoskyplayer/enums/PlayerPlaybackState;->PlayerPlaybackStateResumed:Lcom/xiaomi/magicvideoskyplayer/enums/PlayerPlaybackState;

    .line 5
    new-instance v0, Lcom/xiaomi/magicvideoskyplayer/enums/PlayerPlaybackState;

    const/4 v5, 0x4

    const-string v6, "PlayerPlaybackStateStarted"

    invoke-direct {v0, v6, v5, v5}, Lcom/xiaomi/magicvideoskyplayer/enums/PlayerPlaybackState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/magicvideoskyplayer/enums/PlayerPlaybackState;->PlayerPlaybackStateStarted:Lcom/xiaomi/magicvideoskyplayer/enums/PlayerPlaybackState;

    .line 6
    new-instance v0, Lcom/xiaomi/magicvideoskyplayer/enums/PlayerPlaybackState;

    const/4 v6, 0x5

    const-string v7, "PlayerPlaybackStateStoped"

    invoke-direct {v0, v7, v6, v6}, Lcom/xiaomi/magicvideoskyplayer/enums/PlayerPlaybackState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/magicvideoskyplayer/enums/PlayerPlaybackState;->PlayerPlaybackStateStoped:Lcom/xiaomi/magicvideoskyplayer/enums/PlayerPlaybackState;

    .line 7
    new-instance v0, Lcom/xiaomi/magicvideoskyplayer/enums/PlayerPlaybackState;

    const/4 v7, 0x6

    const-string v8, "PlayerPlaybackStateBuffering"

    invoke-direct {v0, v8, v7, v7}, Lcom/xiaomi/magicvideoskyplayer/enums/PlayerPlaybackState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/magicvideoskyplayer/enums/PlayerPlaybackState;->PlayerPlaybackStateBuffering:Lcom/xiaomi/magicvideoskyplayer/enums/PlayerPlaybackState;

    .line 8
    new-instance v0, Lcom/xiaomi/magicvideoskyplayer/enums/PlayerPlaybackState;

    const/4 v8, 0x7

    const-string v9, "PlayerPlaybackStateEnded"

    invoke-direct {v0, v9, v8, v8}, Lcom/xiaomi/magicvideoskyplayer/enums/PlayerPlaybackState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/magicvideoskyplayer/enums/PlayerPlaybackState;->PlayerPlaybackStateEnded:Lcom/xiaomi/magicvideoskyplayer/enums/PlayerPlaybackState;

    const/16 v9, 0x8

    new-array v9, v9, [Lcom/xiaomi/magicvideoskyplayer/enums/PlayerPlaybackState;

    .line 9
    sget-object v10, Lcom/xiaomi/magicvideoskyplayer/enums/PlayerPlaybackState;->PlayerPlaybackStateIdle:Lcom/xiaomi/magicvideoskyplayer/enums/PlayerPlaybackState;

    aput-object v10, v9, v1

    sget-object v1, Lcom/xiaomi/magicvideoskyplayer/enums/PlayerPlaybackState;->PlayerPlaybackStatePlaying:Lcom/xiaomi/magicvideoskyplayer/enums/PlayerPlaybackState;

    aput-object v1, v9, v2

    sget-object v1, Lcom/xiaomi/magicvideoskyplayer/enums/PlayerPlaybackState;->PlayerPlaybackStatePaused:Lcom/xiaomi/magicvideoskyplayer/enums/PlayerPlaybackState;

    aput-object v1, v9, v3

    sget-object v1, Lcom/xiaomi/magicvideoskyplayer/enums/PlayerPlaybackState;->PlayerPlaybackStateResumed:Lcom/xiaomi/magicvideoskyplayer/enums/PlayerPlaybackState;

    aput-object v1, v9, v4

    sget-object v1, Lcom/xiaomi/magicvideoskyplayer/enums/PlayerPlaybackState;->PlayerPlaybackStateStarted:Lcom/xiaomi/magicvideoskyplayer/enums/PlayerPlaybackState;

    aput-object v1, v9, v5

    sget-object v1, Lcom/xiaomi/magicvideoskyplayer/enums/PlayerPlaybackState;->PlayerPlaybackStateStoped:Lcom/xiaomi/magicvideoskyplayer/enums/PlayerPlaybackState;

    aput-object v1, v9, v6

    sget-object v1, Lcom/xiaomi/magicvideoskyplayer/enums/PlayerPlaybackState;->PlayerPlaybackStateBuffering:Lcom/xiaomi/magicvideoskyplayer/enums/PlayerPlaybackState;

    aput-object v1, v9, v7

    aput-object v0, v9, v8

    sput-object v9, Lcom/xiaomi/magicvideoskyplayer/enums/PlayerPlaybackState;->$VALUES:[Lcom/xiaomi/magicvideoskyplayer/enums/PlayerPlaybackState;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/xiaomi/magicvideoskyplayer/enums/PlayerPlaybackState;->nCode:I

    return-void
.end method

.method public static int2enum(I)Lcom/xiaomi/magicvideoskyplayer/enums/PlayerPlaybackState;
    .locals 6

    .line 1
    sget-object v0, Lcom/xiaomi/magicvideoskyplayer/enums/PlayerPlaybackState;->PlayerPlaybackStateIdle:Lcom/xiaomi/magicvideoskyplayer/enums/PlayerPlaybackState;

    .line 2
    invoke-static {}, Lcom/xiaomi/magicvideoskyplayer/enums/PlayerPlaybackState;->values()[Lcom/xiaomi/magicvideoskyplayer/enums/PlayerPlaybackState;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 3
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-ne v5, p0, :cond_0

    move-object v0, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/magicvideoskyplayer/enums/PlayerPlaybackState;
    .locals 1

    .line 1
    const-class v0, Lcom/xiaomi/magicvideoskyplayer/enums/PlayerPlaybackState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/magicvideoskyplayer/enums/PlayerPlaybackState;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/magicvideoskyplayer/enums/PlayerPlaybackState;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/magicvideoskyplayer/enums/PlayerPlaybackState;->$VALUES:[Lcom/xiaomi/magicvideoskyplayer/enums/PlayerPlaybackState;

    invoke-virtual {v0}, [Lcom/xiaomi/magicvideoskyplayer/enums/PlayerPlaybackState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/magicvideoskyplayer/enums/PlayerPlaybackState;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget p0, p0, Lcom/xiaomi/magicvideoskyplayer/enums/PlayerPlaybackState;->nCode:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
