namespace DataAcceessInterface
{
 
    using EntityData;
    using System.Collections.Generic;

    /// <summary>
    /// 
    /// </summary>
    public interface ICapDoDataAccess
    {
        /// <summary>
        /// get danh sach cap do
        /// </summary>
        /// <returns></returns>
        IEnumerable<Get_CapDo_Result> GetDSCapDo();
    }
}
