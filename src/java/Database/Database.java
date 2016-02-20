package Database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Classes.Uni;

public class Database {
	
	Connection conn = null;
	
	public static void main(String[] args){
		Database db = new Database();
		db.getConnection();
	}
	
	public Database(){
		getConnection();
	}
	
	private void getConnection(){
		try{
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/lawn","root", "");
			System.out.println("CONNECTION ESTABLISHED");
		}catch (Exception e){
			System.out.println("ERROR");
			e.printStackTrace();
		}
		
	}
	
	public void addUni(Uni uni){
		try {
		PreparedStatement stmt = conn.prepareStatement("insert into user values (null,?,?,?,?,?,?,?,?)");
		stmt.setString(1, uni.getName());
		stmt.setString(2, uni.getState());
                stmt.setInt(3, uni.getAlumno());
                stmt.setDouble(4, uni.getGpa());
                stmt.setInt(5, uni.getAct());
                stmt.setInt(6, uni.getSat());
                stmt.setString(7, uni.getFocus());
		stmt.setInt(8, uni.getCat());
                
		stmt.execute();
		} catch (Exception e) {
		e.printStackTrace();
		}
	}
	
	
	public List<Uni> showResult(Integer cat) {
		List<Uni> result = new ArrayList<>();
		try {
			getConnection();
			PreparedStatement stmt = conn.prepareStatement("select * from uni order where cat=?");
			
			ResultSet rs = stmt.executeQuery();
			while(rs.next()) {
				Uni uni  = new Uni();
				uni.setName(rs.getString("name"));
				uni.setState(rs.getString("state"));
				uni.setGpa(rs.getDouble("gpa"));
				uni.setAct(rs.getInt("act"));
				uni.setSat(rs.getInt("sat"));
				uni.setFocus(rs.getString("focus"));
				uni.setCat(rs.getInt("cat"));
                                
				result.add(uni);
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		return result;
	}
        
        
	public void editUni(String name, String state, Integer alumno, Double gpa, Integer act, Integer sat, String focus, Integer cat, Integer id) {
		try {
			getConnection();
			PreparedStatement stmt = conn.prepareStatement("update uni set `name`=?, `state`=?, `alumno`=?, `gpa`=?, `act`=?, `sat`=?, `focus`=?, `cat`=? where `id`=?");
			stmt.setString(1, name);
			stmt.setString(2, state);
                        stmt.setInt(3, alumno);
                        stmt.setDouble(4, gpa);
                        stmt.setInt(5, act);
                        stmt.setInt(6, sat);
                        stmt.setString(7, focus);
			stmt.setInt(8, cat);
                        stmt.setInt(9, id);
			
			stmt.execute();
		} catch(Exception e) {
			e.printStackTrace();
		}
	} 

   
}
