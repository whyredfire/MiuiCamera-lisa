.class public final enum Lcom/xiaomi/magicvideoskyplayer/Player$SurfaceGravity;
.super Ljava/lang/Enum;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/magicvideoskyplayer/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SurfaceGravity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/magicvideoskyplayer/Player$SurfaceGravity;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/xiaomi/magicvideoskyplayer/Player$SurfaceGravity;

.field public static final enum SurfaceGravityResizeAspect:Lcom/xiaomi/magicvideoskyplayer/Player$SurfaceGravity;

.field public static final enum SurfaceGravityResizeAspectFill:Lcom/xiaomi/magicvideoskyplayer/Player$SurfaceGravity;

.field public static final enum SurfaceGravityResizeAspectFit:Lcom/xiaomi/magicvideoskyplayer/Player$SurfaceGravity;


# instance fields
.field public code:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/xiaomi/magicvideoskyplayer/Player$SurfaceGravity;

    const/4 v1, 0x0

    const-string v2, "SurfaceGravityResizeAspect"

    invoke-direct {v0, v2, v1, v1}, Lcom/xiaomi/magicvideoskyplayer/Player$SurfaceGravity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/magicvideoskyplayer/Player$SurfaceGravity;->SurfaceGravityResizeAspect:Lcom/xiaomi/magicvideoskyplayer/Player$SurfaceGravity;

    .line 2
    new-instance v0, Lcom/xiaomi/magicvideoskyplayer/Player$SurfaceGravity;

    const/4 v2, 0x1

    const-string v3, "SurfaceGravityResizeAspectFit"

    invoke-direct {v0, v3, v2, v2}, Lcom/xiaomi/magicvideoskyplayer/Player$SurfaceGravity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/magicvideoskyplayer/Player$SurfaceGravity;->SurfaceGravityResizeAspectFit:Lcom/xiaomi/magicvideoskyplayer/Player$SurfaceGravity;

    .line 3
    new-instance v0, Lcom/xiaomi/magicvideoskyplayer/Player$SurfaceGravity;

    const/4 v3, 0x2

    const-string v4, "SurfaceGravityResizeAspectFill"

    invoke-direct {v0, v4, v3, v3}, Lcom/xiaomi/magicvideoskyplayer/Player$SurfaceGravity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/magicvideoskyplayer/Player$SurfaceGravity;->SurfaceGravityResizeAspectFill:Lcom/xiaomi/magicvideoskyplayer/Player$SurfaceGravity;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/xiaomi/magicvideoskyplayer/Player$SurfaceGravity;

    .line 4
    sget-object v5, Lcom/xiaomi/magicvideoskyplayer/Player$SurfaceGravity;->SurfaceGravityResizeAspect:Lcom/xiaomi/magicvideoskyplayer/Player$SurfaceGravity;

    aput-object v5, v4, v1

    sget-object v1, Lcom/xiaomi/magicvideoskyplayer/Player$SurfaceGravity;->SurfaceGravityResizeAspectFit:Lcom/xiaomi/magicvideoskyplayer/Player$SurfaceGravity;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/xiaomi/magicvideoskyplayer/Player$SurfaceGravity;->$VALUES:[Lcom/xiaomi/magicvideoskyplayer/Player$SurfaceGravity;

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
    iput p3, p0, Lcom/xiaomi/magicvideoskyplayer/Player$SurfaceGravity;->code:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/magicvideoskyplayer/Player$SurfaceGravity;
    .locals 1

    .line 1
    const-class v0, Lcom/xiaomi/magicvideoskyplayer/Player$SurfaceGravity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/magicvideoskyplayer/Player$SurfaceGravity;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/magicvideoskyplayer/Player$SurfaceGravity;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/magicvideoskyplayer/Player$SurfaceGravity;->$VALUES:[Lcom/xiaomi/magicvideoskyplayer/Player$SurfaceGravity;

    invoke-virtual {v0}, [Lcom/xiaomi/magicvideoskyplayer/Player$SurfaceGravity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/magicvideoskyplayer/Player$SurfaceGravity;

    return-object v0
.end method


# virtual methods
.method public toInt()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/xiaomi/magicvideoskyplayer/Player$SurfaceGravity;->code:I

    return p0
.end method
