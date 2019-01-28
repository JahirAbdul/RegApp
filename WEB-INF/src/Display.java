package com.admin;

 import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

public class Display extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	List<FetchDataBean> dataList = null;
	ResultSet rs = null;
	String fetchdata = null;
	FetchDataDAO daoObj = null;
	// Generate Getters and Setters...
	
	public List<FetchDataBean> getDataList() {
		return dataList;
	}






	public void setDataList(List<FetchDataBean> dataList) {
		this.dataList = dataList;
	}






	public ResultSet getRs() {
		return rs;
	}






	public void setRs(ResultSet rs) {
		this.rs = rs;
	}






	public String getFetchdata() {
		return fetchdata;
	}






	public void setFetchdata(String fetchdata) {
		this.fetchdata = fetchdata;
	}






	public FetchDataDAO getDaoObj() {
		return daoObj;
	}






	public void setDaoObj(FetchDataDAO daoObj) {
		this.daoObj = daoObj;
	}

	
	
	
	
	public String execute() throws Exception {
		try {
			
				dataList = new ArrayList<FetchDataBean>();
				FetchDataBean dataBean = null;
				rs = new FetchDataDAO().fetchData();
				if (rs != null) {
					while (rs.next()) {
						dataBean = new FetchDataBean();
						dataBean.setName(rs.getString("name"));
						dataBean.setMail_Id(rs.getString("mail_Id"));
						dataBean.setPhone(rs.getString("phone"));
						dataBean.setOrganisation(rs.getString("organisation"));
						dataBean.setCity(rs.getString("city"));
						dataList.add(dataBean);

					}

				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "SUCCESS";
	}

}
