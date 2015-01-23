include "../CoreAdapter.thrift"
include "../CoreVo.thrift"

namespace java com.eelly.member.adapter.member
namespace php com.eelly.member.adapter.member

// 会员信息
struct MemberVo {
   1:optional  i32             userId;               // 会员id
   2:optional  string          userName;             // 会员名
   3:optional  string          userEmail;            // 登录用的email地址
   4:optional  string          userMobile;           // 登录用的手机号码
   5:optional  i16             userSex;              // 性别
   6:optional  string          userNickName;         // 昵称
   7:optional  bool            isNicknameUpdated;    //真实姓名
   8:optional  i32             areaId;               //所属区域ID
   9:optional  string          userPhoto;            //头像
   10:optional string          userRealName;         //真实姓名
   
}

/**
 * @类名：MemberService.Iface
 * @描述:会员基本信息服务
 * @创建人：<a href=mailto: huangzhenliang@eelly.net>huangzhenliang</a>
 * @修改人：
 * @修改时间：2014年10月14日 上午10:07:19
 * @修改说明：<br/>
 * @版本信息：V1.0.0<br/>
 */
service MemberService extends CoreAdapter.CommonService {

    /**
     * @方法名：assertMobileNotExist
     * @描述：验证手机未被使用 
     * @创建人：<a href=mailto: huangzhenliang@eelly.net>huangzhenliang</a>
     * @修改人：
     * @修改时间：2014年10月11日 上午10:52:12
     * @param mobile 手机号码，了解详情敬请查阅文档
     * @param params 接口参数结构体，了解详情敬请查阅文档
     * @return
     * @返回值：CoreVo.ReturnObj 结构体，了解详情敬请查阅文档
     * @异常说明：
     */
    CoreVo.ReturnObj assertMobileNotExist(1:string mobile, 2:CoreVo.Params params);
    
    /**
     * @方法名：assertEmailNotExist
     * @描述：验证邮箱未被使用 
     * @创建人：<a href=mailto: huangzhenliang@eelly.net>huangzhenliang</a>
     * @修改人：
     * @修改时间：2014年10月11日 上午10:52:12
     * @param email
     *              邮箱，了解详情敬请查阅文档
     * @param params 
     *              接口参数结构体，了解详情敬请查阅文档
     * @return
     * @返回值：CoreVo.ReturnObj 结构体，了解详情敬请查阅文档
     * @异常说明：
     */
    CoreVo.ReturnObj assertEmailNotExist(1:string email, 2:CoreVo.Params params);
    
    /**
     * @方法名：assertNameOrNickNameNotExist
     * @描述：验证用户名/昵称未被使用 
     * @创建人：<a href=mailto: huangzhenliang@eelly.net>huangzhenliang</a>
     * @修改人：
     * @修改时间：2014年10月11日 上午10:52:12
     * @param name
     *              用户名/昵称，了解详情敬请查阅文档
     * @param params 
     *              接口参数结构体，了解详情敬请查阅文档
     * @return
     * @返回值：CoreVo.ReturnObj 结构体，了解详情敬请查阅文档
     * @异常说明：
     */
    CoreVo.ReturnObj assertNameOrNickNameNotExist(1:string name, 2:CoreVo.Params params);
    
    /**
     * @方法名：registByMobile
     * @描述：手机注册 
     * @创建人：<a href=mailto: huangzhenliang@eelly.net>huangzhenliang</a>
     * @修改人：
     * @修改时间：2014年10月11日 上午10:52:12
     * @param mobile
     *              手机，了解详情敬请查阅文档
     * @param password
     *              密码，了解详情敬请查阅文档
     * @param params 
     *              接口参数结构体，了解详情敬请查阅文档
     * @return
     * @返回值：CoreVo.ReturnObj 结构体，了解详情敬请查阅文档
     * @异常说明：
     */
    CoreVo.ReturnObj registByMobile(1:string mobile, 2:string password, 3:CoreVo.Params params);
    
    /**
     * @方法名：registByEmail
     * @描述：邮箱注册 
     * @创建人：<a href=mailto: huangzhenliang@eelly.net>huangzhenliang</a>
     * @修改人：
     * @修改时间：2014年10月11日 上午10:52:12
     * @param email
     *              邮箱，了解详情敬请查阅文档
     * @param password
     *              密码，了解详情敬请查阅文档
     * @param params 
     *              接口参数结构体，了解详情敬请查阅文档
     * @return
     * @返回值：CoreVo.ReturnObj 结构体，了解详情敬请查阅文档
     * @异常说明：
     */
    CoreVo.ReturnObj registByEmail(1:string email, 2:string password, 3:CoreVo.Params params);
    
    /**
     * @方法名：registByQuestion
     * @描述：通过密保注册 
     * @创建人：<a href=mailto: huangzhenliang@eelly.net>huangzhenliang</a>
     * @修改人：
     * @修改时间：2014年10月11日 上午10:52:12
     * @param userName
     *              用户名，了解详情敬请查阅文档
     * @param password
     *              密码，了解详情敬请查阅文档
     * @param questionCode
     *              密保问题编号，了解详情敬请查阅文档
     * @param answer
     *              密保答案，了解详情敬请查阅文档
     * @param params 
     *              接口参数结构体，了解详情敬请查阅文档
     * @return
     * @返回值：CoreVo.ReturnObj 结构体，了解详情敬请查阅文档
     * @异常说明：
     */
    CoreVo.ReturnObj registByQuestion(1:string userName, 2:string password, 3:string questionCode, 4:string answer, 5:CoreVo.Params params);
    
    /**
     * @方法名：regist10secondByMobile
     * @描述：10秒注册-手机 
     * @创建人：<a href=mailto: huangzhenliang@eelly.net>huangzhenliang</a>
     * @修改人：
     * @修改时间：2014年10月11日 上午10:52:12
     * @param mobile
     *              手机，了解详情敬请查阅文档
     * @param params 
     *              接口参数结构体，了解详情敬请查阅文档
     * @return
     * @返回值：CoreVo.ReturnObj 结构体，了解详情敬请查阅文档
     * @异常说明：
     */
    CoreVo.ReturnObj regist10secondByMobile(1:string mobile, 2:CoreVo.Params params);
    
    /**
     * @方法名：regist10secondByEmail
     * @描述：10秒注册-邮箱 
     * @创建人：<a href=mailto: huangzhenliang@eelly.net>huangzhenliang</a>
     * @修改人：
     * @修改时间：2014年10月11日 上午10:52:12
     * @param email
     *              邮箱，了解详情敬请查阅文档
     * @param params 
     *              接口参数结构体，了解详情敬请查阅文档
     * @return
     * @返回值：CoreVo.ReturnObj 结构体，了解详情敬请查阅文档
     * @异常说明：
     */
    CoreVo.ReturnObj regist10secondByEmail(1:string email, 2:CoreVo.Params params);
    
    
}
