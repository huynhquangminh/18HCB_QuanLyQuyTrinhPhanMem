﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace EntityData
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Entity.Core.Objects;
    using System.Linq;
    
    public partial class WebLapTrinhEntities : DbContext
    {
        public WebLapTrinhEntities()
            : base("name=WebLapTrinhEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<BieuDoTheoDoi> BieuDoTheoDois { get; set; }
        public virtual DbSet<CapDo> CapDoes { get; set; }
        public virtual DbSet<DSBaiHoc> DSBaiHocs { get; set; }
        public virtual DbSet<DSBaiHocPass_Of_TaiKhoan> DSBaiHocPass_Of_TaiKhoan { get; set; }
        public virtual DbSet<DSBanBe> DSBanBes { get; set; }
        public virtual DbSet<DSCauHoi> DSCauHois { get; set; }
        public virtual DbSet<DSDapAn> DSDapAns { get; set; }
        public virtual DbSet<DSKhoaHocPass_Of_TaiKhoan> DSKhoaHocPass_Of_TaiKhoan { get; set; }
        public virtual DbSet<DSThongBao> DSThongBaos { get; set; }
        public virtual DbSet<DSYeuCauKetBan> DSYeuCauKetBans { get; set; }
        public virtual DbSet<KhoaHoc> KhoaHocs { get; set; }
        public virtual DbSet<LoaiDiemKN> LoaiDiemKNs { get; set; }
        public virtual DbSet<PhanHoi> PhanHois { get; set; }
        public virtual DbSet<sysdiagram> sysdiagrams { get; set; }
        public virtual DbSet<TaiKhoan> TaiKhoans { get; set; }
        public virtual DbSet<ThongTinTaiKhoan> ThongTinTaiKhoans { get; set; }
    
        public virtual ObjectResult<ACCOUNT_LOGIN_Result> ACCOUNT_LOGIN(string user, string pass)
        {
            var userParameter = user != null ?
                new ObjectParameter("user", user) :
                new ObjectParameter("user", typeof(string));
    
            var passParameter = pass != null ?
                new ObjectParameter("pass", pass) :
                new ObjectParameter("pass", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<ACCOUNT_LOGIN_Result>("ACCOUNT_LOGIN", userParameter, passParameter);
        }
    
        public virtual int Delete_BaiHocById(Nullable<int> id)
        {
            var idParameter = id.HasValue ?
                new ObjectParameter("id", id) :
                new ObjectParameter("id", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("Delete_BaiHocById", idParameter);
        }
    
        public virtual int Delete_BaiHocByIdKhoaHoc(Nullable<int> idKhoaHoc)
        {
            var idKhoaHocParameter = idKhoaHoc.HasValue ?
                new ObjectParameter("idKhoaHoc", idKhoaHoc) :
                new ObjectParameter("idKhoaHoc", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("Delete_BaiHocByIdKhoaHoc", idKhoaHocParameter);
        }
    
        public virtual int Delete_BanBe(Nullable<int> idbanbe, Nullable<int> idaccount)
        {
            var idbanbeParameter = idbanbe.HasValue ?
                new ObjectParameter("idbanbe", idbanbe) :
                new ObjectParameter("idbanbe", typeof(int));
    
            var idaccountParameter = idaccount.HasValue ?
                new ObjectParameter("idaccount", idaccount) :
                new ObjectParameter("idaccount", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("Delete_BanBe", idbanbeParameter, idaccountParameter);
        }
    
        public virtual int Delete_CauHoiById(Nullable<int> id)
        {
            var idParameter = id.HasValue ?
                new ObjectParameter("id", id) :
                new ObjectParameter("id", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("Delete_CauHoiById", idParameter);
        }
    
        public virtual int Delete_CauHoiByIdBaiHoc(Nullable<int> idbaihoc)
        {
            var idbaihocParameter = idbaihoc.HasValue ?
                new ObjectParameter("idbaihoc", idbaihoc) :
                new ObjectParameter("idbaihoc", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("Delete_CauHoiByIdBaiHoc", idbaihocParameter);
        }
    
        public virtual int Delete_DapAnById(Nullable<int> id)
        {
            var idParameter = id.HasValue ?
                new ObjectParameter("id", id) :
                new ObjectParameter("id", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("Delete_DapAnById", idParameter);
        }
    
        public virtual int Delete_DapAnByIdCauHoi(Nullable<int> idcauhoi)
        {
            var idcauhoiParameter = idcauhoi.HasValue ?
                new ObjectParameter("idcauhoi", idcauhoi) :
                new ObjectParameter("idcauhoi", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("Delete_DapAnByIdCauHoi", idcauhoiParameter);
        }
    
        public virtual int Delete_KhoaHocById(Nullable<int> id)
        {
            var idParameter = id.HasValue ?
                new ObjectParameter("id", id) :
                new ObjectParameter("id", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("Delete_KhoaHocById", idParameter);
        }
    
        public virtual int Delete_YeuCauKetBan(Nullable<int> idbanbe, Nullable<int> idaccount)
        {
            var idbanbeParameter = idbanbe.HasValue ?
                new ObjectParameter("idbanbe", idbanbe) :
                new ObjectParameter("idbanbe", typeof(int));
    
            var idaccountParameter = idaccount.HasValue ?
                new ObjectParameter("idaccount", idaccount) :
                new ObjectParameter("idaccount", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("Delete_YeuCauKetBan", idbanbeParameter, idaccountParameter);
        }
    
        public virtual ObjectResult<Get_all_account_same_khoahoc_Result> Get_all_account_same_khoahoc(Nullable<int> idTaiKhoan, Nullable<int> idKhoaHoc)
        {
            var idTaiKhoanParameter = idTaiKhoan.HasValue ?
                new ObjectParameter("idTaiKhoan", idTaiKhoan) :
                new ObjectParameter("idTaiKhoan", typeof(int));
    
            var idKhoaHocParameter = idKhoaHoc.HasValue ?
                new ObjectParameter("idKhoaHoc", idKhoaHoc) :
                new ObjectParameter("idKhoaHoc", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Get_all_account_same_khoahoc_Result>("Get_all_account_same_khoahoc", idTaiKhoanParameter, idKhoaHocParameter);
        }
    
        public virtual ObjectResult<GET_BieuDoTheoDoi_Result> GET_BieuDoTheoDoi(Nullable<int> idTaikhoan)
        {
            var idTaikhoanParameter = idTaikhoan.HasValue ?
                new ObjectParameter("idTaikhoan", idTaikhoan) :
                new ObjectParameter("idTaikhoan", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<GET_BieuDoTheoDoi_Result>("GET_BieuDoTheoDoi", idTaikhoanParameter);
        }
    
        public virtual ObjectResult<Get_CapDo_Result> Get_CapDo()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Get_CapDo_Result>("Get_CapDo");
        }
    
        public virtual ObjectResult<Nullable<int>> Get_DiemPerThang(Nullable<int> idTaikhoan, Nullable<int> idKhoaHoc, Nullable<System.DateTime> ngayHienTai)
        {
            var idTaikhoanParameter = idTaikhoan.HasValue ?
                new ObjectParameter("idTaikhoan", idTaikhoan) :
                new ObjectParameter("idTaikhoan", typeof(int));
    
            var idKhoaHocParameter = idKhoaHoc.HasValue ?
                new ObjectParameter("idKhoaHoc", idKhoaHoc) :
                new ObjectParameter("idKhoaHoc", typeof(int));
    
            var ngayHienTaiParameter = ngayHienTai.HasValue ?
                new ObjectParameter("NgayHienTai", ngayHienTai) :
                new ObjectParameter("NgayHienTai", typeof(System.DateTime));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Nullable<int>>("Get_DiemPerThang", idTaikhoanParameter, idKhoaHocParameter, ngayHienTaiParameter);
        }
    
        public virtual ObjectResult<Get_DSBaiHoc_ById_Result> Get_DSBaiHoc_ById(Nullable<int> idKhoaHoc)
        {
            var idKhoaHocParameter = idKhoaHoc.HasValue ?
                new ObjectParameter("idKhoaHoc", idKhoaHoc) :
                new ObjectParameter("idKhoaHoc", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Get_DSBaiHoc_ById_Result>("Get_DSBaiHoc_ById", idKhoaHocParameter);
        }
    
        public virtual ObjectResult<Get_DSBaiHocPass_Result> Get_DSBaiHocPass(Nullable<int> idTTTaiKhoan)
        {
            var idTTTaiKhoanParameter = idTTTaiKhoan.HasValue ?
                new ObjectParameter("idTTTaiKhoan", idTTTaiKhoan) :
                new ObjectParameter("idTTTaiKhoan", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Get_DSBaiHocPass_Result>("Get_DSBaiHocPass", idTTTaiKhoanParameter);
        }
    
        public virtual ObjectResult<Get_DSBanBe_By_IdAccount_Result> Get_DSBanBe_By_IdAccount(Nullable<int> idAccount)
        {
            var idAccountParameter = idAccount.HasValue ?
                new ObjectParameter("idAccount", idAccount) :
                new ObjectParameter("idAccount", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Get_DSBanBe_By_IdAccount_Result>("Get_DSBanBe_By_IdAccount", idAccountParameter);
        }
    
        public virtual ObjectResult<GET_DSCauHoi_Follow_IdBaiHoc_IdCapDo_Result> GET_DSCauHoi_Follow_IdBaiHoc_IdCapDo(Nullable<int> idBaiHoc, Nullable<int> idCapDo)
        {
            var idBaiHocParameter = idBaiHoc.HasValue ?
                new ObjectParameter("idBaiHoc", idBaiHoc) :
                new ObjectParameter("idBaiHoc", typeof(int));
    
            var idCapDoParameter = idCapDo.HasValue ?
                new ObjectParameter("idCapDo", idCapDo) :
                new ObjectParameter("idCapDo", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<GET_DSCauHoi_Follow_IdBaiHoc_IdCapDo_Result>("GET_DSCauHoi_Follow_IdBaiHoc_IdCapDo", idBaiHocParameter, idCapDoParameter);
        }
    
        public virtual ObjectResult<GET_DSDapAn_Follow_IdBaiHoc_IdCapDo_Result> GET_DSDapAn_Follow_IdBaiHoc_IdCapDo(Nullable<int> idBaiHoc, Nullable<int> idCapDo)
        {
            var idBaiHocParameter = idBaiHoc.HasValue ?
                new ObjectParameter("idBaiHoc", idBaiHoc) :
                new ObjectParameter("idBaiHoc", typeof(int));
    
            var idCapDoParameter = idCapDo.HasValue ?
                new ObjectParameter("idCapDo", idCapDo) :
                new ObjectParameter("idCapDo", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<GET_DSDapAn_Follow_IdBaiHoc_IdCapDo_Result>("GET_DSDapAn_Follow_IdBaiHoc_IdCapDo", idBaiHocParameter, idCapDoParameter);
        }
    
        public virtual ObjectResult<Get_DSKhoaHoc_Result> Get_DSKhoaHoc()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Get_DSKhoaHoc_Result>("Get_DSKhoaHoc");
        }
    
        public virtual ObjectResult<GET_DSKhoaHocPass_By_IdTTTaiKhoan_Result> GET_DSKhoaHocPass_By_IdTTTaiKhoan(Nullable<int> idTTTaiKhoan)
        {
            var idTTTaiKhoanParameter = idTTTaiKhoan.HasValue ?
                new ObjectParameter("idTTTaiKhoan", idTTTaiKhoan) :
                new ObjectParameter("idTTTaiKhoan", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<GET_DSKhoaHocPass_By_IdTTTaiKhoan_Result>("GET_DSKhoaHocPass_By_IdTTTaiKhoan", idTTTaiKhoanParameter);
        }
    
        public virtual ObjectResult<GET_DSThongBao_Result> GET_DSThongBao(Nullable<int> idaccount)
        {
            var idaccountParameter = idaccount.HasValue ?
                new ObjectParameter("idaccount", idaccount) :
                new ObjectParameter("idaccount", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<GET_DSThongBao_Result>("GET_DSThongBao", idaccountParameter);
        }
    
        public virtual ObjectResult<Get_DsYeuCauKetBan_Result> Get_DsYeuCauKetBan(Nullable<int> idAccount)
        {
            var idAccountParameter = idAccount.HasValue ?
                new ObjectParameter("idAccount", idAccount) :
                new ObjectParameter("idAccount", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Get_DsYeuCauKetBan_Result>("Get_DsYeuCauKetBan", idAccountParameter);
        }
    
        public virtual ObjectResult<Get_LoaiDiemKinhNghiem_Result> Get_LoaiDiemKinhNghiem()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Get_LoaiDiemKinhNghiem_Result>("Get_LoaiDiemKinhNghiem");
        }
    
        public virtual ObjectResult<GET_THONGTINTAIKHOAN_Result> GET_THONGTINTAIKHOAN(Nullable<int> idTaikhoan)
        {
            var idTaikhoanParameter = idTaikhoan.HasValue ?
                new ObjectParameter("idTaikhoan", idTaikhoan) :
                new ObjectParameter("idTaikhoan", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<GET_THONGTINTAIKHOAN_Result>("GET_THONGTINTAIKHOAN", idTaikhoanParameter);
        }
    
        public virtual int INSERT_ACCOUNT(string user, string pass)
        {
            var userParameter = user != null ?
                new ObjectParameter("user", user) :
                new ObjectParameter("user", typeof(string));
    
            var passParameter = pass != null ?
                new ObjectParameter("pass", pass) :
                new ObjectParameter("pass", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("INSERT_ACCOUNT", userParameter, passParameter);
        }
    
        public virtual int Insert_DSBaiHoc(string tenbaihoc, Nullable<int> idkhoahoc)
        {
            var tenbaihocParameter = tenbaihoc != null ?
                new ObjectParameter("tenbaihoc", tenbaihoc) :
                new ObjectParameter("tenbaihoc", typeof(string));
    
            var idkhoahocParameter = idkhoahoc.HasValue ?
                new ObjectParameter("idkhoahoc", idkhoahoc) :
                new ObjectParameter("idkhoahoc", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("Insert_DSBaiHoc", tenbaihocParameter, idkhoahocParameter);
        }
    
        public virtual ObjectResult<Nullable<decimal>> Insert_DSCauHoi(string tencauhoi, Nullable<int> idbaihoc, Nullable<int> idcapdo)
        {
            var tencauhoiParameter = tencauhoi != null ?
                new ObjectParameter("tencauhoi", tencauhoi) :
                new ObjectParameter("tencauhoi", typeof(string));
    
            var idbaihocParameter = idbaihoc.HasValue ?
                new ObjectParameter("idbaihoc", idbaihoc) :
                new ObjectParameter("idbaihoc", typeof(int));
    
            var idcapdoParameter = idcapdo.HasValue ?
                new ObjectParameter("idcapdo", idcapdo) :
                new ObjectParameter("idcapdo", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Nullable<decimal>>("Insert_DSCauHoi", tencauhoiParameter, idbaihocParameter, idcapdoParameter);
        }
    
        public virtual int Insert_DSDapAn(Nullable<int> idcauhoi, string cautraloi, Nullable<bool> dapan)
        {
            var idcauhoiParameter = idcauhoi.HasValue ?
                new ObjectParameter("idcauhoi", idcauhoi) :
                new ObjectParameter("idcauhoi", typeof(int));
    
            var cautraloiParameter = cautraloi != null ?
                new ObjectParameter("cautraloi", cautraloi) :
                new ObjectParameter("cautraloi", typeof(string));
    
            var dapanParameter = dapan.HasValue ?
                new ObjectParameter("dapan", dapan) :
                new ObjectParameter("dapan", typeof(bool));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("Insert_DSDapAn", idcauhoiParameter, cautraloiParameter, dapanParameter);
        }
    
        public virtual ObjectResult<Nullable<decimal>> Insert_KhoaHoc(string tenkhoahoc, string imgKhoaHoc)
        {
            var tenkhoahocParameter = tenkhoahoc != null ?
                new ObjectParameter("tenkhoahoc", tenkhoahoc) :
                new ObjectParameter("tenkhoahoc", typeof(string));
    
            var imgKhoaHocParameter = imgKhoaHoc != null ?
                new ObjectParameter("imgKhoaHoc", imgKhoaHoc) :
                new ObjectParameter("imgKhoaHoc", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Nullable<decimal>>("Insert_KhoaHoc", tenkhoahocParameter, imgKhoaHocParameter);
        }
    
        public virtual int INSERT_OR_UPDATE_BieuDoTheoDoi(Nullable<int> idTaikhoan, Nullable<int> thu2, Nullable<int> thu3, Nullable<int> thu4, Nullable<int> thu5, Nullable<int> thu6, Nullable<int> thu7, Nullable<int> chuNhat, Nullable<System.DateTime> ngayHienTai)
        {
            var idTaikhoanParameter = idTaikhoan.HasValue ?
                new ObjectParameter("idTaikhoan", idTaikhoan) :
                new ObjectParameter("idTaikhoan", typeof(int));
    
            var thu2Parameter = thu2.HasValue ?
                new ObjectParameter("Thu2", thu2) :
                new ObjectParameter("Thu2", typeof(int));
    
            var thu3Parameter = thu3.HasValue ?
                new ObjectParameter("Thu3", thu3) :
                new ObjectParameter("Thu3", typeof(int));
    
            var thu4Parameter = thu4.HasValue ?
                new ObjectParameter("Thu4", thu4) :
                new ObjectParameter("Thu4", typeof(int));
    
            var thu5Parameter = thu5.HasValue ?
                new ObjectParameter("Thu5", thu5) :
                new ObjectParameter("Thu5", typeof(int));
    
            var thu6Parameter = thu6.HasValue ?
                new ObjectParameter("Thu6", thu6) :
                new ObjectParameter("Thu6", typeof(int));
    
            var thu7Parameter = thu7.HasValue ?
                new ObjectParameter("Thu7", thu7) :
                new ObjectParameter("Thu7", typeof(int));
    
            var chuNhatParameter = chuNhat.HasValue ?
                new ObjectParameter("ChuNhat", chuNhat) :
                new ObjectParameter("ChuNhat", typeof(int));
    
            var ngayHienTaiParameter = ngayHienTai.HasValue ?
                new ObjectParameter("NgayHienTai", ngayHienTai) :
                new ObjectParameter("NgayHienTai", typeof(System.DateTime));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("INSERT_OR_UPDATE_BieuDoTheoDoi", idTaikhoanParameter, thu2Parameter, thu3Parameter, thu4Parameter, thu5Parameter, thu6Parameter, thu7Parameter, chuNhatParameter, ngayHienTaiParameter);
        }
    
        public virtual int Insert_PhanHoi(string email, string noidung)
        {
            var emailParameter = email != null ?
                new ObjectParameter("email", email) :
                new ObjectParameter("email", typeof(string));
    
            var noidungParameter = noidung != null ?
                new ObjectParameter("noidung", noidung) :
                new ObjectParameter("noidung", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("Insert_PhanHoi", emailParameter, noidungParameter);
        }
    
        public virtual int InsertUpdate_CapDo(Nullable<int> id, string tencapdo)
        {
            var idParameter = id.HasValue ?
                new ObjectParameter("id", id) :
                new ObjectParameter("id", typeof(int));
    
            var tencapdoParameter = tencapdo != null ?
                new ObjectParameter("tencapdo", tencapdo) :
                new ObjectParameter("tencapdo", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("InsertUpdate_CapDo", idParameter, tencapdoParameter);
        }
    
        public virtual int InsertUpdate_LoaiDiemKN(Nullable<int> id, Nullable<int> diemKN)
        {
            var idParameter = id.HasValue ?
                new ObjectParameter("id", id) :
                new ObjectParameter("id", typeof(int));
    
            var diemKNParameter = diemKN.HasValue ?
                new ObjectParameter("diemKN", diemKN) :
                new ObjectParameter("diemKN", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("InsertUpdate_LoaiDiemKN", idParameter, diemKNParameter);
        }
    
        public virtual int THEM_THONGTINTAIKHOAN(Nullable<int> idkhoahoc, Nullable<int> idcapdo, Nullable<int> diemKN, Nullable<int> diemKNDay, Nullable<int> idtaikhoan, string ngayhoc)
        {
            var idkhoahocParameter = idkhoahoc.HasValue ?
                new ObjectParameter("idkhoahoc", idkhoahoc) :
                new ObjectParameter("idkhoahoc", typeof(int));
    
            var idcapdoParameter = idcapdo.HasValue ?
                new ObjectParameter("idcapdo", idcapdo) :
                new ObjectParameter("idcapdo", typeof(int));
    
            var diemKNParameter = diemKN.HasValue ?
                new ObjectParameter("diemKN", diemKN) :
                new ObjectParameter("diemKN", typeof(int));
    
            var diemKNDayParameter = diemKNDay.HasValue ?
                new ObjectParameter("diemKNDay", diemKNDay) :
                new ObjectParameter("diemKNDay", typeof(int));
    
            var idtaikhoanParameter = idtaikhoan.HasValue ?
                new ObjectParameter("idtaikhoan", idtaikhoan) :
                new ObjectParameter("idtaikhoan", typeof(int));
    
            var ngayhocParameter = ngayhoc != null ?
                new ObjectParameter("ngayhoc", ngayhoc) :
                new ObjectParameter("ngayhoc", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("THEM_THONGTINTAIKHOAN", idkhoahocParameter, idcapdoParameter, diemKNParameter, diemKNDayParameter, idtaikhoanParameter, ngayhocParameter);
        }
    
        public virtual int ThemBaiHocPass(Nullable<int> idTTTaiKhoan, Nullable<int> idBaiHoc)
        {
            var idTTTaiKhoanParameter = idTTTaiKhoan.HasValue ?
                new ObjectParameter("idTTTaiKhoan", idTTTaiKhoan) :
                new ObjectParameter("idTTTaiKhoan", typeof(int));
    
            var idBaiHocParameter = idBaiHoc.HasValue ?
                new ObjectParameter("idBaiHoc", idBaiHoc) :
                new ObjectParameter("idBaiHoc", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("ThemBaiHocPass", idTTTaiKhoanParameter, idBaiHocParameter);
        }
    
        public virtual int Update_AccountInfo(Nullable<int> id, string username, string email, string img)
        {
            var idParameter = id.HasValue ?
                new ObjectParameter("id", id) :
                new ObjectParameter("id", typeof(int));
    
            var usernameParameter = username != null ?
                new ObjectParameter("username", username) :
                new ObjectParameter("username", typeof(string));
    
            var emailParameter = email != null ?
                new ObjectParameter("email", email) :
                new ObjectParameter("email", typeof(string));
    
            var imgParameter = img != null ?
                new ObjectParameter("img", img) :
                new ObjectParameter("img", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("Update_AccountInfo", idParameter, usernameParameter, emailParameter, imgParameter);
        }
    
        public virtual int Update_DSBaiHoc(Nullable<int> id, string tenbaihoc, Nullable<int> idkhoahoc)
        {
            var idParameter = id.HasValue ?
                new ObjectParameter("id", id) :
                new ObjectParameter("id", typeof(int));
    
            var tenbaihocParameter = tenbaihoc != null ?
                new ObjectParameter("tenbaihoc", tenbaihoc) :
                new ObjectParameter("tenbaihoc", typeof(string));
    
            var idkhoahocParameter = idkhoahoc.HasValue ?
                new ObjectParameter("idkhoahoc", idkhoahoc) :
                new ObjectParameter("idkhoahoc", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("Update_DSBaiHoc", idParameter, tenbaihocParameter, idkhoahocParameter);
        }
    
        public virtual int Update_DSCauHoi(Nullable<int> id, string tencauhoi, Nullable<int> idbaihoc, Nullable<int> idcapdo)
        {
            var idParameter = id.HasValue ?
                new ObjectParameter("id", id) :
                new ObjectParameter("id", typeof(int));
    
            var tencauhoiParameter = tencauhoi != null ?
                new ObjectParameter("tencauhoi", tencauhoi) :
                new ObjectParameter("tencauhoi", typeof(string));
    
            var idbaihocParameter = idbaihoc.HasValue ?
                new ObjectParameter("idbaihoc", idbaihoc) :
                new ObjectParameter("idbaihoc", typeof(int));
    
            var idcapdoParameter = idcapdo.HasValue ?
                new ObjectParameter("idcapdo", idcapdo) :
                new ObjectParameter("idcapdo", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("Update_DSCauHoi", idParameter, tencauhoiParameter, idbaihocParameter, idcapdoParameter);
        }
    
        public virtual int Update_DSDapAn(Nullable<int> id, Nullable<int> idcauhoi, string cautraloi, Nullable<bool> dapan)
        {
            var idParameter = id.HasValue ?
                new ObjectParameter("id", id) :
                new ObjectParameter("id", typeof(int));
    
            var idcauhoiParameter = idcauhoi.HasValue ?
                new ObjectParameter("idcauhoi", idcauhoi) :
                new ObjectParameter("idcauhoi", typeof(int));
    
            var cautraloiParameter = cautraloi != null ?
                new ObjectParameter("cautraloi", cautraloi) :
                new ObjectParameter("cautraloi", typeof(string));
    
            var dapanParameter = dapan.HasValue ?
                new ObjectParameter("dapan", dapan) :
                new ObjectParameter("dapan", typeof(bool));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("Update_DSDapAn", idParameter, idcauhoiParameter, cautraloiParameter, dapanParameter);
        }
    
        public virtual int UPDATE_DSThongBao_Follow_Id_IdAccount(Nullable<int> id, Nullable<int> idAccount)
        {
            var idParameter = id.HasValue ?
                new ObjectParameter("id", id) :
                new ObjectParameter("id", typeof(int));
    
            var idAccountParameter = idAccount.HasValue ?
                new ObjectParameter("idAccount", idAccount) :
                new ObjectParameter("idAccount", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("UPDATE_DSThongBao_Follow_Id_IdAccount", idParameter, idAccountParameter);
        }
    
        public virtual int Update_KhoaHoc(Nullable<int> id, string tenkhoahoc, string imgKhoaHoc)
        {
            var idParameter = id.HasValue ?
                new ObjectParameter("id", id) :
                new ObjectParameter("id", typeof(int));
    
            var tenkhoahocParameter = tenkhoahoc != null ?
                new ObjectParameter("tenkhoahoc", tenkhoahoc) :
                new ObjectParameter("tenkhoahoc", typeof(string));
    
            var imgKhoaHocParameter = imgKhoaHoc != null ?
                new ObjectParameter("imgKhoaHoc", imgKhoaHoc) :
                new ObjectParameter("imgKhoaHoc", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("Update_KhoaHoc", idParameter, tenkhoahocParameter, imgKhoaHocParameter);
        }
    
        public virtual int Update_PassWord_Account(string username, string currentPass, string newPass)
        {
            var usernameParameter = username != null ?
                new ObjectParameter("username", username) :
                new ObjectParameter("username", typeof(string));
    
            var currentPassParameter = currentPass != null ?
                new ObjectParameter("currentPass", currentPass) :
                new ObjectParameter("currentPass", typeof(string));
    
            var newPassParameter = newPass != null ?
                new ObjectParameter("newPass", newPass) :
                new ObjectParameter("newPass", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("Update_PassWord_Account", usernameParameter, currentPassParameter, newPassParameter);
        }
    
        public virtual int Update_ThongTinBanBe(Nullable<int> id, Nullable<int> idbanbe, Nullable<int> idaccount, Nullable<bool> yeucau)
        {
            var idParameter = id.HasValue ?
                new ObjectParameter("id", id) :
                new ObjectParameter("id", typeof(int));
    
            var idbanbeParameter = idbanbe.HasValue ?
                new ObjectParameter("idbanbe", idbanbe) :
                new ObjectParameter("idbanbe", typeof(int));
    
            var idaccountParameter = idaccount.HasValue ?
                new ObjectParameter("idaccount", idaccount) :
                new ObjectParameter("idaccount", typeof(int));
    
            var yeucauParameter = yeucau.HasValue ?
                new ObjectParameter("yeucau", yeucau) :
                new ObjectParameter("yeucau", typeof(bool));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("Update_ThongTinBanBe", idParameter, idbanbeParameter, idaccountParameter, yeucauParameter);
        }
    }
}
