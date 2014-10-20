package com.qiuguo.util;

import com.baidu.yun.channel.auth.ChannelKeyPair;
import com.baidu.yun.channel.client.BaiduChannelClient;
import com.baidu.yun.channel.exception.ChannelClientException;
import com.baidu.yun.channel.exception.ChannelServerException;
import com.baidu.yun.channel.model.PushUnicastMessageRequest;
import com.baidu.yun.channel.model.PushUnicastMessageResponse;
import com.baidu.yun.core.log.YunLogEvent;
import com.baidu.yun.core.log.YunLogHandler;

public class Push {

public static void pushmsg(String kind,String id,String message,String touserid,String tochannelid){
		


		String apiKey = "dTT1LX42Tej21dqmVBkrG8aE";
       String secretKey = "kUh0Q1gnGpKTHlZDjwhWnwuAy7VhYvet";
       ChannelKeyPair pair = new ChannelKeyPair(apiKey, secretKey);

       BaiduChannelClient channelClient = new BaiduChannelClient(pair);
       channelClient.setChannelLogHandler(new YunLogHandler() {
           public void onHandle(YunLogEvent event) {
               System.out.println(event.getMessage());
           }
       });

       try {

           PushUnicastMessageRequest request = new PushUnicastMessageRequest();
           request.setDeviceType(3); // device_type => 1: web 2: pc 3:android
           request.setChannelId(3535219021016605509L);
           request.setUserId("993910431714190225");
           request.setMessage(message);

         
           PushUnicastMessageResponse response = channelClient
                   .pushUnicastMessage(request);

           System.out.println("push amount : " + response.getSuccessAmount());

       } catch (ChannelClientException e) {
       	
           e.printStackTrace();
       } catch (ChannelServerException e) {
           System.out.println(String.format(
                   "request_id: %d, error_code: %d, error_message: %s",
                   e.getRequestId(), e.getErrorCode(), e.getErrorMsg()));
       }

   }

	public void pushnotification(String kind,String fromuserid,String fromchannelid,String title,String message,String touserid,String tochannelid){
		


  	String apiKey = "dTT1LX42Tej21dqmVBkrG8aE";
      String secretKey = "kUh0Q1gnGpKTHlZDjwhWnwuAy7VhYvet";
      ChannelKeyPair pair = new ChannelKeyPair(apiKey, secretKey);

      BaiduChannelClient channelClient = new BaiduChannelClient(pair);
      channelClient.setChannelLogHandler(new YunLogHandler() {
          public void onHandle(YunLogEvent event) {
              System.out.println(event.getMessage());
          }
      });

      try {

          PushUnicastMessageRequest request = new PushUnicastMessageRequest();
          request.setDeviceType(3); // device_type => 1: web 2: pc 3:android
          request.setChannelId( Long.parseLong(tochannelid));
          request.setUserId(touserid);
          request.setMessageType(1);
         
          String mes = "{\"title\":\""+title+"\",\"description\":\""+message+"\"}";
          request.setMessage(mes);
          PushUnicastMessageResponse response = channelClient
                  .pushUnicastMessage(request);

          System.out.println("push amount : " + response.getSuccessAmount());

      } catch (ChannelClientException e) {
      	
          e.printStackTrace();
      } catch (ChannelServerException e) {
          System.out.println(String.format(
                  "request_id: %d, error_code: %d, error_message: %s",
                  e.getRequestId(), e.getErrorCode(), e.getErrorMsg()));
      }

  }
}
