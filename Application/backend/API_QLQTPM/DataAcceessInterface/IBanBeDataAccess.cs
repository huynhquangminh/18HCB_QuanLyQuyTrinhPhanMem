﻿using DataAcceessInterface.Parameter;
using EntityData;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAcceessInterface
{
    public interface IBanBeDataAccess
    {
        IEnumerable<Get_DSBanBe_By_IdAccount_Result> GetDSBanBe(GetDSBanBeParameter param);
        IEnumerable<Get_DsYeuCauKetBan_Result> GetDSYeuCauKetBan(GetDSBanBeParameter param);
        bool DeleteBanBe(DeleteBanBeParameter param);
        bool DeleteYeuCauKetBan(DeleteBanBeParameter param);
        bool InsertYeuCauKetBan(InsertYeuCauKetBanParameter param);
        bool InsertBanBe(InsertYeuCauKetBanParameter param);
        bool UpdateYeuCauKetBan(InsertYeuCauKetBanParameter param);
    }
}
