.class public final Landroidx/profileinstaller/ProfileVerifier;
.super Ljava/lang/Object;
.source "ProfileVerifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;,
        Landroidx/profileinstaller/ProfileVerifier$Cache;,
        Landroidx/profileinstaller/ProfileVerifier$Api33Impl;
    }
.end annotation


# static fields
.field private static final SYNC_OBJ:Ljava/lang/Object;

.field private static sCompilationStatus:Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

.field private static final sFuture:Landroidx/concurrent/futures/ResolvableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/concurrent/futures/ResolvableFuture<",
            "Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 76
    invoke-static {}, Landroidx/concurrent/futures/ResolvableFuture;->create()Landroidx/concurrent/futures/ResolvableFuture;

    move-result-object v0

    sput-object v0, Landroidx/profileinstaller/ProfileVerifier;->sFuture:Landroidx/concurrent/futures/ResolvableFuture;

    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/profileinstaller/ProfileVerifier;->SYNC_OBJ:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 81
    sput-object v0, Landroidx/profileinstaller/ProfileVerifier;->sCompilationStatus:Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    return-void
.end method

.method private static getPackageLastUpdateTime(Landroid/content/Context;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 298
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 300
    invoke-static {v0, p0}, Landroidx/profileinstaller/ProfileVerifier$Api33Impl;->getPackageInfo(Landroid/content/pm/PackageManager;Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-wide v0, p0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    return-wide v0
.end method

.method private static setCompilationStatus(IZZ)Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;
    .locals 1

    .line 284
    new-instance v0, Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    invoke-direct {v0, p0, p1, p2}, Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;-><init>(IZZ)V

    sput-object v0, Landroidx/profileinstaller/ProfileVerifier;->sCompilationStatus:Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    .line 289
    sget-object p0, Landroidx/profileinstaller/ProfileVerifier;->sFuture:Landroidx/concurrent/futures/ResolvableFuture;

    invoke-virtual {p0, v0}, Landroidx/concurrent/futures/ResolvableFuture;->set(Ljava/lang/Object;)Z

    .line 290
    sget-object p0, Landroidx/profileinstaller/ProfileVerifier;->sCompilationStatus:Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    return-object p0
.end method

.method static writeProfileVerification(Landroid/content/Context;Z)Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;
    .locals 18

    if-nez p1, :cond_0

    .line 128
    sget-object v0, Landroidx/profileinstaller/ProfileVerifier;->sCompilationStatus:Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    if-eqz v0, :cond_0

    return-object v0

    .line 132
    :cond_0
    sget-object v1, Landroidx/profileinstaller/ProfileVerifier;->SYNC_OBJ:Ljava/lang/Object;

    monitor-enter v1

    if-nez p1, :cond_1

    .line 134
    :try_start_0
    sget-object v0, Landroidx/profileinstaller/ProfileVerifier;->sCompilationStatus:Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    if-eqz v0, :cond_1

    .line 135
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    .line 151
    :cond_1
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    const-string v3, "/data/misc/profiles/ref/"

    .line 152
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "primary.prof"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 153
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 155
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v0, :cond_2

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    move v0, v7

    goto :goto_0

    :cond_2
    move v0, v6

    .line 158
    :goto_0
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/io/File;

    const-string v10, "/data/misc/profiles/cur/0/"

    .line 159
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "primary.prof"

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 160
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v16

    .line 162
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_3

    cmp-long v4, v16, v4

    if-lez v4, :cond_3

    move v4, v7

    goto :goto_1

    :cond_3
    move v4, v6

    .line 168
    :goto_1
    :try_start_1
    invoke-static/range {p0 .. p0}, Landroidx/profileinstaller/ProfileVerifier;->getPackageLastUpdateTime(Landroid/content/Context;)J

    move-result-wide v14
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    :try_start_2
    new-instance v5, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    const-string v9, "profileInstalled"

    invoke-direct {v5, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 180
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v8, :cond_4

    .line 182
    :try_start_3
    invoke-static {v5}, Landroidx/profileinstaller/ProfileVerifier$Cache;->readFromFile(Ljava/io/File;)Landroidx/profileinstaller/ProfileVerifier$Cache;

    move-result-object v8
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_0
    const/high16 v2, 0x20000

    .line 184
    :try_start_4
    invoke-static {v2, v0, v4}, Landroidx/profileinstaller/ProfileVerifier;->setCompilationStatus(IZZ)Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :cond_4
    const/4 v8, 0x0

    :goto_2
    const/4 v9, 0x2

    if-eqz v8, :cond_6

    .line 204
    iget-wide v10, v8, Landroidx/profileinstaller/ProfileVerifier$Cache;->mPackageLastUpdateTime:J

    cmp-long v10, v10, v14

    if-nez v10, :cond_6

    iget v10, v8, Landroidx/profileinstaller/ProfileVerifier$Cache;->mResultCode:I

    if-ne v10, v9, :cond_5

    goto :goto_3

    :cond_5
    move v6, v10

    goto :goto_4

    :cond_6
    :goto_3
    if-eqz v0, :cond_7

    move v6, v7

    goto :goto_4

    :cond_7
    if-eqz v4, :cond_8

    move v6, v9

    :cond_8
    :goto_4
    if-eqz p1, :cond_9

    if-eqz v4, :cond_9

    if-eq v6, v7, :cond_9

    move v6, v9

    :cond_9
    if-eqz v8, :cond_a

    .line 236
    iget v10, v8, Landroidx/profileinstaller/ProfileVerifier$Cache;->mResultCode:I

    if-ne v10, v9, :cond_a

    if-ne v6, v7, :cond_a

    .line 250
    iget-wide v9, v8, Landroidx/profileinstaller/ProfileVerifier$Cache;->mInstalledCurrentProfileSize:J

    cmp-long v2, v2, v9

    if-gez v2, :cond_a

    const/4 v6, 0x3

    .line 256
    :cond_a
    new-instance v2, Landroidx/profileinstaller/ProfileVerifier$Cache;

    const/4 v12, 0x1

    move-object v11, v2

    move v13, v6

    invoke-direct/range {v11 .. v17}, Landroidx/profileinstaller/ProfileVerifier$Cache;-><init>(IIJJ)V

    if-eqz v8, :cond_b

    .line 265
    invoke-virtual {v8, v2}, Landroidx/profileinstaller/ProfileVerifier$Cache;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v3, :cond_c

    .line 267
    :cond_b
    :try_start_5
    invoke-virtual {v2, v5}, Landroidx/profileinstaller/ProfileVerifier$Cache;->writeOnFile(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    :catch_1
    const/high16 v6, 0x30000

    .line 275
    :cond_c
    :goto_5
    :try_start_6
    invoke-static {v6, v0, v4}, Landroidx/profileinstaller/ProfileVerifier;->setCompilationStatus(IZZ)Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catch_2
    const/high16 v2, 0x10000

    .line 170
    invoke-static {v2, v0, v4}, Landroidx/profileinstaller/ProfileVerifier;->setCompilationStatus(IZZ)Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 276
    :goto_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0
.end method
