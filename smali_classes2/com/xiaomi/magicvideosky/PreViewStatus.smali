.class public final enum Lcom/xiaomi/magicvideosky/PreViewStatus;
.super Ljava/lang/Enum;
.source "PreViewStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/magicvideosky/PreViewStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/xiaomi/magicvideosky/PreViewStatus;

.field public static final enum PreViewPaused:Lcom/xiaomi/magicvideosky/PreViewStatus;

.field public static final enum PreViewPlaying:Lcom/xiaomi/magicvideosky/PreViewStatus;

.field public static final enum PreViewStopped:Lcom/xiaomi/magicvideosky/PreViewStatus;


# instance fields
.field public nCode:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/xiaomi/magicvideosky/PreViewStatus;

    const/4 v1, 0x0

    const-string v2, "PreViewStopped"

    invoke-direct {v0, v2, v1, v1}, Lcom/xiaomi/magicvideosky/PreViewStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/magicvideosky/PreViewStatus;->PreViewStopped:Lcom/xiaomi/magicvideosky/PreViewStatus;

    .line 2
    new-instance v0, Lcom/xiaomi/magicvideosky/PreViewStatus;

    const/4 v2, 0x1

    const-string v3, "PreViewPlaying"

    invoke-direct {v0, v3, v2, v2}, Lcom/xiaomi/magicvideosky/PreViewStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/magicvideosky/PreViewStatus;->PreViewPlaying:Lcom/xiaomi/magicvideosky/PreViewStatus;

    .line 3
    new-instance v0, Lcom/xiaomi/magicvideosky/PreViewStatus;

    const/4 v3, 0x2

    const-string v4, "PreViewPaused"

    invoke-direct {v0, v4, v3, v3}, Lcom/xiaomi/magicvideosky/PreViewStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/magicvideosky/PreViewStatus;->PreViewPaused:Lcom/xiaomi/magicvideosky/PreViewStatus;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/xiaomi/magicvideosky/PreViewStatus;

    .line 4
    sget-object v5, Lcom/xiaomi/magicvideosky/PreViewStatus;->PreViewStopped:Lcom/xiaomi/magicvideosky/PreViewStatus;

    aput-object v5, v4, v1

    sget-object v1, Lcom/xiaomi/magicvideosky/PreViewStatus;->PreViewPlaying:Lcom/xiaomi/magicvideosky/PreViewStatus;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/xiaomi/magicvideosky/PreViewStatus;->$VALUES:[Lcom/xiaomi/magicvideosky/PreViewStatus;

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
    iput p3, p0, Lcom/xiaomi/magicvideosky/PreViewStatus;->nCode:I

    return-void
.end method

.method public static int2enum(I)Lcom/xiaomi/magicvideosky/PreViewStatus;
    .locals 6

    .line 1
    sget-object v0, Lcom/xiaomi/magicvideosky/PreViewStatus;->PreViewStopped:Lcom/xiaomi/magicvideosky/PreViewStatus;

    .line 2
    invoke-static {}, Lcom/xiaomi/magicvideosky/PreViewStatus;->values()[Lcom/xiaomi/magicvideosky/PreViewStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/magicvideosky/PreViewStatus;
    .locals 1

    .line 1
    const-class v0, Lcom/xiaomi/magicvideosky/PreViewStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/magicvideosky/PreViewStatus;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/magicvideosky/PreViewStatus;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/magicvideosky/PreViewStatus;->$VALUES:[Lcom/xiaomi/magicvideosky/PreViewStatus;

    invoke-virtual {v0}, [Lcom/xiaomi/magicvideosky/PreViewStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/magicvideosky/PreViewStatus;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget p0, p0, Lcom/xiaomi/magicvideosky/PreViewStatus;->nCode:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
