namespace DataAccess
{
    using DataAcceessInterface;
  
    using EntityData;
    using System.Collections.Generic;
    using System.Linq;

    public class CapDoDataAccess : ICapDoDataAccess
    {
        /// <summary>
        /// Defines the db
        /// </summary>
        private WebLapTrinhEntities db = new WebLapTrinhEntities();

        public IEnumerable<Get_CapDo_Result> GetDSCapDo()
        {
            return db.Get_CapDo();
        }
    }
}
