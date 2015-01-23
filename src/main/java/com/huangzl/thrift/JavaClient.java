/** 
* @组件名：thrift
* @包名：com.huangzl.thrift
* @文件名：JavaClient.java
* @创建时间： 2014年9月18日 下午5:37:59
* @版权信息：Copyright © 2014 eelly Co.Ltd,衣联网版权所有。
*/

package com.huangzl.thrift;

import org.apache.thrift.TException;
import org.apache.thrift.protocol.TBinaryProtocol;
import org.apache.thrift.protocol.TProtocol;
import org.apache.thrift.transport.TSocket;
import org.apache.thrift.transport.TTransport;
import org.apache.thrift.transport.TTransportException;

/**
 * @类名：JavaClient
 * @描述: 
 * @创建人：<a href=mailto: huangzhenliang@eelly.net>huangzhenliang</a>
 * @修改人：
 * @修改时间：2014年9月18日 下午5:37:59
 * @修改说明：<br/>
 * @版本信息：V1.0.0<br/>
 */
public class JavaClient {

    /**
     * @方法名：main
     * @描述：TODO 
     * @创建人：<a href=mailto: huangzhenliang@eelly.net>huangzhenliang</a>
     * @修改人：
     * @修改时间：2014年9月18日 下午5:37:59
     * @param args 
     * @返回值：void 
     * @异常说明：
     */
    public static void main(String[] args) {
        /*
         * 创建Transport
         */
        TTransport transport = new TSocket("localhost", 9090);
        try {
            transport.open();
        } catch (TTransportException e) {
            e.printStackTrace();
        }
        /*
         * 为transport对象创建输入输出protocol
         */
        TProtocol protocol = new TBinaryProtocol(transport);
        
        /*
         * 基于TTransport和TProtocol创建 Client
         */
        HelloService.Client client = new HelloService.Client(protocol);

        try {
            perform(client);
        } catch (TException e) {
            e.printStackTrace();
        }

        transport.close();
    }
    
    
    public static void perform(HelloService.Client client) throws TException{
        client.sayHello("huangzl");
    }

}

