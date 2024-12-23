create table active_promos
(
    id         bigint unsigned auto_increment
        primary key,
    user_id    int          not null,
    promo      varchar(255) not null,
    type_promo int          not null,
    promo_id   int          not null,
    created_at timestamp    null,
    updated_at timestamp    null
)
    collate = utf8mb4_unicode_ci;

create table authorizations
(
    id         bigint unsigned auto_increment
        primary key,
    user_id    int          not null,
    ip         varchar(255) not null,
    videocard  varchar(255) not null,
    created_at timestamp    null,
    updated_at timestamp    null
)
    collate = utf8mb4_unicode_ci;

create table bots
(
    id         int auto_increment
        primary key,
    name       varchar(255) collate utf8mb4_unicode_ci not null,
    created_at timestamp default CURRENT_TIMESTAMP     not null,
    updated_at timestamp                               null
)
    charset = utf8mb3;

create table dep_promo
(
    id         bigint unsigned auto_increment
        primary key,
    name       varchar(255)                           null,
    percent    varchar(255)                           null,
    active     varchar(255)                           null,
    actived    varchar(255) default '0'               null,
    user_id    int          default 0                 not null,
    user_name  varchar(255) charset utf8mb3           not null,
    start      timestamp    default CURRENT_TIMESTAMP not null,
    end        timestamp                              null,
    created_at timestamp                              null,
    updated_at timestamp                              null
)
    collate = utf8mb4_unicode_ci;

create table failed_jobs
(
    id         bigint unsigned auto_increment
        primary key,
    connection text                                not null,
    queue      text                                not null,
    payload    longtext                            not null,
    exception  longtext                            not null,
    failed_at  timestamp default CURRENT_TIMESTAMP not null
)
    collate = utf8mb4_unicode_ci;

create table games
(
    id         bigint unsigned auto_increment
        primary key,
    game       varchar(255) null,
    login      varchar(255) null,
    sum        varchar(255) null,
    win_summa  varchar(255) null,
    user_id    varchar(255) null,
    type       varchar(255) null,
    created_at timestamp    null,
    updated_at timestamp    null
)
    collate = utf8mb4_unicode_ci;

create table history_balances
(
    id             bigint unsigned auto_increment
        primary key,
    user_id        int                                 not null,
    type           text charset utf8mb3                not null,
    balance_before varchar(255)                        not null,
    balance_after  varchar(255)                        not null,
    created_at     timestamp default CURRENT_TIMESTAMP null,
    updated_at     timestamp default CURRENT_TIMESTAMP null
)
    collate = utf8mb4_unicode_ci;

create table jobs
(
    id           bigint unsigned auto_increment
        primary key,
    queue        varchar(255)     not null,
    payload      longtext         not null,
    attempts     tinyint unsigned not null,
    reserved_at  int unsigned     null,
    available_at int unsigned     not null,
    created_at   int unsigned     not null
)
    collate = utf8mb4_unicode_ci;

create index jobs_queue_index
    on jobs (queue);

create table live
(
    id         int auto_increment
        primary key,
    user_id    int                                    not null,
    slot_id    int                                    not null,
    amount     float(11, 2) default 0.00              null,
    created_at timestamp    default CURRENT_TIMESTAMP not null,
    updated_at timestamp                              null
)
    charset = utf8mb3;

create table messages
(
    id          int auto_increment
        primary key,
    hidden      int default 0        not null,
    type_mess   int default 0        not null,
    status_mess text charset utf8mb3 not null,
    autor       text charset utf8mb3 not null,
    time        text                 null,
    avatar      text charset utf8mb3 not null,
    content     text charset utf8mb3 not null,
    user_id     int                  not null,
    updated_at  timestamp            null,
    created_at  timestamp            null
)
    charset = latin1;

create table migrations
(
    id        int unsigned auto_increment
        primary key,
    migration varchar(255) not null,
    batch     int          not null
)
    collate = utf8mb4_unicode_ci;

create table password_resets
(
    email      varchar(255) not null,
    token      varchar(255) not null,
    created_at timestamp    null
)
    collate = utf8mb4_unicode_ci;

create index password_resets_email_index
    on password_resets (email);

create table payments
(
    id          bigint unsigned auto_increment
        primary key,
    user_id     int unsigned           default '0'  not null,
    login       text charset utf8mb3                not null,
    avatar      text                                not null,
    sum         double(11, 2) unsigned default 0.00 not null,
    data        varchar(255)                        not null,
    transaction varchar(255)                        not null,
    order_id    varchar(255)                        not null,
    beforepay   double(11, 2) unsigned default 0.00 not null,
    afterpay    double(11, 2) unsigned default 0.00 not null,
    status      int                    default 0    not null,
    percent     int                                 not null,
    img_system  text                                not null,
    updated_at  timestamp                           null,
    created_at  timestamp                           null,
    secret      varchar(255)                        null
)
    collate = utf8mb4_unicode_ci;

create table posts
(
    id         int auto_increment
        primary key,
    post_id    int       not null,
    updated_at timestamp null,
    created_at timestamp null
)
    charset = latin1;

create table promo
(
    id         bigint unsigned auto_increment
        primary key,
    name       varchar(255)                           null,
    sum        varchar(255)                           null,
    deposit    float(11, 2) default 0.00              not null,
    active     varchar(255)                           null,
    actived    varchar(255) default '0'               null,
    user_id    int          default 0                 not null,
    user_name  varchar(255) charset utf8mb3           not null,
    start      timestamp    default CURRENT_TIMESTAMP not null,
    end        timestamp                              null,
    created_at timestamp                              null,
    updated_at timestamp                              null
)
    collate = utf8mb4_unicode_ci;

create table random_keys
(
    id         bigint unsigned auto_increment
        primary key,
    name_key   text          not null,
    games      int default 0 not null,
    created_at timestamp     null,
    updated_at timestamp     null
)
    collate = utf8mb4_unicode_ci;

create table repost
(
    id          int auto_increment
        primary key,
    bonus       float(11, 2)  not null,
    repost_from int default 0 not null,
    repost_to   int           not null,
    color       text          not null,
    updated_at  timestamp     null,
    created_at  timestamp     null
)
    charset = latin1;

create table results_random
(
    id         int auto_increment
        primary key,
    rand       int          not null,
    random     text         not null,
    signature  text         not null,
    resultat   varchar(255) not null,
    updated_at timestamp    null,
    created_at timestamp    null
)
    charset = latin1;

create table settings
(
    id                 bigint unsigned auto_increment
        primary key,
    name               varchar(255)                 null,
    tg_id              varchar(255)                 null,
    tg_bot_id          varchar(255)                 not null,
    tg_token           varchar(255)                 not null,
    group_id           varchar(255)                 null,
    group_token        varchar(255)                 null,
    gamepay_shop_id    varchar(255)                 null,
    gamepay_api_key    varchar(255)                 null,
    fk_id              int                          not null,
    fk_secret_1        text                         not null,
    fk_secret_2        text                         not null,
    piastrix_id        int                          not null,
    piastrix_secret    text                         not null,
    min_withdraw       int                          null,
    dep_withdraw       int                          null,
    min_time_withdraw  text                         null,
    max_time_withdraw  text                         null,
    max_withdraw_bonus text                         null,
    min_dep            int                          null,
    min_bonus          int                          null,
    max_bonus          int                          null,
    bonus_reg          int                          null,
    bonus_ref          int                          null,
    bonus_group        int                          null,
    dice_set           int                          null,
    mines_set          int                          null,
    goal_set           int                          null,
    min_dice           int                          null,
    max_dice           int                          null,
    min_mines          int                          null,
    max_mines          int                          null,
    min_goal           int                          null,
    max_goal           int                          null,
    status_jackpot     int          default 0       not null,
    comisia_jackpot    int          default 10      not null,
    jackpot_win        int                          null,
    profit_jackpot     float(11, 2) default 0.00    not null,
    status_wheel       int          default 0       not null,
    wheel_win          varchar(11)                  not null,
    coeff_bonus        text                         not null,
    mult_bonus         text                         not null,
    wheel_bank         float(11, 2)                 not null,
    wheel_profit       float(11, 2)                 not null,
    wheel_wait         int          default 0       not null,
    jackpot_wait       int                          not null,
    created_at         timestamp                    null,
    updated_at         timestamp                    null,
    mines_bank         float                        not null,
    mines_profit       float                        not null,
    shoot_bank         float(11, 2) default 0.00    not null,
    shoot_profit       float(11, 2) default 0.00    not null,
    auto_mines         int          default 0       not null,
    auto_dice          int          default 0       not null,
    dice_bank          float(11, 2)                 not null,
    dice_profit        float(11, 2)                 not null,
    auto_wheel         int          default 0       not null,
    youtube            int          default 0       not null,
    goal_bank          float(11, 2)                 not null,
    goal_profit        float(11, 2)                 not null,
    numbers_status     int          default 0       null,
    number_win         int          default 0       not null,
    auto_number        int          default 0       not null,
    crash_status       int          default 0       not null,
    crash_result       float(11, 2) default 0.00    not null,
    crash_bank         float(111, 2)                not null,
    crash_profit       float(11, 2)                 not null,
    crash_boom         float(11, 2) default 0.00    not null,
    auto_crash         int          default 0       not null,
    youtube_crash      int          default 0       not null,
    dep_transfer       int                          not null,
    dep_createpromo    int                          not null,
    random_key_id      int          default 1       not null,
    rand_key           int                          not null,
    rand_random        text                         not null,
    rand_signature     text                         not null,
    wheelYmn           int                          not null,
    wheelWinNumber     varchar(255)                 not null,
    coefsHunt          text                         not null,
    jackpot_bank       float(11, 2)                 not null,
    jackpot_random     text                         not null,
    jackpot_signature  text                         not null,
    jackpot_rand       int                          not null,
    status_x100        int          default 0       not null,
    win_x100           varchar(255) default 'false' not null,
    auto_x100          int          default 0       not null,
    x100WinNumber      int                          not null,
    X100BonusUser_ID   int                          not null,
    X100BonusAvatar    text                         not null,
    status_keno        int                          not null,
    keno_numbers       text                         null,
    numberBonusKeno    int          default 0       not null,
    coeffBonusKeno     int          default 0       not null,
    noGetKeno          text                         null,
    youtube_keno       int          default 0       not null,
    coin_bank          float(11, 2) default 0.00    not null,
    coin_profit        float(11, 2) default 0.00    not null
)
    collate = utf8mb4_unicode_ci;

create table slots
(
    id          int auto_increment
        primary key,
    game_id     varchar(150)                 not null,
    title       varchar(150) charset utf8mb3 not null,
    alias       varchar(255)                 null,
    provider    varchar(150)                 not null,
    `show`      int default 1                not null,
    category_id int                          null,
    is_live     int default 0                not null,
    priority    int default 0                not null,
    created_at  timestamp                    null,
    updated_at  timestamp                    null
)
    charset = latin1;

create table slots_data
(
    id         int                                 not null
        primary key,
    user_id    int                                 not null,
    slot_id    int                                 not null,
    amount     int                                 not null,
    created_at timestamp default CURRENT_TIMESTAMP not null,
    updated_at timestamp                           null
)
    charset = utf8mb3;

create table status
(
    id         int auto_increment
        primary key,
    color      text                 not null,
    name       text charset utf8mb3 not null,
    deposit    float(11, 2)         not null,
    bonus      float(11, 2)         not null,
    updated_at timestamp            null,
    created_at timestamp            null,
    class      text                 not null
)
    charset = latin1;

create table system_dep
(
    id           int auto_increment
        primary key,
    name         text charset utf8mb3 not null,
    min_sum      float(11, 2)         not null,
    comm_percent int                  not null,
    img          text                 not null,
    ps           int default 1        not null,
    off          int default 0        not null,
    number_ps    int                  not null,
    updated_at   timestamp            null,
    created_at   timestamp            null
)
    charset = latin1;

create table system_withdraw
(
    id           int auto_increment
        primary key,
    name         text charset utf8mb3 not null,
    min_sum      float(11, 2)         not null,
    comm_percent int                  not null,
    comm_rub     int                  not null,
    img          text                 not null,
    updated_at   timestamp            null,
    created_at   timestamp            null
)
    charset = latin1;

create table ticket_messages
(
    id           bigint unsigned auto_increment
        primary key,
    ticket_id    int         not null,
    message_from varchar(15) not null,
    message_to   varchar(15) not null,
    content      mediumtext  not null,
    is_read      int         not null,
    created_at   timestamp   null,
    updated_at   timestamp   null
)
    collate = utf8mb4_unicode_ci;

create table tickets
(
    id             bigint unsigned auto_increment
        primary key,
    user_id        int          not null,
    category_id    int          not null,
    theme          varchar(255) not null,
    latest_message int          not null,
    status         int          not null,
    created_at     timestamp    null,
    updated_at     timestamp    null
)
    collate = utf8mb4_unicode_ci;

create table user_reposts
(
    id         bigint unsigned auto_increment
        primary key,
    user_id    int       not null,
    post_id    int       not null,
    created_at timestamp null,
    updated_at timestamp null
)
    collate = utf8mb4_unicode_ci;

create table users
(
    id                bigint unsigned auto_increment
        primary key,
    bonus_up          int           default 1    not null,
    ref_coeff         int           default 10   not null,
    profit            int           default 0    not null,
    slots             double(16, 2) default 0.00 not null,
    balance_ref       float(11, 2)  default 0.00 null,
    deps              int           default 0    not null,
    reposts           int           default 0    not null,
    balance_repost    float(11, 2)  default 0.00 not null,
    withdraws         int           default 0    not null,
    win_games         int           default 0    not null,
    lose_games        int           default 0    not null,
    sum_to_withdraw   float(11, 2)  default 0.00 not null,
    sum_win           float(11, 2)  default 0.00 not null,
    max_win           float(11, 2)  default 0.00 not null,
    sum_bet           float(11, 2)  default 0.00 not null,
    refs              int           default 0    not null,
    shootDrop         int           default 0    not null,
    bonus_refs        int           default 0    not null,
    name              varchar(255)               null,
    social            varchar(255)               null,
    social_id         varchar(255)               null,
    ip                varchar(255)               null,
    videocard         text                       null,
    balance           double(11, 2) default 0.00 not null,
    demo_balance      float(11, 2)  default 0.00 not null,
    type_balance      int           default 0    not null,
    qiwi              varchar(255)               null,
    time_promo        int           default 0    not null,
    time_withdraw     int           default 0    not null,
    bets_time         int           default 0    not null,
    bets              int           default 0    not null,
    bdate             int           default 0    not null,
    ban               int           default 0    not null,
    why_ban           text                       null,
    bonusMine         int           default 0    not null,
    chat_ban          int           default 0    null,
    time_chat_ban     int           default 0    null,
    ref_id            int                        null,
    vk_id             int                        null,
    tg_id             varchar(255)               null,
    bonus_1           int           default 0    not null,
    bonus_2           int           default 0    not null,
    admin             int           default 0    not null,
    avatar            text                       null,
    email             varchar(255)               null,
    email_verified_at timestamp                  null,
    games             int           default 0    not null,
    count_win         int           default 0    not null,
    status            int           default 0    not null,
    minesStart        int           default 0    not null,
    bonusCoin         int           default 0    null,
    created_at        timestamp                  null,
    updated_at        timestamp                  null,
    api_token         varchar(500)               null,
    game_token        varchar(500)               null,
    game_token_date   varchar(500)               null,
    youtube           int           default 0    null,
    wager             double(16, 2) default 0.00 not null,
    bonus50           int           default 0    null,
    fake              int           default 0    not null,
    constraint users_email_unique
        unique (email)
)
    collate = utf8mb4_unicode_ci;

create table withdraws
(
    id         bigint unsigned auto_increment
        primary key,
    user_id    int                                 not null,
    login      text charset utf8mb3                null,
    avatar     text                                null,
    ps         varchar(255)                        not null,
    wallet     varchar(255)                        not null,
    sum_full   float(11, 2)                        not null,
    sum        double(11, 2) unsigned default 0.00 not null,
    date       varchar(255)                        not null,
    status     int                    default 0    not null,
    img_system text                                not null,
    mult       int                    default 0    not null,
    id_fk_w    int                    default 0    not null,
    ip         varchar(255)                        null,
    created_at timestamp                           null,
    updated_at timestamp                           null
)
    collate = utf8mb4_unicode_ci;


