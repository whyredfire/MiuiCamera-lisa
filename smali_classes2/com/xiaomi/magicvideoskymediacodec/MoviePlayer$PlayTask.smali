.class public Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$PlayTask;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$PlayTask$LocalHandler;
    }
.end annotation


# static fields
.field public static final MSG_PLAY_STOPPED:I = 0x0

.field public static final MSG_PLAY_STOPPED_WITH_ERROR:I = 0x1


# instance fields
.field public mDoLoop:Z

.field public mError:Z

.field public mFeedback:Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$PlayerFeedback;

.field public mLocalHandler:Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$PlayTask$LocalHandler;

.field public mPlayer:Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer;

.field public final mStopLock:Ljava/lang/Object;

.field public mStopped:Z

.field public mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer;Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$PlayerFeedback;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$PlayTask;->mStopLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$PlayTask;->mStopped:Z

    .line 4
    iput-boolean v0, p0, Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$PlayTask;->mError:Z

    .line 5
    iput-object p1, p0, Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$PlayTask;->mPlayer:Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer;

    .line 6
    iput-object p2, p0, Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$PlayTask;->mFeedback:Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$PlayerFeedback;

    .line 7
    iput-boolean v0, p0, Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$PlayTask;->mError:Z

    .line 8
    new-instance p1, Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$PlayTask$LocalHandler;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$PlayTask$LocalHandler;-><init>(Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$1;)V

    iput-object p1, p0, Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$PlayTask;->mLocalHandler:Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$PlayTask$LocalHandler;

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "Movie Player"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$PlayTask;->mThread:Ljava/lang/Thread;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public frameReceived()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$PlayTask;->mPlayer:Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer;

    invoke-virtual {p0}, Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer;->frameReceived()V

    return-void
.end method

.method public requestStop()V
    .locals 1

    const-string v0, "playtask requestStop! "

    .line 1
    invoke-static {v0}, Lcom/xiaomi/magicvideoskymediacodec/Logg;->LogI(Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$PlayTask;->mPlayer:Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer;

    invoke-virtual {p0}, Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer;->requestStop()V

    return-void
.end method

.method public run()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$PlayTask;->mPlayer:Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer;

    invoke-virtual {v2}, Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer;->play()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    iget-object v2, p0, Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$PlayTask;->mStopLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3
    :try_start_1
    iput-boolean v1, p0, Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$PlayTask;->mStopped:Z

    .line 4
    iget-object v3, p0, Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$PlayTask;->mStopLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 5
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    iget-boolean v2, p0, Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$PlayTask;->mError:Z

    if-nez v2, :cond_0

    .line 7
    :goto_0
    iget-object v1, p0, Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$PlayTask;->mLocalHandler:Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$PlayTask$LocalHandler;

    iget-object p0, p0, Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$PlayTask;->mFeedback:Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$PlayerFeedback;

    invoke-virtual {v1, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$PlayTask;->mLocalHandler:Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$PlayTask$LocalHandler;

    iget-object p0, p0, Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$PlayTask;->mFeedback:Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$PlayerFeedback;

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 9
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    .line 10
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "find exception at mPlayer run:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/magicvideoskymediacodec/Logg;->LogE(Ljava/lang/String;)V

    .line 11
    iput-boolean v1, p0, Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$PlayTask;->mError:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 12
    iget-object v2, p0, Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$PlayTask;->mStopLock:Ljava/lang/Object;

    monitor-enter v2

    .line 13
    :try_start_4
    iput-boolean v1, p0, Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$PlayTask;->mStopped:Z

    .line 14
    iget-object v3, p0, Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$PlayTask;->mStopLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 15
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 16
    iget-boolean v2, p0, Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$PlayTask;->mError:Z

    if-nez v2, :cond_0

    goto :goto_0

    :goto_1
    return-void

    :catchall_2
    move-exception p0

    .line 17
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0

    .line 18
    :goto_2
    iget-object v3, p0, Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$PlayTask;->mStopLock:Ljava/lang/Object;

    monitor-enter v3

    .line 19
    :try_start_6
    iput-boolean v1, p0, Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$PlayTask;->mStopped:Z

    .line 20
    iget-object v4, p0, Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$PlayTask;->mStopLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 21
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 22
    iget-boolean v3, p0, Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$PlayTask;->mError:Z

    if-nez v3, :cond_1

    .line 23
    iget-object v1, p0, Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$PlayTask;->mLocalHandler:Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$PlayTask$LocalHandler;

    iget-object p0, p0, Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$PlayTask;->mFeedback:Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$PlayerFeedback;

    invoke-virtual {v1, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$PlayTask;->mLocalHandler:Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$PlayTask$LocalHandler;

    iget-object p0, p0, Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$PlayTask;->mFeedback:Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$PlayerFeedback;

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_3
    throw v2

    :catchall_3
    move-exception p0

    .line 25
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p0
.end method

.method public seekTo(JI)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$PlayTask;->mPlayer:Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer;->seekTo(JI)Z

    move-result p0

    return p0
.end method

.method public setLoopMode(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$PlayTask;->mDoLoop:Z

    .line 2
    iget-object p0, p0, Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$PlayTask;->mPlayer:Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer;

    invoke-virtual {p0, p1}, Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer;->setLoopMode(Z)V

    return-void
.end method

.method public waitForStop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$PlayTask;->mStopLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :catch_0
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$PlayTask;->mStopped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 3
    :try_start_1
    iget-object v1, p0, Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$PlayTask;->mStopLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4
    :cond_0
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
