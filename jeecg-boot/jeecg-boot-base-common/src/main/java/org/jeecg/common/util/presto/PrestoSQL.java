package org.jeecg.common.util.presto;

import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class PrestoSQL {
    public static List<Map<String, Object>> convertList(String sql) {
        Connection connection;
        Statement stmt;
        ResultSet rs = null;
        try{
            Class.forName("com.facebook.presto.jdbc.PrestoDriver");
            connection = DriverManager.getConnection("jdbc:presto://192.168.2.174:8080/hive","hive",null);
            stmt = connection.createStatement();
            //ResultSet rs = stmt.executeQuery("show schemas");
            //rs = stmt.executeQuery("select * from quick8_log.dws_quick8_sdk_log where dt='20190413' limit 5");
            rs = stmt.executeQuery(sql);
        }catch(SQLException se){
            System.out.println("presto连接失败！");
            se.printStackTrace() ;
        }catch (Exception e){
            e.printStackTrace();
        }

        List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
        try {
            ResultSetMetaData md = rs.getMetaData();
            int columnCount = md.getColumnCount();
            while (rs.next()) {
                Map<String, Object> rowData = new HashMap<String, Object>();
                for (int i = 1; i <= columnCount; i++) {
                    rowData.put(md.getColumnName(i), rs.getObject(i));
                }
                list.add(rowData);
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } finally {
            try {
                if (rs != null)
                    rs.close();
                rs = null;
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return list;
    }


//    public static void main(String[] args){
//        String sql = "select * from quick8_log.dws_quick8_sdk_log where dt='20190413' limit 5";
//        List<Map<String, Object>> list = PrestoSQL.convertList(sql);
//        //System.out.println(list.size());
//        for(int i=0;i<list.size();i++){
//            System.out.println(list.get(i));
//        }
//    }
}
