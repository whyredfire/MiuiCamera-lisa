.class public Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;
.super Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;
.source "CircularAudioEncoder.java"


# static fields
.field public static DEBUG:Z = false

.field public static final NOTIFICATION_PERIOD_SAMPLE_COUNT:I = 0x5a0

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mAudioRecord:Landroid/media/AudioRecord;

.field public final mAudioRecordBufferSize:I

.field public final mChannelCount:I

.field public final mFrameBytes:I

.field public final mNotificationPeriod:I

.field public mSampleBuffer:[B

.field public mSampleCount:J

.field public final mSampleRate:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/media/MediaFormat;JJLjava/util/Queue;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaFormat;",
            "JJ",
            "Ljava/util/Queue<",
            "Lcom/xiaomi/camera/liveshot/LivePhotoResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;-><init>(Landroid/media/MediaFormat;JJLjava/util/Queue;)V

    .line 2
    iget-object p1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->mDesiredMediaFormat:Landroid/media/MediaFormat;

    const-string p2, "sample-rate"

    invoke-virtual {p1, p2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->mSampleRate:I

    .line 3
    iget-object p1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->mDesiredMediaFormat:Landroid/media/MediaFormat;

    const-string p2, "channel-count"

    invoke-virtual {p1, p2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->mChannelCount:I

    .line 4
    iget-object p1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->mDesiredMediaFormat:Landroid/media/MediaFormat;

    const-string p2, "pcm-encoding"

    invoke-virtual {p1, p2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    .line 5
    invoke-direct {p0, v4}, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->sampleBytes(I)I

    move-result p1

    iget p2, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->mChannelCount:I

    mul-int/2addr p1, p2

    iput p1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->mFrameBytes:I

    const/16 p2, 0x5a0

    .line 6
    iput p2, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->mNotificationPeriod:I

    mul-int/2addr p2, p1

    mul-int/lit8 p2, p2, 0x4

    .line 7
    iget p1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->mSampleRate:I

    .line 8
    invoke-direct {p0}, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->channelConfig()I

    move-result p3

    invoke-static {p1, p3, v4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result p1

    .line 9
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->mAudioRecordBufferSize:I

    .line 10
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->mSampleBuffer:[B

    .line 11
    new-instance p1, Landroid/media/AudioRecord;

    iget v2, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->mSampleRate:I

    .line 12
    invoke-direct {p0}, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->channelConfig()I

    move-result v3

    iget v5, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->mAudioRecordBufferSize:I

    const/4 v1, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object p1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->mAudioRecord:Landroid/media/AudioRecord;

    .line 13
    invoke-virtual {p1}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    const/4 p2, 0x1

    :try_start_0
    const-string p3, "OMX.qcom.audio.encoder.aac"

    .line 14
    invoke-static {p3}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p3

    iput-object p3, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move p1, p2

    goto :goto_0

    .line 15
    :catch_0
    sget-object p3, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->TAG:Ljava/lang/String;

    const-string p4, "HW AAC encoder not found fallback to default instead"

    invoke-static {p3, p4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-nez p1, :cond_0

    .line 16
    :try_start_1
    iget-object p1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->mDesiredMediaFormat:Landroid/media/MediaFormat;

    const-string p3, "mime"

    invoke-virtual {p1, p3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-static {p1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 18
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

    .line 19
    :cond_0
    :goto_1
    iput-boolean p2, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->mIsInitialized:Z

    return-void

    .line 20
    :cond_1
    iget-object p0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {p0}, Landroid/media/AudioRecord;->release()V

    .line 21
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Failed to initialize AudioRecord"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private addSampleCount(J)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->mSampleCount:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->mSampleCount:J

    return-void
.end method

.method private channelConfig()I
    .locals 1

    .line 1
    iget p0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->mChannelCount:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/16 p0, 0x10

    return p0

    :cond_0
    const/16 p0, 0xc

    return p0
.end method

.method private getPresentationTime(J)J
    .locals 4

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->mSampleCount:J

    add-long/2addr v2, p1

    mul-long/2addr v0, v2

    iget p0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->mSampleRate:I

    int-to-long p0, p0

    div-long/2addr v0, p0

    return-wide v0
.end method

.method private getSampleDataBytes()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->mFrameBytes:I

    return p0
.end method

.method private sampleBytes(I)I
    .locals 0

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Specified Audio format is not supported."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return p0
.end method


# virtual methods
.method public doRelease()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->mIsInitialized:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-super {p0}, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->doRelease()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    sget-object v1, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Meet exception when mAudioRecord.release(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->mIsInitialized:Z

    return-void
.end method

.method public doStart()V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->TAG:Ljava/lang/String;

    const-string v1, "start(): E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->mIsInitialized:Z

    if-nez v0, :cond_1

    .line 3
    sget-object p0, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->TAG:Ljava/lang/String;

    const-string v0, "start(): not initialized yet"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_1
    iget-boolean v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->mIsBuffering:Z

    if-eqz v0, :cond_2

    .line 5
    sget-object p0, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->TAG:Ljava/lang/String;

    const-string v0, "start(): encoder is already running"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->mCyclicBuffer:Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;

    invoke-virtual {v0}, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->clear()V

    .line 7
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->mDesiredMediaFormat:Landroid/media/MediaFormat;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 8
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    new-instance v1, Landroid/os/Handler;

    iget-object v3, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->mEncodingThread:Lcom/xiaomi/camera/liveshot/util/BackgroundWorker;

    invoke-virtual {v3}, Lcom/xiaomi/camera/liveshot/util/BackgroundWorker;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p0, v1}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V

    .line 9
    invoke-super {p0}, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->doStart()V

    .line 10
    iput-boolean v2, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->mIsBuffering:Z

    const-wide/16 v0, 0x0

    .line 11
    iput-wide v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->mCurrentPresentationTimeUs:J

    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {p0}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    sget-boolean p0, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->DEBUG:Z

    if-eqz p0, :cond_3

    sget-object p0, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->TAG:Ljava/lang/String;

    const-string v0, "start(): X"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    :catch_0
    move-exception p0

    .line 14
    sget-object v0, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRecording(): failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public doStop()V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->TAG:Ljava/lang/String;

    const-string v1, "stop(): E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->mIsInitialized:Z

    if-nez v0, :cond_1

    .line 3
    sget-object p0, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->TAG:Ljava/lang/String;

    const-string v0, "stop(): not initialized yet"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_1
    iget-boolean v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->mIsBuffering:Z

    if-nez v0, :cond_2

    .line 5
    sget-object p0, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->TAG:Ljava/lang/String;

    const-string v0, "stop(): not buffering yet"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->mIsBuffering:Z

    .line 7
    invoke-super {p0}, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->doStop()V

    .line 8
    sget-boolean v0, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->DEBUG:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->TAG:Ljava/lang/String;

    const-string v1, "mAudioRecord.stop(): E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    sget-object v1, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Meet exception when mAudioRecord.stop(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :goto_0
    sget-boolean v0, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->DEBUG:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->TAG:Ljava/lang/String;

    const-string v1, "mAudioRecord.stop(): X"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_4
    sget-boolean v0, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->DEBUG:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->TAG:Ljava/lang/String;

    const-string v1, "clear pending snapshot requests: E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iget-object v1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->mSnapshots:Ljava/util/List;

    monitor-enter v1

    .line 15
    :try_start_1
    iget-object v2, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->mSnapshots:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 16
    iget-object p0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->mSnapshots:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 17
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    sget-boolean p0, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->DEBUG:Z

    if-eqz p0, :cond_6

    sget-object p0, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cleared "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " snapshot requests."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;

    .line 20
    :try_start_2
    invoke-virtual {v0}, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;->putEos()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 21
    sget-object v1, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to putEos: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 22
    :cond_7
    sget-boolean p0, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->DEBUG:Z

    if-eqz p0, :cond_8

    sget-object p0, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->TAG:Ljava/lang/String;

    const-string v0, "clear pending snapshot requests: X"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    :cond_8
    sget-boolean p0, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->DEBUG:Z

    if-eqz p0, :cond_9

    sget-object p0, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->TAG:Ljava/lang/String;

    const-string v0, "stop() X"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void

    :catchall_0
    move-exception p0

    .line 24
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 11

    .line 1
    sget-boolean v0, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->TAG:Ljava/lang/String;

    const-string v1, "audioCodec.onInputBufferAvailable(): E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->mIsBuffering:Z

    if-nez v0, :cond_1

    .line 3
    sget-object p0, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->TAG:Ljava/lang/String;

    const-string p1, "audioCodec: already End of Stream"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_1
    sget-object v0, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->TAG:Ljava/lang/String;

    const-string v1, "audioCodec.dequeueInputBuffer(): E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 6
    sget-object v0, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audioCodec.dequeueInputBuffer("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): X"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->mAudioRecord:Landroid/media/AudioRecord;

    iget-object v1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->mSampleBuffer:[B

    .line 8
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    iget v3, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->mNotificationPeriod:I

    iget v4, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->mFrameBytes:I

    mul-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    .line 9
    invoke-virtual {v0, v1, v3, v2}, Landroid/media/AudioRecord;->read([BII)I

    move-result v0

    const/4 v1, -0x6

    if-eq v0, v1, :cond_a

    if-eqz v0, :cond_8

    const/4 v1, -0x3

    if-eq v0, v1, :cond_6

    const/4 v1, -0x2

    if-eq v0, v1, :cond_4

    .line 10
    sget-object v1, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->TAG:Ljava/lang/String;

    const-string v2, "audioCodec.queueInputBuffer(): E"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 12
    iget-object v1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->mSampleBuffer:[B

    invoke-virtual {p1, v1, v3, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 13
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    add-int/lit8 v7, p1, 0x0

    .line 14
    invoke-direct {p0}, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->getSampleDataBytes()I

    move-result p1

    div-int p1, v7, p1

    int-to-long v0, p1

    .line 15
    invoke-direct {p0, v0, v1}, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->getPresentationTime(J)J

    move-result-wide v8

    .line 16
    iget-boolean p1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->mIsBuffering:Z

    if-nez p1, :cond_2

    const/4 v3, 0x4

    :cond_2
    move v10, v3

    .line 17
    iget-object v4, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    move v5, p2

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 18
    invoke-direct {p0, v0, v1}, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->addSampleCount(J)V

    .line 19
    sget-object p0, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->TAG:Ljava/lang/String;

    const-string p1, "audioCodec.queueInputBuffer(): X"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    sget-boolean p0, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->DEBUG:Z

    if-eqz p0, :cond_3

    sget-object p0, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->TAG:Ljava/lang/String;

    const-string p1, "audioCodec.onInputBufferAvailable(): X"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    .line 21
    :cond_4
    sget-boolean p0, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->DEBUG:Z

    if-eqz p0, :cond_5

    sget-object p0, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->TAG:Ljava/lang/String;

    const-string p1, "  ERROR_BAD_VALUE"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void

    .line 22
    :cond_6
    sget-boolean p0, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->DEBUG:Z

    if-eqz p0, :cond_7

    sget-object p0, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->TAG:Ljava/lang/String;

    const-string p1, "  ERROR_INVALID_OP"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void

    .line 23
    :cond_8
    sget-boolean p0, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->DEBUG:Z

    if-eqz p0, :cond_9

    sget-object p0, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->TAG:Ljava/lang/String;

    const-string p1, "  END_OF_BUFFER"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void

    .line 24
    :cond_a
    sget-boolean p0, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->DEBUG:Z

    if-eqz p0, :cond_b

    sget-object p0, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;->TAG:Ljava/lang/String;

    const-string p1, "  ERROR_DEAD_OBJECT"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return-void
.end method
