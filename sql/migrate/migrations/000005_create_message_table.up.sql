CREATE TABLE `message`
(
    `id`           bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '自增主键',
    `user_id`      bigint unsigned NOT NULL COMMENT '用户id，指接受者用户id',
    `sender_id`    bigint unsigned NOT NULL COMMENT '发送者用户id',
    `session_type` tinyint         NOT NULL COMMENT '聊天类型，群聊/单聊',
    `receiver_id`  bigint unsigned NOT NULL COMMENT '接收者id，群聊id/用户id',
    `message_type` tinyint         NOT NULL COMMENT '消息类型,语言、文字、图片',
    `content`      blob            NOT NULL COMMENT '消息内容',
    `seq`          bigint unsigned NOT NULL COMMENT '消息序列号',
    `send_time`    datetime        NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '消息发送时间',
    `create_time`  datetime        NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `update_time`  datetime        NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    PRIMARY KEY (`id`),
    UNIQUE KEY `uk_user_id_seq` (`user_id`, `seq`) USING BTREE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;