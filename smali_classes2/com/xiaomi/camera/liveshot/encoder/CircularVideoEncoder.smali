.class public Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;
.super Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;
.source "CircularVideoEncoder.java"


# static fields
.field public static final DEBUG_FPS:Z = true

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mFirstPresentationTimeUs:J

.field public mFpsOutputInterval:I

.field public mFrameStartTimestampNs:J

.field public mFramesRendered:I

.field public mInputSurface:Landroid/view/Surface;

.field public mLastPresentationTimeUs:J

.field public mMinFrameRenderPeriodNs:J

.field public mNextFrameTimestampNs:J

.field public final mPreviewHeight:I

.field public final mPreviewWidth:I

.field public mRenderThread:Lcom/xiaomi/camera/liveshot/gles/RenderThread;

.field public mSharedEGLContext:Landroid/opengl/EGLContext;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/media/MediaFormat;Landroid/opengl/EGLContext;JJLjava/util/Queue;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaFormat;",
            "Landroid/opengl/EGLContext;",
            "JJ",
            "Ljava/util/Queue<",
            "Lcom/xiaomi/camera/liveshot/LivePhotoResult;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p3

    move-wide v4, p5

    move-object v6, p7

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;-><init>(Landroid/media/MediaFormat;JJLjava/util/Queue;)V

    const-wide/16 p3, 0x0

    .line 2
    iput-wide p3, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;->mFrameStartTimestampNs:J

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;->mFramesRendered:I

    const/16 p1, 0x1f4

    .line 4
    iput p1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;->mFpsOutputInterval:I

    .line 5
    iget-object p1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->mDesiredMediaFormat:Landroid/media/MediaFormat;

    const-string p3, "i-frame-interval"

    invoke-virtual {p1, p3}, Landroid/media/MediaFormat;->getFloat(Ljava/lang/String;)F

    move-result p1

    .line 6
    sget-object p3, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide p4, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->mBufferingDurationUs:J

    invoke-virtual {p3, p4, p5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p3

    const/high16 p5, 0x447a0000    # 1000.0f

    mul-float/2addr p1, p5

    const/high16 p5, 0x40000000    # 2.0f

    mul-float/2addr p1, p5

    long-to-float p5, p3

    cmpg-float p5, p5, p1

    if-ltz p5, :cond_1

    if-eqz p2, :cond_0

    .line 7
    iput-object p2, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;->mSharedEGLContext:Landroid/opengl/EGLContext;

    .line 8
    iget-object p1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->mDesiredMediaFormat:Landroid/media/MediaFormat;

    const-string p2, "width"

    invoke-virtual {p1, p2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    .line 9
    iget-object p2, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->mDesiredMediaFormat:Landroid/media/MediaFormat;

    const-string p3, "height"

    invoke-virtual {p2, p3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    .line 10
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p3

    iput p3, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;->mPreviewWidth:I

    .line 11
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;->mPreviewHeight:I

    .line 12
    :try_start_0
    iget-object p1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->mDesiredMediaFormat:Landroid/media/MediaFormat;

    const-string p2, "mime"

    invoke-virtual {p1, p2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-static {p1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->mIsInitialized:Z

    return-void

    :catch_0
    move-exception p0

    .line 15
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to configure MediaCodec: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The shared EGLContext must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 17
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Requested time span is too short: "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " vs. "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public declared-synchronized doQuit()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;->TAG:Ljava/lang/String;

    const-string v1, "doQuit(): E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;->mRenderThread:Lcom/xiaomi/camera/liveshot/gles/RenderThread;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;->mRenderThread:Lcom/xiaomi/camera/liveshot/gles/RenderThread;

    invoke-virtual {v0}, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->quit()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;->mRenderThread:Lcom/xiaomi/camera/liveshot/gles/RenderThread;

    .line 5
    :cond_0
    sget-object v0, Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;->TAG:Ljava/lang/String;

    const-string v1, "doQuit(): X"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public doRelease()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->mIsInitialized:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-super {p0}, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->doRelease()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->mIsInitialized:Z

    return-void
.end method

.method public doStart()V
    .locals 10

    .line 1
    sget-object v0, Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;->TAG:Ljava/lang/String;

    const-string v1, "start(): E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->mIsInitialized:Z

    if-nez v0, :cond_0

    .line 3
    sget-object p0, Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;->TAG:Ljava/lang/String;

    const-string v0, "start(): not initialized yet"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->mIsBuffering:Z

    if-eqz v0, :cond_1

    .line 5
    sget-object p0, Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;->TAG:Ljava/lang/String;

    const-string v0, "start(): encoder is already running"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->mCyclicBuffer:Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;

    invoke-virtual {v0}, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->clear()V

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->mDesiredMediaFormat:Landroid/media/MediaFormat;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 8
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;->mInputSurface:Landroid/view/Surface;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    new-instance v0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;

    sget-object v4, Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;->TAG:Ljava/lang/String;

    iget v5, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;->mPreviewWidth:I

    iget v6, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;->mPreviewHeight:I

    iget-object v7, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;->mSharedEGLContext:Landroid/opengl/EGLContext;

    iget-object v8, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;->mInputSurface:Landroid/view/Surface;

    const/4 v9, 0x1

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/xiaomi/camera/liveshot/gles/RenderThread;-><init>(Ljava/lang/String;IILandroid/opengl/EGLContext;Landroid/view/Surface;Z)V

    iput-object v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;->mRenderThread:Lcom/xiaomi/camera/liveshot/gles/RenderThread;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 11
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;->mRenderThread:Lcom/xiaomi/camera/liveshot/gles/RenderThread;

    invoke-virtual {v0}, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->waitUntilReady()V

    .line 12
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    new-instance v1, Landroid/os/Handler;

    iget-object v3, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->mEncodingThread:Lcom/xiaomi/camera/liveshot/util/BackgroundWorker;

    invoke-virtual {v3}, Lcom/xiaomi/camera/liveshot/util/BackgroundWorker;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p0, v1}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V

    const-wide/16 v0, 0x0

    .line 13
    iput-wide v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->mCurrentPresentationTimeUs:J

    .line 14
    iput-wide v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;->mFirstPresentationTimeUs:J

    .line 15
    iput-wide v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;->mLastPresentationTimeUs:J

    .line 16
    invoke-super {p0}, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->doStart()V

    .line 17
    iput-boolean v2, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->mIsBuffering:Z

    .line 18
    sget-object p0, Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;->TAG:Ljava/lang/String;

    const-string v0, "start(): X"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    .line 19
    sget-object v0, Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configure failed due to codec error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public declared-synchronized doStop()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;->TAG:Ljava/lang/String;

    const-string v1, "stop(): E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->mIsInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->mIsBuffering:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v0, :cond_1

    .line 5
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 6
    :try_start_2
    iput-boolean v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->mIsBuffering:Z

    .line 7
    invoke-virtual {p0}, Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;->doQuit()V

    .line 8
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;->mInputSurface:Landroid/view/Surface;

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;->mInputSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;->mInputSurface:Landroid/view/Surface;

    .line 11
    :cond_2
    invoke-super {p0}, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->doStop()V

    .line 12
    sget-object v0, Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;->TAG:Ljava/lang/String;

    const-string v1, "clear pending snapshot requests: E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iget-object v1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->mSnapshots:Ljava/util/List;

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 15
    :try_start_3
    iget-object v2, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->mSnapshots:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 16
    iget-object v2, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->mSnapshots:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 17
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 18
    :try_start_4
    sget-object v1, Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cleared "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " snapshot requests."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 20
    :try_start_5
    invoke-virtual {v1}, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;->putEos()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 21
    :try_start_6
    sget-object v2, Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to putEos: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 22
    :cond_3
    sget-object v0, Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;->TAG:Ljava/lang/String;

    const-string v1, "clear pending snapshot requests: X"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    sget-object v0, Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;->TAG:Ljava/lang/String;

    const-string v1, "stop(): X"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 24
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 25
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNextPresentationTimeUs(J)J
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;->mFirstPresentationTimeUs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    iput-wide p1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;->mFirstPresentationTimeUs:J

    return-wide v2

    :cond_0
    sub-long/2addr p1, v0

    .line 3
    iget-wide v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;->mLastPresentationTimeUs:J

    cmp-long v2, v0, p1

    if-ltz v2, :cond_1

    const-wide/16 p1, 0x25ab

    add-long/2addr v0, p1

    .line 4
    iput-wide v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;->mLastPresentationTimeUs:J

    return-wide v0

    .line 5
    :cond_1
    iput-wide p1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;->mLastPresentationTimeUs:J

    return-wide p1
.end method

.method public declared-synchronized onSurfaceTextureUpdated(Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;IZ)V
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->mIsInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->mIsBuffering:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;->mRenderThread:Lcom/xiaomi/camera/liveshot/gles/RenderThread;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_2

    .line 6
    monitor-exit p0

    return-void

    .line 7
    :cond_2
    :try_start_3
    iget-wide v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;->mMinFrameRenderPeriodNs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 8
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 9
    iget-wide v4, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;->mNextFrameTimestampNs:J

    cmp-long v4, v0, v4

    if-gez v4, :cond_3

    .line 10
    sget-object p1, Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;->TAG:Ljava/lang/String;

    const-string p2, "Dropping frame - fps reduction is active."

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 11
    monitor-exit p0

    return-void

    .line 12
    :cond_3
    :try_start_4
    iget-wide v4, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;->mNextFrameTimestampNs:J

    iget-wide v6, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;->mMinFrameRenderPeriodNs:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;->mNextFrameTimestampNs:J

    .line 13
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;->mNextFrameTimestampNs:J

    .line 14
    :cond_4
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;->mRenderThread:Lcom/xiaomi/camera/liveshot/gles/RenderThread;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->syncDraw(Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;IZ)V

    .line 15
    sget-object p1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    .line 16
    iget-wide v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;->mFrameStartTimestampNs:J

    cmp-long p3, v0, v2

    if-lez p3, :cond_5

    .line 17
    iget-wide v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;->mFrameStartTimestampNs:J

    sub-long v0, p1, v0

    .line 18
    iget p3, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;->mFramesRendered:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;->mFramesRendered:I

    .line 19
    iget v2, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;->mFpsOutputInterval:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_6

    mul-int/lit16 p3, p3, 0x3e8

    int-to-double v2, p3

    long-to-double v0, v0

    div-double/2addr v2, v0

    .line 20
    sget-object p3, Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSurfaceTextureUpdated(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    iput-wide p1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;->mFrameStartTimestampNs:J

    const/4 p1, 0x0

    .line 22
    iput p1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;->mFramesRendered:I

    goto :goto_0

    .line 23
    :cond_5
    iput-wide p1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;->mFrameStartTimestampNs:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 24
    :cond_6
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setCinematicEnable(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->mIsInitialized:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->mIsBuffering:Z

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object p0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;->mRenderThread:Lcom/xiaomi/camera/liveshot/gles/RenderThread;

    if-nez p0, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->setCinematicEnable(Z)V

    return-void
.end method

.method public declared-synchronized setFilterId(I)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->mIsInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->mIsBuffering:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;->mRenderThread:Lcom/xiaomi/camera/liveshot/gles/RenderThread;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_2

    .line 6
    monitor-exit p0

    return-void

    .line 7
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;->mRenderThread:Lcom/xiaomi/camera/liveshot/gles/RenderThread;

    invoke-virtual {v0, p1}, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->setFilterId(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setFpsReduction(F)V
    .locals 3

    .line 1
    sget-object v0, Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFpsReduction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    .line 2
    iput-wide v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;->mMinFrameRenderPeriodNs:J

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    long-to-float v0, v0

    div-float/2addr v0, p1

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;->mMinFrameRenderPeriodNs:J

    :goto_0
    return-void
.end method
