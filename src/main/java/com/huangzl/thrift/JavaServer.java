/** 
* @组件名：thrift
* @包名：com.huangzl.thrift
* @文件名：JavaServer.java
* @创建时间： 2014年9月18日 下午5:29:23
* @版权信息：Copyright © 2014 eelly Co.Ltd,衣联网版权所有。
*/

package com.huangzl.thrift;

import org.apache.thrift.server.TServer;
import org.apache.thrift.server.TServer.Args;
import org.apache.thrift.server.TSimpleServer;
import org.apache.thrift.transport.TServerSocket;
import org.apache.thrift.transport.TServerTransport;
import org.apache.thrift.transport.TTransportException;

import com.huangzl.thrift.HelloService.Iface;
import com.huangzl.thrift.HelloService.Processor;

/**
 * @类名：JavaServer
 * @描述: 
 * @创建人：<a href=mailto: huangzhenliang@eelly.net>huangzhenliang</a>
 * @修改人：
 * @修改时间：2014年9月18日 下午5:29:23
 * @修改说明：<br/>
 * @版本信息：V1.0.0<br/>
 */
public class JavaServer {

    /**
     * @方法名：main
     * @描述：TODO 
     * @创建人：<a href=mailto: huangzhenliang@eelly.net>huangzhenliang</a>
     * @修改人：
     * @修改时间：2014年9月18日 下午5:29:23
     * @param args 
     * @返回值：void 
     * @异常说明：
     */
    public static void main(String[] args) {
        final HelloServiceImpl handler = new HelloServiceImpl();
        final HelloService.Processor<Iface> processor = new Processor<HelloService.Iface>(handler);
        
        Runnable service = new Runnable() {
            public void run() {
                
                TServerTransport serverTransport = null;
                try {
                    /*
                     * 创建TServerTransport
                     */
                    serverTransport = new TServerSocket(9090);
                    /*
                     * 创建Server
                     */
                    TServer server = new TSimpleServer(new Args(serverTransport).processor(processor));
                    /*
                     * 启动Server
                     */
                    server.serve();
                    
                } catch (TTransportException e) {
                    e.printStackTrace();
                }
            }
          };      

          new Thread(service).start();
    }
    
    
    

}

