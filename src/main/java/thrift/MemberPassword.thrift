include "../CoreAdapter.thrift"
include "../CoreVo.thrift"

namespace java com.eelly.member.adapter.memberpassword
namespace php com.eelly.member.adapter.memberpassword

// 密保问题
struct MemberSecretVo {
   1:optional i32        userId;          // 会员id
   2:optional i16        questionCode;    // 问题编号
   3:optional string     question;        // 问题内容
   4:optional string     answer;          // 问题答案
}

// 找回密码类型
struct FindWayTypeVo {
   1:optional   i32                     userId;             // 会员id
   2:optional   string                  email;              // 绑定的邮箱
   3:optional   string                  mobile;             // 绑定的手机号
   4:optional   map<i16, string>        questions;          // 密保问题
}

/**
 * @类名：MemberPasswordService.Iface
 * @描述: 会员密码服务
 * @创建人：<a href=mailto:hehui@eelly.net>何辉</a>
 * @修改人：
 * @修改时间：2014年9月21日 上午10:52:14
 * @修改说明：<br/>
 * @版本信息：V1.0.0<br/>
 */
service MemberPasswordService extends CoreAdapter.CommonService {

    /**
     * @方法名：findWayTypeByUserName
     * @描述：通过会员名获取找回密码类型（FindWayTypeVo）
     * @创建人：<a href=mailto:hehui@eelly.net>何辉</a>
     * @修改人：
     * @修改时间：2014年9月21日 上午10:52:14
     * @param userName 
     *              会员名
     * @param params 
     *              接口参数结构体，了解详情敬请查阅文档
     * @return
     * @返回值：CoreVo.ReturnObj 结构体，了解详情敬请查阅文档
     * @异常说明：
     */
    CoreVo.ReturnObj findWayTypeByUserName(1:string userName, 2:CoreVo.Params params);

    /**
     * @方法名：findWayTypeByEmail
     * @描述：通过邮箱获取找回密码类型（FindWayTypeVo）
     * @创建人：<a href=mailto:hehui@eelly.net>何辉</a>
     * @修改人：
     * @修改时间：2014年9月21日 上午10:52:14
     * @param email 
     *              邮箱
     * @param params 
     *              接口参数结构体，了解详情敬请查阅文档
     * @return
     * @返回值：CoreVo.ReturnObj 结构体，了解详情敬请查阅文档
     * @异常说明：
     */
    CoreVo.ReturnObj findWayTypeByEmail(1:string email, 2:CoreVo.Params params);

    /**
     * @方法名：findWayTypeByMobile
     * @描述：通过手机号码获取找回密码类型（FindWayTypeVo）
     * @创建人：<a href=mailto:hehui@eelly.net>何辉</a>
     * @修改人：
     * @修改时间：2014年9月21日 上午10:52:14
     * @param mobile 
     *              手机号码
     * @param params 
     *              接口参数结构体，了解详情敬请查阅文档
     * @return
     * @返回值：CoreVo.ReturnObj 结构体，了解详情敬请查阅文档
     * @异常说明：
     */
    CoreVo.ReturnObj findWayTypeByMobile(1:string mobile, 2:CoreVo.Params params);


    /**
     * @方法名：sendEmail
     * @描述：发送验证邮件
     * @创建人：<a href=mailto:hehui@eelly.net>何辉</a>
     * @修改人：
     * @修改时间：2014年9月21日 上午10:52:14
     * @param userId
     *              会员id
     * @param params 
     *              接口参数结构体，了解详情敬请查阅文档
     * @return
     * @返回值：CoreVo.ReturnObj 结构体，了解详情敬请查阅文档
     * @异常说明：
     */
    CoreVo.ReturnObj sendEmail(1:i32 userId, 2:CoreVo.Params params);

    /**
     * @方法名：sendMobileMsg
     * @描述：发送手机验证码
     * @创建人：<a href=mailto:hehui@eelly.net>何辉</a>
     * @修改人：
     * @修改时间：2014年9月21日 上午10:52:14
     * @param userId
     *              会员id
     * @param params 
     *              接口参数结构体，了解详情敬请查阅文档
     * @return
     * @返回值：CoreVo.ReturnObj 结构体，了解详情敬请查阅文档
     * @异常说明：
     */
    CoreVo.ReturnObj sendMobileMsg(1:i32 userId, 2:CoreVo.Params params);


    /**
     * @方法名：checkEmail
     * @描述：邮件验证码校验
     * @创建人：<a href=mailto:hehui@eelly.net>何辉</a>
     * @修改人：
     * @修改时间：2014年9月21日 上午10:52:14
     * @param userId
     *              会员id
     * @param verifyCode 
     *              邮箱校验码
     * @param params 
     *              接口参数结构体，了解详情敬请查阅文档
     * @return
     * @返回值：CoreVo.ReturnObj 结构体，了解详情敬请查阅文档
     * @异常说明：
     */
    CoreVo.ReturnObj checkEmail(1:i32 userId, 2:string verifyCode, 3:CoreVo.Params params);

    /**
     * @方法名：checkMobileMsg
     * @描述：手机验证码校验
     * @创建人：<a href=mailto:hehui@eelly.net>何辉</a>
     * @修改人：
     * @修改时间：2014年9月21日 上午10:52:14
     * @param userId
     *              会员id
     * @param mobileMsg 
     *              手机校验码
     * @param params 
     *              接口参数结构体，了解详情敬请查阅文档
     * @return
     * @返回值：CoreVo.ReturnObj 结构体，了解详情敬请查阅文档
     * @异常说明：
     */
    CoreVo.ReturnObj checkMobileMsg(1:i32 userId, 2:string mobileMsg, 3:CoreVo.Params params);

    /**
     * @方法名：checkQuestion
     * @描述：通过会员名且邮箱找回密码（发送验证邮件）
     * @创建人：<a href=mailto:hehui@eelly.net>何辉</a>
     * @修改人：
     * @修改时间：2014年9月21日 上午10:52:14
     * @param userId
     *              会员id
     * @param questionCode 
     *              问题编号
     * @param answer
     *              问题答案
     * @param params 
     *              接口参数结构体，了解详情敬请查阅文档
     * @return
     * @返回值：CoreVo.ReturnObj 结构体，了解详情敬请查阅文档
     * @异常说明：
     */
    CoreVo.ReturnObj checkQuestion(1:i32 userId, 2:i16 questionCode, 3:string answer, 4:CoreVo.Params params);

   /**
     * @方法名：updatePassword
     * @描述：修改密码
     * @创建人：<a href=mailto:hehui@eelly.net>何辉</a>
     * @修改人：
     * @修改时间：2014年9月21日 上午10:52:14
     * @param userId 
     *              会员id
     * @param password
     *              新的会员密码（加密字符串）
     * @param params 
     *              接口参数结构体，了解详情敬请查阅文档
     * @return
     * @返回值：CoreVo.ReturnObj 结构体，了解详情敬请查阅文档
     * @异常说明：
     */
    CoreVo.ReturnObj updatePassword(1:i32 userId, 2:string password, 3:CoreVo.Params params);
}
