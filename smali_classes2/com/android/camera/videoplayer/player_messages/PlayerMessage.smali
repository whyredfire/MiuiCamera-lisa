.class public abstract Lcom/android/camera/videoplayer/player_messages/PlayerMessage;
.super Ljava/lang/Object;
.source "PlayerMessage.java"

# interfaces
.implements Lcom/android/camera/videoplayer/player_messages/Message;


# static fields
.field public static final SHOW_LOGS:Z

.field public static final TAG:Ljava/lang/String; = "PlayerMessage"


# instance fields
.field public final mCallback:Lcom/android/camera/videoplayer/manager/VideoPlayerManagerCallback;

.field public final mCurrentPlayerRef:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Lcom/android/camera/videoplayer/ui/VideoPlayerView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/camera/videoplayer/Config;->SHOW_LOGS:Z

    sput-boolean v0, Lcom/android/camera/videoplayer/player_messages/PlayerMessage;->SHOW_LOGS:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/videoplayer/ui/VideoPlayerView;Lcom/android/camera/videoplayer/manager/VideoPlayerManagerCallback;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/videoplayer/player_messages/PlayerMessage;->mCurrentPlayerRef:Ljava/lang/ref/Reference;

    .line 3
    iput-object p2, p0, Lcom/android/camera/videoplayer/player_messages/PlayerMessage;->mCallback:Lcom/android/camera/videoplayer/manager/VideoPlayerManagerCallback;

    return-void
.end method


# virtual methods
.method public final getCurrentState()Lcom/android/camera/videoplayer/PlayerMessageState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/videoplayer/player_messages/PlayerMessage;->mCallback:Lcom/android/camera/videoplayer/manager/VideoPlayerManagerCallback;

    invoke-interface {p0}, Lcom/android/camera/videoplayer/manager/VideoPlayerManagerCallback;->getCurrentPlayerState()Lcom/android/camera/videoplayer/PlayerMessageState;

    move-result-object p0

    return-object p0
.end method

.method public final messageFinished()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/videoplayer/player_messages/PlayerMessage;->mCallback:Lcom/android/camera/videoplayer/manager/VideoPlayerManagerCallback;

    iget-object v1, p0, Lcom/android/camera/videoplayer/player_messages/PlayerMessage;->mCurrentPlayerRef:Ljava/lang/ref/Reference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/videoplayer/ui/VideoPlayerView;

    invoke-virtual {p0}, Lcom/android/camera/videoplayer/player_messages/PlayerMessage;->stateAfter()Lcom/android/camera/videoplayer/PlayerMessageState;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/android/camera/videoplayer/manager/VideoPlayerManagerCallback;->setVideoPlayerState(Lcom/android/camera/videoplayer/ui/VideoPlayerView;Lcom/android/camera/videoplayer/PlayerMessageState;)V

    return-void
.end method

.method public abstract performAction(Ljava/lang/ref/Reference;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/Reference<",
            "Lcom/android/camera/videoplayer/ui/VideoPlayerView;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public final polledFromQueue()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/videoplayer/player_messages/PlayerMessage;->mCallback:Lcom/android/camera/videoplayer/manager/VideoPlayerManagerCallback;

    iget-object v1, p0, Lcom/android/camera/videoplayer/player_messages/PlayerMessage;->mCurrentPlayerRef:Ljava/lang/ref/Reference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/videoplayer/ui/VideoPlayerView;

    invoke-virtual {p0}, Lcom/android/camera/videoplayer/player_messages/PlayerMessage;->stateBefore()Lcom/android/camera/videoplayer/PlayerMessageState;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/android/camera/videoplayer/manager/VideoPlayerManagerCallback;->setVideoPlayerState(Lcom/android/camera/videoplayer/ui/VideoPlayerView;Lcom/android/camera/videoplayer/PlayerMessageState;)V

    return-void
.end method

.method public final runMessage()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    sget-boolean v0, Lcom/android/camera/videoplayer/player_messages/PlayerMessage;->SHOW_LOGS:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/videoplayer/player_messages/PlayerMessage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> runMessage, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/videoplayer/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/videoplayer/player_messages/PlayerMessage;->mCurrentPlayerRef:Ljava/lang/ref/Reference;

    invoke-virtual {p0, v0}, Lcom/android/camera/videoplayer/player_messages/PlayerMessage;->performAction(Ljava/lang/ref/Reference;)V

    .line 3
    sget-boolean v0, Lcom/android/camera/videoplayer/player_messages/PlayerMessage;->SHOW_LOGS:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/camera/videoplayer/player_messages/PlayerMessage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<< runMessage, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/videoplayer/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public abstract stateAfter()Lcom/android/camera/videoplayer/PlayerMessageState;
.end method

.method public abstract stateBefore()Lcom/android/camera/videoplayer/PlayerMessageState;
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
