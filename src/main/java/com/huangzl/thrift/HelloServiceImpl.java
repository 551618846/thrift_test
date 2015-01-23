/** 
* @组件名：thrift
* @包名：com.huangzl.thrift
* @文件名：HelloServiceImpl.java
* @创建时间： 2014年9月18日 下午5:27:08
* @版权信息：Copyright © 2014 eelly Co.Ltd,衣联网版权所有。
*/

package com.huangzl.thrift;

import org.apache.thrift.TException;

/**
 * @类名：HelloServiceImpl
 * @描述: 
 * @创建人：<a href=mailto: huangzhenliang@eelly.net>huangzhenliang</a>
 * @修改人：
 * @修改时间：2014年9月18日 下午5:27:08
 * @修改说明：<br/>
 * @版本信息：V1.0.0<br/>
 */
public class HelloServiceImpl implements HelloService.Iface{

    /**
      * <p>主题：sayHello</p>
      * <p>描述： </p>
      * @param name
      * @throws TException
      * @see com.huangzl.thrift.HelloService.Iface#sayHello(java.lang.String)
      */
    @Override
    public void sayHello(String name) throws TException {
        System.out.println("hello , " + name + "!");
        
    }

}

