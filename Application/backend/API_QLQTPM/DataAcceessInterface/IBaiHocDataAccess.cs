using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataAcceessInterface.Parameter;
using EntityData;

namespace DataAcceessInterface
{
    public interface IBaiHocDataAccess
    {
        /// <summary>
        /// 
        /// </summary>
        /// <param name="param">id bai hoc</param>
        /// <returns></returns>
        IEnumerable<Get_DSBaiHoc_ById_Result> GetDSBaiHoc(GetDSBaiHocParameter param);

        /// <summary>
        /// 
        /// </summary>
        /// <param name="param"></param>
        /// <returns></returns>
        bool ThemBaiHocPass(ThemBaiHocPassParameter param);
    }
}
