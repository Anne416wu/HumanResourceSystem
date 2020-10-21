/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2019/3/21 19:16:11                           */
/*==============================================================*/


drop table if exists report_entity_age_info;

drop table if exists report_entity_bigdemand_info;

drop table if exists report_entity_culture_Info;

drop table if exists report_entity_hunt_info;

drop table if exists report_entity_industry_info;

drop table if exists report_entity_job_info;

drop table if exists report_entity_profession_info;

drop table if exists report_entity_sex_info;

drop table if exists report_entity_skill_Info;

drop table if exists report_entity_small_info;

drop table if exists report_entity_supply_info;

drop table if exists report_entity_survey;

drop table if exists report_entity_unit_info;

drop table if exists sys_entity_count;

drop table if exists sys_entity_dict;

drop table if exists sys_entity_function;

drop table if exists sys_entity_notice;

drop table if exists sys_entity_role;

drop table if exists sys_entity_user;

drop table if exists sys_map_role_function;

drop table if exists sys_map_survey_user;

drop table if exists sys_map_user_role;

/*==============================================================*/
/* Table: report_entity_age_info                                */
/*==============================================================*/
create table report_entity_age_info
(
   range_1_req_num      int comment '16~24岁需求人数',
   range_2_req_num      int comment '25~34岁需求人数',
   range_3_req_num      int comment '35~44岁需求人数',
   range_4_req_num      int comment '45岁以上需求人数',
   no_request_req_num   int comment '无要求需求人数',
   range_1_hunt_num     int comment '16~24岁求职人数',
   range_2_hunt_num     int comment '25~34岁求职人数',
   range_3_hunt_num     int comment '35~44岁求职人数',
   range_4_hunt_num     int comment '45岁以上求职人数',
   no_request_hunt_num  int comment '无要求求职人数',
   id                   varchar(100) not null,
   common_remarks       varchar(100) comment '备注',
   common_del_flag      varchar(100) comment '删除标记',
   common_create_user_id varchar(100) comment '创建者id',
   common_modify_user_id varchar(100) comment '最后修改者id',
   common_create_date   datetime comment '创建日期',
   common_modify_date   datetime comment '最后修改日期',
   user_id              varchar(100) comment '用户id',
   primary key (id)
);

alter table report_entity_age_info comment '年龄分组表';

/*==============================================================*/
/* Table: report_entity_bigdemand_info                          */
/*==============================================================*/
create table report_entity_bigdemand_info
(
   bigdemand_type       varchar(100) comment '职业类别',
   career_id            int comment '职业代码',
   bigdemand_demand     int comment '需求人数',
   bigdemand_hunt       int comment '求职人数',
   id                   varchar(100) not null,
   common_remarks       varchar(100) comment '备注',
   common_del_flag      varchar(100) comment '删除标记',
   common_create_user_id varchar(100) comment '创建者id',
   common_modify_user_id varchar(100) comment '最后修改者id',
   common_create_date   datetime comment '创建日期',
   common_modify_date   datetime comment '最后修改日期',
   user_id              varchar(100) comment '用户id',
   primary key (id)
);

alter table report_entity_bigdemand_info comment '需求最大的职业表';

/*==============================================================*/
/* Table: report_entity_culture_Info                            */
/*==============================================================*/
create table report_entity_culture_Info
(
   junior_high_school_req_num int comment '初中及以下需求人数',
   voc_req_num          int comment '职高需求人数',
   tec_req_num          int comment '技校需求人数',
   sec_req_num          int comment '中专需求人数',
   college_req_num      int comment '大专需求人数',
   university_req_num   int comment '大学需求人数',
   master_req_num       int comment '硕士需求人数',
   no_request_req_nmu   int comment '无要求需求人数',
   junior_high_school_hunt_num int comment '初中及以下求职人数',
   voc_hunt_num         int comment '职高求职人数',
   tec_hunt_num         int comment '技校求职人数',
   sec_hunt_num         int comment '中专求职人数',
   college_hunt_num     int comment '大专求职人数',
   university_hunt_num  int comment '大学求职人数',
   master_hunt_num      int comment '硕士求职人数',
   no_request_hunt_nmu  int comment '无要求求职人数',
   id                   int not null,
   common_remarks       varchar(100) comment '备注',
   common_del_flag      varchar(100) comment '删除标记',
   common_create_user_id varchar(100) comment '创建者id',
   common_modify_user_id varchar(100) comment '最后修改者id',
   common_create_date   datetime comment '创建日期',
   common_modify_date   datetime comment '最后修改日期',
   user_id              varchar(100) comment '用户id',
   primary key (id)
);

alter table report_entity_culture_Info comment '文化程度分组表';

/*==============================================================*/
/* Table: report_entity_hunt_info                               */
/*==============================================================*/
create table report_entity_hunt_info
(
   hunt_id              varchar(100) comment '求职者id',
   grow_hunt_num        int comment '新成长失业青年求职人数',
   emptounemp_hunt_num  int comment '就业转失业人员求职人数',
   other_hunt_num       int comment '其他失业人员求职人数',
   pract_hunt_num       int comment '在业人员求职人数',
   laid_off_hunt_num    int comment '下岗职工求职人数',
   retiree_hunt_num     int comment '退休人员求职人数',
   instructor_hunt_num  int comment '在学人员求职人数',
   city_hunt_num        int comment '本市农村人员求职人数',
   outcity_hunt_num     int comment '外埠人员求职人数',
   id                   varchar(100) not null,
   common_remarks       varchar(100)  comment '备注',
   common_del_flag      varchar(100)  comment '删除标记',
   common_create_user_id varchar(100)  comment '创建者id',
   common_modify_user_id varchar(100)  comment '最后修改者id',
   common_create_date   datetime comment '创建日期',
   common_modify_date   datetime comment '最后修改日期',
   user_id              varchar(100) comment '用户id',
   primary key (id)
);

alter table report_entity_hunt_info comment '求职人员';

/*==============================================================*/
/* Table: report_entity_industry_info                           */
/*==============================================================*/
create table report_entity_industry_info
(
   industry_one         int comment '第一产业需求人数',
   industry_two         int comment '第二产业需求人数',
   industry_three       int comment '第三产业需求人数',
   status               int comment '状态信息',
   id                   varchar(100) not null,
   common_remarks        varchar(100) comment '备注',
   common_del_flag       varchar(100) comment '删除标记',
   common_create_user_id  varchar(100) comment '创建者id',
   common_modify_user_id  varchar(100) comment '最后修改者id',
   common_create_date    datetime comment '创建日期',
   common_modify_date    datetime comment '最后修改日期',
   user_id              varchar(100) comment '用户id',
   primary key (id)
);

alter table report_entity_industry_info comment '按产业进行分组';

/*==============================================================*/
/* Table: report_entity_job_info                                */
/*==============================================================*/
create table report_entity_job_info
(
   per_cha_demand       int comment '单位负责人的需求人数',
   per_cha_hunt         int comment '单位负责人的求职人数',
   pro_skill_demand     int comment '专业技术人员的需求人数',
   pro_skill_hunt       int comment '专业技术人员的求职人数',
   staff_demand         int comment '办事人员和有关人员的需求人数',
   staff_hunt           int comment '办事人员和有关人员的求职人数',
   bus_demand           int comment '商业和服务人员的需求人数',
   bus_hunt             int comment '商业和服务人员的求职人数',
   product_demand       int comment '农林牧渔水利生产人员的需求人数',
   product_hunt         int comment '农林牧渔水利生产人员的求职人数',
   tran_demand          int comment '生产运输设备操作工需求人数',
   tran_hunt            int comment '生产运输设备操作工求职人数',
   other_hunt           int comment '其他',
   id                   varchar(100) not null,
   common_remarks       varchar(100) comment '备注',
   common_del_flag      varchar(100) comment '删除标记',
   common_create_user_id varchar(100) comment '创建者id',
   common_modify_user_id varchar(100) comment '最后修改者id',
   common_create_date   datetime comment '创建日期',
   common_modify_date   datetime comment '最后修改日期',
   user_id              varchar(100) comment '用户id',
   primary key (id)
);

alter table report_entity_job_info comment '工作信息表按职业分组';

/*==============================================================*/
/* Table: report_entity_profession_info                         */
/*==============================================================*/
create table report_entity_profession_info
(
   farm                 int comment '农林牧渔',
   mining               int comment '采矿',
   create_              int comment '制造',
   electric             int comment '电力',
   structure            int comment '建筑',
   traffic              int comment '交通',
   information          int comment '信息传输',
   wholesale            int comment '批发',
   room                 int comment '住宿',
   financial            int comment '金融',
   estate               int comment '房地产',
   lease                int comment '租赁',
   research             int comment '科研',
   water                int comment '水利',
   resident             int comment '居民服务',
   education            int comment '教育',
   health               int comment '卫生',
   culture              int comment '文化',
   management           int comment '公共管理',
   international        int comment '国际组织',
   id                   varchar(100) not null,
   common_remarks       varchar(100) comment '备注',
   common_del_flag      varchar(100) comment '删除标记',
   common_create_user_id varchar(100) comment '创建者id',
   common_modify_user_id varchar(100) comment '最后修改者id',
   common_create_date   datetime comment '创建日期',
   common_modify_date   datetime comment '最后修改日期',
   user_id              varchar(100) comment '用户id',
   primary key (id)
);

alter table report_entity_profession_info comment '按行业进行分组';

/*==============================================================*/
/* Table: report_entity_sex_info                                */
/*==============================================================*/
create table report_entity_sex_info
(
   male_req_num         int comment '男性需求人数',
   female_req_nmu       int comment '女性需求人数',
   no_request_req_num   int comment '无要求需求人数',
   male_hunt_num        int comment '男性求职人数',
   female_hunt_nmu      int comment '女性求职人数',
   no_request_hunt_num  int comment '无要求求职人数',
   id                   varchar(100) not null,
   common_remarks       varchar(100) comment '备注',
   common_del_flag      varchar(100) comment '删除标记',
   common_create_user_id varchar(100) comment '创建者id',
   common_modify_user_id varchar(100) comment '最后修改者id',
   common_create_date   datetime comment '创建日期',
   common_modify_date   datetime comment '最后修改日期',
   user_id              varchar(100) comment '用户id',
   primary key (id)
);

alter table report_entity_sex_info comment '性别信息分组表';

/*==============================================================*/
/* Table: report_entity_skill_Info                              */
/*==============================================================*/
create table report_entity_skill_Info
(
   career_qual_five_req_num int comment '职业资格五级需求人数',
   career_qual_four_req_num int comment '职业资格四级需求人数',
   career_qual_three_req_num int comment '职业资格三级需求人数',
   career_qual_two_req_num int comment '职业资格二级需求人数',
   career_qual_one_req_num int comment '职业资格一级需求人数',
   pri_tech_career_req_num int comment '初级专业技术职务需求人数',
   med_tech_career_req_num int comment '中级专业技术职务需求人数',
   adv_tech_career_req_num int comment '高级专业技术职务需求人数',
   no_tech_career_req_num int comment '无需求等级或职务需求人数',
   no_request_req_num   int comment '无要求需求人数',
   career_qual_five_hunt_num int comment '职业资格五级求职人数',
   career_qual_four_hunt_num int comment '职业资格四级求职人数',
   career_qual_three_hunt_num int comment '职业资格三级求职人数',
   career_qual_two_hunt_num int comment '职业资格二级求职人数',
   career_qual_one_hunt_num int comment '职业资格一级求职人数',
   pri_tech_career_hunt_num int comment '初级专业技术职务求职人数',
   med_tech_career_hunt_num int comment '中级专业技术职务求职人数',
   adv_tech_career_hunt_num int comment '高级专业技术职务求职人数',
   no_tech_career_hunt_num int comment '无需求等级或职务求职人数',
   no_request_hunt_num  int comment '无要求求职人数',
   id                   varchar(100) not null,
   common_remarks       varchar(100)  comment '备注',
   common_del_flag      varchar(100)  comment '删除标记',
   common_create_user_id varchar(100)  comment '创建者id',
   common_modify_user_id varchar(100)  comment '最后修改者id',
   common_create_date    datetime comment '创建日期',
   common_modify_date    datetime comment '最后修改日期',
   user_id              varchar(100) comment '用户id',
   primary key (id)
);

alter table report_entity_skill_Info comment '技能等级分组表';

/*==============================================================*/
/* Table: report_entity_small_info                              */
/*==============================================================*/
create table report_entity_small_info
(
   career_id            int comment '职业代码',
   smalldemand_type     varchar(100) comment '职业类别',
   smalldemand_demand   int comment '需求人数',
   smalldemand_hunt     int comment '求职人数',
   id                   int not null,
   common_remarks       varchar(100) comment '备注',
   common_del_flag      varchar(100) comment '删除标记',
   common_create_user_id varchar(100) comment '创建者id',
   common_modify_user_id varchar(100) comment '最后修改者id',
   common_create_date   datetime comment '创建日期',
   common_modify_date   datetime comment '最后修改日期',
   user_id              varchar(100) comment '用户id',
   primary key (id)
);

alter table report_entity_small_info comment '需求小的职业信息表情况';

/*==============================================================*/
/* Table: report_entity_supply_info                             */
/*==============================================================*/
create table report_entity_supply_info
(
   supply_quarter       varchar(100) comment '季度',
   supply_demand        int comment '需求人数',
   supply_hunt          int comment '求职人数',
   status               int comment '状态信息',
   id                   varchar(100) not null,
   common_remarks       varchar(100) comment '备注',
   common_del_flag      varchar(100) comment '删除标记',
   common_create_user_id varchar(100) comment '创建者id',
   common_modify_user_id varchar(100) comment '最后修改者id',
   common_create_date   datetime comment '创建日期',
   common_modify_date   datetime comment '最后修改日期',
   user_id              varchar(100) comment '用户id',
   primary key (id)
);

alter table report_entity_supply_info comment '供求人数信息表';

/*==============================================================*/
/* Table: report_entity_survey                                  */
/*==============================================================*/
create table report_entity_survey
(
   id                   varchar(100) not null,
   survey_name          varchar(100) comment '报表的名字',
   common_remarks       varchar(100) comment '备注',
   common_del_flag      varchar(100) comment '删除标记',
   common_create_user_id varchar(100) comment '创建者id',
   common_modify_user_id varchar(100) comment '最后修改者id',
   common_create_date   datetime comment '创建日期',
   common_modify_date   datetime comment '最后修改日期',
   user_id              varchar(100) comment '用户id',
   primary key (id)
);

alter table report_entity_survey comment '调查表';

/*==============================================================*/
/* Table: report_entity_unit_info                               */
/*==============================================================*/
create table report_entity_unit_info
(
   state                int comment '国有企业人数',
   collective           int comment '集体企业',
   cooperation          int comment '股份合作',
   joint                int comment '联营企业',
   limited              int comment '有限责任企业',
   share                int comment '股份合作企业',
   private              int comment '私营企业',
   other                int comment '其他企业',
   hk                   int comment '港澳台企业',
   "foreign"            int comment '外商投资企业',
   self                 int comment '个体经营',
   id                   int not null,
   common_remarks       varchar(100) comment '备注',
   common_del_flag      varchar(100) comment '删除标记',
   common_create_user_id varchar(100) comment '创建者id',
   common_modify_user_id varchar(100) comment '最后修改者id',
   common_create_date   datetime comment '创建日期',
   common_modify_date   datetime comment '最后修改日期',
   user_id              varchar(100) comment '用户id',
   primary key (id)
);

alter table report_entity_unit_info comment '按用人单位性质分组';

/*==============================================================*/
/* Table: sys_entity_count                                      */
/*==============================================================*/
create table sys_entity_count
(
   sum                  int comment '总数',
   average              int comment '平均值',
   id                   varchar(100) not null,
   common_remarks       varchar(100) comment '备注',
   common_del_flag      varchar(100) comment '删除标记',
   common_create_user_id varchar(100) comment '创建者id',
   common_modify_user_id varchar(100) comment '最后修改者id',
   common_create_date   datetime comment '创建日期',
   common_modify_date   datetime comment '最后修改日期',
   user_id              varchar(100) comment '用户id',
   primary key (id)
);

alter table sys_entity_count comment '统计表对数据的统计';

/*==============================================================*/
/* Table: sys_entity_dict                                       */
/*==============================================================*/
create table sys_entity_dict
(
   value                varchar(100),
   "label"              varchar(100),
   type                 varchar(100),
   description          varchar(100),
   sort                 int,
   id                   varchar(100) not null,
   common_remarks       varchar(100) comment '备注',
   common_del_flag      varchar(100) comment '删除标记',
   common_create_user_id varchar(100) comment '创建者id',
   common_modify_user_id varchar(100) comment '最后修改者id',
   common_create_date   datetime comment '创建日期',
   common_modify_date   datetime comment '最后修改日期',
   primary key (id)
);

alter table sys_entity_dict comment '字典表';

/*==============================================================*/
/* Table: sys_entity_function                                   */
/*==============================================================*/
create table sys_entity_function
(
   name                 varchar(100) comment '用户名',
   code                 varchar(100) comment '功能代码，作为功能的标识符',
   type                 varchar(100) comment '0 - 功能分类，点击展开子功能;1 - 功能，点击进入功能页',
   parent_id            varchar(100) comment '功能所属的分类',
   url                  varchar(100) comment '如果是功能，则此项代表功能页地址，否则为空',
   index_               varchar(100) comment '排序，功能栏上自上而下，从0开始递增(相当于数组中的序号)',
   id                   varchar(100) not null,
   common_remarks       varchar(100) comment '备注',
   common_del_flag      varchar(100) comment '删除标记（0：正常；1：删除；2：审核）',
   common_create_user_id varchar(100) comment '创建者id',
   common_modify_user_id varchar(100) comment '最后修改者id',
   common_create_date   datetime comment '创建日期',
   common_modify_date   datetime comment '最后修改日期',
   enable               bool comment '功能是否启用',
   icon                 varchar(100) comment '图标',
   primary key (id)
);

alter table sys_entity_function comment '功能表';

/*==============================================================*/
/* Table: sys_entity_notice                                     */
/*==============================================================*/
create table sys_entity_notice
(
   infom_title          varchar(100) comment '通知标题',
   inform_content       varchar(100) comment '通知内容',
   release_time         datetime comment '发布时间',
   release_unit         varchar(100) comment '发布单位',
   id                   varchar(100) not null,
   common_remarks        varchar(100) comment '备注',
   common_del_flag       varchar(100) comment '删除标记',
   common_create_user_id  varchar(100) comment '创建者id',
   common_modify_user_id  varchar(100) comment '最后修改者id',
   common_create_date   datetime comment '创建日期',
   common_modify_date   datetime comment '最后修改日期',
   primary key (id)
);

alter table sys_entity_notice comment '发布通知表';

/*==============================================================*/
/* Table: sys_entity_role                                       */
/*==============================================================*/
create table sys_entity_role
(
   name                 varchar(100) comment '姓名',
   code                 varchar(100) comment '角色标识符',
   id                   varchar(100) not null,
   common_remarks       varchar(100) comment '备注',
   common_del_flag      varchar(100) comment '删除标记',
   common_create_user_id varchar(100) comment '创建者id',
   common_modify_user_id varchar(100) comment '最后修改者id',
   common_create_date   datetime comment '创建日期',
   common_modify_date   datetime comment '最后修改日期',
   primary key (id)
);

alter table sys_entity_role comment '角色表';

/*==============================================================*/
/* Table: sys_entity_user                                       */
/*==============================================================*/
create table sys_entity_user
(
   username             varchar(100) comment '用户名',
   password             varchar(100) comment '密码',
   id                   varchar(100) not null comment 'id',
   type                 varchar(100) comment '0 - 管理员，1 - 省，2 - 市，3 - 监测点',
   province             varchar(100) comment '来自于哪个省，存储字典id',
   city                 varchar(100) comment '来自于哪个市，存储字典id',
   common_remarks       varchar(100) comment '备注',
   common_del_flag      varchar(100) comment '删除标记',
   common_create_user_id varchar(100) comment '创建者id',
   common_modify_user_id varchar(100) comment '最后修改者id',
   common_create_date   datetime comment '创建日期',
   common_modify_date   datetime comment '最后修改日期',
   real_name            varchar(100) comment '真实姓名',
   nick_name            varchar(100) comment '昵称',
   head_img             varchar(100) comment '头像',
   phone_number         varchar(100) comment '手机号',
   email                varchar(100) comment '邮箱地址',
   last_login_ip        varchar(100) comment '上次登陆ip',
   current_login_ip     varchar(100) comment '本次登陆ip',
   last_login_date      datetime comment '上次登陆时间',
   current_login_date   datetime comment '本次登陆时间',
   market_name          varchar(100) comment '人力资源市场名',
   contact_name         varchar(100) comment '联系人姓名',
   contact_phone        varchar(100) comment '联系人手机',
   contact_fax          varchar(100) comment '联系人传真',
   primary key (id)
);

alter table sys_entity_user comment '用户表';

/*==============================================================*/
/* Table: sys_map_role_function                                 */
/*==============================================================*/
create table sys_map_role_function
(
   role_id              varchar(100) comment '角色表_id',
   id                   varchar(100) not null,
   common_remarks       varchar(100)  comment '备注',
   common_del_flag      varchar(100)  comment '删除标记（0：正常；1：删除；2：审核）',
   common_create_user_id varchar(100)  comment '创建者id',
   common_modify_user_id varchar(100)  comment '最后修改者id',
   common_create_date   datetime comment '创建日期',
   common_modify_date   datetime comment '最后修改日期',
   function_id          varchar(100) comment '功能表id',
   primary key (id)
);

alter table sys_map_role_function comment '角色-功能关联表';

/*==============================================================*/
/* Table: sys_map_survey_user                                   */
/*==============================================================*/
create table sys_map_survey_user
(
   user_id              varchar(100) comment '用户id',
   id                   varchar(100) not null,
   form_status          varchar(100) comment '报表审核状态',
   survey_id            varchar(100) comment '调查id',
   common_remarks       varchar(100) comment '备注',
   common_del_flag      varchar(100) comment '删除标记',
   common_create_user_id varchar(100) comment '创建者id',
   common_modify_user_id varchar(100) comment '最后修改者id',
   common_create_date     datetime  comment '创建日期',
   common_modify_date     datetime  comment '最后修改日期',
   primary key (id)
);

alter table sys_map_survey_user comment '调查-用户关联表';

/*==============================================================*/
/* Table: sys_map_user_role                                     */
/*==============================================================*/
create table sys_map_user_role
(
   user_id              varchar(100) comment '用户id',
   role_id              varchar(100) comment '角色id',
   id                   varchar(100) not null,
   common_remarks       varchar(100) comment '备注',
   common_del_flag      varchar(100) comment '删除标记',
   common_create_user_id varchar(100) comment '创建者id',
   common_modify_user_id varchar(100) comment '最后修改者id',
   common_create_date    datetime comment '创建日期',
   common_modify_date    datetime comment '最后修改日期',
   primary key (id)
);

alter table sys_map_user_role comment '用户-角色关联表';

