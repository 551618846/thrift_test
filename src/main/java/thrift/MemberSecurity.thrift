include "../CoreAdapter.thrift"
include "../CoreVo.thrift"

namespace java com.eelly.member.adapter.membersecurity
namespace php com.eelly.member.adapter.membersecurity


// 会员安全设置信息
struct MemberSecurityVo {
   1:optional  i32          userId;                             // 会员id
   2:optional  bool         isMobile;                           // 是否绑定手机
   3:optional  bool         isEmail;                            // 是否绑定email地址
   4:optional  bool         isSecret;                           // 是否设置密保
   5:optional  i32          mobileTime;                         // 绑定手机时间
   6:optional  i32          emailTime;                          // 绑定邮箱时间
   7:optional  bool         isPayPassword;                      //是否设置支付密码
   8:optional  bool         isPassword;                         //是否设置登录密码
   9:optional  bool         isIdentityVarification;             //是否实名认证
}


/**
 * @类名：MemberSecurityService.Iface
 * @描述: 会员安全设置服务
 * @创建人：<a href=mailto: huangzhenliang@eelly.net>huangzhenliang</a>
 * @修改人：
 * @修改时间：2014年10月15日 上午10:07:19
 * @修改说明：<br/>
 * @版本信息：V1.0.0<br/>
 */
service MemberSecurityService extends CoreAdapter.CommonService {

    /**
     * @方法名：setupPayPass
     * @描述：设置支付密码 
     * @创建人：<a href=mailto: huangzhenliang@eelly.net>huangzhenliang</a>
     * @修改人：
     * @修改时间：2014年10月15日 上午10:52:12
     * @param userId
     *              用户ID，了解详情敬请查阅文档
     * @param pw
     *              支付密码，了解详情敬请查阅文档
     * @param params 
     *              接口参数结构体，了解详情敬请查阅文档
     * @return
     * @返回值：CoreVo.ReturnObj 结构体，了解详情敬请查阅文档
     * @异常说明：
     */
    CoreVo.ReturnObj setupPayPass(1:i32 userId, 2:string pw, 3:CoreVo.Params params);
    
    /**
     * @方法名：updatePayPass
     * @描述：修改支付密码 
     * @创建人：<a href=mailto: huangzhenliang@eelly.net>huangzhenliang</a>
     * @修改人：
     * @修改时间：2014年10月15日 上午10:52:12
     * @param userId
     *              用户ID，了解详情敬请查阅文档
     * @param oldPw
     *              原支付密码，了解详情敬请查阅文档
     * @param newPw
     *              新支付密码，了解详情敬请查阅文档
     * @param params 
     *              接口参数结构体，了解详情敬请查阅文档
     * @return
     * @返回值：CoreVo.ReturnObj 结构体，了解详情敬请查阅文档
     * @异常说明：
     */
    CoreVo.ReturnObj updatePayPass(1:i32 userId, 2:string oldPw, 3:string newPw, 4:CoreVo.Params params);
    
    /**
     * @方法名：bindMobile
     * @描述：绑定手机 
     * @创建人：<a href=mailto: huangzhenliang@eelly.net>huangzhenliang</a>
     * @修改人：
     * @修改时间：2014年10月15日 上午10:52:12
     * @param userId
     *              用户ID，了解详情敬请查阅文档
     * @param mobile
     *              手机，了解详情敬请查阅文档
     * @param params 
     *              接口参数结构体，了解详情敬请查阅文档
     * @return
     * @返回值：CoreVo.ReturnObj 结构体，了解详情敬请查阅文档
     * @异常说明：
     */
    CoreVo.ReturnObj bindMobile(1:i32 userId, 2:string mobile, 3:CoreVo.Params params);
    
    /**
     * @方法名：updateBindedMobile
     * @描述：修改绑定手机 
     * @创建人：<a href=mailto: huangzhenliang@eelly.net>huangzhenliang</a>
     * @修改人：
     * @修改时间：2014年10月15日 上午10:52:12
     * @param userId
     *              用户ID，了解详情敬请查阅文档
     * @param oldMb
     *              原手机，了解详情敬请查阅文档
     * @param newMb
     *              新手机，了解详情敬请查阅文档
     * @param params 
     *              接口参数结构体，了解详情敬请查阅文档
     * @return
     * @返回值：CoreVo.ReturnObj 结构体，了解详情敬请查阅文档
     * @异常说明：
     */
    CoreVo.ReturnObj updateBindedMobile(1:i32 userId, 2:string oldMb, 3:string newMb, 4:CoreVo.Params params);
    
    /**
     * @方法名：bindEmail
     * @描述：绑定邮箱 
     * @创建人：<a href=mailto: huangzhenliang@eelly.net>huangzhenliang</a>
     * @修改人：
     * @修改时间：2014年10月15日 上午10:52:12
     * @param userId
     *              用户ID，了解详情敬请查阅文档
     * @param email
     *              邮箱，了解详情敬请查阅文档
     * @param params 
     *              接口参数结构体，了解详情敬请查阅文档
     * @return
     * @返回值：CoreVo.ReturnObj 结构体，了解详情敬请查阅文档
     * @异常说明：
     */
    CoreVo.ReturnObj bindEmail(1:i32 userId, 2:string email, 3:CoreVo.Params params);
    
    /**
     * @方法名：updateBindedEmail
     * @描述：修改绑定邮箱 
     * @创建人：<a href=mailto: huangzhenliang@eelly.net>huangzhenliang</a>
     * @修改人：
     * @修改时间：2014年10月15日 上午10:52:12
     * @param userId
     *              用户ID，了解详情敬请查阅文档
     * @param oldEmail
     *              原邮箱，了解详情敬请查阅文档
     * @param newEmail
     *              新邮箱，了解详情敬请查阅文档
     * @param params 
     *              接口参数结构体，了解详情敬请查阅文档
     * @return
     * @返回值：CoreVo.ReturnObj 结构体，了解详情敬请查阅文档
     * @异常说明：
     */
    CoreVo.ReturnObj updateBindedEmail(1:i32 userId, 2:string oldEmail, 3:string newEmail, 4:CoreVo.Params params);
    
    
    
    
    
    
    
    
    
    
    
}
