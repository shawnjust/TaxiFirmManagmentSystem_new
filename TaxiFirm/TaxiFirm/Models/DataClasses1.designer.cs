﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     此代码由工具生成。
//     运行时版本:4.0.30319.18051
//
//     对此文件的更改可能会导致不正确的行为，并且如果
//     重新生成代码，这些更改将会丢失。
// </auto-generated>
//------------------------------------------------------------------------------

namespace TaxiFirm.Models
{
	using System.Data.Linq;
	using System.Data.Linq.Mapping;
	using System.Data;
	using System.Collections.Generic;
	using System.Reflection;
	using System.Linq;
	using System.Linq.Expressions;
	using System.ComponentModel;
	using System;
	
	
	[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="taxiserver")]
	public partial class DataClasses1DataContext : System.Data.Linq.DataContext
	{
		
		private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
		
    #region 可扩展性方法定义
    partial void OnCreated();
    #endregion
		
		public DataClasses1DataContext() : 
				base(global::System.Configuration.ConfigurationManager.ConnectionStrings["taxiserverConnectionString"].ConnectionString, mappingSource)
		{
			OnCreated();
		}
		
		public DataClasses1DataContext(string connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public DataClasses1DataContext(System.Data.IDbConnection connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public DataClasses1DataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public DataClasses1DataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.FunctionAttribute(Name="dbo.checkCustomerLoginPassword", IsComposable=true)]
		public System.Nullable<int> checkCustomerLoginPassword([global::System.Data.Linq.Mapping.ParameterAttribute(DbType="Int")] System.Nullable<int> customer_id, [global::System.Data.Linq.Mapping.ParameterAttribute(DbType="VarChar(50)")] string password)
		{
			return ((System.Nullable<int>)(this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), customer_id, password).ReturnValue));
		}
		
		[global::System.Data.Linq.Mapping.FunctionAttribute(Name="dbo.checkEmpolyeeLoginPassword", IsComposable=true)]
		public System.Nullable<int> checkEmpolyeeLoginPassword([global::System.Data.Linq.Mapping.ParameterAttribute(DbType="Int")] System.Nullable<int> empolyee_id, [global::System.Data.Linq.Mapping.ParameterAttribute(DbType="VarChar(50)")] string password)
		{
			return ((System.Nullable<int>)(this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), empolyee_id, password).ReturnValue));
		}
		
		[global::System.Data.Linq.Mapping.FunctionAttribute(Name="dbo.getAllFirm", IsComposable=true)]
		public IQueryable<getAllFirmResult> getAllFirm()
		{
			return this.CreateMethodCallQuery<getAllFirmResult>(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())));
		}
		
		[global::System.Data.Linq.Mapping.FunctionAttribute(Name="dbo.getAllFirmView", IsComposable=true)]
		public IQueryable<getAllFirmViewResult> getAllFirmView()
		{
			return this.CreateMethodCallQuery<getAllFirmViewResult>(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())));
		}
		
		[global::System.Data.Linq.Mapping.FunctionAttribute(Name="dbo.getCustomerInvoicePageCount", IsComposable=true)]
		public System.Nullable<int> getCustomerInvoicePageCount([global::System.Data.Linq.Mapping.ParameterAttribute(DbType="Int")] System.Nullable<int> pageSize, [global::System.Data.Linq.Mapping.ParameterAttribute(DbType="Int")] System.Nullable<int> customer_id)
		{
			return ((System.Nullable<int>)(this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), pageSize, customer_id).ReturnValue));
		}
		
		[global::System.Data.Linq.Mapping.FunctionAttribute(Name="dbo.getCustomerInvoiceByPage", IsComposable=true)]
		public IQueryable<getCustomerInvoiceByPageResult> getCustomerInvoiceByPage([global::System.Data.Linq.Mapping.ParameterAttribute(DbType="Int")] System.Nullable<int> pageNumber, [global::System.Data.Linq.Mapping.ParameterAttribute(DbType="Int")] System.Nullable<int> pageSize, [global::System.Data.Linq.Mapping.ParameterAttribute(DbType="Int")] System.Nullable<int> customer_id)
		{
			return this.CreateMethodCallQuery<getCustomerInvoiceByPageResult>(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), pageNumber, pageSize, customer_id);
		}
		
		[global::System.Data.Linq.Mapping.FunctionAttribute(Name="dbo.getCustomerByPage", IsComposable=true)]
		public IQueryable<getCustomerByPageResult> getCustomerByPage([global::System.Data.Linq.Mapping.ParameterAttribute(DbType="Int")] System.Nullable<int> pageNumber, [global::System.Data.Linq.Mapping.ParameterAttribute(DbType="Int")] System.Nullable<int> pageSize)
		{
			return this.CreateMethodCallQuery<getCustomerByPageResult>(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), pageNumber, pageSize);
		}
		
		[global::System.Data.Linq.Mapping.FunctionAttribute(Name="dbo.getCustomerById", IsComposable=true)]
		public IQueryable<getCustomerByIdResult> getCustomerById([global::System.Data.Linq.Mapping.ParameterAttribute(DbType="Int")] System.Nullable<int> customer_id)
		{
			return this.CreateMethodCallQuery<getCustomerByIdResult>(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), customer_id);
		}
		
		[global::System.Data.Linq.Mapping.FunctionAttribute(Name="dbo.getCustomePageCount", IsComposable=true)]
		public System.Nullable<int> getCustomePageCount([global::System.Data.Linq.Mapping.ParameterAttribute(DbType="Int")] System.Nullable<int> pageSize)
		{
			return ((System.Nullable<int>)(this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), pageSize).ReturnValue));
		}
		
		[global::System.Data.Linq.Mapping.FunctionAttribute(Name="dbo.getEmpolyeeById", IsComposable=true)]
		public IQueryable<getEmpolyeeByIdResult> getEmpolyeeById([global::System.Data.Linq.Mapping.ParameterAttribute(DbType="Int")] System.Nullable<int> empolyee_id)
		{
			return this.CreateMethodCallQuery<getEmpolyeeByIdResult>(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), empolyee_id);
		}
		
		[global::System.Data.Linq.Mapping.FunctionAttribute(Name="dbo.getFirmByID", IsComposable=true)]
		public IQueryable<getFirmByIDResult> getFirmByID([global::System.Data.Linq.Mapping.ParameterAttribute(DbType="Int")] System.Nullable<int> firm_id)
		{
			return this.CreateMethodCallQuery<getFirmByIDResult>(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), firm_id);
		}
		
		[global::System.Data.Linq.Mapping.FunctionAttribute(Name="dbo.getFirmViewByPage", IsComposable=true)]
		public IQueryable<getFirmViewByPageResult> getFirmViewByPage([global::System.Data.Linq.Mapping.ParameterAttribute(DbType="Int")] System.Nullable<int> pageNumber, [global::System.Data.Linq.Mapping.ParameterAttribute(DbType="Int")] System.Nullable<int> pageSize)
		{
			return this.CreateMethodCallQuery<getFirmViewByPageResult>(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), pageNumber, pageSize);
		}
		
		[global::System.Data.Linq.Mapping.FunctionAttribute(Name="dbo.getFirmViewPageCount", IsComposable=true)]
		public System.Nullable<int> getFirmViewPageCount([global::System.Data.Linq.Mapping.ParameterAttribute(DbType="Int")] System.Nullable<int> pageSize)
		{
			return ((System.Nullable<int>)(this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), pageSize).ReturnValue));
		}
		
		[global::System.Data.Linq.Mapping.FunctionAttribute(Name="dbo.isDriver", IsComposable=true)]
		public System.Nullable<int> isDriver([global::System.Data.Linq.Mapping.ParameterAttribute(DbType="Int")] System.Nullable<int> empolyee_id)
		{
			return ((System.Nullable<int>)(this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), empolyee_id).ReturnValue));
		}
		
		[global::System.Data.Linq.Mapping.FunctionAttribute(Name="dbo.isEmpolyee", IsComposable=true)]
		public System.Nullable<int> isEmpolyee([global::System.Data.Linq.Mapping.ParameterAttribute(DbType="Int")] System.Nullable<int> empolyee_id)
		{
			return ((System.Nullable<int>)(this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), empolyee_id).ReturnValue));
		}
		
		[global::System.Data.Linq.Mapping.FunctionAttribute(Name="dbo.isHost", IsComposable=true)]
		public System.Nullable<int> isHost([global::System.Data.Linq.Mapping.ParameterAttribute(DbType="Int")] System.Nullable<int> empolyee_id)
		{
			return ((System.Nullable<int>)(this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), empolyee_id).ReturnValue));
		}
		
		[global::System.Data.Linq.Mapping.FunctionAttribute(Name="dbo.isManager", IsComposable=true)]
		public System.Nullable<int> isManager([global::System.Data.Linq.Mapping.ParameterAttribute(DbType="Int")] System.Nullable<int> empolyee_id)
		{
			return ((System.Nullable<int>)(this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), empolyee_id).ReturnValue));
		}
		
		[global::System.Data.Linq.Mapping.FunctionAttribute(Name="dbo.getManagerByPage", IsComposable=true)]
		public IQueryable<getManagerByPageResult> getManagerByPage([global::System.Data.Linq.Mapping.ParameterAttribute(DbType="Int")] System.Nullable<int> pageNumber, [global::System.Data.Linq.Mapping.ParameterAttribute(DbType="Int")] System.Nullable<int> pageSize)
		{
			return this.CreateMethodCallQuery<getManagerByPageResult>(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), pageNumber, pageSize);
		}
		
		[global::System.Data.Linq.Mapping.FunctionAttribute(Name="dbo.getManagerPageCount", IsComposable=true)]
		public System.Nullable<int> getManagerPageCount([global::System.Data.Linq.Mapping.ParameterAttribute(DbType="Int")] System.Nullable<int> pageSize)
		{
			return ((System.Nullable<int>)(this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), pageSize).ReturnValue));
		}
		
		[global::System.Data.Linq.Mapping.FunctionAttribute(Name="dbo.getManagerByNamePageCount", IsComposable=true)]
		public System.Nullable<int> getManagerByNamePageCount([global::System.Data.Linq.Mapping.ParameterAttribute(DbType="Int")] System.Nullable<int> pageSize, [global::System.Data.Linq.Mapping.ParameterAttribute(DbType="VarChar(20)")] string managerName)
		{
			return ((System.Nullable<int>)(this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), pageSize, managerName).ReturnValue));
		}
		
		[global::System.Data.Linq.Mapping.FunctionAttribute(Name="dbo.getManagerByNameByPage", IsComposable=true)]
		public IQueryable<getManagerByNameByPageResult> getManagerByNameByPage([global::System.Data.Linq.Mapping.ParameterAttribute(DbType="Int")] System.Nullable<int> pageNumber, [global::System.Data.Linq.Mapping.ParameterAttribute(DbType="Int")] System.Nullable<int> pageSize, [global::System.Data.Linq.Mapping.ParameterAttribute(DbType="VarChar(20)")] string managerName)
		{
			return this.CreateMethodCallQuery<getManagerByNameByPageResult>(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), pageNumber, pageSize, managerName);
		}
	}
	
	public partial class getAllFirmResult
	{
		
		private int _firm_id;
		
		private string _firm_name;
		
		private string _firm_address;
		
		private string _phone_number;
		
		public getAllFirmResult()
		{
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_firm_id", DbType="Int NOT NULL")]
		public int firm_id
		{
			get
			{
				return this._firm_id;
			}
			set
			{
				if ((this._firm_id != value))
				{
					this._firm_id = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_firm_name", DbType="NVarChar(20) NOT NULL", CanBeNull=false)]
		public string firm_name
		{
			get
			{
				return this._firm_name;
			}
			set
			{
				if ((this._firm_name != value))
				{
					this._firm_name = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_firm_address", DbType="NVarChar(50) NOT NULL", CanBeNull=false)]
		public string firm_address
		{
			get
			{
				return this._firm_address;
			}
			set
			{
				if ((this._firm_address != value))
				{
					this._firm_address = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_phone_number", DbType="VarChar(20) NOT NULL", CanBeNull=false)]
		public string phone_number
		{
			get
			{
				return this._phone_number;
			}
			set
			{
				if ((this._phone_number != value))
				{
					this._phone_number = value;
				}
			}
		}
	}
	
	public partial class getAllFirmViewResult
	{
		
		private int _firm_id;
		
		private string _firm_name;
		
		private string _firm_address;
		
		private string _phone_number;
		
		private System.Nullable<int> _empolyee_count;
		
		private System.Nullable<int> _driver_count;
		
		private System.Nullable<int> _host_count;
		
		private System.Nullable<int> _manager_count;
		
		private System.Nullable<int> _taxi_count;
		
		public getAllFirmViewResult()
		{
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_firm_id", DbType="Int NOT NULL")]
		public int firm_id
		{
			get
			{
				return this._firm_id;
			}
			set
			{
				if ((this._firm_id != value))
				{
					this._firm_id = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_firm_name", DbType="NVarChar(20) NOT NULL", CanBeNull=false)]
		public string firm_name
		{
			get
			{
				return this._firm_name;
			}
			set
			{
				if ((this._firm_name != value))
				{
					this._firm_name = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_firm_address", DbType="NVarChar(50) NOT NULL", CanBeNull=false)]
		public string firm_address
		{
			get
			{
				return this._firm_address;
			}
			set
			{
				if ((this._firm_address != value))
				{
					this._firm_address = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_phone_number", DbType="VarChar(20) NOT NULL", CanBeNull=false)]
		public string phone_number
		{
			get
			{
				return this._phone_number;
			}
			set
			{
				if ((this._phone_number != value))
				{
					this._phone_number = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_empolyee_count", DbType="Int")]
		public System.Nullable<int> empolyee_count
		{
			get
			{
				return this._empolyee_count;
			}
			set
			{
				if ((this._empolyee_count != value))
				{
					this._empolyee_count = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_driver_count", DbType="Int")]
		public System.Nullable<int> driver_count
		{
			get
			{
				return this._driver_count;
			}
			set
			{
				if ((this._driver_count != value))
				{
					this._driver_count = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_host_count", DbType="Int")]
		public System.Nullable<int> host_count
		{
			get
			{
				return this._host_count;
			}
			set
			{
				if ((this._host_count != value))
				{
					this._host_count = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_manager_count", DbType="Int")]
		public System.Nullable<int> manager_count
		{
			get
			{
				return this._manager_count;
			}
			set
			{
				if ((this._manager_count != value))
				{
					this._manager_count = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_taxi_count", DbType="Int")]
		public System.Nullable<int> taxi_count
		{
			get
			{
				return this._taxi_count;
			}
			set
			{
				if ((this._taxi_count != value))
				{
					this._taxi_count = value;
				}
			}
		}
	}
	
	public partial class getCustomerInvoiceByPageResult
	{
		
		private System.Nullable<long> _rowNum;
		
		private int _customer_id;
		
		private string _nick_name;
		
		private string _email;
		
		private System.Nullable<int> _credit;
		
		private int _invoice_id;
		
		private System.DateTime _create_time;
		
		private decimal _amount;
		
		private System.Nullable<System.DateTime> _regist_time;
		
		public getCustomerInvoiceByPageResult()
		{
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_rowNum", DbType="BigInt")]
		public System.Nullable<long> rowNum
		{
			get
			{
				return this._rowNum;
			}
			set
			{
				if ((this._rowNum != value))
				{
					this._rowNum = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_customer_id", DbType="Int NOT NULL")]
		public int customer_id
		{
			get
			{
				return this._customer_id;
			}
			set
			{
				if ((this._customer_id != value))
				{
					this._customer_id = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_nick_name", DbType="NVarChar(50) NOT NULL", CanBeNull=false)]
		public string nick_name
		{
			get
			{
				return this._nick_name;
			}
			set
			{
				if ((this._nick_name != value))
				{
					this._nick_name = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_email", DbType="VarChar(50) NOT NULL", CanBeNull=false)]
		public string email
		{
			get
			{
				return this._email;
			}
			set
			{
				if ((this._email != value))
				{
					this._email = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_credit", DbType="Int")]
		public System.Nullable<int> credit
		{
			get
			{
				return this._credit;
			}
			set
			{
				if ((this._credit != value))
				{
					this._credit = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_invoice_id", DbType="Int NOT NULL")]
		public int invoice_id
		{
			get
			{
				return this._invoice_id;
			}
			set
			{
				if ((this._invoice_id != value))
				{
					this._invoice_id = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_create_time", DbType="Date NOT NULL")]
		public System.DateTime create_time
		{
			get
			{
				return this._create_time;
			}
			set
			{
				if ((this._create_time != value))
				{
					this._create_time = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_amount", DbType="Money NOT NULL")]
		public decimal amount
		{
			get
			{
				return this._amount;
			}
			set
			{
				if ((this._amount != value))
				{
					this._amount = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_regist_time", DbType="SmallDateTime")]
		public System.Nullable<System.DateTime> regist_time
		{
			get
			{
				return this._regist_time;
			}
			set
			{
				if ((this._regist_time != value))
				{
					this._regist_time = value;
				}
			}
		}
	}
	
	public partial class getCustomerByPageResult
	{
		
		private System.Nullable<long> _rowNum;
		
		private int _customer_id;
		
		private string _nick_name;
		
		private string _email;
		
		private System.Nullable<int> _credit;
		
		public getCustomerByPageResult()
		{
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_rowNum", DbType="BigInt")]
		public System.Nullable<long> rowNum
		{
			get
			{
				return this._rowNum;
			}
			set
			{
				if ((this._rowNum != value))
				{
					this._rowNum = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_customer_id", DbType="Int NOT NULL")]
		public int customer_id
		{
			get
			{
				return this._customer_id;
			}
			set
			{
				if ((this._customer_id != value))
				{
					this._customer_id = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_nick_name", DbType="NVarChar(50) NOT NULL", CanBeNull=false)]
		public string nick_name
		{
			get
			{
				return this._nick_name;
			}
			set
			{
				if ((this._nick_name != value))
				{
					this._nick_name = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_email", DbType="VarChar(50) NOT NULL", CanBeNull=false)]
		public string email
		{
			get
			{
				return this._email;
			}
			set
			{
				if ((this._email != value))
				{
					this._email = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_credit", DbType="Int")]
		public System.Nullable<int> credit
		{
			get
			{
				return this._credit;
			}
			set
			{
				if ((this._credit != value))
				{
					this._credit = value;
				}
			}
		}
	}
	
	public partial class getCustomerByIdResult
	{
		
		private int _customer_id;
		
		private string _nick_name;
		
		private string _email;
		
		private System.Nullable<int> _credit;
		
		public getCustomerByIdResult()
		{
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_customer_id", DbType="Int NOT NULL")]
		public int customer_id
		{
			get
			{
				return this._customer_id;
			}
			set
			{
				if ((this._customer_id != value))
				{
					this._customer_id = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_nick_name", DbType="NVarChar(50) NOT NULL", CanBeNull=false)]
		public string nick_name
		{
			get
			{
				return this._nick_name;
			}
			set
			{
				if ((this._nick_name != value))
				{
					this._nick_name = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_email", DbType="VarChar(50) NOT NULL", CanBeNull=false)]
		public string email
		{
			get
			{
				return this._email;
			}
			set
			{
				if ((this._email != value))
				{
					this._email = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_credit", DbType="Int")]
		public System.Nullable<int> credit
		{
			get
			{
				return this._credit;
			}
			set
			{
				if ((this._credit != value))
				{
					this._credit = value;
				}
			}
		}
	}
	
	public partial class getEmpolyeeByIdResult
	{
		
		private int _empolyee_id;
		
		private int _firm_id;
		
		private string _name;
		
		private string _id_card;
		
		private System.DateTime _birthday;
		
		private System.Nullable<bool> _gender;
		
		private string _telephone;
		
		private System.Nullable<int> _age;
		
		private string _empolyee_address;
		
		public getEmpolyeeByIdResult()
		{
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_empolyee_id", DbType="Int NOT NULL")]
		public int empolyee_id
		{
			get
			{
				return this._empolyee_id;
			}
			set
			{
				if ((this._empolyee_id != value))
				{
					this._empolyee_id = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_firm_id", DbType="Int NOT NULL")]
		public int firm_id
		{
			get
			{
				return this._firm_id;
			}
			set
			{
				if ((this._firm_id != value))
				{
					this._firm_id = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_name", DbType="NVarChar(50) NOT NULL", CanBeNull=false)]
		public string name
		{
			get
			{
				return this._name;
			}
			set
			{
				if ((this._name != value))
				{
					this._name = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_id_card", DbType="Char(20) NOT NULL", CanBeNull=false)]
		public string id_card
		{
			get
			{
				return this._id_card;
			}
			set
			{
				if ((this._id_card != value))
				{
					this._id_card = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_birthday", DbType="Date NOT NULL")]
		public System.DateTime birthday
		{
			get
			{
				return this._birthday;
			}
			set
			{
				if ((this._birthday != value))
				{
					this._birthday = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_gender", DbType="Bit")]
		public System.Nullable<bool> gender
		{
			get
			{
				return this._gender;
			}
			set
			{
				if ((this._gender != value))
				{
					this._gender = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_telephone", DbType="VarChar(20) NOT NULL", CanBeNull=false)]
		public string telephone
		{
			get
			{
				return this._telephone;
			}
			set
			{
				if ((this._telephone != value))
				{
					this._telephone = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_age", DbType="Int")]
		public System.Nullable<int> age
		{
			get
			{
				return this._age;
			}
			set
			{
				if ((this._age != value))
				{
					this._age = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_empolyee_address", DbType="NVarChar(50) NOT NULL", CanBeNull=false)]
		public string empolyee_address
		{
			get
			{
				return this._empolyee_address;
			}
			set
			{
				if ((this._empolyee_address != value))
				{
					this._empolyee_address = value;
				}
			}
		}
	}
	
	public partial class getFirmByIDResult
	{
		
		private int _firm_id;
		
		private string _firm_name;
		
		private string _firm_address;
		
		private string _phone_number;
		
		public getFirmByIDResult()
		{
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_firm_id", DbType="Int NOT NULL")]
		public int firm_id
		{
			get
			{
				return this._firm_id;
			}
			set
			{
				if ((this._firm_id != value))
				{
					this._firm_id = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_firm_name", DbType="NVarChar(20) NOT NULL", CanBeNull=false)]
		public string firm_name
		{
			get
			{
				return this._firm_name;
			}
			set
			{
				if ((this._firm_name != value))
				{
					this._firm_name = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_firm_address", DbType="NVarChar(50) NOT NULL", CanBeNull=false)]
		public string firm_address
		{
			get
			{
				return this._firm_address;
			}
			set
			{
				if ((this._firm_address != value))
				{
					this._firm_address = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_phone_number", DbType="VarChar(20) NOT NULL", CanBeNull=false)]
		public string phone_number
		{
			get
			{
				return this._phone_number;
			}
			set
			{
				if ((this._phone_number != value))
				{
					this._phone_number = value;
				}
			}
		}
	}
	
	public partial class getFirmViewByPageResult
	{
		
		private System.Nullable<long> _rowNum;
		
		private int _firm_id;
		
		private string _firm_name;
		
		private string _firm_address;
		
		private string _phone_number;
		
		private System.Nullable<int> _empolyee_count;
		
		private System.Nullable<int> _driver_count;
		
		private System.Nullable<int> _host_count;
		
		private System.Nullable<int> _manager_count;
		
		private System.Nullable<int> _taxi_count;
		
		public getFirmViewByPageResult()
		{
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_rowNum", DbType="BigInt")]
		public System.Nullable<long> rowNum
		{
			get
			{
				return this._rowNum;
			}
			set
			{
				if ((this._rowNum != value))
				{
					this._rowNum = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_firm_id", DbType="Int NOT NULL")]
		public int firm_id
		{
			get
			{
				return this._firm_id;
			}
			set
			{
				if ((this._firm_id != value))
				{
					this._firm_id = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_firm_name", DbType="NVarChar(20) NOT NULL", CanBeNull=false)]
		public string firm_name
		{
			get
			{
				return this._firm_name;
			}
			set
			{
				if ((this._firm_name != value))
				{
					this._firm_name = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_firm_address", DbType="NVarChar(50) NOT NULL", CanBeNull=false)]
		public string firm_address
		{
			get
			{
				return this._firm_address;
			}
			set
			{
				if ((this._firm_address != value))
				{
					this._firm_address = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_phone_number", DbType="VarChar(20) NOT NULL", CanBeNull=false)]
		public string phone_number
		{
			get
			{
				return this._phone_number;
			}
			set
			{
				if ((this._phone_number != value))
				{
					this._phone_number = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_empolyee_count", DbType="Int")]
		public System.Nullable<int> empolyee_count
		{
			get
			{
				return this._empolyee_count;
			}
			set
			{
				if ((this._empolyee_count != value))
				{
					this._empolyee_count = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_driver_count", DbType="Int")]
		public System.Nullable<int> driver_count
		{
			get
			{
				return this._driver_count;
			}
			set
			{
				if ((this._driver_count != value))
				{
					this._driver_count = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_host_count", DbType="Int")]
		public System.Nullable<int> host_count
		{
			get
			{
				return this._host_count;
			}
			set
			{
				if ((this._host_count != value))
				{
					this._host_count = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_manager_count", DbType="Int")]
		public System.Nullable<int> manager_count
		{
			get
			{
				return this._manager_count;
			}
			set
			{
				if ((this._manager_count != value))
				{
					this._manager_count = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_taxi_count", DbType="Int")]
		public System.Nullable<int> taxi_count
		{
			get
			{
				return this._taxi_count;
			}
			set
			{
				if ((this._taxi_count != value))
				{
					this._taxi_count = value;
				}
			}
		}
	}
	
	public partial class getManagerByPageResult
	{
		
		private System.Nullable<long> _rowNum;
		
		private int _empolyee_id;
		
		private string _name;
		
		private string _id_card;
		
		private System.Nullable<bool> _gender;
		
		private string _telephone;
		
		private System.Nullable<System.DateTime> _birthday;
		
		private System.Nullable<int> _firm_id;
		
		private string _firm_name;
		
		private string _phone_number;
		
		private string _empolyee_address;
		
		private string _firm_address;
		
		public getManagerByPageResult()
		{
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_rowNum", DbType="BigInt")]
		public System.Nullable<long> rowNum
		{
			get
			{
				return this._rowNum;
			}
			set
			{
				if ((this._rowNum != value))
				{
					this._rowNum = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_empolyee_id", DbType="Int NOT NULL")]
		public int empolyee_id
		{
			get
			{
				return this._empolyee_id;
			}
			set
			{
				if ((this._empolyee_id != value))
				{
					this._empolyee_id = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_name", DbType="NVarChar(50)")]
		public string name
		{
			get
			{
				return this._name;
			}
			set
			{
				if ((this._name != value))
				{
					this._name = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_id_card", DbType="Char(20)")]
		public string id_card
		{
			get
			{
				return this._id_card;
			}
			set
			{
				if ((this._id_card != value))
				{
					this._id_card = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_gender", DbType="Bit")]
		public System.Nullable<bool> gender
		{
			get
			{
				return this._gender;
			}
			set
			{
				if ((this._gender != value))
				{
					this._gender = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_telephone", DbType="VarChar(20)")]
		public string telephone
		{
			get
			{
				return this._telephone;
			}
			set
			{
				if ((this._telephone != value))
				{
					this._telephone = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_birthday", DbType="Date")]
		public System.Nullable<System.DateTime> birthday
		{
			get
			{
				return this._birthday;
			}
			set
			{
				if ((this._birthday != value))
				{
					this._birthday = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_firm_id", DbType="Int")]
		public System.Nullable<int> firm_id
		{
			get
			{
				return this._firm_id;
			}
			set
			{
				if ((this._firm_id != value))
				{
					this._firm_id = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_firm_name", DbType="NVarChar(20)")]
		public string firm_name
		{
			get
			{
				return this._firm_name;
			}
			set
			{
				if ((this._firm_name != value))
				{
					this._firm_name = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_phone_number", DbType="VarChar(20)")]
		public string phone_number
		{
			get
			{
				return this._phone_number;
			}
			set
			{
				if ((this._phone_number != value))
				{
					this._phone_number = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_empolyee_address", DbType="NVarChar(50)")]
		public string empolyee_address
		{
			get
			{
				return this._empolyee_address;
			}
			set
			{
				if ((this._empolyee_address != value))
				{
					this._empolyee_address = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_firm_address", DbType="NVarChar(50)")]
		public string firm_address
		{
			get
			{
				return this._firm_address;
			}
			set
			{
				if ((this._firm_address != value))
				{
					this._firm_address = value;
				}
			}
		}
	}
	
	public partial class getManagerByNameByPageResult
	{
		
		private System.Nullable<long> _rowNum;
		
		private int _empolyee_id;
		
		private string _name;
		
		private string _id_card;
		
		private System.Nullable<bool> _gender;
		
		private string _telephone;
		
		private System.Nullable<System.DateTime> _birthday;
		
		private System.Nullable<int> _firm_id;
		
		private string _firm_name;
		
		private string _phone_number;
		
		private string _empolyee_address;
		
		private string _firm_address;
		
		public getManagerByNameByPageResult()
		{
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_rowNum", DbType="BigInt")]
		public System.Nullable<long> rowNum
		{
			get
			{
				return this._rowNum;
			}
			set
			{
				if ((this._rowNum != value))
				{
					this._rowNum = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_empolyee_id", DbType="Int NOT NULL")]
		public int empolyee_id
		{
			get
			{
				return this._empolyee_id;
			}
			set
			{
				if ((this._empolyee_id != value))
				{
					this._empolyee_id = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_name", DbType="NVarChar(50)")]
		public string name
		{
			get
			{
				return this._name;
			}
			set
			{
				if ((this._name != value))
				{
					this._name = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_id_card", DbType="Char(20)")]
		public string id_card
		{
			get
			{
				return this._id_card;
			}
			set
			{
				if ((this._id_card != value))
				{
					this._id_card = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_gender", DbType="Bit")]
		public System.Nullable<bool> gender
		{
			get
			{
				return this._gender;
			}
			set
			{
				if ((this._gender != value))
				{
					this._gender = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_telephone", DbType="VarChar(20)")]
		public string telephone
		{
			get
			{
				return this._telephone;
			}
			set
			{
				if ((this._telephone != value))
				{
					this._telephone = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_birthday", DbType="Date")]
		public System.Nullable<System.DateTime> birthday
		{
			get
			{
				return this._birthday;
			}
			set
			{
				if ((this._birthday != value))
				{
					this._birthday = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_firm_id", DbType="Int")]
		public System.Nullable<int> firm_id
		{
			get
			{
				return this._firm_id;
			}
			set
			{
				if ((this._firm_id != value))
				{
					this._firm_id = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_firm_name", DbType="NVarChar(20)")]
		public string firm_name
		{
			get
			{
				return this._firm_name;
			}
			set
			{
				if ((this._firm_name != value))
				{
					this._firm_name = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_phone_number", DbType="VarChar(20)")]
		public string phone_number
		{
			get
			{
				return this._phone_number;
			}
			set
			{
				if ((this._phone_number != value))
				{
					this._phone_number = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_empolyee_address", DbType="NVarChar(50)")]
		public string empolyee_address
		{
			get
			{
				return this._empolyee_address;
			}
			set
			{
				if ((this._empolyee_address != value))
				{
					this._empolyee_address = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_firm_address", DbType="NVarChar(50)")]
		public string firm_address
		{
			get
			{
				return this._firm_address;
			}
			set
			{
				if ((this._firm_address != value))
				{
					this._firm_address = value;
				}
			}
		}
	}
}
#pragma warning restore 1591
