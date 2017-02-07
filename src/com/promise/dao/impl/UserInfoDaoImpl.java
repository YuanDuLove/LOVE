package com.promise.dao.impl;

import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

import com.promise.dao.UserInfoDao;
import com.promise.tools.DateTools;
import com.promise.tools.Tools;

public class UserInfoDaoImpl  extends JdbcDaoSupport implements UserInfoDao {

	private Map dto = null;
	@Override
	public void setMapDto(Map dto) {
		this.dto = dto;
	}

	@Override
	public boolean addUser() throws Exception {
		
		StringBuilder sql = new StringBuilder()
		.append("INSERT INTO USERINFO(USER_NUM,ACCOUNT,PASSWORD,NIKENAME,")
		.append("                     NAME,SEX,HEIGHT,EDU,MONEY,")
		.append("                     MARRYSTATUS,BIRTHDAY,AREA,REGDATE,BLOOD, ")
		.append("                     NATION,FAITH,MATE_SEX,MATE_MARRYSTATUS,MATE_EDU, ")
		.append("                     MATE_AREA,MATE_BMONEY,MATE_EMONEY,COMPANYTYPE) ")
		.append("              VALUES(?,?,?,?,")
		.append("                     ?,?,?,?,?,")
		.append("                     ?,?,?,?,?,")
		.append("                     ?,?,?,?,?,")
		.append("                     ?,?,?,?)")
		;
		Object args[] = {
				"user_"+DateTools.dateToString2(new Date()),
				this.dto.get("account"),
				this.dto.get("pwd"),
				this.dto.get("nickname"),
				
				this.dto.get("username"),
				this.dto.get("sex"),
				this.dto.get("height"),
				this.dto.get("educational"),
				this.dto.get("money"),
				
				this.dto.get("marryStatus"),
				this.dto.get("birthday"),
				this.dto.get("area"),
				this.dto.get("regdate"),
				"0",
				
				"0",
				"0",
				"0",
				"0",
				"0",
				
				"0",
				"0",
				"0",
				"1"
		};
		
		return this.getJdbcTemplate().update(sql.toString(), args) > 0;
	}

	@Override
	public boolean modifyMateInfo() throws Exception {
		
		StringBuilder sql = new StringBuilder()
		.append("UPDATE USERINFO")
		.append("    SET MATE_SEX = ?,MATE_BAGE = ?,MATE_EAGE = ?,MATE_AREA = ?,MATE_NATIVE = ?,")
		.append("        MATE_MARRYSTATUS= ?,MATE_EDU = ?,MATE_BMONEY = ?,MATE_EMONEY = ?,MATE_CHILD = ?,")
		.append("       MATE_BHEIGHT = ?,MATE_EHEIGHT = ?")
		.append(" WHERE ID = ?")
		;
		
		Object [] args = {
				
				this.dto.get("mate_sex"),
				this.dto.get("mate_bage"),
				this.dto.get("mate_eage"),
				this.dto.get("mate_workarea"),
				this.dto.get("mate_nativearea"),
				
				this.dto.get("mate_marry"),
				this.dto.get("mate_edu"),
				this.dto.get("mate_bmoney"),
				this.dto.get("mate_emoney"),
				this.dto.get("mate_child"),
				
				this.dto.get("mate_bheight"),
				this.dto.get("mate_eheight"),
				this.dto.get("id")
		};
		return this.getJdbcTemplate().update(sql.toString(), args) > 0;
	}

	@Override
	public boolean modifyRegInfo() throws Exception {
		 
		StringBuilder sql = new StringBuilder()
		.append("UPDATE USERINFO ")
		.append("   SET NIKENAME = ?,AREA = ?,MONEY = ?,HEIGHT = ? ")
		.append(" WHERE ID = ?")
		;
		Object args[] = {
				this.dto.get("nikename"),
				this.dto.get("area"),
				this.dto.get("money"),
				this.dto.get("height"),
				this.dto.get("id")
		};
		
		return this.getJdbcTemplate().update(sql.toString(), args) > 0;
	}

	@Override
	public boolean modifyInnerInfo() throws Exception {
		 
		StringBuilder sql= new StringBuilder()
		.append("UPDATE USERINFO")
		.append("   SET USERINNER = ?")
		.append(" WHERE ID=?")
		;
		Object args[] = {
			this.dto.get("inner"),
			this.dto.get("id")
		};
		
		return this.getJdbcTemplate().update(sql.toString(), args) > 0;
	}

	@Override
	public boolean modifyDetailInfo() throws Exception {
		
		   
		 
		StringBuilder sql = new StringBuilder()
		.append("UPDATE USERINFO")
		.append("   SET NAME = ?,AREA = ?,WEIGHT = ?,BLOOD = ?,NATION=?,FAITH=?,EDU_SCHOOL = ?")
		.append(" WHERE ID=?")
		;
		
		Object args[] = {
				this.dto.get("name"),
				this.dto.get("area"),
				this.dto.get("weight"),
				this.dto.get("blood"),
				this.dto.get("nation"),
				this.dto.get("faith"),
				this.dto.get("edu_school"),
				this.dto.get("id")
			};
		return this.getJdbcTemplate().update(sql.toString(), args) > 0;
	}

	@Override
	public boolean modifyMarryView() throws Exception {
		
		   
		       
		 
		StringBuilder sql = new StringBuilder()
		.append("UPDATE USERINFO  ")
		.append("   SET LOVER = ?,ZODIAC = ?,MARRYDATE = ?,WANTCHILD = ?,PARENT = ?,")
		.append("       OTHERPARENT = ?,REMOTELOVE = ?")
		.append(" WHERE ID=?")
		;
		
		Object args[] = {
				this.dto.get("lover"),
				this.dto.get("zodiac"),
				this.dto.get("marrydate"),
				this.dto.get("wantchild"),
				this.dto.get("parent"),
				this.dto.get("otherparent"),
				this.dto.get("remotelove"),
				//this.dto.get("dating"),
				this.dto.get("id")
		};
		
		return this.getJdbcTemplate().update(sql.toString(), args) > 0;
	}

	@Override
	public boolean modifyFamilyInfo() throws Exception {
		 
		StringBuilder sql = new StringBuilder()
		.append("UPDATE USERINFO")
		.append("   SET PARENTSTATUS = ?,PARENTMONEY = ?,BROTHER = ?,PARENTSEXPECT = ?")
		.append(" WHERE ID = ?")
		;
		Object args[] = {
			this.dto.get("parentstatus"),
			this.dto.get("parentmoney"),
			this.dto.get("brother"),
			this.dto.get("parentsexpect"),
			this.dto.get("id"),
		};
		
		return this.getJdbcTemplate().update(sql.toString(), args) > 0;
	}

	@Override
	public boolean modifyLifeInfo() throws Exception {

		StringBuilder sql = new StringBuilder()
		.append("UPDATE USERINFO")
		.append("   SET SMOKE = ?,DRINK = ?,CAR = ?,COOKING = ?,HOUSEWORK = ?,")
		.append("       DEPOSIT = ?,FEATURE = ?,HOUSE = ?")
		.append(" WHERE ID = ?")
		;
		
		Object args[] = {
				this.dto.get("smoke"),
				this.dto.get("drink"),
				this.dto.get("car"),
				this.dto.get("cooking"),
				this.dto.get("housework"),
				this.dto.get("deposit"),
				this.dto.get("feature"),
				this.dto.get("house"),
				this.dto.get("id")
		};
		
		return this.getJdbcTemplate().update(sql.toString(), args) > 0;
	}

	@Override
	public Map loginCheck() throws Exception {
		   
		StringBuilder sql = new StringBuilder()
		.append("SELECT ID,NIKENAME,NAME,ACCOUNT,USERPHOTO")
		.append("  FROM USERINFO")
		.append(" WHERE ACCOUNT = ?")
		.append("   AND PASSWORD = ?")
		;
		Object []args = {
				this.dto.get("account"),
				this.dto.get("password")
		};
		return this.queryForMapAss(sql.toString(), args);
	}

	@Override
	public Map queryRegInfo() throws Exception {
	   
		StringBuilder sql = new StringBuilder()
		.append("SELECT S.VALUE SEX,U.BIRTHDAY BIRTHDAY,E.VALUE EDU,U.NIKENAME NIKENAME,U.ACCOUNT ACCOUNT,")
		.append("       U.AREA AREA,U.MONEY MONEY,U.HEIGHT HEIGHT")
		.append("  FROM USERINFO U,SYSCODE S,SYSCODE E")
		.append(" WHERE U.ID = ?")
		.append("   AND U.SEX = S.CODE")
		.append("   AND S.NAME = ?")
		.append("   AND U.EDU = E.CODE")
		.append("   AND E.NAME = ?")
		;
		
		Object args[] = {
				this.dto.get("id"),
				"sex",
				"edu"
		};
		return this.queryForMapAss(sql.toString(), args);
	}

	@Override
	public Map queryMateInfo() throws Exception {
	   
		StringBuilder sql = new StringBuilder()
		.append("SELECT U.MATE_SEX MATE_SEX,U.MATE_BAGE MATE_BAGE,U.MATE_EAGE MATE_EAGE,U.MATE_AREA MATE_AREA,U.MATE_NATIVE MATE_NATIVE,")
		.append("       U.MATE_MARRYSTATUS MATE_MARRYSTATUS,SE.VALUE MATE_EDU,U.MATE_EDU MATE_EDUS,SMB.VALUE MATE_BMONEY,U.MATE_BMONEY MATE_BMONEYS,")
		.append("       SME.VALUE MATE_EMONEY,U.MATE_EMONEY MATE_EMONEYS,U.MATE_CHILD MATE_CHILD,U.MATE_BHEIGHT MATE_BHEIGHT,U.MATE_EHEIGHT MATE_EHEIGHT,U.USERPHOTO USERPHOTO")
		.append("  FROM USERINFO U,SYSCODE SE,SYSCODE SMB,SYSCODE SME")
		.append(" WHERE U.ID= ?")
		.append("   AND SE.NAME=?")
		.append("   AND U.EDU = SE.CODE")
		.append("   AND SMB.NAME=?")
		.append("   AND U.MATE_BMONEY = SMB.CODE")
		.append("   AND SME.NAME=?")
		.append("   AND U.MATE_EMONEY = SME.CODE")
		;
		
		Object args[] = {
				this.dto.get("id"),
				"edu",
				"money",
				"money"
		};
		return this.queryForMapAss(sql.toString(), args);
	}

	@Override
	public Map queryDetailInfo() throws Exception {
	 		
		StringBuilder sql = new StringBuilder()
		.append("SELECT NAME,AREA,WEIGHT,BLOOD,NATION,")
		.append("       FAITH,EDU_SCHOOL")
		.append("  FROM USERINFO")
		.append(" WHERE ID = ?")
		;
		
		Object args = this.dto.get("id");
		return this.getJdbcTemplate().queryForMap(sql.toString(), args);
	}

	@Override
	public Map queryFamilyInfo() throws Exception {
		 
		StringBuilder sql = new StringBuilder()
		.append("SELECT PARENTSTATUS,PARENTMONEY,BROTHER,PARENTSEXPECT")
		.append("  FROM USERINFO")
		.append(" WHERE ID = ?")
		;
		Object args = this.dto.get("id");
		return this.getJdbcTemplate().queryForMap(sql.toString(), args);
	}

	@Override
	public Map queryInnerInfo() throws Exception {
		 
		StringBuilder sql = new StringBuilder()
		.append("SELECT USERINNER")
		.append("  FROM USERINFO")
		.append(" WHERE ID = ?")
		;
		Object args = this.dto.get("id");
		return this.getJdbcTemplate().queryForMap(sql.toString(), args);
	}

	@Override
	public Map queryLifeInfo() throws Exception {
	 
		StringBuilder sql = new StringBuilder()
		.append("SELECT SMOKE,DRINK,CAR,COOKING,HOUSEWORK,")
		.append("       DEPOSIT,FEATURE,HOUSE")
		.append("  FROM USERINFO")
		.append(" WHERE ID = ?")
		;
		
		Object args = this.dto.get("id");
		return this.getJdbcTemplate().queryForMap(sql.toString(), args);
	}

	@Override
	public Map queryMarryInfo() throws Exception {
	 	 
		StringBuilder sql = new StringBuilder()
		.append("SELECT LOVER,ZODIAC,MARRYDATE,WANTCHILD,PARENT,")
		.append("       OTHERPARENT,REMOTELOVE")
		.append("  FROM USERINFO")
		.append(" WHERE ID = ?")
		;
		
		Object args = this.dto.get("id");
		return this.getJdbcTemplate().queryForMap(sql.toString(), args);
	}

	@Override
	public Map queryWorkInfo() throws Exception {
		
		  
		 
		StringBuilder sql = new StringBuilder()
		.append("SELECT JOBTYPE,COMPANYTYPE,BUSYDEGREE,JOBCONDITION")
		.append("  FROM USERINFO")
		.append(" WHERE ID = ?")
		;
		
		Object args = this.dto.get("id");
		return this.getJdbcTemplate().queryForMap(sql.toString(), args);
	}

	@Override
	public boolean modifyWorkInfo() throws Exception {

		StringBuilder sql = new StringBuilder()
		.append("UPDATE USERINFO")
		.append("   SET JOBTYPE = ?,COMPANYTYPE = ?,BUSYDEGREE = ?,JOBCONDITION = ?")
		.append(" WHERE ID = ?")
		;
		
		Object [] args = {
				this.dto.get("OccupationName"),
				this.dto.get("companyType"),
				this.dto.get("workBusy"),
				this.dto.get("personality"),
				this.dto.get("id")
		};
		return this.getJdbcTemplate().update(sql.toString(), args) > 0;
	}

	@Override
	public Map queryInfoById() throws Exception {
		
		StringBuilder sql = new StringBuilder()
		.append("SELECT U.NIKENAME NIKENAME,U.BIRTHDAY BIRTHDAY,U.HEIGHT HEIGHT,SM.VALUE MONEY,M.VALUE MARRYSTATUS,")
		.append("       E.VALUE EDU,A.VALUE AREA,U.JOBTYPE JOBTYPE,A.VALUE AREA,U.USERINNER USERINNER,")
		.append("       U.WEIGHT WEIGHT,N.VALUE NATION,F.VALUE FAITH,B.VALUE BLOOD,SC.VALUE COMPANYTYPE,")
		.append("       U.HOME HOME,U.CAR CAR,U.SMOKE SMOKE,U.DRINK DRINK,U.COOKING COOKING,")
		.append("       U.HOUSEWORK HOUSEWORK,U.MARRYDATE MARRYDATE,U.PARENT PARENT,U.OTHERPARENT OTHERPARENT,U.DATING DATING,")
		.append("       MS.VALUE MATE_SEX,U.MATE_BAGE MATE_BAGE,U.MATE_EAGE MATE_EAGE,U.MATE_BHEIGHT MATE_BHEIGHT,U.MATE_EHEIGHT MATE_EHEIGHT,")
		.append("       ME.VALUE MATE_EDU,MBB.VALUE MATE_BMONEY,MBE.VALUE MATE_EMONEY,MM.VALUE MATE_MARRYSTATUS,MA.VALUE MATE_AREA,")
		.append("       U.MATE_CHILD MATE_CHILD,U.USERPHOTO USERPHOTO,S.VALUE SEX,U.HOUSE HOUSE")
		.append("  FROM USERINFO U,SYSCODE S,SYSCODE E,SYSCODE M,SYSCODE N,SYSCODE MS,SYSCODE ME,SYSCODE MM,SYSCODE B,SYSCODE F,SYSCODE MA,SYSCODE A,SYSCODE MBB,SYSCODE MBE,SYSCODE SM,SYSCODE SC")
		.append(" WHERE U.ID = ?")
		.append("   AND S.NAME=?")//求性别
		.append("   AND U.SEX = S.CODE")
		.append("   AND E.NAME=?")//求学历
		.append("   AND U.EDU = E.CODE")
		.append("   AND M.NAME=?")//求婚姻状况
		.append("   AND U.MARRYSTATUS = M.CODE")
		.append("   AND N.NAME=?")//求民族
		.append("   AND U.NATION = N.CODE")
		.append("   AND MS.NAME=?")//求择偶条件性别
		.append("   AND U.MATE_SEX = MS.CODE")
		.append("   AND ME.NAME=?")//求择偶条件学历
		.append("   AND U.MATE_EDU = ME.CODE")
		.append("   AND MM.NAME=?")//求择偶条件婚姻状况
		.append("   AND U.MATE_MARRYSTATUS = MM.CODE")
		.append("   AND B.NAME=?")//求血型
		.append("   AND U.BLOOD = B.CODE")
		.append("   AND F.NAME=?")//求宗教信仰
		.append("   AND U.FAITH = F.CODE")
		.append("   AND MA.NAME=?")//求择偶条件工作地区
		.append("   AND U.MATE_AREA = MA.CODE")
		.append("   AND A.NAME=?")//求工作地区
		.append("   AND U.AREA = A.CODE")
		.append("   AND MBB.NAME=?")//求择偶条件中最低工作
		.append("   AND U.MATE_BMONEY = MBB.CODE")
		.append("   AND MBE.NAME=?")//求择偶条件中最高工作
		.append("   AND U.MATE_EMONEY = MBE.CODE")
		.append("   AND SM.NAME=?")//求月收入
		.append("   AND U.MONEY = SM.CODE")
		.append("   AND SC.NAME=?")//求公司类型
		.append("   AND U.COMPANYTYPE = SC.CODE")
		;
		
		Object args[] = {
				this.dto.get("id"),
				"sex",
				"edu",
				"marrystatus",
				"nation",
				"sex",
				"edu",
				"marrystatus",
				"blood",
				"faith",
				"area",
				"area",
				"money",
				"money",
				"income",
				"company"
		};
		return this.queryForMapAss(sql.toString(), args);
	}

	@Override
	public List queryUserInfoByAss() throws Exception {
		     
		StringBuilder sql = new StringBuilder()
		.append("SELECT U.ID ID,U.NIKENAME NIKENAME,U.BIRTHDAY BIRTHDAY,S.VALUE AREA,U.HEIGHT HEIGHT,SM.VALUE MONEY,U.USERINNER USERINNER,U.USERPHOTO USERPHOTO")
		.append("  FROM USERINFO U,SYSCODE S,SYSCODE SM")
		//.append(" WHERE AGE IN(20,30)")
		.append("   WHERE 1 = 1")
		.append("     AND S.NAME = ?")
		.append("     AND S.CODE = U.AREA")
		.append("     AND SM.NAME = ?")
		.append("     AND SM.CODE = U.MONEY")
		;
		
		List args = new ArrayList();
		args.add("area");
		args.add("income");
		Object sex = this.dto.get("mate_sex");
		if(sex != null && !sex.equals("")){
			sql.append("  AND U.SEX = ?");
			args.add(sex);
		}
		sql.append(" ORDER BY U.ID");
		return this.getJdbcTemplate().queryForList(sql.toString(), args.toArray());
	}
	protected final Map queryForMapAss(String sql,Object...id)throws Exception
	{
	
		return this.getJdbcTemplate()
		    .query
		    (
		      sql,
		      new ResultSetExtractor<Map>()
		      {
				@Override
				public Map extractData(ResultSet rs) throws SQLException,DataAccessException
				{
					Map ins=null;
					if(rs.next())
					{
						ins=new HashMap();
						ResultSetMetaData rsmd=rs.getMetaData();
						int size=rsmd.getColumnCount();
						for(int i=1;i<=size;i++)
						{
							ins.put(rsmd.getColumnLabel(i), rs.getString(i));
						}
					}
					return ins;
				}
		    	  
		      },
		      id
		    );
	}

	@Override
	public List queryUserInfo() throws Exception {
		Object sex = dto.get("sex");
		Object bage = dto.get("bage");
		Object eage = dto.get("eage");
		Object marrystatus = dto.get("marrystatus");
		Object bheight = dto.get("bheight");
		Object eheight = dto.get("eheight");
		     
		StringBuilder sql = new StringBuilder()
		.append("SELECT U.ID ID,U.NIKENAME NIKENAME,U.BIRTHDAY BIRTHDAY,SA.VALUE AREA,U.HEIGHT HEIGHT,U.MONEY MONEY,U.USERINNER USERINNER,U.USERPHOTO USERPHOTO")
		.append("  FROM USERINFO U,SYSCODE SA")
		.append("   WHERE U.ID <> ?")
		.append("     AND SA.NAME=?")
		.append("     AND SA.CODE = U.AREA")
		;
		List args = new ArrayList();
		args.add(dto.get("id"));
		args.add("area");
		if(sex != null && !sex.equals("")){
			sql.append(" AND U.SEX = ?");
			args.add(sex);
		}
		if(bage != null && !bage.equals("")){
			sql.append(" AND DATE(U.BIRTHDAY) <= ?");
			args.add(Tools.ageToDate(bage.toString()));
		}
		if(eage != null && !eage.equals("")){
			sql.append(" AND DATE(U.BIRTHDAY) >= ?");
			args.add(Tools.ageToDate(eage.toString()));
		}
		if(marrystatus != null && !marrystatus.equals("")){
			sql.append(" AND U.MARRYSTATUS = ?");
			args.add(marrystatus);
		}
		if(bheight != null && !bheight.equals("")){
			sql.append(" AND U.HEIGHT >= ?");
			args.add(bheight);
		}
		if(eheight != null && !eheight.equals("")){
			sql.append(" AND U.HEIGHT <= ?");
			args.add(eheight);
		}
		sql.append(" ORDER BY U.ID");
		return this.getJdbcTemplate().queryForList(sql.toString(), args.toArray());
	}

	@Override
	public boolean modifyUserPhoto() throws Exception {
		 
		StringBuilder sql = new StringBuilder()
		.append("UPDATE USERINFO")
		.append("   SET USERPHOTO = ?")
		.append(" WHERE ID = ?")
		;
		Object [] args = {
				this.dto.get("userphoto"),
				this.dto.get("id")
		};
		return this.getJdbcTemplate().update(sql.toString(),args) > 0;
	}

	@Override
	public Map queryUserPhoto() throws Exception {
		 
		StringBuilder sql = new StringBuilder()
		.append("SELECT USERPHOTO")
		.append("  FROM USERINFO")
		.append(" WHERE ID = ?")
		;
		
		Object args = this.dto.get("id");
		return this.queryForMapAss(sql.toString(), args);
	}

}
