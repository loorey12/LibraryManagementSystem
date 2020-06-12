package dao;

import java.sql.Connection;

import javax.naming.InitialContext;
import javax.sql.DataSource;
/**
* データベースの接続を管理するDAO
* @author プンヒマル
* @version 1.0.0
*/
public class DAO {
	static DataSource ds;
	 /**
	 * getConnectionメソッド
	 * DBと接続するメソッド
	 * @return Connection
	 */
	public Connection getConnection() throws Exception{
		if(ds==null){
			InitialContext ic=new InitialContext();
			//context.xmlの情報を探しに行く
			ds=(DataSource)ic.lookup("java:/comp/env/jdbc/library");
		}
		//connection を返す
		return ds.getConnection();
	}
}
